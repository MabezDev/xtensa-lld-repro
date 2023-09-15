
# Running the test cases

## working

```rust
cargo run --bin working --release
```

## broken
```rust
cargo run --bin broken --release
```

# Other data points

It is possible to get the broken example to run correcly with lld, by enabling LTO.

```
# Cargo.toml
[profile.release]
lto = true
```

# Suspicion: relocs

Stepping through each instruction once the interrupt fired brought me to a suspicious line of assembly. This is a snippet of the level2 interrupt handler from xtensa-lx-rt (full assembly available in data/broken.S):

```asm
40378e24 <__default_naked_level_2_interrupt>:
40378e24:	200110        	or	a0, a1, a1
40378e27:	ffd112        	addmi	a1, a1, 0xffffff00
40378e2a:	036102        	s32i	a0, a1, 12
40378e2d:	49d100        	s32e	a0, a1, -12
40378e30:	03c200        	rsr.eps2	a0
40378e33:	016102        	s32i	a0, a1, 4
40378e36:	03b200        	rsr.epc2	a0
40378e39:	006102        	s32i	a0, a1, 0
40378e3c:	49c100        	s32e	a0, a1, -16
40378e3f:	03d200        	rsr.excsave2	a0
40378e42:	026102        	s32i	a0, a1, 8
40378e45:	ffd485        	call0	40378b90 <save_context>

; this is where we load the level 2 hal handler which is stored in IRAM
; as we can see though, its pointing somewhere else
; infact 0x40339194 is not even in IRAM, its ROM code
40378e48:	00d301        	l32r	a0, 40339194 <rom_i2c_writeReg_Mask+0x333428>

40378e4b:	13e600        	wsr.ps	a0
40378e4e:	002010        	rsync
40378e51:	02a062        	movi	a6, 2
40378e54:	207110        	or	a7, a1, a1
40378e57:	ff6b95        	call4	40378510 <__level_1_interrupt>
40378e5a:	ffe3c5        	call0	40378c98 <restore_context>
40378e5d:	012102        	l32i	a0, a1, 4
40378e60:	13c200        	wsr.eps2	a0
40378e63:	002102        	l32i	a0, a1, 0
40378e66:	13b200        	wsr.epc2	a0
40378e69:	022102        	l32i	a0, a1, 8
40378e6c:	032112        	l32i	a1, a1, 12
40378e6f:	002010        	rsync
40378e72:	003210        	rfi	2
40378e75:	0041f0        	break	1, 15
```

## reloc output

Full output available in data/broken-relocs.x, here is the relevant relocs for our level 2 handler.

```
RELOCATION RECORDS FOR [.rwtext]:
OFFSET   TYPE              VALUE 
<!-- snipped -->
000002b5 R_XTENSA_SLOT0_OP  save_context
000002b8 R_XTENSA_SLOT0_OP  .rwtext.literal+0x0000000c
000002c7 R_XTENSA_SLOT0_OP  __level_2_interrupt
000002ca R_XTENSA_SLOT0_OP  restore_context
<!-- snipped -->
```

We can clearly see that the save_context and restore_context relocations worked, but when we tried to relocate __level_2_interrupt it failed.

My initial hunch was that at the time that LLD relocates __level_2_interrupt is when __level_2_interrupt is assigned to the default handler ([see here](https://github.com/esp-rs/xtensa-lx-rt/blob/b9e653db6eb2d72ff44f141bf453967e0b7aa273/exception-esp32.x.jinja#L8)), but later in the hal we override this handler [here](https://github.com/MabezDev/esp-hal/blob/1835b7fed2dfd24e6f421128df2a66c31a56f86c/esp-hal-common/src/interrupt/xtensa.rs#L368-L371C27). However, this doesn't seem to be the case.

I added some logging to LLD `std::cout << "Relocating  " << rel.sym->getName().str() << " dest: " << dest << "val: " << val << "isDefined(): " << rel.sym->isDefined() << "\n";`, the output is in output in data/relocation-log-lld.txt.

If we look at the log output in data/relocation-log-lld.txt, there is only one entry for __level_2_interrupt. This on its own is quite suspect as inside __level_2_interrupt there is more than one relocation slot. If we plug the numbers from the log file for that relocation and calculate the PC like LLD does we get a pc of `0x40378510`, which means LLD is only doing the reloc for the call4 instruction inside __level_2_interrupt, which is really odd.

```
40378e57:	ff6b95        	call4	40378510 <__level_1_interrupt>
```

# Helpful commands

Reloc info is discarded in the final elf, but you can find it by extracting it from the relevant rlibs. For example

`xtensa-esp32s3-elf-objdump -r target/xtensa-esp32s3-none-elf/release/deps/libxtensa_lx_rt-a98b0cd449d58097.rlib > relocs.txt`