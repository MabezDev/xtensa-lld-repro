#![no_std]
#![no_main]

use esp_backtrace as _;
use hal::{clock::ClockControl, peripherals::Peripherals, prelude::*, Delay};
use hal::peripherals::Interrupt;
use hal::interrupt::Priority;
use hal::systimer::SystemTimer;
use core::cell::RefCell;
use critical_section::Mutex;
use hal::systimer::Periodic;
use hal::systimer::Alarm;
use hal::interrupt;
use log::info;

static ALARM0: Mutex<RefCell<Option<Alarm<Periodic, 0>>>> = Mutex::new(RefCell::new(None));

#[entry]
fn main() -> ! {
    let peripherals = Peripherals::take();
    let system = peripherals.SYSTEM.split();
    let clocks = ClockControl::boot_defaults(system.clock_control).freeze();
    let mut delay = Delay::new(&clocks);

    esp_println::logger::init_logger_from_env();

    let syst = SystemTimer::new(peripherals.SYSTIMER);

    let alarm0 = syst.alarm0.into_periodic();
    alarm0.set_period(1u32.Hz());
    alarm0.interrupt_enable(true);

    critical_section::with(|cs| {
        ALARM0.borrow_ref_mut(cs).replace(alarm0);
    });
    
    let mut i = 0;
    loop {
        info!("Hello world! {i}");
        delay.delay_ms(500u32);
        if i > 4 {
            info!("Enabling ALARM 0");
            interrupt::enable(
                Interrupt::SYSTIMER_TARGET0,
                Priority::Priority1,
            )
            .unwrap();
        }
        i += 1;
    }
}

#[interrupt]
fn SYSTIMER_TARGET0() {
    info!("Interrupt lvl1 (alarm0)");
    critical_section::with(|cs| {
        ALARM0
            .borrow_ref_mut(cs)
            .as_mut()
            .unwrap()
            .clear_interrupt()
    });
}