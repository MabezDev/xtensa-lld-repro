
target/xtensa-esp32s3-none-elf/release/broken:     file format elf32-xtensa-le


Disassembly of section .vectors:

40378000 <_WindowOverflow4>:
40378000:	49c500        	s32e	a0, a5, -16
40378003:	49d510        	s32e	a1, a5, -12
40378006:	49e520        	s32e	a2, a5, -8
40378009:	49f530        	s32e	a3, a5, -4
4037800c:	003400        	rfwo
4037800f:	0041f0        	break	1, 15
	...

40378040 <_WindowUnderflow4>:
40378040:	09c500        	l32e	a0, a5, -16
40378043:	09d510        	l32e	a1, a5, -12
40378046:	09e520        	l32e	a2, a5, -8
40378049:	09f530        	l32e	a3, a5, -4
4037804c:	003500        	rfwu
	...

40378050 <_AllocAException>:
40378050:	034800        	rsr.windowbase	a0
40378053:	4080f0        	rotw	-1
40378056:	03e620        	rsr.ps	a2
40378059:	343820        	extui	a3, a2, 8, 4
4037805c:	303340        	xor	a3, a3, a4
4037805f:	03d140        	rsr.excsave1	a4
40378062:	113380        	slli	a3, a3, 8
40378065:	302230        	xor	a2, a2, a3
40378068:	13e620        	wsr.ps	a2
4037806b:	002010        	rsync
4037806e:	ce74f7        	bbci	a4, 31, 40378040 <_WindowUnderflow4>
40378071:	4080f0        	rotw	-1
40378074:	4878e7        	bbci	a8, 30, 403780c0 <_WindowUnderflow8>
40378077:	4080f0        	rotw	-1
4037807a:	003086        	j	40378140 <_WindowUnderflow12>
4037807d:	0041f0        	break	1, 15

40378080 <_WindowOverflow8>:
40378080:	49c900        	s32e	a0, a9, -16
40378083:	09d100        	l32e	a0, a1, -12
40378086:	49d910        	s32e	a1, a9, -12
40378089:	49e920        	s32e	a2, a9, -8
4037808c:	49f930        	s32e	a3, a9, -4
4037808f:	498040        	s32e	a4, a0, -32
40378092:	499050        	s32e	a5, a0, -28
40378095:	49a060        	s32e	a6, a0, -24
40378098:	49b070        	s32e	a7, a0, -20
4037809b:	003400        	rfwo
4037809e:	0041f0        	break	1, 15
	...

403780c0 <_WindowUnderflow8>:
403780c0:	09c900        	l32e	a0, a9, -16
403780c3:	09d910        	l32e	a1, a9, -12
403780c6:	09e920        	l32e	a2, a9, -8
403780c9:	09d170        	l32e	a7, a1, -12
403780cc:	09f930        	l32e	a3, a9, -4
403780cf:	098740        	l32e	a4, a7, -32
403780d2:	099750        	l32e	a5, a7, -28
403780d5:	09a760        	l32e	a6, a7, -24
403780d8:	09b770        	l32e	a7, a7, -20
403780db:	003500        	rfwu
403780de:	0041f0        	break	1, 15
	...

40378100 <_WindowOverflow12>:
40378100:	49cd00        	s32e	a0, a13, -16
40378103:	09d100        	l32e	a0, a1, -12
40378106:	49dd10        	s32e	a1, a13, -12
40378109:	49ed20        	s32e	a2, a13, -8
4037810c:	49fd30        	s32e	a3, a13, -4
4037810f:	494040        	s32e	a4, a0, -48
40378112:	495050        	s32e	a5, a0, -44
40378115:	496060        	s32e	a6, a0, -40
40378118:	497070        	s32e	a7, a0, -36
4037811b:	498080        	s32e	a8, a0, -32
4037811e:	499090        	s32e	a9, a0, -28
40378121:	49a0a0        	s32e	a10, a0, -24
40378124:	49b0b0        	s32e	a11, a0, -20
40378127:	003400        	rfwo
4037812a:	0041f0        	break	1, 15
	...

40378140 <_WindowUnderflow12>:
40378140:	09cd00        	l32e	a0, a13, -16
40378143:	09dd10        	l32e	a1, a13, -12
40378146:	09ed20        	l32e	a2, a13, -8
40378149:	09d1b0        	l32e	a11, a1, -12
4037814c:	09fd30        	l32e	a3, a13, -4
4037814f:	094b40        	l32e	a4, a11, -48
40378152:	095b50        	l32e	a5, a11, -44
40378155:	096b60        	l32e	a6, a11, -40
40378158:	097b70        	l32e	a7, a11, -36
4037815b:	098b80        	l32e	a8, a11, -32
4037815e:	099b90        	l32e	a9, a11, -28
40378161:	09aba0        	l32e	a10, a11, -24
40378164:	09bbb0        	l32e	a11, a11, -20
40378167:	003500        	rfwu
4037816a:	0041f0        	break	1, 15
	...

40378180 <_Level2InterruptVector>:
40378180:	13d200        	wsr.excsave2	a0
40378183:	00ca05        	call0	40378e24 <__default_naked_level_2_interrupt>
40378186:	0041f0        	break	1, 15
	...

403781c0 <_Level3InterruptVector>:
403781c0:	13d300        	wsr.excsave3	a0
403781c3:	00cb45        	call0	40378e78 <__default_naked_level_3_interrupt>
403781c6:	0041f0        	break	1, 15
	...

40378200 <_Level4InterruptVector>:
40378200:	13d400        	wsr.excsave4	a0
40378203:	00cc85        	call0	40378ecc <__default_naked_level_4_interrupt>
40378206:	0041f0        	break	1, 15
	...

40378240 <_Level5InterruptVector>:
40378240:	13d500        	wsr.excsave5	a0
40378243:	00cdc5        	call0	40378f20 <__default_naked_level_5_interrupt>
40378246:	0041f0        	break	1, 15
	...

40378280 <_Level6InterruptVector>:
40378280:	13d600        	wsr.excsave6	a0
40378283:	00cf05        	call0	40378f74 <__default_naked_level_6_interrupt>
40378286:	0041f0        	break	1, 15
	...

403782c0 <_Level7InterruptVector>:
403782c0:	13d700        	wsr.excsave7	a0
403782c3:	00d045        	call0	40378fc8 <__default_naked_level_7_interrupt>
403782c6:	0041f0        	break	1, 15
	...

40378300 <_KernelExceptionVector>:
40378300:	13d100        	wsr.excsave1	a0
40378303:	03e800        	rsr.exccause	a0
40378306:	425026        	beqi	a0, 5, 4037834c <.AllocAException>
40378309:	00a485        	call0	40378d54 <__default_naked_exception>
4037830c:	0041f0        	break	1, 15
	...

40378340 <_UserExceptionVector>:
40378340:	13d100        	wsr.excsave1	a0
40378343:	03e800        	rsr.exccause	a0
40378346:	025026        	beqi	a0, 5, 4037834c <.AllocAException>
40378349:	00a085        	call0	40378d54 <__default_naked_exception>

4037834c <.AllocAException>:
4037834c:	ffd005        	call0	40378050 <_AllocAException>
4037834f:	0041f0        	break	1, 15
	...

40378380 <_DoubleExceptionVector>:
40378380:	13d100        	wsr.excsave1	a0
40378383:	00a485        	call0	40378dcc <__default_naked_double_exception>
40378386:	0041f0        	break	1, 15
	...

Disassembly of section .text:

42000020 <core::ptr::drop_in_place<core::cell::BorrowMutError>>:
42000020:	004136        	entry	a1, 32
42000023:	f01d      	retw.n
42000025:	000000        	ill
42000028:	0e2c      	movi.n	a14, 32
4200002a:	00          	.byte 00
4200002b:	9a0d42        	l8ui	a4, a13, 154
4200002e:	3fc8      	l32i.n	a12, a15, 12
42000030:	003c      	movi.n	a0, 48
42000032:	443c01        	l32r	a0, 41fd1124 <__user_exception+0x1c57efc>
42000035:	00          	.byte 00
42000036:	b43c01        	l32r	a0, 41fed128 <__user_exception+0x1c73f00>
42000039:	00          	.byte 00
4200003a:	9c3c01        	l32r	a0, 41fe712c <__user_exception+0x1c6df04>
4200003d:	420061        	l32r	a6, 41fd0840 <__user_exception+0x1c57618>
42000040:	000ee0        	callx8	a14
42000043:	680042        	l8ui	a4, a0, 104
42000046:	0989      	s32i.n	a8, a9, 0
42000048:	625a00        	saltu	a5, a10, a0
4200004b:	b40002        	l8ui	a0, a0, 180
4200004e:	5c04c4        	ee.st.ua_state.ip	a12, 0xfffff840
42000051:	000b      	addi.n	a0, a0, -1
42000053:	0de042        	s32c1i	a4, a0, 52
42000056:	744200        	extui	a4, a0, 2, 8
42000059:	420035        	call12	4204205c <memset+0x3b084>
4200005c:	023034        	ee.st.accx.ip	a3, 0x180
4200005f:	300060        	xor	a0, a0, a6
42000062:	ff6002        	s32i	a0, a0, 0x3fc
42000065:	00efffff 	ee.vmulas.s16.accx.ld.ip.qup	q1, a15, 240, q7, q7, q6, q7
42000069:	24          	.byte 0x24
4200006a:	1c40f4        	ee.st.ua_state.ip	a15, 0x400
4200006d:	30          	.byte 0x30
4200006e:	206002        	s32i	a0, a0, 128
42000071:	30          	.byte 0x30
42000072:	506002        	s32i	a0, a0, 0x140
42000075:	30          	.byte 0x30
42000076:	006002        	s32i	a0, a0, 0
42000079:	010000        	slli	a0, a0, 32
4200007c:	023064        	ee.st.accx.ip	a6, 0x180
4200007f:	9a0860        	trunc.s	a0, f8, 6
42000082:	3fc8      	l32i.n	a12, a15, 12
42000084:	010104        	ee.ldqa.s16.128.ip	a0, 16
42000087:	243c      	movi.n	a4, 50
42000089:	3c0101        	l32r	a0, 41fcf090 <__user_exception+0x1c55e68>
4200008c:	0101d0        	slli	a0, a1, 19
4200008f:	043c      	movi.n	a4, 48
42000091:	420064        	ee.st.accx.ip	a6, 0xfffffc00
42000094:	9a0c      	movi.n	a10, 9
42000096:	3fc8      	l32i.n	a12, a15, 12
42000098:	20          	.byte 0x20
42000099:	c89a      	add.n	a12, a8, a9
4200009b:	0101443f 	ee.vmulas.s16.accx.ld.ip.qup	q2, a3, 64, q5, q0, q0, q1
4200009f:	683c      	movi.n	a8, 54
420000a1:	420067        	bnone	a0, a6, 420000e7 <main+0x23>
420000a4:	010164        	ee.ldqa.s16.128.ip	a6, 16
420000a7:	a43c      	movi.n	a4, 58
420000a9:	003b      	addi.n	a0, a0, 3
420000ab:	0df442        	s32ri	a4, a4, 52
420000ae:	00          	.byte 00
420000af:	42          	.byte 0x42
420000b0:	017c      	movi.n	a1, -16
420000b2:	883c01        	l32r	a0, 41fe21a4 <__user_exception+0x1c68f7c>
420000b5:	000b      	addi.n	a0, a0, -1
420000b7:	42          	.byte 0x42
420000b8:	010184        	ee.ldqa.s16.128.ip	a8, 16
420000bb:	b03c      	movi.n	a0, 59
420000bd:	3c0101        	l32r	a0, 41fcf0c4 <__user_exception+0x1c55e9c>
420000c0:	0101c0        	slli	a0, a1, 20
420000c3:	      	movi.n	a6, 51

420000c4 <main>:
420000c4:	010136        	entry	a1, 128
420000c7:	ffd851        	l32r	a5, 42000028 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x8>
420000ca:	0005e0        	callx8	a5
420000cd:	ffd781        	l32r	a8, 4200002c <core::ptr::drop_in_place<core::cell::BorrowMutError>+0xc>
420000d0:	000892        	l8ui	a9, a8, 0
420000d3:	1a4956        	bnez	a9, 4200027b <main+0x1b7>
420000d6:	140c      	movi.n	a4, 1
420000d8:	004842        	s8i	a4, a8, 0
420000db:	ffd961        	l32r	a6, 42000040 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x20>
420000de:	0006e0        	callx8	a6
420000e1:	ffd881        	l32r	a8, 42000044 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x24>
420000e4:	136182        	s32i	a8, a1, 76
420000e7:	ffd881        	l32r	a8, 42000048 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x28>
420000ea:	126182        	s32i	a8, a1, 72
420000ed:	ffd781        	l32r	a8, 4200004c <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x2c>
420000f0:	116182        	s32i	a8, a1, 68
420000f3:	106182        	s32i	a8, a1, 64
420000f6:	18c172        	addi	a7, a1, 24
420000f9:	40c1b2        	addi	a11, a1, 64
420000fc:	ffd581        	l32r	a8, 42000050 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x30>
420000ff:	07ad      	mov.n	a10, a7
42000101:	0008e0        	callx8	a8
42000104:	ffd481        	l32r	a8, 42000054 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x34>
42000107:	07ad      	mov.n	a10, a7
42000109:	0008e0        	callx8	a8
4200010c:	b1b9      	s32i.n	a11, a1, 44
4200010e:	a1a9      	s32i.n	a10, a1, 40
42000110:	ffd281        	l32r	a8, 42000058 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x38>
42000113:	0008e0        	callx8	a8
42000116:	ffd181        	l32r	a8, 4200005c <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x3c>
42000119:	070c      	movi.n	a7, 0
4200011b:	0020c0        	memw
4200011e:	0879      	s32i.n	a7, a8, 0
42000120:	ffd091        	l32r	a9, 42000060 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x40>
42000123:	0020c0        	memw
42000126:	09a8      	l32i.n	a10, a9, 0
42000128:	ffcfb1        	l32r	a11, 42000064 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x44>
4200012b:	10aab0        	and	a10, a10, a11
4200012e:	0020c0        	memw
42000131:	09a9      	s32i.n	a10, a9, 0
42000133:	ffcda1        	l32r	a10, 42000068 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x48>
42000136:	0020c0        	memw
42000139:	08a9      	s32i.n	a10, a8, 0
4200013b:	ffcc81        	l32r	a8, 4200006c <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x4c>
4200013e:	0020c0        	memw
42000141:	0879      	s32i.n	a7, a8, 0
42000143:	ffcb81        	l32r	a8, 42000070 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x50>
42000146:	0020c0        	memw
42000149:	0879      	s32i.n	a7, a8, 0
4200014b:	ffca81        	l32r	a8, 42000074 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x54>
4200014e:	0020c0        	memw
42000151:	0849      	s32i.n	a4, a8, 0
42000153:	0020c0        	memw
42000156:	0988      	l32i.n	a8, a9, 0
42000158:	ffc8a1        	l32r	a10, 42000078 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x58>
4200015b:	2088a0        	or	a8, a8, a10
4200015e:	0020c0        	memw
42000161:	0989      	s32i.n	a8, a9, 0
42000163:	ffc681        	l32r	a8, 4200007c <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x5c>
42000166:	0020c0        	memw
42000169:	0898      	l32i.n	a9, a8, 0
4200016b:	209940        	or	a9, a9, a4
4200016e:	0020c0        	memw
42000171:	0899      	s32i.n	a9, a8, 0
42000173:	0005e0        	callx8	a5
42000176:	ffc281        	l32r	a8, 42000080 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x60>
42000179:	0898      	l32i.n	a9, a8, 0
4200017b:	124956        	bnez	a9, 420002a3 <main+0x1df>
4200017e:	ffc591        	l32r	a9, 42000094 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x74>
42000181:	004942        	s8i	a4, a9, 0
42000184:	0879      	s32i.n	a7, a8, 0
42000186:	0006e0        	callx8	a6
42000189:	ffc331        	l32r	a3, 42000098 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x78>
4200018c:	360c      	movi.n	a6, 3
4200018e:	f87c      	movi.n	a8, -1
42000190:	4189      	s32i.n	a8, a1, 16
42000192:	ffa082        	movi	a8, 255
42000195:	5189      	s32i.n	a8, a1, 20
42000197:	ffc181        	l32r	a8, 4200009c <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x7c>
4200019a:	3189      	s32i.n	a8, a1, 12
4200019c:	ffc181        	l32r	a8, 420000a0 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x80>
4200019f:	2189      	s32i.n	a8, a1, 8
420001a1:	ffc081        	l32r	a8, 420000a4 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x84>
420001a4:	1189      	s32i.n	a8, a1, 4
420001a6:	078d      	mov.n	a8, a7
420001a8:	ffc051        	l32r	a5, 420000a8 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x88>
420001ab:	d189      	s32i.n	a8, a1, 52
420001ad:	0398      	l32i.n	a9, a3, 0
420001af:	04ad      	mov.n	a10, a4
420001b1:	0f9967        	bne	a9, a6, 420001c4 <main+0x100>
420001b4:	07ad      	mov.n	a10, a7
420001b6:	000286        	j	420001c4 <main+0x100>
420001b9:	881b      	addi.n	a8, a8, 1
420001bb:	d189      	s32i.n	a8, a1, 52
420001bd:	0398      	l32i.n	a9, a3, 0
420001bf:	04ad      	mov.n	a10, a4
420001c1:	ef1967        	beq	a9, a6, 420001b4 <main+0xf0>
420001c4:	4188      	l32i.n	a8, a1, 16
420001c6:	073697        	bltu	a6, a9, 420001d1 <main+0x10d>
420001c9:	0a8d      	mov.n	a8, a10
420001cb:	050866        	bnei	a8, -1, 420001d4 <main+0x110>
420001ce:	000286        	j	420001dc <main+0x118>
420001d1:	070826        	beqi	a8, -1, 420001dc <main+0x118>
420001d4:	5198      	l32i.n	a9, a1, 20
420001d6:	108890        	and	a8, a8, a9
420001d9:	02a856        	bnez	a8, 42000207 <main+0x143>
420001dc:	146172        	s32i	a7, a1, 80
420001df:	116142        	s32i	a4, a1, 68
420001e2:	3188      	l32i.n	a8, a1, 12
420001e4:	106182        	s32i	a8, a1, 64
420001e7:	136142        	s32i	a4, a1, 76
420001ea:	38c182        	addi	a8, a1, 56
420001ed:	126182        	s32i	a8, a1, 72
420001f0:	2188      	l32i.n	a8, a1, 8
420001f2:	f189      	s32i.n	a8, a1, 60
420001f4:	34c182        	addi	a8, a1, 52
420001f7:	e189      	s32i.n	a8, a1, 56
420001f9:	40c1a2        	addi	a10, a1, 64
420001fc:	7d2c      	movi.n	a13, 39
420001fe:	06bd      	mov.n	a11, a6
42000200:	11c8      	l32i.n	a12, a1, 4
42000202:	07ed      	mov.n	a14, a7
42000204:	0005e0        	callx8	a5
42000207:	020c      	movi.n	a2, 0
42000209:	28c1a2        	addi	a10, a1, 40
4200020c:	e8a3b2        	movi	a11, 0x3e8
4200020f:	ffa781        	l32r	a8, 420000ac <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x8c>
42000212:	0008e0        	callx8	a8
42000215:	221b      	addi.n	a2, a2, 1
42000217:	f4a182        	movi	a8, 0x1f4
4200021a:	eb9287        	bne	a2, a8, 42000209 <main+0x145>
4200021d:	d188      	l32i.n	a8, a1, 52
4200021f:	490c      	movi.n	a9, 4
42000221:	94a987        	bge	a9, a8, 420001b9 <main+0xf5>
42000224:	0398      	l32i.n	a9, a3, 0
42000226:	079967        	bne	a9, a6, 42000231 <main+0x16d>
42000229:	080c      	movi.n	a8, 0
4200022b:	073697        	bltu	a6, a9, 42000236 <main+0x172>
4200022e:	000186        	j	42000238 <main+0x174>
42000231:	180c      	movi.n	a8, 1
42000233:	01b697        	bgeu	a6, a9, 42000238 <main+0x174>
42000236:	f87c      	movi.n	a8, -1
42000238:	070826        	beqi	a8, -1, 42000243 <main+0x17f>
4200023b:	5198      	l32i.n	a9, a1, 20
4200023d:	108890        	and	a8, a8, a9
42000240:	025856        	bnez	a8, 42000269 <main+0x1a5>
42000243:	0e0c      	movi.n	a14, 0
42000245:	1461e2        	s32i	a14, a1, 80
42000248:	180c      	movi.n	a8, 1
4200024a:	116182        	s32i	a8, a1, 68
4200024d:	ff9881        	l32r	a8, 420000b0 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x90>
42000250:	106182        	s32i	a8, a1, 64
42000253:	1361e2        	s32i	a14, a1, 76
42000256:	ff7781        	l32r	a8, 42000034 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x14>
42000259:	126182        	s32i	a8, a1, 72
4200025c:	40c1a2        	addi	a10, a1, 64
4200025f:	3b0c      	movi.n	a11, 3
42000261:	ff90c1        	l32r	a12, 420000a4 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x84>
42000264:	ad2c      	movi.n	a13, 42
42000266:	0005e0        	callx8	a5
42000269:	9a3c      	movi.n	a10, 57
4200026b:	2b0c      	movi.n	a11, 2
4200026d:	ff9181        	l32r	a8, 420000b4 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x94>
42000270:	0008e0        	callx8	a8
42000273:	043a56        	bnez	a10, 420002ba <main+0x1f6>
42000276:	d188      	l32i.n	a8, a1, 52
42000278:	ffcf46        	j	420001b9 <main+0xf5>
4200027b:	080c      	movi.n	a8, 0
4200027d:	146182        	s32i	a8, a1, 80
42000280:	190c      	movi.n	a9, 1
42000282:	116192        	s32i	a9, a1, 68
42000285:	ff6a91        	l32r	a9, 42000030 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x10>
42000288:	106192        	s32i	a9, a1, 64
4200028b:	136182        	s32i	a8, a1, 76
4200028e:	ff6981        	l32r	a8, 42000034 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x14>
42000291:	126182        	s32i	a8, a1, 72
42000294:	40c1a2        	addi	a10, a1, 64
42000297:	ff68b1        	l32r	a11, 42000038 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x18>
4200029a:	ff6881        	l32r	a8, 4200003c <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x1c>
4200029d:	0008e0        	callx8	a8
420002a0:	0041f0        	break	1, 15
420002a3:	ff78a1        	l32r	a10, 42000084 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x64>
420002a6:	0b1c      	movi.n	a11, 16
420002a8:	40c1c2        	addi	a12, a1, 64
420002ab:	ff77d1        	l32r	a13, 42000088 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x68>
420002ae:	ff77e1        	l32r	a14, 4200008c <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x6c>
420002b1:	ff7781        	l32r	a8, 42000090 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x70>
420002b4:	0008e0        	callx8	a8
420002b7:	0041f0        	break	1, 15
420002ba:	ff7fa1        	l32r	a10, 420000b8 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x98>
420002bd:	bb2c      	movi.n	a11, 43
420002bf:	40c1c2        	addi	a12, a1, 64
420002c2:	ff7ed1        	l32r	a13, 420000bc <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x9c>
420002c5:	ff7ee1        	l32r	a14, 420000c0 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0xa0>
420002c8:	ff7281        	l32r	a8, 42000090 <core::ptr::drop_in_place<core::cell::BorrowMutError>+0x70>
420002cb:	0008e0        	callx8	a8
420002ce:	0041f0        	break	1, 15
420002d1:	000000        	ill
420002d4:	20          	.byte 0x20
420002d5:	c89a      	add.n	a12, a8, a9
420002d7:	0101f83f 	ee.vmulas.s16.accx.ld.ip.qup	q2, a3, 128, q7, q6, q0, q1
420002db:	443c      	movi.n	a4, 52
420002dd:	00          	.byte 00
420002de:	643c01        	l32r	a0, 41fd93d0 <__user_exception+0x1c601a8>
420002e1:	3c0101        	l32r	a0, 41fcf2e8 <__user_exception+0x1c560c0>
420002e4:	003ba4        	ee.ld.qacc_l.l.128.ip	a10, 0x3b0
420002e7:	0e2c42        	l32i	a4, a12, 56
420002ea:	084200        	lsx	f4, a2, a0
420002ed:	c89a      	add.n	a12, a8, a9
420002ef:	0101043f 	ee.vmulas.s16.accx.ld.ip.qup	q2, a3, 64, q4, q0, q0, q1
420002f3:	243c      	movi.n	a4, 50
420002f5:	3c0101        	l32r	a0, 41fcf2fc <__user_exception+0x1c560d4>
420002f8:	010200        	slli	a0, a2, 32
420002fb:	043c      	movi.n	a4, 48
420002fd:	420064        	ee.st.accx.ip	a6, 0xfffffc00
42000300:	9a0c      	movi.n	a10, 9
42000302:	3fc8      	l32i.n	a12, a15, 12
42000304:	010210        	slli	a0, a2, 31
42000307:	3c3c      	movi.n	a12, 51
42000309:	3c0102        	l8ui	a0, a1, 60
4200030c:	61c8      	l32i.n	a12, a1, 24
4200030e:	00          	.byte 00
4200030f:	306c42        	s32i	a4, a12, 192
42000312:	e06002        	s32i	a0, a0, 0x380
42000315:	 	ee.vmulas.s8.qacc.ld.ip.qup	q4, a0, 0x100, q0, q0, q4, q2

42000318 <SYSTIMER_TARGET0>:
42000318:	008136        	entry	a1, 64
4200031b:	ffee81        	l32r	a8, 420002d4 <main+0x210>
4200031e:	0898      	l32i.n	a9, a8, 0
42000320:	3a0c      	movi.n	a10, 3
42000322:	0799a7        	bne	a9, a10, 4200032d <SYSTIMER_TARGET0+0x15>
42000325:	080c      	movi.n	a8, 0
42000327:	073a97        	bltu	a10, a9, 42000332 <SYSTIMER_TARGET0+0x1a>
4200032a:	000186        	j	42000334 <SYSTIMER_TARGET0+0x1c>
4200032d:	180c      	movi.n	a8, 1
4200032f:	01ba97        	bgeu	a10, a9, 42000334 <SYSTIMER_TARGET0+0x1c>
42000332:	f87c      	movi.n	a8, -1
42000334:	080826        	beqi	a8, -1, 42000340 <SYSTIMER_TARGET0+0x28>
42000337:	ffa092        	movi	a9, 255
4200033a:	108890        	and	a8, a8, a9
4200033d:	023856        	bnez	a8, 42000364 <SYSTIMER_TARGET0+0x4c>
42000340:	0e0c      	movi.n	a14, 0
42000342:	41e9      	s32i.n	a14, a1, 16
42000344:	180c      	movi.n	a8, 1
42000346:	1189      	s32i.n	a8, a1, 4
42000348:	ffe481        	l32r	a8, 420002d8 <main+0x214>
4200034b:	0189      	s32i.n	a8, a1, 0
4200034d:	31e9      	s32i.n	a14, a1, 12
4200034f:	ffe381        	l32r	a8, 420002dc <main+0x218>
42000352:	2189      	s32i.n	a8, a1, 8
42000354:	00c1a2        	addi	a10, a1, 0
42000357:	3b0c      	movi.n	a11, 3
42000359:	ffe1c1        	l32r	a12, 420002e0 <main+0x21c>
4200035c:	7d3c      	movi.n	a13, 55
4200035e:	ffe181        	l32r	a8, 420002e4 <main+0x220>
42000361:	0008e0        	callx8	a8
42000364:	ffe181        	l32r	a8, 420002e8 <main+0x224>
42000367:	0008e0        	callx8	a8
4200036a:	ffe081        	l32r	a8, 420002ec <main+0x228>
4200036d:	0898      	l32i.n	a9, a8, 0
4200036f:	024956        	bnez	a9, 42000397 <SYSTIMER_TARGET0+0x7f>
42000372:	f97c      	movi.n	a9, -1
42000374:	0899      	s32i.n	a9, a8, 0
42000376:	ffe291        	l32r	a9, 42000300 <main+0x23c>
42000379:	000992        	l8ui	a9, a9, 0
4200037c:	02e916        	beqz	a9, 420003ae <SYSTIMER_TARGET0+0x96>
4200037f:	ffe491        	l32r	a9, 42000310 <main+0x24c>
42000382:	1b0c      	movi.n	a11, 1
42000384:	0020c0        	memw
42000387:	09b9      	s32i.n	a11, a9, 0
42000389:	0898      	l32i.n	a9, a8, 0
4200038b:	991b      	addi.n	a9, a9, 1
4200038d:	0899      	s32i.n	a9, a8, 0
4200038f:	ffe181        	l32r	a8, 42000314 <main+0x250>
42000392:	0008e0        	callx8	a8
42000395:	f01d      	retw.n
42000397:	ffd6a1        	l32r	a10, 420002f0 <main+0x22c>
4200039a:	0b1c      	movi.n	a11, 16
4200039c:	00c1c2        	addi	a12, a1, 0
4200039f:	ffd5d1        	l32r	a13, 420002f4 <main+0x230>
420003a2:	ffd5e1        	l32r	a14, 420002f8 <main+0x234>
420003a5:	ffd581        	l32r	a8, 420002fc <main+0x238>
420003a8:	0008e0        	callx8	a8
420003ab:	0041f0        	break	1, 15
420003ae:	ffd5a1        	l32r	a10, 42000304 <main+0x240>
420003b1:	bb2c      	movi.n	a11, 43
420003b3:	ffd5c1        	l32r	a12, 42000308 <main+0x244>
420003b6:	ffd581        	l32r	a8, 4200030c <main+0x248>
420003b9:	0008e0        	callx8	a8
420003bc:	0041f0        	break	1, 15
420003bf:	00          	.byte 00
420003c0:	0dd8      	l32i.n	a13, a13, 0
420003c2:	00          	.byte 00
420003c3:	0c5c42        	s16i	a4, a12, 24
420003c6:	104200        	and	a4, a2, a0
420003c9:	000b      	addi.n	a0, a0, -1
420003cb:	0b5442        	s16i	a4, a4, 22
420003ce:	504200        	iitlb	a2
420003d1:	420005        	call0	420423d4 <memset+0x3b3fc>
420003d4:	0b28      	l32i.n	a2, a11, 0
420003d6:	644200        	extui	a4, a0, 2, 7
420003d9:	6001f0        	abs	a0, a15
420003dc:	d83aa1        	l32r	a10, 41ff64c4 <__user_exception+0x1c7d29c>
420003df:	f04850        	subx8	a4, a8, a5
420003e2:	646001        	l32r	a0, 41fd9564 <__user_exception+0x1c6033c>
420003e5:	00          	.byte 00
420003e6:	486002        	s32i	a0, a0, 0x120
420003e9:	00          	.byte 00
420003ea:	        	s32i	a0, a0, 216

420003ec <__post_init>:
420003ec:	006136        	entry	a1, 48
420003ef:	fff481        	l32r	a8, 420003c0 <SYSTIMER_TARGET0+0xa8>
420003f2:	0008e0        	callx8	a8
420003f5:	fff381        	l32r	a8, 420003c4 <SYSTIMER_TARGET0+0xac>
420003f8:	0008e0        	callx8	a8
420003fb:	fff381        	l32r	a8, 420003c8 <SYSTIMER_TARGET0+0xb0>
420003fe:	0008e0        	callx8	a8
42000401:	0a7d      	mov.n	a7, a10
42000403:	fff281        	l32r	a8, 420003cc <SYSTIMER_TARGET0+0xb4>
42000406:	0008e0        	callx8	a8
42000409:	1179      	s32i.n	a7, a1, 4
4200040b:	04c1a2        	addi	a10, a1, 4
4200040e:	fff081        	l32r	a8, 420003d0 <SYSTIMER_TARGET0+0xb8>
42000411:	0008e0        	callx8	a8
42000414:	1188      	l32i.n	a8, a1, 4
42000416:	0189      	s32i.n	a8, a1, 0
42000418:	00c1a2        	addi	a10, a1, 0
4200041b:	ffee81        	l32r	a8, 420003d4 <SYSTIMER_TARGET0+0xbc>
4200041e:	0008e0        	callx8	a8
42000421:	ffed81        	l32r	a8, 420003d8 <SYSTIMER_TARGET0+0xc0>
42000424:	ffee91        	l32r	a9, 420003dc <SYSTIMER_TARGET0+0xc4>
42000427:	0020c0        	memw
4200042a:	0899      	s32i.n	a9, a8, 0
4200042c:	ffeda1        	l32r	a10, 420003e0 <SYSTIMER_TARGET0+0xc8>
4200042f:	0b0c      	movi.n	a11, 0
42000431:	0020c0        	memw
42000434:	0ab9      	s32i.n	a11, a10, 0
42000436:	0020c0        	memw
42000439:	08b9      	s32i.n	a11, a8, 0
4200043b:	ffea81        	l32r	a8, 420003e4 <SYSTIMER_TARGET0+0xcc>
4200043e:	0020c0        	memw
42000441:	0899      	s32i.n	a9, a8, 0
42000443:	ffe991        	l32r	a9, 420003e8 <SYSTIMER_TARGET0+0xd0>
42000446:	0020c0        	memw
42000449:	09b9      	s32i.n	a11, a9, 0
4200044b:	0020c0        	memw
4200044e:	08b9      	s32i.n	a11, a8, 0
42000450:	f01d      	retw.n
	...

42000454 <__init_data>:
42000454:	004136        	entry	a1, 32
42000457:	020c      	movi.n	a2, 0
42000459:	f01d      	retw.n
4200045b:	809000        	add	a9, a0, a0
4200045e:	00          	.byte 00
4200045f:	60          	.byte 0x60
42000460:	ff          	.byte 0xff
42000461:	6cfffdff 	ee.vmulas.u8.accx.ld.ip.qup	q1, a15, -48, q7, q7, q7, q7
42000465:	005d      	mov.n	a5, a0
42000467:	803440        	add	a3, a4, a4
4200046a:	00          	.byte 00
4200046b:	60          	.byte 0x60
4200046c:	ff          	.byte 0xff
4200046d:	1cfbffff 	ee.vmulas.s16.qacc.ld.ip.qup	q1, a15, -16, q7, q7, q7, q3
42000471:	600080        	neg	a0, a8
42000474:	00ffc03f 	ee.vmulas.s16.accx.ld.ip.qup	q1, a3, 0, q7, q1, q7, q7
42000478:	00          	.byte 00
42000479:	140005        	call0	4201447c <memset+0xd4a4>
4200047c:	802c      	movi.n	a0, 40
4200047e:	00          	.byte 00
4200047f:	60          	.byte 0x60
42000480:	ff          	.byte 0xff
42000481:	00          	.byte 00
42000482:	8024ffff 	ee.ldf.128.ip	f0, f9, f15, f2, a15, -16
42000486:	016000        	slli	a6, a0, 32
42000489:	020102        	l8ui	a0, a1, 2
4200048c:	008030        	any4	b3, b0:b1:b2:b3
4200048f:	60          	.byte 0x60
42000490:	00          	.byte 00
42000491:	00          	.byte 00
42000492:	8028ffff 	ee.ldf.128.ip	f1, f1, f15, f2, a15, -16
42000496:	00          	.byte 00
42000497:	60          	.byte 0x60
42000498:	0000ffff 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q7, q6, q0, q0
4200049c:	010000        	slli	a0, a0, 32
4200049f:	802002        	l32i	a0, a0, 0x200
420004a2:	00          	.byte 00
420004a3:	60          	.byte 0x60
420004a4:	ff007fff 	ee.vmulas.s16.accx.ld.ip	q6, a15, -16, q5, q6
420004a8:	080000        	lsx	f0, a0, a0
420004ab:	412c00        	srli	a2, a0, 12
420004ae:	600c      	movi.n	a0, 6
420004b0:	60a8      	l32i.n	a10, a0, 24
420004b2:	086002        	s32i	a0, a0, 32
420004b5:	40          	.byte 0x40
420004b6:	600c      	movi.n	a0, 6
420004b8:	4068      	l32i.n	a6, a0, 16
420004ba:	600c      	movi.n	a0, 6
420004bc:	30e8      	l32i.n	a14, a0, 12
420004be:	00          	.byte 00
420004bf:	20e860        	or	a14, a8, a6
420004c2:	746000        	extui	a6, a0, 0, 8
420004c5:	600080        	neg	a0, a8
420004c8:	008000        	any4	b0, b0:b1:b2:b3
420004cb:	60          	.byte 0x60
420004cc:	ff          	.byte 0xff
420004cd:	df          	.byte 0xdf
420004ce:	ff          	.byte 0xff
420004cf:	ff          	.byte 0xff
420004d0:	ff          	.byte 0xff
420004d1:	7ffffbff 	ee.vmulas.u8.qacc.ld.ip.qup	q7, a15, -80, q7, q7, q7, q7
420004d5:	fffff5        	call12	420004d4 <__init_data+0x80>
420004d8:	8088      	l32i.n	a8, a0, 32
420004da:	00          	.byte 00
420004db:	60          	.byte 0x60
420004dc:	ff          	.byte 0xff
420004dd:	84fff7ff 	ee.ldf.128.ip	f9, f15, f15, f15, a15, 112
420004e1:	600080        	neg	a0, a8
420004e4:	5fffffff 	ee.vmulas.u16.qacc.ld.ip.qup	q7, a15, -16, q7, q7, q7, q7
420004e8:	000000        	ill
420004eb:	001410        	movsp	a1, a4
420004ee:	600c      	movi.n	a0, 6
420004f0:	ff          	.byte 0xff
420004f1:	fffff6        	bgeui	a15, 0x100, 420004f4 <__init_data+0xa0>
420004f4:	609c      	beqz.n	a0, 4200050e <__init_data+0xba>
420004f6:	546002        	s32i	a0, a0, 0x150
420004f9:	6001d0        	abs	a0, a13
420004fc:	d4          	.byte 0xd4
420004fd:	01cc      	bnez.n	a1, 42000501 <__init_data+0xad>
420004ff:	609060        	neg	a9, a6
42000502:	f06000        	subx8	a6, a0, a0
42000505:	600050        	neg	a0, a5
42000508:	0260b0        	andb	b6, b0, b11
4200050b:	c00060        	sub	a0, a0, a6
4200050e:	ff          	.byte 0xff
4200050f:	ff          	.byte 0xff
42000510:	ff          	.byte 0xff
42000511:	94ffefff 	ee.stf.128.ip	f9, f15, f14, f15, a15, -16
42000515:	600080        	neg	a0, a8
42000518:	3fffffff 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a15, -16, q7, q7, q7, q7
4200051c:	cfffffff 	ee.vmulas.u8.qacc.ld.xp.qup	q7, a15, a15, q7, q7, q7, q7
42000520:	ff          	.byte 0xff
42000521:	ff          	.byte 0xff
42000522:	3f          	.byte 0x3f
42000523:	ff          	.byte 0xff
42000524:	ff          	.byte 0xff
42000525:	ef          	.byte 0xef
42000526:	ff          	.byte 0xff
42000527:	ff          	.byte 0xff
42000528:	ff          	.byte 0xff
42000529:	ff          	.byte 0xff
4200052a:	ff          	.byte 0xff
4200052b:	f3          	.byte 0xf3
4200052c:	ff          	.byte 0xff
4200052d:	ff          	.byte 0xff
4200052e:	bf          	.byte 0xbf
4200052f:	ff          	.byte 0xff
42000530:	ff          	.byte 0xff
42000531:	ff          	.byte 0xff
42000532:	bffffcff 	ee.vmulas.s8.qacc.ld.xp.qup	q7, a15, a12, q7, q7, q7, q7
42000536:	ff          	.byte 0xff
42000537:	ff          	.byte 0xff
42000538:	cf          	.byte 0xcf
42000539:	10fff7ff 	ee.vmulas.s16.qacc.ld.ip.qup	q1, a15, 112, q7, q7, q7, q7
4200053d:	00          	.byte 00
4200053e:	600c      	movi.n	a0, 6
42000540:	ff          	.byte 0xff
42000541:	00ffffaf 	ee.vmulas.s16.accx.ld.ip.qup	q1, a10, 240, q7, q7, q7, q7
42000545:	00          	.byte 00
42000546:	400002        	l8ui	a0, a0, 64
42000549:	600080        	neg	a0, a8
4200054c:	804c      	movi.n	a0, 72
4200054e:	        	ee.ldf.64.xp	f6, f3, a0, a0

42000550 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings>:
42000550:	006136        	entry	a1, 48
42000553:	ffc2a1        	l32r	a10, 4200045c <__init_data+0x8>
42000556:	21a9      	s32i.n	a10, a1, 8
42000558:	0020c0        	memw
4200055b:	0a88      	l32i.n	a8, a10, 0
4200055d:	ffc091        	l32r	a9, 42000460 <__init_data+0xc>
42000560:	108890        	and	a8, a8, a9
42000563:	0020c0        	memw
42000566:	0a89      	s32i.n	a8, a10, 0
42000568:	6da062        	movi	a6, 109
4200056b:	150c      	movi.n	a5, 1
4200056d:	d40c      	movi.n	a4, 13
4200056f:	2d0c      	movi.n	a13, 2
42000571:	020c      	movi.n	a2, 0
42000573:	ffbc71        	l32r	a7, 42000464 <__init_data+0x10>
42000576:	06ad      	mov.n	a10, a6
42000578:	05bd      	mov.n	a11, a5
4200057a:	04cd      	mov.n	a12, a4
4200057c:	0ded      	mov.n	a14, a13
4200057e:	02fd      	mov.n	a15, a2
42000580:	0007e0        	callx8	a7
42000583:	3d0c      	movi.n	a13, 3
42000585:	06ad      	mov.n	a10, a6
42000587:	05bd      	mov.n	a11, a5
42000589:	04cd      	mov.n	a12, a4
4200058b:	0ded      	mov.n	a14, a13
4200058d:	02fd      	mov.n	a15, a2
4200058f:	0007e0        	callx8	a7
42000592:	ffb591        	l32r	a9, 42000468 <__init_data+0x14>
42000595:	1199      	s32i.n	a9, a1, 4
42000597:	0020c0        	memw
4200059a:	0988      	l32i.n	a8, a9, 0
4200059c:	ffb4a1        	l32r	a10, 4200046c <__init_data+0x18>
4200059f:	01a9      	s32i.n	a10, a1, 0
420005a1:	1088a0        	and	a8, a8, a10
420005a4:	0020c0        	memw
420005a7:	0989      	s32i.n	a8, a9, 0
420005a9:	ffb181        	l32r	a8, 42000470 <__init_data+0x1c>
420005ac:	0020c0        	memw
420005af:	0898      	l32i.n	a9, a8, 0
420005b1:	ffb0a1        	l32r	a10, 42000474 <__init_data+0x20>
420005b4:	1099a0        	and	a9, a9, a10
420005b7:	ffb0a1        	l32r	a10, 42000478 <__init_data+0x24>
420005ba:	2099a0        	or	a9, a9, a10
420005bd:	0020c0        	memw
420005c0:	0899      	s32i.n	a9, a8, 0
420005c2:	ffae81        	l32r	a8, 4200047c <__init_data+0x28>
420005c5:	0020c0        	memw
420005c8:	0898      	l32i.n	a9, a8, 0
420005ca:	ffada1        	l32r	a10, 42000480 <__init_data+0x2c>
420005cd:	1099a0        	and	a9, a9, a10
420005d0:	00a2a2        	movi	a10, 0x200
420005d3:	2099a0        	or	a9, a9, a10
420005d6:	0020c0        	memw
420005d9:	0899      	s32i.n	a9, a8, 0
420005db:	ffaa81        	l32r	a8, 42000484 <__init_data+0x30>
420005de:	0020c0        	memw
420005e1:	0898      	l32i.n	a9, a8, 0
420005e3:	ffa991        	l32r	a9, 42000488 <__init_data+0x34>
420005e6:	0020c0        	memw
420005e9:	0899      	s32i.n	a9, a8, 0
420005eb:	ffa881        	l32r	a8, 4200048c <__init_data+0x38>
420005ee:	0020c0        	memw
420005f1:	08a8      	l32i.n	a10, a8, 0
420005f3:	ffa7b1        	l32r	a11, 42000490 <__init_data+0x3c>
420005f6:	10aab0        	and	a10, a10, a11
420005f9:	01a2b2        	movi	a11, 0x201
420005fc:	20aab0        	or	a10, a10, a11
420005ff:	0020c0        	memw
42000602:	08a9      	s32i.n	a10, a8, 0
42000604:	ffa4a1        	l32r	a10, 42000494 <__init_data+0x40>
42000607:	0020c0        	memw
4200060a:	0ab8      	l32i.n	a11, a10, 0
4200060c:	0020c0        	memw
4200060f:	0a99      	s32i.n	a9, a10, 0
42000611:	0020c0        	memw
42000614:	0898      	l32i.n	a9, a8, 0
42000616:	ffa0a1        	l32r	a10, 42000498 <__init_data+0x44>
42000619:	1099a0        	and	a9, a9, a10
4200061c:	ffa0a1        	l32r	a10, 4200049c <__init_data+0x48>
4200061f:	2099a0        	or	a9, a9, a10
42000622:	0020c0        	memw
42000625:	0899      	s32i.n	a9, a8, 0
42000627:	5c0c      	movi.n	a12, 5
42000629:	440c      	movi.n	a4, 4
4200062b:	731c      	movi.n	a3, 23
4200062d:	06ad      	mov.n	a10, a6
4200062f:	05bd      	mov.n	a11, a5
42000631:	04dd      	mov.n	a13, a4
42000633:	02ed      	mov.n	a14, a2
42000635:	03fd      	mov.n	a15, a3
42000637:	0007e0        	callx8	a7
4200063a:	06ad      	mov.n	a10, a6
4200063c:	05bd      	mov.n	a11, a5
4200063e:	04cd      	mov.n	a12, a4
42000640:	04dd      	mov.n	a13, a4
42000642:	02ed      	mov.n	a14, a2
42000644:	03fd      	mov.n	a15, a3
42000646:	0007e0        	callx8	a7
42000649:	ff9581        	l32r	a8, 420004a0 <__init_data+0x4c>
4200064c:	0020c0        	memw
4200064f:	0898      	l32i.n	a9, a8, 0
42000651:	ff94a1        	l32r	a10, 420004a4 <__init_data+0x50>
42000654:	1099a0        	and	a9, a9, a10
42000657:	ff94a1        	l32r	a10, 420004a8 <__init_data+0x54>
4200065a:	2099a0        	or	a9, a9, a10
4200065d:	0020c0        	memw
42000660:	0899      	s32i.n	a9, a8, 0
42000662:	e31c      	movi.n	a3, 30
42000664:	06ad      	mov.n	a10, a6
42000666:	05bd      	mov.n	a11, a5
42000668:	04cd      	mov.n	a12, a4
4200066a:	04dd      	mov.n	a13, a4
4200066c:	02ed      	mov.n	a14, a2
4200066e:	03fd      	mov.n	a15, a3
42000670:	0007e0        	callx8	a7
42000673:	6c0c      	movi.n	a12, 6
42000675:	06ad      	mov.n	a10, a6
42000677:	05bd      	mov.n	a11, a5
42000679:	04dd      	mov.n	a13, a4
4200067b:	02ed      	mov.n	a14, a2
4200067d:	03fd      	mov.n	a15, a3
4200067f:	0007e0        	callx8	a7
42000682:	ff8a81        	l32r	a8, 420004ac <__init_data+0x58>
42000685:	0020c0        	memw
42000688:	0898      	l32i.n	a9, a8, 0
4200068a:	eb7c      	movi.n	a11, -2
4200068c:	1099b0        	and	a9, a9, a11
4200068f:	0020c0        	memw
42000692:	0899      	s32i.n	a9, a8, 0
42000694:	ff8781        	l32r	a8, 420004b0 <__init_data+0x5c>
42000697:	0020c0        	memw
4200069a:	0829      	s32i.n	a2, a8, 0
4200069c:	ff8681        	l32r	a8, 420004b4 <__init_data+0x60>
4200069f:	0020c0        	memw
420006a2:	0898      	l32i.n	a9, a8, 0
420006a4:	1099b0        	and	a9, a9, a11
420006a7:	0020c0        	memw
420006aa:	0899      	s32i.n	a9, a8, 0
420006ac:	ff8381        	l32r	a8, 420004b8 <__init_data+0x64>
420006af:	0020c0        	memw
420006b2:	0898      	l32i.n	a9, a8, 0
420006b4:	1099b0        	and	a9, a9, a11
420006b7:	0020c0        	memw
420006ba:	0899      	s32i.n	a9, a8, 0
420006bc:	ff8081        	l32r	a8, 420004bc <__init_data+0x68>
420006bf:	0020c0        	memw
420006c2:	0898      	l32i.n	a9, a8, 0
420006c4:	1099b0        	and	a9, a9, a11
420006c7:	0020c0        	memw
420006ca:	0899      	s32i.n	a9, a8, 0
420006cc:	ff7d81        	l32r	a8, 420004c0 <__init_data+0x6c>
420006cf:	0020c0        	memw
420006d2:	0898      	l32i.n	a9, a8, 0
420006d4:	1099b0        	and	a9, a9, a11
420006d7:	0020c0        	memw
420006da:	0899      	s32i.n	a9, a8, 0
420006dc:	ff7a81        	l32r	a8, 420004c4 <__init_data+0x70>
420006df:	0020c0        	memw
420006e2:	0898      	l32i.n	a9, a8, 0
420006e4:	01a8      	l32i.n	a10, a1, 0
420006e6:	1099a0        	and	a9, a9, a10
420006e9:	0020c0        	memw
420006ec:	0899      	s32i.n	a9, a8, 0
420006ee:	ff7681        	l32r	a8, 420004c8 <__init_data+0x74>
420006f1:	0020c0        	memw
420006f4:	0898      	l32i.n	a9, a8, 0
420006f6:	ff75a1        	l32r	a10, 420004cc <__init_data+0x78>
420006f9:	1099a0        	and	a9, a9, a10
420006fc:	0020c0        	memw
420006ff:	0899      	s32i.n	a9, a8, 0
42000701:	0020c0        	memw
42000704:	11c8      	l32i.n	a12, a1, 4
42000706:	0c98      	l32i.n	a9, a12, 0
42000708:	ff72a1        	l32r	a10, 420004d0 <__init_data+0x7c>
4200070b:	1099a0        	and	a9, a9, a10
4200070e:	0020c0        	memw
42000711:	0c99      	s32i.n	a9, a12, 0
42000713:	0020c0        	memw
42000716:	0898      	l32i.n	a9, a8, 0
42000718:	ff6fc1        	l32r	a12, 420004d4 <__init_data+0x80>
4200071b:	1099c0        	and	a9, a9, a12
4200071e:	0020c0        	memw
42000721:	0899      	s32i.n	a9, a8, 0
42000723:	ff6d81        	l32r	a8, 420004d8 <__init_data+0x84>
42000726:	0020c0        	memw
42000729:	0898      	l32i.n	a9, a8, 0
4200072b:	ff6cc1        	l32r	a12, 420004dc <__init_data+0x88>
4200072e:	1099c0        	and	a9, a9, a12
42000731:	0020c0        	memw
42000734:	0899      	s32i.n	a9, a8, 0
42000736:	ff6ac1        	l32r	a12, 420004e0 <__init_data+0x8c>
42000739:	0020c0        	memw
4200073c:	0c98      	l32i.n	a9, a12, 0
4200073e:	ff69d1        	l32r	a13, 420004e4 <__init_data+0x90>
42000741:	1099d0        	and	a9, a9, a13
42000744:	0020c0        	memw
42000747:	0c99      	s32i.n	a9, a12, 0
42000749:	0020c0        	memw
4200074c:	0898      	l32i.n	a9, a8, 0
4200074e:	ad7c      	movi.n	a13, -6
42000750:	1099d0        	and	a9, a9, a13
42000753:	0020c0        	memw
42000756:	0899      	s32i.n	a9, a8, 0
42000758:	0020c0        	memw
4200075b:	0cd8      	l32i.n	a13, a12, 0
4200075d:	ff6291        	l32r	a9, 420004e8 <__init_data+0x94>
42000760:	20dd90        	or	a13, a13, a9
42000763:	0020c0        	memw
42000766:	0cd9      	s32i.n	a13, a12, 0
42000768:	ff61c1        	l32r	a12, 420004ec <__init_data+0x98>
4200076b:	0020c0        	memw
4200076e:	0cd8      	l32i.n	a13, a12, 0
42000770:	10bdb0        	and	a11, a13, a11
42000773:	0020c0        	memw
42000776:	0cb9      	s32i.n	a11, a12, 0
42000778:	0020c0        	memw
4200077b:	21e8      	l32i.n	a14, a1, 8
4200077d:	0eb8      	l32i.n	a11, a14, 0
4200077f:	fc6c      	movi.n	a12, -17
42000781:	10bbc0        	and	a11, a11, a12
42000784:	0020c0        	memw
42000787:	0eb9      	s32i.n	a11, a14, 0
42000789:	0020c0        	memw
4200078c:	08b8      	l32i.n	a11, a8, 0
4200078e:	ff58c1        	l32r	a12, 420004f0 <__init_data+0x9c>
42000791:	10bbc0        	and	a11, a11, a12
42000794:	0020c0        	memw
42000797:	08b9      	s32i.n	a11, a8, 0
42000799:	ff56b1        	l32r	a11, 420004f4 <__init_data+0xa0>
4200079c:	0020c0        	memw
4200079f:	0bc8      	l32i.n	a12, a11, 0
420007a1:	ad6c      	movi.n	a13, -22
420007a3:	10ccd0        	and	a12, a12, a13
420007a6:	0020c0        	memw
420007a9:	0bc9      	s32i.n	a12, a11, 0
420007ab:	ff53b1        	l32r	a11, 420004f8 <__init_data+0xa4>
420007ae:	0020c0        	memw
420007b1:	0bc8      	l32i.n	a12, a11, 0
420007b3:	5d7c      	movi.n	a13, -11
420007b5:	10ccd0        	and	a12, a12, a13
420007b8:	0020c0        	memw
420007bb:	0bc9      	s32i.n	a12, a11, 0
420007bd:	ff4fb1        	l32r	a11, 420004fc <__init_data+0xa8>
420007c0:	0020c0        	memw
420007c3:	0bc8      	l32i.n	a12, a11, 0
420007c5:	d5afd2        	movi	a13, -43
420007c8:	10ccd0        	and	a12, a12, a13
420007cb:	0020c0        	memw
420007ce:	0bc9      	s32i.n	a12, a11, 0
420007d0:	ff4cb1        	l32r	a11, 42000500 <__init_data+0xac>
420007d3:	0020c0        	memw
420007d6:	0bc8      	l32i.n	a12, a11, 0
420007d8:	dfafd2        	movi	a13, -33
420007db:	10ccd0        	and	a12, a12, a13
420007de:	0020c0        	memw
420007e1:	0bc9      	s32i.n	a12, a11, 0
420007e3:	ff48b1        	l32r	a11, 42000504 <__init_data+0xb0>
420007e6:	0020c0        	memw
420007e9:	0bc8      	l32i.n	a12, a11, 0
420007eb:	ffabd2        	movi	a13, 0xfffffbff
420007ee:	10ccd0        	and	a12, a12, a13
420007f1:	0020c0        	memw
420007f4:	0bc9      	s32i.n	a12, a11, 0
420007f6:	ff44b1        	l32r	a11, 42000508 <__init_data+0xb4>
420007f9:	0020c0        	memw
420007fc:	0bc8      	l32i.n	a12, a11, 0
420007fe:	ff43d1        	l32r	a13, 4200050c <__init_data+0xb8>
42000801:	10ccd0        	and	a12, a12, a13
42000804:	0020c0        	memw
42000807:	0bc9      	s32i.n	a12, a11, 0
42000809:	0020c0        	memw
4200080c:	0eb8      	l32i.n	a11, a14, 0
4200080e:	ff40c1        	l32r	a12, 42000510 <__init_data+0xbc>
42000811:	10bbc0        	and	a11, a11, a12
42000814:	0020c0        	memw
42000817:	0eb9      	s32i.n	a11, a14, 0
42000819:	ff3eb1        	l32r	a11, 42000514 <__init_data+0xc0>
4200081c:	0020c0        	memw
4200081f:	0bc8      	l32i.n	a12, a11, 0
42000821:	ff3dd1        	l32r	a13, 42000518 <__init_data+0xc4>
42000824:	10ccd0        	and	a12, a12, a13
42000827:	0020c0        	memw
4200082a:	0bc9      	s32i.n	a12, a11, 0
4200082c:	0020c0        	memw
4200082f:	0bc8      	l32i.n	a12, a11, 0
42000831:	ff3ad1        	l32r	a13, 4200051c <__init_data+0xc8>
42000834:	10ccd0        	and	a12, a12, a13
42000837:	0020c0        	memw
4200083a:	0bc9      	s32i.n	a12, a11, 0
4200083c:	0020c0        	memw
4200083f:	0edd      	mov.n	a13, a14
42000841:	0dc8      	l32i.n	a12, a13, 0
42000843:	10aca0        	and	a10, a12, a10
42000846:	0020c0        	memw
42000849:	0da9      	s32i.n	a10, a13, 0
4200084b:	0020c0        	memw
4200084e:	0ba8      	l32i.n	a10, a11, 0
42000850:	ff34c1        	l32r	a12, 42000520 <__init_data+0xcc>
42000853:	10aac0        	and	a10, a10, a12
42000856:	0020c0        	memw
42000859:	0ba9      	s32i.n	a10, a11, 0
4200085b:	0020c0        	memw
4200085e:	0da8      	l32i.n	a10, a13, 0
42000860:	ff31c1        	l32r	a12, 42000524 <__init_data+0xd0>
42000863:	10aac0        	and	a10, a10, a12
42000866:	0020c0        	memw
42000869:	0da9      	s32i.n	a10, a13, 0
4200086b:	0020c0        	memw
4200086e:	0ba8      	l32i.n	a10, a11, 0
42000870:	ff2ec1        	l32r	a12, 42000528 <__init_data+0xd4>
42000873:	10aac0        	and	a10, a10, a12
42000876:	0020c0        	memw
42000879:	0ba9      	s32i.n	a10, a11, 0
4200087b:	0020c0        	memw
4200087e:	0da8      	l32i.n	a10, a13, 0
42000880:	ff2bc1        	l32r	a12, 4200052c <__init_data+0xd8>
42000883:	10aac0        	and	a10, a10, a12
42000886:	0020c0        	memw
42000889:	0da9      	s32i.n	a10, a13, 0
4200088b:	0020c0        	memw
4200088e:	0ba8      	l32i.n	a10, a11, 0
42000890:	ff28c1        	l32r	a12, 42000530 <__init_data+0xdc>
42000893:	10aac0        	and	a10, a10, a12
42000896:	0020c0        	memw
42000899:	0ba9      	s32i.n	a10, a11, 0
4200089b:	0020c0        	memw
4200089e:	0da8      	l32i.n	a10, a13, 0
420008a0:	ff25c1        	l32r	a12, 42000534 <__init_data+0xe0>
420008a3:	10aac0        	and	a10, a10, a12
420008a6:	0020c0        	memw
420008a9:	0da9      	s32i.n	a10, a13, 0
420008ab:	0020c0        	memw
420008ae:	08a8      	l32i.n	a10, a8, 0
420008b0:	ff22c1        	l32r	a12, 42000538 <__init_data+0xe4>
420008b3:	10aac0        	and	a10, a10, a12
420008b6:	0020c0        	memw
420008b9:	08a9      	s32i.n	a10, a8, 0
420008bb:	ff2081        	l32r	a8, 4200053c <__init_data+0xe8>
420008be:	0020c0        	memw
420008c1:	08a8      	l32i.n	a10, a8, 0
420008c3:	7c7c      	movi.n	a12, -9
420008c5:	10aac0        	and	a10, a10, a12
420008c8:	0020c0        	memw
420008cb:	08a9      	s32i.n	a10, a8, 0
420008cd:	0020c0        	memw
420008d0:	0b88      	l32i.n	a8, a11, 0
420008d2:	ff1ba1        	l32r	a10, 42000540 <__init_data+0xec>
420008d5:	1088a0        	and	a8, a8, a10
420008d8:	0020c0        	memw
420008db:	0b89      	s32i.n	a8, a11, 0
420008dd:	0020c0        	memw
420008e0:	0b88      	l32i.n	a8, a11, 0
420008e2:	208890        	or	a8, a8, a9
420008e5:	0020c0        	memw
420008e8:	0b89      	s32i.n	a8, a11, 0
420008ea:	0020c0        	memw
420008ed:	0d88      	l32i.n	a8, a13, 0
420008ef:	ff1591        	l32r	a9, 42000544 <__init_data+0xf0>
420008f2:	208890        	or	a8, a8, a9
420008f5:	0020c0        	memw
420008f8:	0d89      	s32i.n	a8, a13, 0
420008fa:	ff1381        	l32r	a8, 42000548 <__init_data+0xf4>
420008fd:	0020c0        	memw
42000900:	0829      	s32i.n	a2, a8, 0
42000902:	ff1281        	l32r	a8, 4200054c <__init_data+0xf8>
42000905:	f97c      	movi.n	a9, -1
42000907:	0020c0        	memw
4200090a:	0899      	s32i.n	a9, a8, 0
4200090c:	f01d      	retw.n
4200090e:	740000        	extui	a0, a0, 0, 8
42000911:	600080        	neg	a0, a8
42000914:	02c9      	s32i.n	a12, a2, 0
42000916:	f43c01        	l32r	a0, 41ffda08 <__user_exception+0x1c847e0>
42000919:	3c0102        	l8ui	a0, a1, 60
4200091c:	61c8      	l32i.n	a12, a1, 24
4200091e:	00          	.byte 00
4200091f:	f06842        	s32i	a4, a8, 0x3c0
42000922:	006001        	l32r	a0, 41fc0aa4 <__user_exception+0x1c4787c>
42000925:	10          	.byte 0x10
42000926:	800000        	add	a0, a0, a0
42000929:	6001f0        	abs	a0, a15
4200092c:	008000        	any4	b0, b0:b1:b2:b3
4200092f:	000000        	ill
42000932:	8fff7fff 	ee.ldf.128.xp	f15, f15, f7, f15, a15, a15
42000936:	408000        	rotw	0
42000939:	000213        	lsi	f1, a2, 0
4200093c:	010b07        	bnone	a11, a0, 42000941 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3f1>
4200093f:	000000        	ill
42000942:	408000        	rotw	0
42000945:	000f42        	l8ui	a4, a15, 0
42000948:	00          	.byte 00
42000949:	400006        	j	4201094d <memset+0x9975>
4200094c:	f06c      	movi.n	a0, -17
4200094e:	ff6001        	l32r	a0, 420006d0 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x180>
42000951:	 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a15, 0x1f0, q7, q6, q7, q7

42000954 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025>:
42000954:	006136        	entry	a1, 48
42000957:	ffa082        	movi	a8, 255
4200095a:	10b280        	and	a11, a2, a8
4200095d:	090c      	movi.n	a9, 0
4200095f:	1a0c      	movi.n	a10, 1
42000961:	ffeb71        	l32r	a7, 42000910 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3c0>
42000964:	5e3b26        	beqi	a11, 3, 420009c6 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x72>
42000967:	028b56        	bnez	a11, 42000993 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x3f>
4200096a:	0020c0        	memw
4200096d:	07b8      	l32i.n	a11, a7, 0
4200096f:	ec1c      	movi.n	a12, 30
42000971:	400c00        	ssr	a12
42000974:	91b0b0        	srl	a11, a11
42000977:	161b26        	beqi	a11, 1, 42000991 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x3d>
4200097a:	462b26        	beqi	a11, 2, 420009c4 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x70>
4200097d:	453b66        	bnei	a11, 3, 420009c6 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x72>
42000980:	ffe5a1        	l32r	a10, 42000914 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3c4>
42000983:	8b2c      	movi.n	a11, 40
42000985:	ffe4c1        	l32r	a12, 42000918 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3c8>
42000988:	ffe581        	l32r	a8, 4200091c <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3cc>
4200098b:	0008e0        	callx8	a8
4200098e:	0041f0        	break	1, 15
42000991:	220c      	movi.n	a2, 2
42000993:	10b280        	and	a11, a2, a8
42000996:	0020c0        	memw
42000999:	0798      	l32i.n	a9, a7, 0
4200099b:	00a1a2        	movi	a10, 0x100
4200099e:	1099a0        	and	a9, a9, a10
420009a1:	41c890        	srli	a12, a9, 8
420009a4:	11c9      	s32i.n	a12, a1, 4
420009a6:	0b2b66        	bnei	a11, 2, 420009b5 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x61>
420009a9:	008956        	bnez	a9, 420009b5 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x61>
420009ac:	290c      	movi.n	a9, 2
420009ae:	0b0c      	movi.n	a11, 0
420009b0:	01b9      	s32i.n	a11, a1, 0
420009b2:	000a86        	j	420009e0 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x8c>
420009b5:	029d      	mov.n	a9, a2
420009b7:	10a980        	and	a10, a9, a8
420009ba:	1b1a26        	beqi	a10, 1, 420009d9 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x85>
420009bd:	0a0c      	movi.n	a10, 0
420009bf:	01a9      	s32i.n	a10, a1, 0
420009c1:	000a06        	j	420009ed <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x99>
420009c4:	0a9d      	mov.n	a9, a10
420009c6:	0020c0        	memw
420009c9:	07b8      	l32i.n	a11, a7, 0
420009cb:	41b8b0        	srli	a11, a11, 8
420009ce:	10aba0        	and	a10, a11, a10
420009d1:	11a9      	s32i.n	a10, a1, 4
420009d3:	10a980        	and	a10, a9, a8
420009d6:	e31a66        	bnei	a10, 1, 420009bd <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x69>
420009d9:	190c      	movi.n	a9, 1
420009db:	00a2a2        	movi	a10, 0x200
420009de:	0199      	s32i.n	a9, a1, 0
420009e0:	0020c0        	memw
420009e3:	07b8      	l32i.n	a11, a7, 0
420009e5:	20aba0        	or	a10, a11, a10
420009e8:	0020c0        	memw
420009eb:	07a9      	s32i.n	a10, a7, 0
420009ed:	ffcc41        	l32r	a4, 42000920 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3d0>
420009f0:	0020c0        	memw
420009f3:	04a8      	l32i.n	a10, a4, 0
420009f5:	ffcbb1        	l32r	a11, 42000924 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3d4>
420009f8:	10bab0        	and	a11, a10, a11
420009fb:	ffcb61        	l32r	a6, 42000928 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3d8>
420009fe:	7fa0a2        	movi	a10, 127
42000a01:	ffca51        	l32r	a5, 4200092c <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3dc>
42000a04:	02ab16        	beqz	a11, 42000a32 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0xde>
42000a07:	0020c0        	memw
42000a0a:	06b8      	l32i.n	a11, a6, 0
42000a0c:	10bba0        	and	a11, a11, a10
42000a0f:	80a0c2        	movi	a12, 128
42000a12:	20bbc0        	or	a11, a11, a12
42000a15:	0020c0        	memw
42000a18:	06b9      	s32i.n	a11, a6, 0
42000a1a:	1b0c      	movi.n	a11, 1
42000a1c:	0020c0        	memw
42000a1f:	04c8      	l32i.n	a12, a4, 0
42000a21:	10cc50        	and	a12, a12, a5
42000a24:	00ac56        	bnez	a12, 42000a32 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0xde>
42000a27:	0020c0        	memw
42000a2a:	06c8      	l32i.n	a12, a6, 0
42000a2c:	10ccb0        	and	a12, a12, a11
42000a2f:	fe9c16        	beqz	a12, 42000a1c <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0xc8>
42000a32:	11b300        	slli	a11, a3, 16
42000a35:	ffbec1        	l32r	a12, 42000930 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3e0>
42000a38:	10bbc0        	and	a11, a11, a12
42000a3b:	108980        	and	a8, a9, a8
42000a3e:	119830        	slli	a9, a8, 13
42000a41:	2099b0        	or	a9, a9, a11
42000a44:	0020c0        	memw
42000a47:	04b8      	l32i.n	a11, a4, 0
42000a49:	ffbac1        	l32r	a12, 42000934 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3e4>
42000a4c:	10bbc0        	and	a11, a11, a12
42000a4f:	2099b0        	or	a9, a9, a11
42000a52:	0020c0        	memw
42000a55:	0499      	s32i.n	a9, a4, 0
42000a57:	091826        	beqi	a8, 1, 42000a64 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x110>
42000a5a:	0e2866        	bnei	a8, 2, 42000a6c <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x118>
42000a5d:	391c      	movi.n	a9, 19
42000a5f:	058d      	mov.n	a8, a5
42000a61:	000306        	j	42000a71 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x11d>
42000a64:	ffb681        	l32r	a8, 4200093c <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3ec>
42000a67:	391c      	movi.n	a9, 19
42000a69:	000106        	j	42000a71 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x11d>
42000a6c:	ffb381        	l32r	a8, 42000938 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3e8>
42000a6f:	191c      	movi.n	a9, 17
42000a71:	401900        	ssl	a9
42000a74:	a19300        	sll	a9, a3
42000a77:	0020c0        	memw
42000a7a:	06b8      	l32i.n	a11, a6, 0
42000a7c:	10aba0        	and	a10, a11, a10
42000a7f:	209a90        	or	a9, a10, a9
42000a82:	0020c0        	memw
42000a85:	0699      	s32i.n	a9, a6, 0
42000a87:	0020c0        	memw
42000a8a:	0498      	l32i.n	a9, a4, 0
42000a8c:	ffada1        	l32r	a10, 42000940 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3f0>
42000a8f:	2099a0        	or	a9, a9, a10
42000a92:	0020c0        	memw
42000a95:	0499      	s32i.n	a9, a4, 0
42000a97:	ffab91        	l32r	a9, 42000944 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3f4>
42000a9a:	829390        	mull	a9, a3, a9
42000a9d:	c2a980        	quou	a10, a9, a8
42000aa0:	ffaa81        	l32r	a8, 42000948 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3f8>
42000aa3:	0008e0        	callx8	a8
42000aa6:	180c      	movi.n	a8, 1
42000aa8:	020c      	movi.n	a2, 0
42000aaa:	0020c0        	memw
42000aad:	0498      	l32i.n	a9, a4, 0
42000aaf:	109950        	and	a9, a9, a5
42000ab2:	00d956        	bnez	a9, 42000ac3 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x16f>
42000ab5:	0020c0        	memw
42000ab8:	0698      	l32i.n	a9, a6, 0
42000aba:	109980        	and	a9, a9, a8
42000abd:	fe9916        	beqz	a9, 42000aaa <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x156>
42000ac0:	000286        	j	42000ace <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x17a>
42000ac3:	ffa281        	l32r	a8, 4200094c <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x3fc>
42000ac6:	0020c0        	memw
42000ac9:	0888      	l32i.n	a8, a8, 0
42000acb:	412780        	srli	a2, a8, 7
42000ace:	0020c0        	memw
42000ad1:	0488      	l32i.n	a8, a4, 0
42000ad3:	ff9f91        	l32r	a9, 42000950 <esp_hal_common::rtc_cntl::sleep::rtc_sleep::RtcSleepConfig::base_settings+0x400>
42000ad6:	108890        	and	a8, a8, a9
42000ad9:	0020c0        	memw
42000adc:	0489      	s32i.n	a8, a4, 0
42000ade:	0020c0        	memw
42000ae1:	0788      	l32i.n	a8, a7, 0
42000ae3:	ffae92        	movi	a9, 0xfffffeff
42000ae6:	108890        	and	a8, a8, a9
42000ae9:	1198      	l32i.n	a9, a1, 4
42000aeb:	119980        	slli	a9, a9, 8
42000aee:	208890        	or	a8, a8, a9
42000af1:	0020c0        	memw
42000af4:	0789      	s32i.n	a8, a7, 0
42000af6:	0188      	l32i.n	a8, a1, 0
42000af8:	00f816        	beqz	a8, 42000b0b <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17h53d9482e775636e3E.llvm.4339270341237252025+0x1b7>
42000afb:	0020c0        	memw
42000afe:	0788      	l32i.n	a8, a7, 0
42000b00:	ffad92        	movi	a9, 0xfffffdff
42000b03:	108890        	and	a8, a8, a9
42000b06:	0020c0        	memw
42000b09:	0789      	s32i.n	a8, a7, 0
42000b0b:	f01d      	retw.n
42000b0d:	000000        	ill

42000b10 <<esp_hal_common::rtc_cntl::Rwdt as core::default::Default>::default>:
42000b10:	004136        	entry	a1, 32
42000b13:	420c      	movi.n	a2, 4
42000b15:	f01d      	retw.n
42000b17:	80b000        	add	a11, a0, a0
42000b1a:	a16000        	sll	a6, a0
42000b1d:	d83a      	add.n	a13, a8, a3
42000b1f:	809850        	add	a9, a8, a5
42000b22:	00          	.byte 00
42000b23:	60          	.byte 0x60
42000b24:	7fffefff 	ee.vmulas.u8.qacc.ld.ip.qup	q7, a15, -16, q7, q5, q7, q7

42000b28 <esp_hal_common::rtc_cntl::Rwdt::disable>:
42000b28:	004136        	entry	a1, 32
42000b2b:	fffb81        	l32r	a8, 42000b18 <<esp_hal_common::rtc_cntl::Rwdt as core::default::Default>::default+0x8>
42000b2e:	fffb91        	l32r	a9, 42000b1c <<esp_hal_common::rtc_cntl::Rwdt as core::default::Default>::default+0xc>
42000b31:	0020c0        	memw
42000b34:	0899      	s32i.n	a9, a8, 0
42000b36:	fffa91        	l32r	a9, 42000b20 <<esp_hal_common::rtc_cntl::Rwdt as core::default::Default>::default+0x10>
42000b39:	0020c0        	memw
42000b3c:	09a8      	l32i.n	a10, a9, 0
42000b3e:	fff9b1        	l32r	a11, 42000b24 <<esp_hal_common::rtc_cntl::Rwdt as core::default::Default>::default+0x14>
42000b41:	10aab0        	and	a10, a10, a11
42000b44:	0020c0        	memw
42000b47:	09a9      	s32i.n	a10, a9, 0
42000b49:	090c      	movi.n	a9, 0
42000b4b:	0020c0        	memw
42000b4e:	0899      	s32i.n	a9, a8, 0
42000b50:	f01d      	retw.n
	...

42000b54 <esp_hal_common::rtc_cntl::Swd::new>:
42000b54:	004136        	entry	a1, 32
42000b57:	f01d      	retw.n
42000b59:	000000        	ill

42000b5c <esp_hal_common::clock::ClockControl::freeze>:
42000b5c:	004136        	entry	a1, 32
42000b5f:	0388      	l32i.n	a8, a3, 0
42000b61:	1398      	l32i.n	a9, a3, 4
42000b63:	23a8      	l32i.n	a10, a3, 8
42000b65:	33b8      	l32i.n	a11, a3, 12
42000b67:	32b9      	s32i.n	a11, a2, 12
42000b69:	22a9      	s32i.n	a10, a2, 8
42000b6b:	1299      	s32i.n	a9, a2, 4
42000b6d:	0289      	s32i.n	a8, a2, 0
42000b6f:	f01d      	retw.n
42000b71:	000000        	ill
42000b74:	010314        	ee.ldqa.s16.128.ip	a1, 48
42000b77:	003c      	movi.n	a0, 48
42000b79:	20          	.byte 0x20
42000b7a:	000000        	ill
42000b7d:	0c28      	l32i.n	a2, a12, 0
42000b7f:	200060        	or	a0, a0, a6
42000b82:	600c      	movi.n	a0, 6
42000b84:	0000ffff 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q7, q6, q0, q0

42000b88 <esp_hal_common::interrupt::xtensa::vectored::enable>:
42000b88:	004136        	entry	a1, 32
42000b8b:	028d      	mov.n	a8, a2
42000b8d:	ffa092        	movi	a9, 255
42000b90:	109390        	and	a9, a3, a9
42000b93:	120c      	movi.n	a2, 1
42000b95:	fff7a1        	l32r	a10, 42000b74 <esp_hal_common::clock::ClockControl::freeze+0x18>
42000b98:	a0a9a0        	addx4	a10, a9, a10
42000b9b:	0aa8      	l32i.n	a10, a10, 0
42000b9d:	000aa0        	jx	a10
42000ba0:	391c      	movi.n	a9, 19
42000ba2:	000046        	j	42000ba7 <esp_hal_common::interrupt::xtensa::vectored::enable+0x1f>
42000ba5:	791c      	movi.n	a9, 23
42000ba7:	fff4a1        	l32r	a10, 42000b78 <esp_hal_common::clock::ClockControl::freeze+0x1c>
42000baa:	03ebb0        	rsr.prid	a11
42000bad:	10aba0        	and	a10, a11, a10
42000bb0:	020c      	movi.n	a2, 0
42000bb2:	051a27        	beq	a10, a2, 42000bbb <esp_hal_common::interrupt::xtensa::vectored::enable+0x33>
42000bb5:	fff1a1        	l32r	a10, 42000b7c <esp_hal_common::clock::ClockControl::freeze+0x20>
42000bb8:	000086        	j	42000bbe <esp_hal_common::interrupt::xtensa::vectored::enable+0x36>
42000bbb:	fff1a1        	l32r	a10, 42000b80 <esp_hal_common::clock::ClockControl::freeze+0x24>
42000bbe:	fff1b1        	l32r	a11, 42000b84 <esp_hal_common::clock::ClockControl::freeze+0x28>
42000bc1:	1088b0        	and	a8, a8, a11
42000bc4:	a088a0        	addx4	a8, a8, a10
42000bc7:	0020c0        	memw
42000bca:	0899      	s32i.n	a9, a8, 0
42000bcc:	180c      	movi.n	a8, 1
42000bce:	401900        	ssl	a9
42000bd1:	a18800        	sll	a8, a8
42000bd4:	03e490        	rsr.intenable	a9
42000bd7:	208980        	or	a8, a9, a8
42000bda:	029d      	mov.n	a9, a2
42000bdc:	61e490        	xsr.intenable	a9
42000bdf:	208890        	or	a8, a8, a9
42000be2:	002010        	rsync
42000be5:	13e480        	wsr.intenable	a8
42000be8:	002010        	rsync
42000beb:	f01d      	retw.n
42000bed:	000000        	ill
42000bf0:	0100f4        	ee.ldqa.s16.128.ip	a15, 0
42000bf3:	603c      	movi.n	a0, 54
42000bf5:	420056        	bnez	a0, 42001019 <Reset+0x29>

42000bf8 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt>:
42000bf8:	004136        	entry	a1, 32
42000bfb:	fffdb1        	l32r	a11, 42000bf0 <esp_hal_common::interrupt::xtensa::vectored::enable+0x68>
42000bfe:	0c1c      	movi.n	a12, 16
42000c00:	fffd81        	l32r	a8, 42000bf4 <esp_hal_common::interrupt::xtensa::vectored::enable+0x6c>
42000c03:	03ad      	mov.n	a10, a3
42000c05:	0008e0        	callx8	a8
42000c08:	0a2d      	mov.n	a2, a10
42000c0a:	f01d      	retw.n
42000c0c:	0080c0        	any4	b12, b0:b1:b2:b3
42000c0f:	60          	.byte 0x60
42000c10:	0000ffff 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q7, q6, q0, q0
42000c14:	0648      	l32i.n	a4, a6, 0
42000c16:	083c01        	l32r	a0, 41fc2d08 <__user_exception+0x1c49ae0>
42000c19:	3c0107        	bnone	a1, a0, 42000c59 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x61>
42000c1c:	61c8      	l32i.n	a12, a1, 24
42000c1e:	744200        	extui	a4, a0, 2, 8
42000c21:	600080        	neg	a0, a8
42000c24:	000000        	ill
42000c27:	060020        	ee.ldf.64.xp	f0, f0, a2, a0
42000c2a:	00          	.byte 00
42000c2b:	40          	.byte 0x40
42000c2c:	3bfffeff 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a15, 0xfffffee0, q7, q7, q7, q7
42000c30:	000954        	ee.ld.qacc_l.l.128.ip	a5, 144
42000c33:	800042        	l8ui	a4, a0, 128
42000c36:	400000        	ssr	a0
42000c39:	000f42        	l8ui	a4, a15, 0
42000c3c:	83          	.byte 0x83
42000c3d:	00431bde 	ee.vmulas.s16.accx.ld.ip.qup	q0, a13, 176, q0, q2, q4, q3
42000c41:	7ffc      	bnez.n	a15, 42000c7c <esp_hal_common::rtc_cntl::rtc::configure_clock+0x20>
42000c43:	423f00        	xorb	b3, b15, b0
42000c46:	02b0000f 	ee.vmulas.s16.accx.ld.ip.qup	q4, a0, 0, q4, q1, q3, q0
42000c4a:	043c01        	l32r	a0, 41fc1d3c <__user_exception+0x1c48b14>
42000c4d:	3c0103        	lsi	f0, a1, 240
42000c50:	00a000        	any8	b0, b0:b1:b2:b3:b4:b5:b6:b7
42000c53:	00          	.byte 00
42000c54:	006fa4        	ee.ld.qacc_l.l.128.ip	a10, 0x6f0
42000c57:	805442        	s16i	a4, a4, 0x100
42000c5a:	        	ee.ldf.64.xp	f6, f3, a0, a0

42000c5c <esp_hal_common::rtc_cntl::rtc::configure_clock>:
42000c5c:	00a136        	entry	a1, 80
42000c5f:	ffeb81        	l32r	a8, 42000c0c <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x14>
42000c62:	0020c0        	memw
42000c65:	a189      	s32i.n	a8, a1, 40
42000c67:	0898      	l32i.n	a9, a8, 0
42000c69:	ffe981        	l32r	a8, 42000c10 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x18>
42000c6c:	9189      	s32i.n	a8, a1, 36
42000c6e:	108980        	and	a8, a9, a8
42000c71:	0a1c      	movi.n	a10, 16
42000c73:	81a9      	s32i.n	a10, a1, 32
42000c75:	400a00        	ssr	a10
42000c78:	91a090        	srl	a10, a9
42000c7b:	8b2c      	movi.n	a11, 40
42000c7d:	b1b9      	s32i.n	a11, a1, 44
42000c7f:	0c98a7        	bne	a8, a10, 42000c8f <esp_hal_common::rtc_cntl::rtc::configure_clock+0x33>
42000c82:	991b      	addi.n	a9, a9, 1
42000c84:	0729b6        	bltui	a9, 2, 42000c8f <esp_hal_common::rtc_cntl::rtc::configure_clock+0x33>
42000c87:	b198      	l32i.n	a9, a1, 44
42000c89:	021897        	beq	a8, a9, 42000c8f <esp_hal_common::rtc_cntl::rtc::configure_clock+0x33>
42000c8c:	004b86        	j	42000dbe <esp_hal_common::rtc_cntl::rtc::configure_clock+0x162>
42000c8f:	ffe431        	l32r	a3, 42000c20 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x28>
42000c92:	0020c0        	memw
42000c95:	0388      	l32i.n	a8, a3, 0
42000c97:	ffe391        	l32r	a9, 42000c24 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x2c>
42000c9a:	208890        	or	a8, a8, a9
42000c9d:	0020c0        	memw
42000ca0:	0389      	s32i.n	a8, a3, 0
42000ca2:	3a0c      	movi.n	a10, 3
42000ca4:	ffe181        	l32r	a8, 42000c28 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x30>
42000ca7:	7189      	s32i.n	a8, a1, 28
42000ca9:	0008e0        	callx8	a8
42000cac:	ffe081        	l32r	a8, 42000c2c <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x34>
42000caf:	6189      	s32i.n	a8, a1, 24
42000cb1:	2ca182        	movi	a8, 0x12c
42000cb4:	5189      	s32i.n	a8, a1, 20
42000cb6:	060c      	movi.n	a6, 0
42000cb8:	120c      	movi.n	a2, 1
42000cba:	082c      	movi.n	a8, 32
42000cbc:	4189      	s32i.n	a8, a1, 16
42000cbe:	e87c      	movi.n	a8, -2
42000cc0:	3189      	s32i.n	a8, a1, 12
42000cc2:	00a482        	movi	a8, 0x400
42000cc5:	2189      	s32i.n	a8, a1, 8
42000cc7:	ffda81        	l32r	a8, 42000c30 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x38>
42000cca:	1189      	s32i.n	a8, a1, 4
42000ccc:	ffda71        	l32r	a7, 42000c34 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x3c>
42000ccf:	ffe181        	l32r	a8, 42000c54 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x5c>
42000cd2:	0189      	s32i.n	a8, a1, 0
42000cd4:	000506        	j	42000cec <esp_hal_common::rtc_cntl::rtc::configure_clock+0x90>
42000cd7:	41ada0        	srli	a10, a10, 13
42000cda:	aaea      	add.n	a10, a10, a14
42000cdc:	9a9a      	add.n	a9, a10, a9
42000cde:	b90b      	addi.n	a11, a9, -1
42000ce0:	08ad      	mov.n	a10, a8
42000ce2:	06dd      	mov.n	a13, a6
42000ce4:	0188      	l32i.n	a8, a1, 0
42000ce6:	0008e0        	callx8	a8
42000ce9:	0b6a56        	bnez	a10, 42000da3 <esp_hal_common::rtc_cntl::rtc::configure_clock+0x147>
42000cec:	0020c0        	memw
42000cef:	0388      	l32i.n	a8, a3, 0
42000cf1:	6198      	l32i.n	a9, a1, 24
42000cf3:	108890        	and	a8, a8, a9
42000cf6:	0020c0        	memw
42000cf9:	0389      	s32i.n	a8, a3, 0
42000cfb:	51a8      	l32i.n	a10, a1, 20
42000cfd:	7188      	l32i.n	a8, a1, 28
42000cff:	0008e0        	callx8	a8
42000d02:	0020c0        	memw
42000d05:	a188      	l32i.n	a8, a1, 40
42000d07:	0888      	l32i.n	a8, a8, 0
42000d09:	9198      	l32i.n	a9, a1, 36
42000d0b:	105890        	and	a5, a8, a9
42000d0e:	029d      	mov.n	a9, a2
42000d10:	41a8      	l32i.n	a10, a1, 16
42000d12:	3115a7        	beq	a5, a10, 42000d47 <esp_hal_common::rtc_cntl::rtc::configure_clock+0xeb>
42000d15:	024d      	mov.n	a4, a2
42000d17:	b1a8      	l32i.n	a10, a1, 44
42000d19:	3395a7        	bne	a5, a10, 42000d50 <esp_hal_common::rtc_cntl::rtc::configure_clock+0xf4>
42000d1c:	980b      	addi.n	a9, a8, -1
42000d1e:	31a8      	l32i.n	a10, a1, 12
42000d20:	36b9a7        	bgeu	a9, a10, 42000d5a <esp_hal_common::rtc_cntl::rtc::configure_clock+0xfe>
42000d23:	8198      	l32i.n	a9, a1, 32
42000d25:	400900        	ssr	a9
42000d28:	918080        	srl	a8, a8
42000d2b:	011587        	beq	a5, a8, 42000d30 <esp_hal_common::rtc_cntl::rtc::configure_clock+0xd4>
42000d2e:	024d      	mov.n	a4, a2
42000d30:	06ad      	mov.n	a10, a6
42000d32:	21b8      	l32i.n	a11, a1, 8
42000d34:	1188      	l32i.n	a8, a1, 4
42000d36:	0008e0        	callx8	a8
42000d39:	07cd      	mov.n	a12, a7
42000d3b:	046416        	beqz	a4, 42000d85 <esp_hal_common::rtc_cntl::rtc::configure_clock+0x129>
42000d3e:	281466        	bnei	a4, 1, 42000d6a <esp_hal_common::rtc_cntl::rtc::configure_clock+0x10e>
42000d41:	ffc3c1        	l32r	a12, 42000c50 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x58>
42000d44:	000f46        	j	42000d85 <esp_hal_common::rtc_cntl::rtc::configure_clock+0x129>
42000d47:	069d      	mov.n	a9, a6
42000d49:	024d      	mov.n	a4, a2
42000d4b:	b1a8      	l32i.n	a10, a1, 44
42000d4d:	cb15a7        	beq	a5, a10, 42000d1c <esp_hal_common::rtc_cntl::rtc::configure_clock+0xc0>
42000d50:	1149f0        	slli	a4, a9, 1
42000d53:	980b      	addi.n	a9, a8, -1
42000d55:	31a8      	l32i.n	a10, a1, 12
42000d57:	c839a7        	bltu	a9, a10, 42000d23 <esp_hal_common::rtc_cntl::rtc::configure_clock+0xc7>
42000d5a:	024d      	mov.n	a4, a2
42000d5c:	8198      	l32i.n	a9, a1, 32
42000d5e:	400900        	ssr	a9
42000d61:	918080        	srl	a8, a8
42000d64:	c69587        	bne	a5, a8, 42000d2e <esp_hal_common::rtc_cntl::rtc::configure_clock+0xd2>
42000d67:	fff146        	j	42000d30 <esp_hal_common::rtc_cntl::rtc::configure_clock+0xd4>
42000d6a:	ffb381        	l32r	a8, 42000c38 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x40>
42000d6d:	828580        	mull	a8, a5, a8
42000d70:	ffb591        	l32r	a9, 42000c44 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x4c>
42000d73:	36b987        	bgeu	a9, a8, 42000dad <esp_hal_common::rtc_cntl::rtc::configure_clock+0x151>
42000d76:	ffb191        	l32r	a9, 42000c3c <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x44>
42000d79:	a28890        	muluh	a8, a8, a9
42000d7c:	418880        	srli	a8, a8, 8
42000d7f:	ffb091        	l32r	a9, 42000c40 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x48>
42000d82:	10c890        	and	a12, a8, a9
42000d85:	4181c0        	srli	a8, a12, 1
42000d88:	01bad0        	slli	a11, a10, 19
42000d8b:	db8a      	add.n	a13, a11, a8
42000d8d:	8d0b      	addi.n	a8, a13, -1
42000d8f:	029d      	mov.n	a9, a2
42000d91:	0138d7        	bltu	a8, a13, 42000d96 <esp_hal_common::rtc_cntl::rtc::configure_clock+0x13a>
42000d94:	069d      	mov.n	a9, a6
42000d96:	02ed      	mov.n	a14, a2
42000d98:	02bdb7        	bgeu	a13, a11, 42000d9e <esp_hal_common::rtc_cntl::rtc::configure_clock+0x142>
42000d9b:	ffce06        	j	42000cd7 <esp_hal_common::rtc_cntl::rtc::configure_clock+0x7b>
42000d9e:	06ed      	mov.n	a14, a6
42000da0:	ffccc6        	j	42000cd7 <esp_hal_common::rtc_cntl::rtc::configure_clock+0x7b>
42000da3:	ffad81        	l32r	a8, 42000c58 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x60>
42000da6:	0020c0        	memw
42000da9:	08a9      	s32i.n	a10, a8, 0
42000dab:	f01d      	retw.n
42000dad:	ffa6a1        	l32r	a10, 42000c48 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x50>
42000db0:	9b1c      	movi.n	a11, 25
42000db2:	ffa6c1        	l32r	a12, 42000c4c <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x54>
42000db5:	ff9981        	l32r	a8, 42000c1c <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x24>
42000db8:	0008e0        	callx8	a8
42000dbb:	0041f0        	break	1, 15
42000dbe:	ff95a1        	l32r	a10, 42000c14 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x1c>
42000dc1:	4b5c      	movi.n	a11, 84
42000dc3:	ff95c1        	l32r	a12, 42000c18 <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x20>
42000dc6:	ff9581        	l32r	a8, 42000c1c <<esp_hal_common::interrupt::xtensa::vectored::Error as core::fmt::Debug>::fmt+0x24>
42000dc9:	0008e0        	callx8	a8
42000dcc:	0041f0        	break	1, 15
	...

42000dd0 <EspDefaultHandler>:
42000dd0:	004136        	entry	a1, 32
42000dd3:	f01d      	retw.n
42000dd5:	000000        	ill

42000dd8 <DefaultHandler>:
42000dd8:	004136        	entry	a1, 32
42000ddb:	f01d      	retw.n
42000ddd:	000000        	ill

42000de0 <esp_hal_common::delay::delay::<impl esp_hal_common::delay::Delay>::new>:
42000de0:	004136        	entry	a1, 32
42000de3:	0228      	l32i.n	a2, a2, 0
42000de5:	030c      	movi.n	a3, 0
42000de7:	f01d      	retw.n
42000de9:	000000        	ill
42000dec:	40          	.byte 0x40
42000ded:	000f42        	l8ui	a4, a15, 0
42000df0:	006fa4        	ee.ld.qacc_l.l.128.ip	a10, 0x6f0
42000df3:	42          	.byte 0x42

42000df4 <esp_hal_common::delay::delay::<impl esp_hal_common::delay::Delay>::delay>:
42000df4:	004136        	entry	a1, 32
42000df7:	02a8      	l32i.n	a10, a2, 0
42000df9:	12b8      	l32i.n	a11, a2, 4
42000dfb:	fffcc1        	l32r	a12, 42000dec <esp_hal_common::delay::delay::<impl esp_hal_common::delay::Delay>::new+0xc>
42000dfe:	0d0c      	movi.n	a13, 0
42000e00:	fffc81        	l32r	a8, 42000df0 <esp_hal_common::delay::delay::<impl esp_hal_common::delay::Delay>::new+0x10>
42000e03:	0008e0        	callx8	a8
42000e06:	828a30        	mull	a8, a10, a3
42000e09:	03ea90        	rsr.ccount	a9
42000e0c:	03eaa0        	rsr.ccount	a10
42000e0f:	c0aa90        	sub	a10, a10, a9
42000e12:	f63a87        	bltu	a10, a8, 42000e0c <esp_hal_common::delay::delay::<impl esp_hal_common::delay::Delay>::delay+0x18>
42000e15:	f01d      	retw.n
42000e17:	200000        	or	a0, a0, a0
42000e1a:	100000        	and	a0, a0, a0
42000e1d:	c89a      	add.n	a12, a8, a9
42000e1f:	0107183f 	ee.vmulas.s16.accx.ld.ip.qup	q2, a3, 128, q4, q2, q0, q7
42000e23:	9c3c      	movi.n	a12, 57
42000e25:	3c0107        	bnone	a1, a0, 42000e65 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire+0x39>
42000e28:	604c      	movi.n	a0, 70
42000e2a:	        	ee.ldf.64.xp	f4, f3, a0, a2

42000e2c <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire>:
42000e2c:	006136        	entry	a1, 48
42000e2f:	006520        	rsil	a2, 5
42000e32:	fff981        	l32r	a8, 42000e18 <esp_hal_common::delay::delay::<impl esp_hal_common::delay::Delay>::delay+0x24>
42000e35:	03eb90        	rsr.prid	a9
42000e38:	108980        	and	a8, a9, a8
42000e3b:	090c      	movi.n	a9, 0
42000e3d:	631897        	beq	a8, a9, 42000ea4 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire+0x78>
42000e40:	2a0c      	movi.n	a10, 2
42000e42:	fff681        	l32r	a8, 42000e1c <esp_hal_common::delay::delay::<impl esp_hal_common::delay::Delay>::delay+0x28>
42000e45:	08b8      	l32i.n	a11, a8, 0
42000e47:	631ba7        	beq	a11, a10, 42000eae <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire+0x82>
42000e4a:	01a9      	s32i.n	a10, a1, 0
42000e4c:	c88b      	addi.n	a12, a8, 8
42000e4e:	1b0c      	movi.n	a11, 1
42000e50:	3d0c      	movi.n	a13, 3
42000e52:	10ddc0        	and	a13, a13, a12
42000e55:	c0ccd0        	sub	a12, a12, a13
42000e58:	11ddd0        	slli	a13, a13, 3
42000e5b:	ffa0e2        	movi	a14, 255
42000e5e:	ff7c      	movi.n	a15, -1
42000e60:	000146        	j	42000e69 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire+0x3d>
42000e63:	0020c0        	memw
42000e66:	561726        	beqi	a7, 1, 42000ec0 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire+0x94>
42000e69:	401d00        	ssl	a13
42000e6c:	a17e00        	sll	a7, a14
42000e6f:	3077f0        	xor	a7, a7, a15
42000e72:	0c68      	l32i.n	a6, a12, 0
42000e74:	103670        	and	a3, a6, a7
42000e77:	a16900        	sll	a6, a9
42000e7a:	a15b00        	sll	a5, a11
42000e7d:	03ad      	mov.n	a10, a3
42000e7f:	2036a0        	or	a3, a6, a10
42000e82:	2045a0        	or	a4, a5, a10
42000e85:	130c30        	wsr.scompare1	a3
42000e88:	00ec42        	s32c1i	a4, a12, 0
42000e8b:	103470        	and	a3, a4, a7
42000e8e:	eb93a7        	bne	a3, a10, 42000e7d <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire+0x51>
42000e91:	400d00        	ssr	a13
42000e94:	91a040        	srl	a10, a4
42000e97:	10aae0        	and	a10, a10, a14
42000e9a:	0b7d      	mov.n	a7, a11
42000e9c:	c31a97        	beq	a10, a9, 42000e63 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire+0x37>
42000e9f:	097d      	mov.n	a7, a9
42000ea1:	ffef86        	j	42000e63 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire+0x37>
42000ea4:	1a0c      	movi.n	a10, 1
42000ea6:	ffdd81        	l32r	a8, 42000e1c <esp_hal_common::delay::delay::<impl esp_hal_common::delay::Delay>::delay+0x28>
42000ea9:	08b8      	l32i.n	a11, a8, 0
42000eab:	9b9ba7        	bne	a11, a10, 42000e4a <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire+0x1e>
42000eae:	1898      	l32i.n	a9, a8, 4
42000eb0:	991b      	addi.n	a9, a9, 1
42000eb2:	0a0c      	movi.n	a10, 0
42000eb4:	0199a7        	bne	a9, a10, 42000eb9 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire+0x8d>
42000eb7:	1a0c      	movi.n	a10, 1
42000eb9:	0d1a26        	beqi	a10, 1, 42000eca <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire+0x9e>
42000ebc:	1899      	s32i.n	a9, a8, 4
42000ebe:	f01d      	retw.n
42000ec0:	0198      	l32i.n	a9, a1, 0
42000ec2:	0899      	s32i.n	a9, a8, 0
42000ec4:	190c      	movi.n	a9, 1
42000ec6:	1899      	s32i.n	a9, a8, 4
42000ec8:	f01d      	retw.n
42000eca:	ffd5a1        	l32r	a10, 42000e20 <esp_hal_common::delay::delay::<impl esp_hal_common::delay::Delay>::delay+0x2c>
42000ecd:	2b2c      	movi.n	a11, 34
42000ecf:	ffd5c1        	l32r	a12, 42000e24 <esp_hal_common::delay::delay::<impl esp_hal_common::delay::Delay>::delay+0x30>
42000ed2:	ffd581        	l32r	a8, 42000e28 <esp_hal_common::delay::delay::<impl esp_hal_common::delay::Delay>::delay+0x34>
42000ed5:	0008e0        	callx8	a8
42000ed8:	0041f0        	break	1, 15
42000edb:	9a1000        	trunc.s	a1, f0, 0
42000ede:	3fc8      	l32i.n	a12, a15, 12

42000ee0 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::release>:
42000ee0:	004136        	entry	a1, 32
42000ee3:	01b216        	beqz	a2, 42000f02 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::release+0x22>
42000ee6:	fffd81        	l32r	a8, 42000edc <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire+0xb0>
42000ee9:	1898      	l32i.n	a9, a8, 4
42000eeb:	990b      	addi.n	a9, a9, -1
42000eed:	1899      	s32i.n	a9, a8, 4
42000eef:	009956        	bnez	a9, 42000efc <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::release+0x1c>
42000ef2:	090c      	movi.n	a9, 0
42000ef4:	0899      	s32i.n	a9, a8, 0
42000ef6:	0020c0        	memw
42000ef9:	084892        	s8i	a9, a8, 8
42000efc:	13e620        	wsr.ps	a2
42000eff:	002010        	rsync
42000f02:	f01d      	retw.n
42000f04:	0056a4        	ee.ld.qacc_l.l.128.ip	a10, 0x560
42000f07:	56b442        	l32ai	a4, a4, 0x158
42000f0a:	d44200        	extui	a4, a0, 2, 14
42000f0d:	0068      	l32i.n	a6, a0, 0
42000f0f:	3cf442        	s32ri	a4, a4, 240
42000f12:	00          	.byte 00
42000f13:	42          	.byte 0x42
42000f14:	3c7c      	movi.n	a12, -13
42000f16:	        	ee.ldf.64.xp	f4, f3, a0, a2

42000f18 <<&T as core::fmt::Debug>::fmt>:
42000f18:	004136        	entry	a1, 32
42000f1b:	0278      	l32i.n	a7, a2, 0
42000f1d:	fff981        	l32r	a8, 42000f04 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::release+0x24>
42000f20:	03ad      	mov.n	a10, a3
42000f22:	0008e0        	callx8	a8
42000f25:	005a16        	beqz	a10, 42000f2e <<&T as core::fmt::Debug>::fmt+0x16>
42000f28:	fffb81        	l32r	a8, 42000f14 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::release+0x34>
42000f2b:	0004c6        	j	42000f42 <<&T as core::fmt::Debug>::fmt+0x2a>
42000f2e:	fff681        	l32r	a8, 42000f08 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::release+0x28>
42000f31:	03ad      	mov.n	a10, a3
42000f33:	0008e0        	callx8	a8
42000f36:	005a16        	beqz	a10, 42000f3f <<&T as core::fmt::Debug>::fmt+0x27>
42000f39:	fff581        	l32r	a8, 42000f10 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::release+0x30>
42000f3c:	000086        	j	42000f42 <<&T as core::fmt::Debug>::fmt+0x2a>
42000f3f:	fff381        	l32r	a8, 42000f0c <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::release+0x2c>
42000f42:	07ad      	mov.n	a10, a7
42000f44:	03bd      	mov.n	a11, a3
42000f46:	0008e0        	callx8	a8
42000f49:	0a2d      	mov.n	a2, a10
42000f4b:	f01d      	retw.n
42000f4d:	000000        	ill
42000f50:	107c      	movi.n	a0, -15
42000f52:	        	ee.ldf.64.xp	f4, f3, a0, a2

42000f54 <<&T as core::fmt::Debug>::fmt>:
42000f54:	004136        	entry	a1, 32
42000f57:	02a8      	l32i.n	a10, a2, 0
42000f59:	fffd81        	l32r	a8, 42000f50 <<&T as core::fmt::Debug>::fmt+0x38>
42000f5c:	03bd      	mov.n	a11, a3
42000f5e:	0008e0        	callx8	a8
42000f61:	0a2d      	mov.n	a2, a10
42000f63:	f01d      	retw.n
42000f65:	000000        	ill
42000f68:	0056a4        	ee.ld.qacc_l.l.128.ip	a10, 0x560
42000f6b:	56b442        	l32ai	a4, a4, 0x158
42000f6e:	d44200        	extui	a4, a0, 2, 14
42000f71:	0068      	l32i.n	a6, a0, 0
42000f73:	3cf442        	s32ri	a4, a4, 240
42000f76:	00          	.byte 00
42000f77:	42          	.byte 0x42
42000f78:	3c7c      	movi.n	a12, -13
42000f7a:	        	ee.ldf.64.xp	f4, f3, a0, a2

42000f7c <core::fmt::num::<impl core::fmt::Debug for u32>::fmt>:
42000f7c:	004136        	entry	a1, 32
42000f7f:	fffa81        	l32r	a8, 42000f68 <<&T as core::fmt::Debug>::fmt+0x14>
42000f82:	03ad      	mov.n	a10, a3
42000f84:	0008e0        	callx8	a8
42000f87:	005a16        	beqz	a10, 42000f90 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x14>
42000f8a:	fffb81        	l32r	a8, 42000f78 <<&T as core::fmt::Debug>::fmt+0x24>
42000f8d:	0004c6        	j	42000fa4 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x28>
42000f90:	fff781        	l32r	a8, 42000f6c <<&T as core::fmt::Debug>::fmt+0x18>
42000f93:	03ad      	mov.n	a10, a3
42000f95:	0008e0        	callx8	a8
42000f98:	005a16        	beqz	a10, 42000fa1 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x25>
42000f9b:	fff681        	l32r	a8, 42000f74 <<&T as core::fmt::Debug>::fmt+0x20>
42000f9e:	000086        	j	42000fa4 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x28>
42000fa1:	fff381        	l32r	a8, 42000f70 <<&T as core::fmt::Debug>::fmt+0x1c>
42000fa4:	02ad      	mov.n	a10, a2
42000fa6:	03bd      	mov.n	a11, a3
42000fa8:	0008e0        	callx8	a8
42000fab:	0a2d      	mov.n	a2, a10
42000fad:	f01d      	retw.n
	...

42000fb0 <core::ptr::drop_in_place<u32>>:
42000fb0:	004136        	entry	a1, 32
42000fb3:	f01d      	retw.n
42000fb5:	000000        	ill

42000fb8 <DefaultPreInit>:
42000fb8:	004136        	entry	a1, 32
42000fbb:	f01d      	retw.n
42000fbd:	000000        	ill
42000fc0:	0fb8      	l32i.n	a11, a15, 0
42000fc2:	00          	.byte 00
42000fc3:	12e842        	s32c1i	a4, a8, 72
42000fc6:	084200        	lsx	f4, a2, a0
42000fc9:	c89a      	add.n	a12, a8, a9
42000fcb:	c89a243f 	ee.vmulas.u8.accx.ld.xp.qup	q1, a3, a4, q4, q5, q1, q2
42000fcf:	0004543f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 64, q5, q2, q0, q4
42000fd3:	9a0842        	l8ui	a4, a8, 154
42000fd6:	3fc8      	l32i.n	a12, a15, 12
42000fd8:	00          	.byte 00
42000fd9:	c89a      	add.n	a12, a8, a9
42000fdb:	012e283f 	ee.vmulas.s16.accx.ld.ip.qup	q3, a3, 128, q4, q4, q2, q6
42000fdf:	c03c      	movi.n	a0, 60
42000fe1:	0042006f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a6, 0, q4, q0, q4, q2
42000fe5:	80          	.byte 0x80
42000fe6:	ec4037        	ball	a0, a3, 42000fd6 <DefaultPreInit+0x1e>
42000fe9:	420003        	lsi	f0, a0, 0x108
42000fec:	0000c4        	ee.ld.qacc_l.l.128.ip	a12, 0
42000fef:	42          	.byte 0x42

42000ff0 <Reset>:
42000ff0:	004136        	entry	a1, 32
42000ff3:	fff381        	l32r	a8, 42000fc0 <DefaultPreInit+0x8>
42000ff6:	0008e0        	callx8	a8
42000ff9:	fff281        	l32r	a8, 42000fc4 <DefaultPreInit+0xc>
42000ffc:	0008e0        	callx8	a8
42000fff:	014a16        	beqz	a10, 42001017 <Reset+0x27>
42001002:	fff281        	l32r	a8, 42000fcc <DefaultPreInit+0x14>
42001005:	fff091        	l32r	a9, 42000fc8 <DefaultPreInit+0x10>
42001008:	0bb987        	bgeu	a9, a8, 42001017 <Reset+0x27>
4200100b:	0a0c      	movi.n	a10, 0
4200100d:	0020c0        	memw
42001010:	09a9      	s32i.n	a10, a9, 0
42001012:	994b      	addi.n	a9, a9, 4
42001014:	f53987        	bltu	a9, a8, 4200100d <Reset+0x1d>
42001017:	ffee81        	l32r	a8, 42000fd0 <DefaultPreInit+0x18>
4200101a:	0008e0        	callx8	a8
4200101d:	024a16        	beqz	a10, 42001045 <Reset+0x55>
42001020:	ffed81        	l32r	a8, 42000fd4 <DefaultPreInit+0x1c>
42001023:	ffeda1        	l32r	a10, 42000fd8 <DefaultPreInit+0x20>
42001026:	1bba87        	bgeu	a10, a8, 42001045 <Reset+0x55>
42001029:	f97c      	movi.n	a9, -1
4200102b:	309a90        	xor	a9, a10, a9
4200102e:	ba4b      	addi.n	a11, a10, 4
42001030:	7388b0        	maxu	a8, a8, a11
42001033:	889a      	add.n	a8, a8, a9
42001035:	c97c      	movi.n	a9, -4
42001037:	108890        	and	a8, a8, a9
4200103a:	c84b      	addi.n	a12, a8, 4
4200103c:	ffe8b1        	l32r	a11, 42000fdc <DefaultPreInit+0x24>
4200103f:	ffe881        	l32r	a8, 42000fe0 <DefaultPreInit+0x28>
42001042:	0008e0        	callx8	a8
42001045:	080c      	movi.n	a8, 0
42001047:	13f080        	wsr.ccompare0	a8
4200104a:	13f180        	wsr.ccompare1	a8
4200104d:	13f280        	wsr.ccompare2	a8
42001050:	002000        	isync
42001053:	ffe481        	l32r	a8, 42000fe4 <DefaultPreInit+0x2c>
42001056:	13e780        	wsr.vecbase	a8
42001059:	ffe381        	l32r	a8, 42000fe8 <DefaultPreInit+0x30>
4200105c:	0008e0        	callx8	a8
4200105f:	ffe381        	l32r	a8, 42000fec <DefaultPreInit+0x34>
42001062:	0008e0        	callx8	a8
42001065:	0041f0        	break	1, 15
42001068:	0cfc      	bnez.n	a12, 4200109c <<xtensa_lx_rt::exception::esp32::Context as core::fmt::Debug>::fmt+0x20>
4200106a:	ec3c01        	l32r	a0, 41ffc15c <__user_exception+0x1c82f34>
4200106d:	010c      	movi.n	a1, 0
4200106f:	0c3c      	movi.n	a12, 48
42001071:	010d      	mov.n	a0, a1
42001073:	3c3c      	movi.n	a12, 51
42001075:	010b      	addi.n	a0, a1, -1
42001077:	683c      	movi.n	a8, 54
42001079:	0058      	l32i.n	a5, a0, 0
4200107b:	42          	.byte 0x42

4200107c <<xtensa_lx_rt::exception::esp32::Context as core::fmt::Debug>::fmt>:
4200107c:	03c136        	entry	a1, 0x1e0
4200107f:	fffa81        	l32r	a8, 42001068 <Reset+0x78>
42001082:	6d6182        	s32i	a8, a1, 0x1b4
42001085:	b8a182        	movi	a8, 0x1b8
42001088:	818a      	add.n	a8, a1, a8
4200108a:	00c882        	addi	a8, a8, 0
4200108d:	6c6182        	s32i	a8, a1, 0x1b0
42001090:	fff781        	l32r	a8, 4200106c <Reset+0x7c>
42001093:	6b6182        	s32i	a8, a1, 0x1ac
42001096:	696182        	s32i	a8, a1, 0x1a4
42001099:	676182        	s32i	a8, a1, 0x19c
4200109c:	656182        	s32i	a8, a1, 0x194
4200109f:	636182        	s32i	a8, a1, 0x18c
420010a2:	616182        	s32i	a8, a1, 0x184
420010a5:	5f6182        	s32i	a8, a1, 0x17c
420010a8:	5d6182        	s32i	a8, a1, 0x174
420010ab:	5b6182        	s32i	a8, a1, 0x16c
420010ae:	596182        	s32i	a8, a1, 0x164
420010b1:	576182        	s32i	a8, a1, 0x15c
420010b4:	556182        	s32i	a8, a1, 0x154
420010b7:	536182        	s32i	a8, a1, 0x14c
420010ba:	516182        	s32i	a8, a1, 0x144
420010bd:	4f6182        	s32i	a8, a1, 0x13c
420010c0:	4d6182        	s32i	a8, a1, 0x134
420010c3:	4b6182        	s32i	a8, a1, 0x12c
420010c6:	496182        	s32i	a8, a1, 0x124
420010c9:	476182        	s32i	a8, a1, 0x11c
420010cc:	456182        	s32i	a8, a1, 0x114
420010cf:	436182        	s32i	a8, a1, 0x10c
420010d2:	416182        	s32i	a8, a1, 0x104
420010d5:	3f6182        	s32i	a8, a1, 252
420010d8:	3d6182        	s32i	a8, a1, 244
420010db:	3b6182        	s32i	a8, a1, 236
420010de:	396182        	s32i	a8, a1, 228
420010e1:	376182        	s32i	a8, a1, 220
420010e4:	356182        	s32i	a8, a1, 212
420010e7:	336182        	s32i	a8, a1, 204
420010ea:	316182        	s32i	a8, a1, 196
420010ed:	2f6182        	s32i	a8, a1, 188
420010f0:	2d6182        	s32i	a8, a1, 180
420010f3:	2b6182        	s32i	a8, a1, 172
420010f6:	296182        	s32i	a8, a1, 164
420010f9:	276182        	s32i	a8, a1, 156
420010fc:	256182        	s32i	a8, a1, 148
420010ff:	236182        	s32i	a8, a1, 140
42001102:	216182        	s32i	a8, a1, 132
42001105:	1f6182        	s32i	a8, a1, 124
42001108:	1d6182        	s32i	a8, a1, 116
4200110b:	1b6182        	s32i	a8, a1, 108
4200110e:	196182        	s32i	a8, a1, 100
42001111:	176182        	s32i	a8, a1, 92
42001114:	156182        	s32i	a8, a1, 84
42001117:	136182        	s32i	a8, a1, 76
4200111a:	116182        	s32i	a8, a1, 68
4200111d:	f189      	s32i.n	a8, a1, 60
4200111f:	d189      	s32i.n	a8, a1, 52
42001121:	b189      	s32i.n	a8, a1, 44
42001123:	9189      	s32i.n	a8, a1, 36
42001125:	7189      	s32i.n	a8, a1, 28
42001127:	5189      	s32i.n	a8, a1, 20
42001129:	3189      	s32i.n	a8, a1, 12
4200112b:	2129      	s32i.n	a2, a1, 8
4200112d:	d0a082        	movi	a8, 208
42001130:	828a      	add.n	a8, a2, a8
42001132:	6a6182        	s32i	a8, a1, 0x1a8
42001135:	cca082        	movi	a8, 204
42001138:	828a      	add.n	a8, a2, a8
4200113a:	686182        	s32i	a8, a1, 0x1a0
4200113d:	c8a082        	movi	a8, 200
42001140:	828a      	add.n	a8, a2, a8
42001142:	666182        	s32i	a8, a1, 0x198
42001145:	c4a082        	movi	a8, 196
42001148:	828a      	add.n	a8, a2, a8
4200114a:	646182        	s32i	a8, a1, 0x190
4200114d:	c0a082        	movi	a8, 192
42001150:	828a      	add.n	a8, a2, a8
42001152:	626182        	s32i	a8, a1, 0x188
42001155:	bca082        	movi	a8, 188
42001158:	828a      	add.n	a8, a2, a8
4200115a:	606182        	s32i	a8, a1, 0x180
4200115d:	b8a082        	movi	a8, 184
42001160:	828a      	add.n	a8, a2, a8
42001162:	5e6182        	s32i	a8, a1, 0x178
42001165:	b4a082        	movi	a8, 180
42001168:	828a      	add.n	a8, a2, a8
4200116a:	5c6182        	s32i	a8, a1, 0x170
4200116d:	b0a082        	movi	a8, 176
42001170:	828a      	add.n	a8, a2, a8
42001172:	5a6182        	s32i	a8, a1, 0x168
42001175:	aca082        	movi	a8, 172
42001178:	828a      	add.n	a8, a2, a8
4200117a:	586182        	s32i	a8, a1, 0x160
4200117d:	a8a082        	movi	a8, 168
42001180:	828a      	add.n	a8, a2, a8
42001182:	566182        	s32i	a8, a1, 0x158
42001185:	a4a082        	movi	a8, 164
42001188:	828a      	add.n	a8, a2, a8
4200118a:	546182        	s32i	a8, a1, 0x150
4200118d:	a0a082        	movi	a8, 160
42001190:	828a      	add.n	a8, a2, a8
42001192:	526182        	s32i	a8, a1, 0x148
42001195:	9ca082        	movi	a8, 156
42001198:	828a      	add.n	a8, a2, a8
4200119a:	506182        	s32i	a8, a1, 0x140
4200119d:	98a082        	movi	a8, 152
420011a0:	828a      	add.n	a8, a2, a8
420011a2:	4e6182        	s32i	a8, a1, 0x138
420011a5:	94a082        	movi	a8, 148
420011a8:	828a      	add.n	a8, a2, a8
420011aa:	4c6182        	s32i	a8, a1, 0x130
420011ad:	90a082        	movi	a8, 144
420011b0:	828a      	add.n	a8, a2, a8
420011b2:	4a6182        	s32i	a8, a1, 0x128
420011b5:	8ca082        	movi	a8, 140
420011b8:	828a      	add.n	a8, a2, a8
420011ba:	486182        	s32i	a8, a1, 0x120
420011bd:	88a082        	movi	a8, 136
420011c0:	828a      	add.n	a8, a2, a8
420011c2:	466182        	s32i	a8, a1, 0x118
420011c5:	84a082        	movi	a8, 132
420011c8:	828a      	add.n	a8, a2, a8
420011ca:	446182        	s32i	a8, a1, 0x110
420011cd:	80a082        	movi	a8, 128
420011d0:	828a      	add.n	a8, a2, a8
420011d2:	426182        	s32i	a8, a1, 0x108
420011d5:	7cc282        	addi	a8, a2, 124
420011d8:	406182        	s32i	a8, a1, 0x100
420011db:	78c282        	addi	a8, a2, 120
420011de:	3e6182        	s32i	a8, a1, 248
420011e1:	74c282        	addi	a8, a2, 116
420011e4:	3c6182        	s32i	a8, a1, 240
420011e7:	70c282        	addi	a8, a2, 112
420011ea:	3a6182        	s32i	a8, a1, 232
420011ed:	6cc282        	addi	a8, a2, 108
420011f0:	386182        	s32i	a8, a1, 224
420011f3:	68c282        	addi	a8, a2, 104
420011f6:	366182        	s32i	a8, a1, 216
420011f9:	64c282        	addi	a8, a2, 100
420011fc:	346182        	s32i	a8, a1, 208
420011ff:	60c282        	addi	a8, a2, 96
42001202:	326182        	s32i	a8, a1, 200
42001205:	5cc282        	addi	a8, a2, 92
42001208:	306182        	s32i	a8, a1, 192
4200120b:	58c282        	addi	a8, a2, 88
4200120e:	2e6182        	s32i	a8, a1, 184
42001211:	54c282        	addi	a8, a2, 84
42001214:	2c6182        	s32i	a8, a1, 176
42001217:	50c282        	addi	a8, a2, 80
4200121a:	2a6182        	s32i	a8, a1, 168
4200121d:	4cc282        	addi	a8, a2, 76
42001220:	286182        	s32i	a8, a1, 160
42001223:	48c282        	addi	a8, a2, 72
42001226:	266182        	s32i	a8, a1, 152
42001229:	44c282        	addi	a8, a2, 68
4200122c:	246182        	s32i	a8, a1, 144
4200122f:	40c282        	addi	a8, a2, 64
42001232:	226182        	s32i	a8, a1, 136
42001235:	3cc282        	addi	a8, a2, 60
42001238:	206182        	s32i	a8, a1, 128
4200123b:	38c282        	addi	a8, a2, 56
4200123e:	1e6182        	s32i	a8, a1, 120
42001241:	34c282        	addi	a8, a2, 52
42001244:	1c6182        	s32i	a8, a1, 112
42001247:	30c282        	addi	a8, a2, 48
4200124a:	1a6182        	s32i	a8, a1, 104
4200124d:	2cc282        	addi	a8, a2, 44
42001250:	186182        	s32i	a8, a1, 96
42001253:	28c282        	addi	a8, a2, 40
42001256:	166182        	s32i	a8, a1, 88
42001259:	24c282        	addi	a8, a2, 36
4200125c:	146182        	s32i	a8, a1, 80
4200125f:	20c282        	addi	a8, a2, 32
42001262:	126182        	s32i	a8, a1, 72
42001265:	1cc282        	addi	a8, a2, 28
42001268:	106182        	s32i	a8, a1, 64
4200126b:	18c282        	addi	a8, a2, 24
4200126e:	e189      	s32i.n	a8, a1, 56
42001270:	14c282        	addi	a8, a2, 20
42001273:	c189      	s32i.n	a8, a1, 48
42001275:	10c282        	addi	a8, a2, 16
42001278:	a189      	s32i.n	a8, a1, 40
4200127a:	82cb      	addi.n	a8, a2, 12
4200127c:	8189      	s32i.n	a8, a1, 32
4200127e:	828b      	addi.n	a8, a2, 8
42001280:	6189      	s32i.n	a8, a1, 24
42001282:	824b      	addi.n	a8, a2, 4
42001284:	4189      	s32i.n	a8, a1, 16
42001286:	d4a082        	movi	a8, 212
42001289:	828a      	add.n	a8, a2, a8
4200128b:	6e6182        	s32i	a8, a1, 0x1b8
4200128e:	6e3c      	movi.n	a14, 54
42001290:	01e9      	s32i.n	a14, a1, 0
42001292:	ff77b1        	l32r	a11, 42001070 <Reset+0x80>
42001295:	7c0c      	movi.n	a12, 7
42001297:	ff77d1        	l32r	a13, 42001074 <Reset+0x84>
4200129a:	08c1f2        	addi	a15, a1, 8
4200129d:	ff7681        	l32r	a8, 42001078 <Reset+0x88>
420012a0:	03ad      	mov.n	a10, a3
420012a2:	0008e0        	callx8	a8
420012a5:	0a2d      	mov.n	a2, a10
420012a7:	f01d      	retw.n
420012a9:	000000        	ill
420012ac:	000000        	ill
420012af:	0f8c01        	l32r	a0, 41fc50e0 <__user_exception+0x1c4beb8>
420012b2:	e83c01        	l32r	a0, 41ffb3a4 <__user_exception+0x1c8217c>
420012b5:	603c010e 	ee.vmulas.u8.accx.ld.ip.qup	q1, a0, 16, q0, q0, q3, q4
420012b9:	420056        	bnez	a0, 420016dd <<esp_backtrace::arch::Context as core::fmt::Debug>::fmt+0x291>

420012bc <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt>:
420012bc:	004136        	entry	a1, 32
420012bf:	0288      	l32i.n	a8, a2, 0
420012c1:	018880        	slli	a8, a8, 24
420012c4:	fffa91        	l32r	a9, 420012ac <<xtensa_lx_rt::exception::esp32::Context as core::fmt::Debug>::fmt+0x230>
420012c7:	889a      	add.n	a8, a8, a9
420012c9:	318880        	srai	a8, a8, 24
420012cc:	fff991        	l32r	a9, 420012b0 <<xtensa_lx_rt::exception::esp32::Context as core::fmt::Debug>::fmt+0x234>
420012cf:	a09890        	addx4	a9, a8, a9
420012d2:	09b8      	l32i.n	a11, a9, 0
420012d4:	fff891        	l32r	a9, 420012b4 <<xtensa_lx_rt::exception::esp32::Context as core::fmt::Debug>::fmt+0x238>
420012d7:	a08890        	addx4	a8, a8, a9
420012da:	08c8      	l32i.n	a12, a8, 0
420012dc:	fff781        	l32r	a8, 420012b8 <<xtensa_lx_rt::exception::esp32::Context as core::fmt::Debug>::fmt+0x23c>
420012df:	03ad      	mov.n	a10, a3
420012e1:	0008e0        	callx8	a8
420012e4:	0a2d      	mov.n	a2, a10
420012e6:	f01d      	retw.n

420012e8 <default_mem_hook>:
420012e8:	004136        	entry	a1, 32
420012eb:	120c      	movi.n	a2, 1
420012ed:	f01d      	retw.n
420012ef:	639000        	minu	a9, a0, a0
420012f2:	        	ee.ldf.64.xp	f4, f3, a0, a2

420012f4 <<&T as core::fmt::Debug>::fmt>:
420012f4:	004136        	entry	a1, 32
420012f7:	02a8      	l32i.n	a10, a2, 0
420012f9:	fffd81        	l32r	a8, 420012f0 <default_mem_hook+0x8>
420012fc:	03bd      	mov.n	a11, a3
420012fe:	0008e0        	callx8	a8
42001301:	0a2d      	mov.n	a2, a10
42001303:	f01d      	retw.n
42001305:	000000        	ill
42001308:	005ca4        	ee.ld.qacc_l.l.128.ip	a10, 0x5c0
4200130b:	42          	.byte 0x42

4200130c <<&T as core::fmt::Display>::fmt>:
4200130c:	004136        	entry	a1, 32
4200130f:	12b8      	l32i.n	a11, a2, 4
42001311:	02a8      	l32i.n	a10, a2, 0
42001313:	fffd81        	l32r	a8, 42001308 <<&T as core::fmt::Debug>::fmt+0x14>
42001316:	03cd      	mov.n	a12, a3
42001318:	0008e0        	callx8	a8
4200131b:	0a2d      	mov.n	a2, a10
4200131d:	f01d      	retw.n
	...

42001320 <core::ptr::drop_in_place<&mut esp_println::Printer>>:
42001320:	004136        	entry	a1, 32
42001323:	f01d      	retw.n
42001325:	000000        	ill
42001328:	00          	.byte 00
42001329:	0008      	l32i.n	a0, a0, 0
4200132b:	000000        	ill
4200132e:	9c0001        	l32r	a0, 41fe8330 <__user_exception+0x1c6f108>
42001331:	420036        	entry	a0, 0x2100

42001334 <<&mut W as core::fmt::Write>::write_char>:
42001334:	006136        	entry	a1, 48
42001337:	02a8      	l32i.n	a10, a2, 0
42001339:	080c      	movi.n	a8, 0
4200133b:	0189      	s32i.n	a8, a1, 0
4200133d:	07e3f6        	bgeui	a3, 128, 42001348 <<&mut W as core::fmt::Write>::write_char+0x14>
42001340:	004132        	s8i	a3, a1, 0
42001343:	1c0c      	movi.n	a12, 1
42001345:	0024c6        	j	420013dc <<&mut W as core::fmt::Write>::write_char+0xa8>
42001348:	fff881        	l32r	a8, 42001328 <core::ptr::drop_in_place<&mut esp_println::Printer>+0x8>
4200134b:	1eb387        	bgeu	a3, a8, 4200136d <<&mut W as core::fmt::Write>::write_char+0x39>
4200134e:	f83c      	movi.n	a8, 63
42001350:	108380        	and	a8, a3, a8
42001353:	80a092        	movi	a9, 128
42001356:	208890        	or	a8, a8, a9
42001359:	014182        	s8i	a8, a1, 1
4200135c:	418630        	srli	a8, a3, 6
4200135f:	c0a092        	movi	a9, 192
42001362:	208890        	or	a8, a8, a9
42001365:	004182        	s8i	a8, a1, 0
42001368:	2c0c      	movi.n	a12, 2
4200136a:	001b86        	j	420013dc <<&mut W as core::fmt::Write>::write_char+0xa8>
4200136d:	ffef81        	l32r	a8, 4200132c <core::ptr::drop_in_place<&mut esp_println::Printer>+0xc>
42001370:	2ab387        	bgeu	a3, a8, 4200139e <<&mut W as core::fmt::Write>::write_char+0x6a>
42001373:	f83c      	movi.n	a8, 63
42001375:	109380        	and	a9, a3, a8
42001378:	80a0b2        	movi	a11, 128
4200137b:	2099b0        	or	a9, a9, a11
4200137e:	024192        	s8i	a9, a1, 2
42001381:	419c30        	srli	a9, a3, 12
42001384:	e0a0c2        	movi	a12, 224
42001387:	2099c0        	or	a9, a9, a12
4200138a:	004192        	s8i	a9, a1, 0
4200138d:	419630        	srli	a9, a3, 6
42001390:	108980        	and	a8, a9, a8
42001393:	2088b0        	or	a8, a8, a11
42001396:	014182        	s8i	a8, a1, 1
42001399:	3c0c      	movi.n	a12, 3
4200139b:	000f46        	j	420013dc <<&mut W as core::fmt::Write>::write_char+0xa8>
4200139e:	f83c      	movi.n	a8, 63
420013a0:	109380        	and	a9, a3, a8
420013a3:	80a0b2        	movi	a11, 128
420013a6:	2099b0        	or	a9, a9, a11
420013a9:	034192        	s8i	a9, a1, 3
420013ac:	419630        	srli	a9, a3, 6
420013af:	109980        	and	a9, a9, a8
420013b2:	2099b0        	or	a9, a9, a11
420013b5:	024192        	s8i	a9, a1, 2
420013b8:	419c30        	srli	a9, a3, 12
420013bb:	108980        	and	a8, a9, a8
420013be:	2088b0        	or	a8, a8, a11
420013c1:	014182        	s8i	a8, a1, 1
420013c4:	281c      	movi.n	a8, 18
420013c6:	400800        	ssr	a8
420013c9:	918030        	srl	a8, a3
420013cc:	790c      	movi.n	a9, 7
420013ce:	108890        	and	a8, a8, a9
420013d1:	f0a092        	movi	a9, 240
420013d4:	208890        	or	a8, a8, a9
420013d7:	004182        	s8i	a8, a1, 0
420013da:	4c0c      	movi.n	a12, 4
420013dc:	00c1b2        	addi	a11, a1, 0
420013df:	ffd481        	l32r	a8, 42001330 <core::ptr::drop_in_place<&mut esp_println::Printer>+0x10>
420013e2:	0008e0        	callx8	a8
420013e5:	0a2d      	mov.n	a2, a10
420013e7:	f01d      	retw.n
420013e9:	000000        	ill
420013ec:	011030        	slli	a1, a0, 29
420013ef:	a83c      	movi.n	a8, 58
420013f1:	420050        	xorb	b0, b0, b5

420013f4 <<&mut W as core::fmt::Write>::write_fmt>:
420013f4:	008136        	entry	a1, 64
420013f7:	0288      	l32i.n	a8, a2, 0
420013f9:	5398      	l32i.n	a9, a3, 20
420013fb:	6199      	s32i.n	a9, a1, 24
420013fd:	4398      	l32i.n	a9, a3, 16
420013ff:	5199      	s32i.n	a9, a1, 20
42001401:	3398      	l32i.n	a9, a3, 12
42001403:	4199      	s32i.n	a9, a1, 16
42001405:	2398      	l32i.n	a9, a3, 8
42001407:	3199      	s32i.n	a9, a1, 12
42001409:	1398      	l32i.n	a9, a3, 4
4200140b:	2199      	s32i.n	a9, a1, 8
4200140d:	0398      	l32i.n	a9, a3, 0
4200140f:	1199      	s32i.n	a9, a1, 4
42001411:	0189      	s32i.n	a8, a1, 0
42001413:	00c1a2        	addi	a10, a1, 0
42001416:	fff5b1        	l32r	a11, 420013ec <<&mut W as core::fmt::Write>::write_char+0xb8>
42001419:	04c1c2        	addi	a12, a1, 4
4200141c:	fff581        	l32r	a8, 420013f0 <<&mut W as core::fmt::Write>::write_char+0xbc>
4200141f:	0008e0        	callx8	a8
42001422:	0a2d      	mov.n	a2, a10
42001424:	f01d      	retw.n
42001426:	00          	.byte 00
42001427:	369c00        	ee.ldf.64.xp	f9, f3, a0, a12
4200142a:	        	ee.ldf.64.xp	f4, f3, a0, a2

4200142c <<&mut W as core::fmt::Write>::write_str>:
4200142c:	004136        	entry	a1, 32
4200142f:	02a8      	l32i.n	a10, a2, 0
42001431:	fffd81        	l32r	a8, 42001428 <<&mut W as core::fmt::Write>::write_fmt+0x34>
42001434:	03bd      	mov.n	a11, a3
42001436:	04cd      	mov.n	a12, a4
42001438:	0008e0        	callx8	a8
4200143b:	0a2d      	mov.n	a2, a10
4200143d:	f01d      	retw.n
4200143f:	00          	.byte 00
42001440:	3c7c      	movi.n	a12, -13
42001442:	804200        	add	a4, a2, a0
42001445:	3c0112        	l8ui	a1, a1, 60
42001448:	5678      	l32i.n	a7, a6, 20
4200144a:	        	ee.ldf.64.xp	f4, f3, a0, a2

4200144c <<esp_backtrace::arch::Context as core::fmt::Debug>::fmt>:
4200144c:	128136        	entry	a1, 0x940
4200144f:	fffc81        	l32r	a8, 42001440 <<&mut W as core::fmt::Write>::write_str+0x14>
42001452:	726182        	s32i	a8, a1, 0x1c8
42001455:	706182        	s32i	a8, a1, 0x1c0
42001458:	6e6182        	s32i	a8, a1, 0x1b8
4200145b:	6c6182        	s32i	a8, a1, 0x1b0
4200145e:	6a6182        	s32i	a8, a1, 0x1a8
42001461:	686182        	s32i	a8, a1, 0x1a0
42001464:	666182        	s32i	a8, a1, 0x198
42001467:	646182        	s32i	a8, a1, 0x190
4200146a:	626182        	s32i	a8, a1, 0x188
4200146d:	606182        	s32i	a8, a1, 0x180
42001470:	5e6182        	s32i	a8, a1, 0x178
42001473:	5c6182        	s32i	a8, a1, 0x170
42001476:	5a6182        	s32i	a8, a1, 0x168
42001479:	586182        	s32i	a8, a1, 0x160
4200147c:	566182        	s32i	a8, a1, 0x158
4200147f:	546182        	s32i	a8, a1, 0x150
42001482:	526182        	s32i	a8, a1, 0x148
42001485:	506182        	s32i	a8, a1, 0x140
42001488:	4e6182        	s32i	a8, a1, 0x138
4200148b:	4c6182        	s32i	a8, a1, 0x130
4200148e:	4a6182        	s32i	a8, a1, 0x128
42001491:	486182        	s32i	a8, a1, 0x120
42001494:	466182        	s32i	a8, a1, 0x118
42001497:	446182        	s32i	a8, a1, 0x110
4200149a:	426182        	s32i	a8, a1, 0x108
4200149d:	406182        	s32i	a8, a1, 0x100
420014a0:	3e6182        	s32i	a8, a1, 248
420014a3:	3c6182        	s32i	a8, a1, 240
420014a6:	3a6182        	s32i	a8, a1, 232
420014a9:	386182        	s32i	a8, a1, 224
420014ac:	366182        	s32i	a8, a1, 216
420014af:	346182        	s32i	a8, a1, 208
420014b2:	326182        	s32i	a8, a1, 200
420014b5:	306182        	s32i	a8, a1, 192
420014b8:	2e6182        	s32i	a8, a1, 184
420014bb:	2c6182        	s32i	a8, a1, 176
420014be:	2a6182        	s32i	a8, a1, 168
420014c1:	286182        	s32i	a8, a1, 160
420014c4:	266182        	s32i	a8, a1, 152
420014c7:	246182        	s32i	a8, a1, 144
420014ca:	226182        	s32i	a8, a1, 136
420014cd:	206182        	s32i	a8, a1, 128
420014d0:	1e6182        	s32i	a8, a1, 120
420014d3:	1c6182        	s32i	a8, a1, 112
420014d6:	1a6182        	s32i	a8, a1, 104
420014d9:	186182        	s32i	a8, a1, 96
420014dc:	166182        	s32i	a8, a1, 88
420014df:	146182        	s32i	a8, a1, 80
420014e2:	126182        	s32i	a8, a1, 72
420014e5:	106182        	s32i	a8, a1, 64
420014e8:	e189      	s32i.n	a8, a1, 56
420014ea:	c189      	s32i.n	a8, a1, 48
420014ec:	a189      	s32i.n	a8, a1, 40
420014ee:	8189      	s32i.n	a8, a1, 32
420014f0:	7129      	s32i.n	a2, a1, 28
420014f2:	d4a082        	movi	a8, 212
420014f5:	828a      	add.n	a8, a2, a8
420014f7:	716182        	s32i	a8, a1, 0x1c4
420014fa:	d0a082        	movi	a8, 208
420014fd:	828a      	add.n	a8, a2, a8
420014ff:	6f6182        	s32i	a8, a1, 0x1bc
42001502:	cca082        	movi	a8, 204
42001505:	828a      	add.n	a8, a2, a8
42001507:	6d6182        	s32i	a8, a1, 0x1b4
4200150a:	c8a082        	movi	a8, 200
4200150d:	828a      	add.n	a8, a2, a8
4200150f:	6b6182        	s32i	a8, a1, 0x1ac
42001512:	c4a082        	movi	a8, 196
42001515:	828a      	add.n	a8, a2, a8
42001517:	696182        	s32i	a8, a1, 0x1a4
4200151a:	c0a082        	movi	a8, 192
4200151d:	828a      	add.n	a8, a2, a8
4200151f:	676182        	s32i	a8, a1, 0x19c
42001522:	bca082        	movi	a8, 188
42001525:	828a      	add.n	a8, a2, a8
42001527:	656182        	s32i	a8, a1, 0x194
4200152a:	b8a082        	movi	a8, 184
4200152d:	828a      	add.n	a8, a2, a8
4200152f:	636182        	s32i	a8, a1, 0x18c
42001532:	b4a082        	movi	a8, 180
42001535:	828a      	add.n	a8, a2, a8
42001537:	616182        	s32i	a8, a1, 0x184
4200153a:	b0a082        	movi	a8, 176
4200153d:	828a      	add.n	a8, a2, a8
4200153f:	5f6182        	s32i	a8, a1, 0x17c
42001542:	aca082        	movi	a8, 172
42001545:	828a      	add.n	a8, a2, a8
42001547:	5d6182        	s32i	a8, a1, 0x174
4200154a:	a8a082        	movi	a8, 168
4200154d:	828a      	add.n	a8, a2, a8
4200154f:	5b6182        	s32i	a8, a1, 0x16c
42001552:	a4a082        	movi	a8, 164
42001555:	828a      	add.n	a8, a2, a8
42001557:	596182        	s32i	a8, a1, 0x164
4200155a:	a0a082        	movi	a8, 160
4200155d:	828a      	add.n	a8, a2, a8
4200155f:	576182        	s32i	a8, a1, 0x15c
42001562:	9ca082        	movi	a8, 156
42001565:	828a      	add.n	a8, a2, a8
42001567:	556182        	s32i	a8, a1, 0x154
4200156a:	98a082        	movi	a8, 152
4200156d:	828a      	add.n	a8, a2, a8
4200156f:	536182        	s32i	a8, a1, 0x14c
42001572:	94a082        	movi	a8, 148
42001575:	828a      	add.n	a8, a2, a8
42001577:	516182        	s32i	a8, a1, 0x144
4200157a:	90a082        	movi	a8, 144
4200157d:	828a      	add.n	a8, a2, a8
4200157f:	4f6182        	s32i	a8, a1, 0x13c
42001582:	8ca082        	movi	a8, 140
42001585:	828a      	add.n	a8, a2, a8
42001587:	4d6182        	s32i	a8, a1, 0x134
4200158a:	88a082        	movi	a8, 136
4200158d:	828a      	add.n	a8, a2, a8
4200158f:	4b6182        	s32i	a8, a1, 0x12c
42001592:	84a082        	movi	a8, 132
42001595:	828a      	add.n	a8, a2, a8
42001597:	496182        	s32i	a8, a1, 0x124
4200159a:	80a082        	movi	a8, 128
4200159d:	828a      	add.n	a8, a2, a8
4200159f:	476182        	s32i	a8, a1, 0x11c
420015a2:	7cc282        	addi	a8, a2, 124
420015a5:	456182        	s32i	a8, a1, 0x114
420015a8:	78c282        	addi	a8, a2, 120
420015ab:	436182        	s32i	a8, a1, 0x10c
420015ae:	74c282        	addi	a8, a2, 116
420015b1:	416182        	s32i	a8, a1, 0x104
420015b4:	70c282        	addi	a8, a2, 112
420015b7:	3f6182        	s32i	a8, a1, 252
420015ba:	6cc282        	addi	a8, a2, 108
420015bd:	3d6182        	s32i	a8, a1, 244
420015c0:	68c282        	addi	a8, a2, 104
420015c3:	3b6182        	s32i	a8, a1, 236
420015c6:	64c282        	addi	a8, a2, 100
420015c9:	396182        	s32i	a8, a1, 228
420015cc:	60c282        	addi	a8, a2, 96
420015cf:	376182        	s32i	a8, a1, 220
420015d2:	5cc282        	addi	a8, a2, 92
420015d5:	356182        	s32i	a8, a1, 212
420015d8:	58c282        	addi	a8, a2, 88
420015db:	336182        	s32i	a8, a1, 204
420015de:	54c282        	addi	a8, a2, 84
420015e1:	316182        	s32i	a8, a1, 196
420015e4:	50c282        	addi	a8, a2, 80
420015e7:	2f6182        	s32i	a8, a1, 188
420015ea:	4cc282        	addi	a8, a2, 76
420015ed:	2d6182        	s32i	a8, a1, 180
420015f0:	48c282        	addi	a8, a2, 72
420015f3:	2b6182        	s32i	a8, a1, 172
420015f6:	44c282        	addi	a8, a2, 68
420015f9:	296182        	s32i	a8, a1, 164
420015fc:	40c282        	addi	a8, a2, 64
420015ff:	276182        	s32i	a8, a1, 156
42001602:	3cc282        	addi	a8, a2, 60
42001605:	256182        	s32i	a8, a1, 148
42001608:	38c282        	addi	a8, a2, 56
4200160b:	236182        	s32i	a8, a1, 140
4200160e:	34c282        	addi	a8, a2, 52
42001611:	216182        	s32i	a8, a1, 132
42001614:	30c282        	addi	a8, a2, 48
42001617:	1f6182        	s32i	a8, a1, 124
4200161a:	2cc282        	addi	a8, a2, 44
4200161d:	1d6182        	s32i	a8, a1, 116
42001620:	28c282        	addi	a8, a2, 40
42001623:	1b6182        	s32i	a8, a1, 108
42001626:	24c282        	addi	a8, a2, 36
42001629:	196182        	s32i	a8, a1, 100
4200162c:	20c282        	addi	a8, a2, 32
4200162f:	176182        	s32i	a8, a1, 92
42001632:	1cc282        	addi	a8, a2, 28
42001635:	156182        	s32i	a8, a1, 84
42001638:	18c282        	addi	a8, a2, 24
4200163b:	136182        	s32i	a8, a1, 76
4200163e:	14c282        	addi	a8, a2, 20
42001641:	116182        	s32i	a8, a1, 68
42001644:	10c282        	addi	a8, a2, 16
42001647:	f189      	s32i.n	a8, a1, 60
42001649:	82cb      	addi.n	a8, a2, 12
4200164b:	d189      	s32i.n	a8, a1, 52
4200164d:	828b      	addi.n	a8, a2, 8
4200164f:	b189      	s32i.n	a8, a1, 44
42001651:	824b      	addi.n	a8, a2, 4
42001653:	9189      	s32i.n	a8, a1, 36
42001655:	3c0c      	movi.n	a12, 3
42001657:	c8a282        	movi	a8, 0x2c8
4200165a:	818a      	add.n	a8, a1, a8
4200165c:	0048c2        	s8i	a12, a8, 0
4200165f:	880c      	movi.n	a8, 8
42001661:	b16182        	s32i	a8, a1, 0x2c4
42001664:	790c      	movi.n	a9, 7
42001666:	b06192        	s32i	a9, a1, 0x2c0
42001669:	0b2c      	movi.n	a11, 32
4200166b:	af61b2        	s32i	a11, a1, 0x2bc
4200166e:	ae6182        	s32i	a8, a1, 0x2b8
42001671:	0a0c      	movi.n	a10, 0
42001673:	ad61a2        	s32i	a10, a1, 0x2b4
42001676:	290c      	movi.n	a9, 2
42001678:	ab6192        	s32i	a9, a1, 0x2ac
4200167b:	a8a2d2        	movi	a13, 0x2a8
4200167e:	d1da      	add.n	a13, a1, a13
42001680:	004dc2        	s8i	a12, a13, 0
42001683:	a96182        	s32i	a8, a1, 0x2a4
42001686:	6d0c      	movi.n	a13, 6
42001688:	a861d2        	s32i	a13, a1, 0x2a0
4200168b:	a761b2        	s32i	a11, a1, 0x29c
4200168e:	a66182        	s32i	a8, a1, 0x298
42001691:	a561a2        	s32i	a10, a1, 0x294
42001694:	a36192        	s32i	a9, a1, 0x28c
42001697:	88a2d2        	movi	a13, 0x288
4200169a:	d1da      	add.n	a13, a1, a13
4200169c:	004dc2        	s8i	a12, a13, 0
4200169f:	a16182        	s32i	a8, a1, 0x284
420016a2:	5d0c      	movi.n	a13, 5
420016a4:	a061d2        	s32i	a13, a1, 0x280
420016a7:	9f61b2        	s32i	a11, a1, 0x27c
420016aa:	9e6182        	s32i	a8, a1, 0x278
420016ad:	9d61a2        	s32i	a10, a1, 0x274
420016b0:	9b6192        	s32i	a9, a1, 0x26c
420016b3:	68a2d2        	movi	a13, 0x268
420016b6:	d1da      	add.n	a13, a1, a13
420016b8:	004dc2        	s8i	a12, a13, 0
420016bb:	996182        	s32i	a8, a1, 0x264
420016be:	4d0c      	movi.n	a13, 4
420016c0:	9861d2        	s32i	a13, a1, 0x260
420016c3:	9761b2        	s32i	a11, a1, 0x25c
420016c6:	966182        	s32i	a8, a1, 0x258
420016c9:	9561a2        	s32i	a10, a1, 0x254
420016cc:	936192        	s32i	a9, a1, 0x24c
420016cf:	48a2d2        	movi	a13, 0x248
420016d2:	d1da      	add.n	a13, a1, a13
420016d4:	004dc2        	s8i	a12, a13, 0
420016d7:	916182        	s32i	a8, a1, 0x244
420016da:	9061c2        	s32i	a12, a1, 0x240
420016dd:	8f61b2        	s32i	a11, a1, 0x23c
420016e0:	8e6182        	s32i	a8, a1, 0x238
420016e3:	8d61a2        	s32i	a10, a1, 0x234
420016e6:	8b6192        	s32i	a9, a1, 0x22c
420016e9:	28a2d2        	movi	a13, 0x228
420016ec:	d1da      	add.n	a13, a1, a13
420016ee:	004dc2        	s8i	a12, a13, 0
420016f1:	896182        	s32i	a8, a1, 0x224
420016f4:	886192        	s32i	a9, a1, 0x220
420016f7:	8761b2        	s32i	a11, a1, 0x21c
420016fa:	866182        	s32i	a8, a1, 0x218
420016fd:	8561a2        	s32i	a10, a1, 0x214
42001700:	836192        	s32i	a9, a1, 0x20c
42001703:	08a2d2        	movi	a13, 0x208
42001706:	d1da      	add.n	a13, a1, a13
42001708:	004dc2        	s8i	a12, a13, 0
4200170b:	816182        	s32i	a8, a1, 0x204
4200170e:	1d0c      	movi.n	a13, 1
42001710:	8061d2        	s32i	a13, a1, 0x200
42001713:	7f61b2        	s32i	a11, a1, 0x1fc
42001716:	7e6182        	s32i	a8, a1, 0x1f8
42001719:	7d61a2        	s32i	a10, a1, 0x1f4
4200171c:	7b6192        	s32i	a9, a1, 0x1ec
4200171f:	e8a1d2        	movi	a13, 0x1e8
42001722:	d1da      	add.n	a13, a1, a13
42001724:	004dc2        	s8i	a12, a13, 0
42001727:	796182        	s32i	a8, a1, 0x1e4
4200172a:	7861a2        	s32i	a10, a1, 0x1e0
4200172d:	7761b2        	s32i	a11, a1, 0x1dc
42001730:	766182        	s32i	a8, a1, 0x1d8
42001733:	7561a2        	s32i	a10, a1, 0x1d4
42001736:	736192        	s32i	a9, a1, 0x1cc
42001739:	1ca1e2        	movi	a14, 0x11c
4200173c:	cca1d2        	movi	a13, 0x1cc
4200173f:	d1da      	add.n	a13, a1, a13
42001741:	00cdd2        	addi	a13, a13, 0
42001744:	edea      	add.n	a14, a13, a14
42001746:	004ec2        	s8i	a12, a14, 0
42001749:	1da1e2        	movi	a14, 0x11d
4200174c:	edea      	add.n	a14, a13, a14
4200174e:	91a0f2        	movi	a15, 145
42001751:	08dff2        	addmi	a15, a15, 0x800
42001754:	f1fa      	add.n	a15, a1, a15
42001756:	000ff2        	l8ui	a15, a15, 0
42001759:	004ef2        	s8i	a15, a14, 0
4200175c:	1ea1e2        	movi	a14, 0x11e
4200175f:	edea      	add.n	a14, a13, a14
42001761:	92a0f2        	movi	a15, 146
42001764:	08dff2        	addmi	a15, a15, 0x800
42001767:	f1fa      	add.n	a15, a1, a15
42001769:	000ff2        	l8ui	a15, a15, 0
4200176c:	004ef2        	s8i	a15, a14, 0
4200176f:	1fa1e2        	movi	a14, 0x11f
42001772:	edea      	add.n	a14, a13, a14
42001774:	93a0f2        	movi	a15, 147
42001777:	08dff2        	addmi	a15, a15, 0x800
4200177a:	f1fa      	add.n	a15, a1, a15
4200177c:	000ff2        	l8ui	a15, a15, 0
4200177f:	004ef2        	s8i	a15, a14, 0
42001782:	b36192        	s32i	a9, a1, 0x2cc
42001785:	b561a2        	s32i	a10, a1, 0x2d4
42001788:	b66182        	s32i	a8, a1, 0x2d8
4200178b:	b761b2        	s32i	a11, a1, 0x2dc
4200178e:	b86182        	s32i	a8, a1, 0x2e0
42001791:	b96182        	s32i	a8, a1, 0x2e4
42001794:	90a0e2        	movi	a14, 144
42001797:	08dee2        	addmi	a14, a14, 0x800
4200179a:	e1ea      	add.n	a14, a1, a14
4200179c:	000ee2        	l8ui	a14, a14, 0
4200179f:	cba2f2        	movi	a15, 0x2cb
420017a2:	f1fa      	add.n	a15, a1, a15
420017a4:	004fe2        	s8i	a14, a15, 0
420017a7:	8fa0e2        	movi	a14, 143
420017aa:	08dee2        	addmi	a14, a14, 0x800
420017ad:	e1ea      	add.n	a14, a1, a14
420017af:	000ee2        	l8ui	a14, a14, 0
420017b2:	caa2f2        	movi	a15, 0x2ca
420017b5:	f1fa      	add.n	a15, a1, a15
420017b7:	004fe2        	s8i	a14, a15, 0
420017ba:	8ea0e2        	movi	a14, 142
420017bd:	08dee2        	addmi	a14, a14, 0x800
420017c0:	e1ea      	add.n	a14, a1, a14
420017c2:	000ee2        	l8ui	a14, a14, 0
420017c5:	c9a2f2        	movi	a15, 0x2c9
420017c8:	f1fa      	add.n	a15, a1, a15
420017ca:	004fe2        	s8i	a14, a15, 0
420017cd:	3ca1e2        	movi	a14, 0x13c
420017d0:	edea      	add.n	a14, a13, a14
420017d2:	004ec2        	s8i	a12, a14, 0
420017d5:	5ca1e2        	movi	a14, 0x15c
420017d8:	edea      	add.n	a14, a13, a14
420017da:	004ec2        	s8i	a12, a14, 0
420017dd:	3da1e2        	movi	a14, 0x13d
420017e0:	edea      	add.n	a14, a13, a14
420017e2:	94a0f2        	movi	a15, 148
420017e5:	08dff2        	addmi	a15, a15, 0x800
420017e8:	f1fa      	add.n	a15, a1, a15
420017ea:	000ff2        	l8ui	a15, a15, 0
420017ed:	004ef2        	s8i	a15, a14, 0
420017f0:	3ea1e2        	movi	a14, 0x13e
420017f3:	edea      	add.n	a14, a13, a14
420017f5:	95a0f2        	movi	a15, 149
420017f8:	08dff2        	addmi	a15, a15, 0x800
420017fb:	f1fa      	add.n	a15, a1, a15
420017fd:	000ff2        	l8ui	a15, a15, 0
42001800:	004ef2        	s8i	a15, a14, 0
42001803:	3fa1e2        	movi	a14, 0x13f
42001806:	edea      	add.n	a14, a13, a14
42001808:	96a0f2        	movi	a15, 150
4200180b:	08dff2        	addmi	a15, a15, 0x800
4200180e:	f1fa      	add.n	a15, a1, a15
42001810:	000ff2        	l8ui	a15, a15, 0
42001813:	004ef2        	s8i	a15, a14, 0
42001816:	c16182        	s32i	a8, a1, 0x304
42001819:	9e0c      	movi.n	a14, 9
4200181b:	c061e2        	s32i	a14, a1, 0x300
4200181e:	bf61b2        	s32i	a11, a1, 0x2fc
42001821:	be6182        	s32i	a8, a1, 0x2f8
42001824:	bd61a2        	s32i	a10, a1, 0x2f4
42001827:	bb6192        	s32i	a9, a1, 0x2ec
4200182a:	c96182        	s32i	a8, a1, 0x324
4200182d:	ae0c      	movi.n	a14, 10
4200182f:	c861e2        	s32i	a14, a1, 0x320
42001832:	c761b2        	s32i	a11, a1, 0x31c
42001835:	c66182        	s32i	a8, a1, 0x318
42001838:	c561a2        	s32i	a10, a1, 0x314
4200183b:	c36192        	s32i	a9, a1, 0x30c
4200183e:	5fa1e2        	movi	a14, 0x15f
42001841:	edea      	add.n	a14, a13, a14
42001843:	99a0f2        	movi	a15, 153
42001846:	08dff2        	addmi	a15, a15, 0x800
42001849:	f1fa      	add.n	a15, a1, a15
4200184b:	000ff2        	l8ui	a15, a15, 0
4200184e:	004ef2        	s8i	a15, a14, 0
42001851:	5ea1e2        	movi	a14, 0x15e
42001854:	edea      	add.n	a14, a13, a14
42001856:	98a0f2        	movi	a15, 152
42001859:	08dff2        	addmi	a15, a15, 0x800
4200185c:	f1fa      	add.n	a15, a1, a15
4200185e:	000ff2        	l8ui	a15, a15, 0
42001861:	004ef2        	s8i	a15, a14, 0
42001864:	5da1e2        	movi	a14, 0x15d
42001867:	edea      	add.n	a14, a13, a14
42001869:	97a0f2        	movi	a15, 151
4200186c:	08dff2        	addmi	a15, a15, 0x800
4200186f:	f1fa      	add.n	a15, a1, a15
42001871:	000ff2        	l8ui	a15, a15, 0
42001874:	004ef2        	s8i	a15, a14, 0
42001877:	7ca1e2        	movi	a14, 0x17c
4200187a:	edea      	add.n	a14, a13, a14
4200187c:	004ec2        	s8i	a12, a14, 0
4200187f:	d16182        	s32i	a8, a1, 0x344
42001882:	be0c      	movi.n	a14, 11
42001884:	d061e2        	s32i	a14, a1, 0x340
42001887:	cf61b2        	s32i	a11, a1, 0x33c
4200188a:	ce6182        	s32i	a8, a1, 0x338
4200188d:	cd61a2        	s32i	a10, a1, 0x334
42001890:	cb6192        	s32i	a9, a1, 0x32c
42001893:	7fa1e2        	movi	a14, 0x17f
42001896:	edea      	add.n	a14, a13, a14
42001898:	9ca0f2        	movi	a15, 156
4200189b:	08dff2        	addmi	a15, a15, 0x800
4200189e:	f1fa      	add.n	a15, a1, a15
420018a0:	000ff2        	l8ui	a15, a15, 0
420018a3:	004ef2        	s8i	a15, a14, 0
420018a6:	7ea1e2        	movi	a14, 0x17e
420018a9:	edea      	add.n	a14, a13, a14
420018ab:	9ba0f2        	movi	a15, 155
420018ae:	08dff2        	addmi	a15, a15, 0x800
420018b1:	f1fa      	add.n	a15, a1, a15
420018b3:	000ff2        	l8ui	a15, a15, 0
420018b6:	004ef2        	s8i	a15, a14, 0
420018b9:	7da1e2        	movi	a14, 0x17d
420018bc:	edea      	add.n	a14, a13, a14
420018be:	9aa0f2        	movi	a15, 154
420018c1:	08dff2        	addmi	a15, a15, 0x800
420018c4:	f1fa      	add.n	a15, a1, a15
420018c6:	000ff2        	l8ui	a15, a15, 0
420018c9:	004ef2        	s8i	a15, a14, 0
420018cc:	9ca1e2        	movi	a14, 0x19c
420018cf:	edea      	add.n	a14, a13, a14
420018d1:	004ec2        	s8i	a12, a14, 0
420018d4:	d96182        	s32i	a8, a1, 0x364
420018d7:	ce0c      	movi.n	a14, 12
420018d9:	d861e2        	s32i	a14, a1, 0x360
420018dc:	d761b2        	s32i	a11, a1, 0x35c
420018df:	d66182        	s32i	a8, a1, 0x358
420018e2:	d561a2        	s32i	a10, a1, 0x354
420018e5:	d36192        	s32i	a9, a1, 0x34c
420018e8:	9fa1e2        	movi	a14, 0x19f
420018eb:	edea      	add.n	a14, a13, a14
420018ed:	9fa0f2        	movi	a15, 159
420018f0:	08dff2        	addmi	a15, a15, 0x800
420018f3:	f1fa      	add.n	a15, a1, a15
420018f5:	000ff2        	l8ui	a15, a15, 0
420018f8:	004ef2        	s8i	a15, a14, 0
420018fb:	9ea1e2        	movi	a14, 0x19e
420018fe:	edea      	add.n	a14, a13, a14
42001900:	9ea0f2        	movi	a15, 158
42001903:	08dff2        	addmi	a15, a15, 0x800
42001906:	f1fa      	add.n	a15, a1, a15
42001908:	000ff2        	l8ui	a15, a15, 0
4200190b:	004ef2        	s8i	a15, a14, 0
4200190e:	9da1e2        	movi	a14, 0x19d
42001911:	edea      	add.n	a14, a13, a14
42001913:	9da0f2        	movi	a15, 157
42001916:	08dff2        	addmi	a15, a15, 0x800
42001919:	f1fa      	add.n	a15, a1, a15
4200191b:	000ff2        	l8ui	a15, a15, 0
4200191e:	004ef2        	s8i	a15, a14, 0
42001921:	bca1e2        	movi	a14, 0x1bc
42001924:	edea      	add.n	a14, a13, a14
42001926:	004ec2        	s8i	a12, a14, 0
42001929:	e16182        	s32i	a8, a1, 0x384
4200192c:	de0c      	movi.n	a14, 13
4200192e:	e061e2        	s32i	a14, a1, 0x380
42001931:	df61b2        	s32i	a11, a1, 0x37c
42001934:	de6182        	s32i	a8, a1, 0x378
42001937:	dd61a2        	s32i	a10, a1, 0x374
4200193a:	db6192        	s32i	a9, a1, 0x36c
4200193d:	bfa1e2        	movi	a14, 0x1bf
42001940:	edea      	add.n	a14, a13, a14
42001942:	a2a0f2        	movi	a15, 162
42001945:	08dff2        	addmi	a15, a15, 0x800
42001948:	f1fa      	add.n	a15, a1, a15
4200194a:	000ff2        	l8ui	a15, a15, 0
4200194d:	004ef2        	s8i	a15, a14, 0
42001950:	bea1e2        	movi	a14, 0x1be
42001953:	edea      	add.n	a14, a13, a14
42001955:	a1a0f2        	movi	a15, 161
42001958:	08dff2        	addmi	a15, a15, 0x800
4200195b:	f1fa      	add.n	a15, a1, a15
4200195d:	000ff2        	l8ui	a15, a15, 0
42001960:	004ef2        	s8i	a15, a14, 0
42001963:	bda1e2        	movi	a14, 0x1bd
42001966:	edea      	add.n	a14, a13, a14
42001968:	a0a0f2        	movi	a15, 160
4200196b:	08dff2        	addmi	a15, a15, 0x800
4200196e:	f1fa      	add.n	a15, a1, a15
42001970:	000ff2        	l8ui	a15, a15, 0
42001973:	004ef2        	s8i	a15, a14, 0
42001976:	dca1e2        	movi	a14, 0x1dc
42001979:	edea      	add.n	a14, a13, a14
4200197b:	004ec2        	s8i	a12, a14, 0
4200197e:	e96182        	s32i	a8, a1, 0x3a4
42001981:	ee0c      	movi.n	a14, 14
42001983:	e861e2        	s32i	a14, a1, 0x3a0
42001986:	e761b2        	s32i	a11, a1, 0x39c
42001989:	e66182        	s32i	a8, a1, 0x398
4200198c:	e561a2        	s32i	a10, a1, 0x394
4200198f:	e36192        	s32i	a9, a1, 0x38c
42001992:	dfa1e2        	movi	a14, 0x1df
42001995:	edea      	add.n	a14, a13, a14
42001997:	a5a0f2        	movi	a15, 165
4200199a:	08dff2        	addmi	a15, a15, 0x800
4200199d:	f1fa      	add.n	a15, a1, a15
4200199f:	000ff2        	l8ui	a15, a15, 0
420019a2:	004ef2        	s8i	a15, a14, 0
420019a5:	dea1e2        	movi	a14, 0x1de
420019a8:	edea      	add.n	a14, a13, a14
420019aa:	a4a0f2        	movi	a15, 164
420019ad:	08dff2        	addmi	a15, a15, 0x800
420019b0:	f1fa      	add.n	a15, a1, a15
420019b2:	000ff2        	l8ui	a15, a15, 0
420019b5:	004ef2        	s8i	a15, a14, 0
420019b8:	dda1e2        	movi	a14, 0x1dd
420019bb:	edea      	add.n	a14, a13, a14
420019bd:	a3a0f2        	movi	a15, 163
420019c0:	08dff2        	addmi	a15, a15, 0x800
420019c3:	f1fa      	add.n	a15, a1, a15
420019c5:	000ff2        	l8ui	a15, a15, 0
420019c8:	004ef2        	s8i	a15, a14, 0
420019cb:	fca1e2        	movi	a14, 0x1fc
420019ce:	edea      	add.n	a14, a13, a14
420019d0:	004ec2        	s8i	a12, a14, 0
420019d3:	f16182        	s32i	a8, a1, 0x3c4
420019d6:	fe0c      	movi.n	a14, 15
420019d8:	f061e2        	s32i	a14, a1, 0x3c0
420019db:	ef61b2        	s32i	a11, a1, 0x3bc
420019de:	ee6182        	s32i	a8, a1, 0x3b8
420019e1:	ed61a2        	s32i	a10, a1, 0x3b4
420019e4:	eb6192        	s32i	a9, a1, 0x3ac
420019e7:	ffa1e2        	movi	a14, 0x1ff
420019ea:	edea      	add.n	a14, a13, a14
420019ec:	a8a0f2        	movi	a15, 168
420019ef:	08dff2        	addmi	a15, a15, 0x800
420019f2:	f1fa      	add.n	a15, a1, a15
420019f4:	000ff2        	l8ui	a15, a15, 0
420019f7:	004ef2        	s8i	a15, a14, 0
420019fa:	fea1e2        	movi	a14, 0x1fe
420019fd:	edea      	add.n	a14, a13, a14
420019ff:	a7a0f2        	movi	a15, 167
42001a02:	08dff2        	addmi	a15, a15, 0x800
42001a05:	f1fa      	add.n	a15, a1, a15
42001a07:	000ff2        	l8ui	a15, a15, 0
42001a0a:	004ef2        	s8i	a15, a14, 0
42001a0d:	fda1e2        	movi	a14, 0x1fd
42001a10:	edea      	add.n	a14, a13, a14
42001a12:	a6a0f2        	movi	a15, 166
42001a15:	08dff2        	addmi	a15, a15, 0x800
42001a18:	f1fa      	add.n	a15, a1, a15
42001a1a:	000ff2        	l8ui	a15, a15, 0
42001a1d:	004ef2        	s8i	a15, a14, 0
42001a20:	1ca2e2        	movi	a14, 0x21c
42001a23:	edea      	add.n	a14, a13, a14
42001a25:	004ec2        	s8i	a12, a14, 0
42001a28:	f96182        	s32i	a8, a1, 0x3e4
42001a2b:	0e1c      	movi.n	a14, 16
42001a2d:	f861e2        	s32i	a14, a1, 0x3e0
42001a30:	f761b2        	s32i	a11, a1, 0x3dc
42001a33:	f66182        	s32i	a8, a1, 0x3d8
42001a36:	f561a2        	s32i	a10, a1, 0x3d4
42001a39:	f36192        	s32i	a9, a1, 0x3cc
42001a3c:	1fa2e2        	movi	a14, 0x21f
42001a3f:	edea      	add.n	a14, a13, a14
42001a41:	aba0f2        	movi	a15, 171
42001a44:	08dff2        	addmi	a15, a15, 0x800
42001a47:	f1fa      	add.n	a15, a1, a15
42001a49:	000ff2        	l8ui	a15, a15, 0
42001a4c:	004ef2        	s8i	a15, a14, 0
42001a4f:	1ea2e2        	movi	a14, 0x21e
42001a52:	edea      	add.n	a14, a13, a14
42001a54:	aaa0f2        	movi	a15, 170
42001a57:	08dff2        	addmi	a15, a15, 0x800
42001a5a:	f1fa      	add.n	a15, a1, a15
42001a5c:	000ff2        	l8ui	a15, a15, 0
42001a5f:	004ef2        	s8i	a15, a14, 0
42001a62:	1da2e2        	movi	a14, 0x21d
42001a65:	edea      	add.n	a14, a13, a14
42001a67:	a9a0f2        	movi	a15, 169
42001a6a:	08dff2        	addmi	a15, a15, 0x800
42001a6d:	f1fa      	add.n	a15, a1, a15
42001a6f:	000ff2        	l8ui	a15, a15, 0
42001a72:	004ef2        	s8i	a15, a14, 0
42001a75:	3ca2e2        	movi	a14, 0x23c
42001a78:	edea      	add.n	a14, a13, a14
42001a7a:	004ec2        	s8i	a12, a14, 0
42001a7d:	04a4e2        	movi	a14, 0x404
42001a80:	e1ea      	add.n	a14, a1, a14
42001a82:	0e89      	s32i.n	a8, a14, 0
42001a84:	1e1c      	movi.n	a14, 17
42001a86:	00a4f2        	movi	a15, 0x400
42001a89:	f1fa      	add.n	a15, a1, a15
42001a8b:	0fe9      	s32i.n	a14, a15, 0
42001a8d:	ff61b2        	s32i	a11, a1, 0x3fc
42001a90:	fe6182        	s32i	a8, a1, 0x3f8
42001a93:	fd61a2        	s32i	a10, a1, 0x3f4
42001a96:	fb6192        	s32i	a9, a1, 0x3ec
42001a99:	3fa2e2        	movi	a14, 0x23f
42001a9c:	edea      	add.n	a14, a13, a14
42001a9e:	aea0f2        	movi	a15, 174
42001aa1:	08dff2        	addmi	a15, a15, 0x800
42001aa4:	f1fa      	add.n	a15, a1, a15
42001aa6:	000ff2        	l8ui	a15, a15, 0
42001aa9:	004ef2        	s8i	a15, a14, 0
42001aac:	3ea2e2        	movi	a14, 0x23e
42001aaf:	edea      	add.n	a14, a13, a14
42001ab1:	ada0f2        	movi	a15, 173
42001ab4:	08dff2        	addmi	a15, a15, 0x800
42001ab7:	f1fa      	add.n	a15, a1, a15
42001ab9:	000ff2        	l8ui	a15, a15, 0
42001abc:	004ef2        	s8i	a15, a14, 0
42001abf:	3da2e2        	movi	a14, 0x23d
42001ac2:	edea      	add.n	a14, a13, a14
42001ac4:	aca0f2        	movi	a15, 172
42001ac7:	08dff2        	addmi	a15, a15, 0x800
42001aca:	f1fa      	add.n	a15, a1, a15
42001acc:	000ff2        	l8ui	a15, a15, 0
42001acf:	004ef2        	s8i	a15, a14, 0
42001ad2:	5ca2e2        	movi	a14, 0x25c
42001ad5:	edea      	add.n	a14, a13, a14
42001ad7:	004ec2        	s8i	a12, a14, 0
42001ada:	24a4e2        	movi	a14, 0x424
42001add:	e1ea      	add.n	a14, a1, a14
42001adf:	0e89      	s32i.n	a8, a14, 0
42001ae1:	2e1c      	movi.n	a14, 18
42001ae3:	20a4f2        	movi	a15, 0x420
42001ae6:	f1fa      	add.n	a15, a1, a15
42001ae8:	0fe9      	s32i.n	a14, a15, 0
42001aea:	1ca4e2        	movi	a14, 0x41c
42001aed:	e1ea      	add.n	a14, a1, a14
42001aef:	0eb9      	s32i.n	a11, a14, 0
42001af1:	18a4e2        	movi	a14, 0x418
42001af4:	e1ea      	add.n	a14, a1, a14
42001af6:	0e89      	s32i.n	a8, a14, 0
42001af8:	14a4e2        	movi	a14, 0x414
42001afb:	e1ea      	add.n	a14, a1, a14
42001afd:	0ea9      	s32i.n	a10, a14, 0
42001aff:	0ca4e2        	movi	a14, 0x40c
42001b02:	e1ea      	add.n	a14, a1, a14
42001b04:	0e99      	s32i.n	a9, a14, 0
42001b06:	5fa2e2        	movi	a14, 0x25f
42001b09:	edea      	add.n	a14, a13, a14
42001b0b:	b1a0f2        	movi	a15, 177
42001b0e:	08dff2        	addmi	a15, a15, 0x800
42001b11:	f1fa      	add.n	a15, a1, a15
42001b13:	000ff2        	l8ui	a15, a15, 0
42001b16:	004ef2        	s8i	a15, a14, 0
42001b19:	5ea2e2        	movi	a14, 0x25e
42001b1c:	edea      	add.n	a14, a13, a14
42001b1e:	b0a0f2        	movi	a15, 176
42001b21:	08dff2        	addmi	a15, a15, 0x800
42001b24:	f1fa      	add.n	a15, a1, a15
42001b26:	000ff2        	l8ui	a15, a15, 0
42001b29:	004ef2        	s8i	a15, a14, 0
42001b2c:	5da2e2        	movi	a14, 0x25d
42001b2f:	edea      	add.n	a14, a13, a14
42001b31:	afa0f2        	movi	a15, 175
42001b34:	08dff2        	addmi	a15, a15, 0x800
42001b37:	f1fa      	add.n	a15, a1, a15
42001b39:	000ff2        	l8ui	a15, a15, 0
42001b3c:	004ef2        	s8i	a15, a14, 0
42001b3f:	7ca2e2        	movi	a14, 0x27c
42001b42:	edea      	add.n	a14, a13, a14
42001b44:	004ec2        	s8i	a12, a14, 0
42001b47:	44a4e2        	movi	a14, 0x444
42001b4a:	e1ea      	add.n	a14, a1, a14
42001b4c:	0e89      	s32i.n	a8, a14, 0
42001b4e:	3e1c      	movi.n	a14, 19
42001b50:	40a4f2        	movi	a15, 0x440
42001b53:	f1fa      	add.n	a15, a1, a15
42001b55:	0fe9      	s32i.n	a14, a15, 0
42001b57:	3ca4e2        	movi	a14, 0x43c
42001b5a:	e1ea      	add.n	a14, a1, a14
42001b5c:	0eb9      	s32i.n	a11, a14, 0
42001b5e:	38a4e2        	movi	a14, 0x438
42001b61:	e1ea      	add.n	a14, a1, a14
42001b63:	0e89      	s32i.n	a8, a14, 0
42001b65:	34a4e2        	movi	a14, 0x434
42001b68:	e1ea      	add.n	a14, a1, a14
42001b6a:	0ea9      	s32i.n	a10, a14, 0
42001b6c:	2ca4e2        	movi	a14, 0x42c
42001b6f:	e1ea      	add.n	a14, a1, a14
42001b71:	0e99      	s32i.n	a9, a14, 0
42001b73:	7fa2e2        	movi	a14, 0x27f
42001b76:	edea      	add.n	a14, a13, a14
42001b78:	b4a0f2        	movi	a15, 180
42001b7b:	08dff2        	addmi	a15, a15, 0x800
42001b7e:	f1fa      	add.n	a15, a1, a15
42001b80:	000ff2        	l8ui	a15, a15, 0
42001b83:	004ef2        	s8i	a15, a14, 0
42001b86:	7ea2e2        	movi	a14, 0x27e
42001b89:	edea      	add.n	a14, a13, a14
42001b8b:	b3a0f2        	movi	a15, 179
42001b8e:	08dff2        	addmi	a15, a15, 0x800
42001b91:	f1fa      	add.n	a15, a1, a15
42001b93:	000ff2        	l8ui	a15, a15, 0
42001b96:	004ef2        	s8i	a15, a14, 0
42001b99:	7da2e2        	movi	a14, 0x27d
42001b9c:	edea      	add.n	a14, a13, a14
42001b9e:	b2a0f2        	movi	a15, 178
42001ba1:	08dff2        	addmi	a15, a15, 0x800
42001ba4:	f1fa      	add.n	a15, a1, a15
42001ba6:	000ff2        	l8ui	a15, a15, 0
42001ba9:	004ef2        	s8i	a15, a14, 0
42001bac:	9ca2e2        	movi	a14, 0x29c
42001baf:	edea      	add.n	a14, a13, a14
42001bb1:	004ec2        	s8i	a12, a14, 0
42001bb4:	64a4e2        	movi	a14, 0x464
42001bb7:	e1ea      	add.n	a14, a1, a14
42001bb9:	0e89      	s32i.n	a8, a14, 0
42001bbb:	4e1c      	movi.n	a14, 20
42001bbd:	60a4f2        	movi	a15, 0x460
42001bc0:	f1fa      	add.n	a15, a1, a15
42001bc2:	0fe9      	s32i.n	a14, a15, 0
42001bc4:	5ca4e2        	movi	a14, 0x45c
42001bc7:	e1ea      	add.n	a14, a1, a14
42001bc9:	0eb9      	s32i.n	a11, a14, 0
42001bcb:	58a4e2        	movi	a14, 0x458
42001bce:	e1ea      	add.n	a14, a1, a14
42001bd0:	0e89      	s32i.n	a8, a14, 0
42001bd2:	54a4e2        	movi	a14, 0x454
42001bd5:	e1ea      	add.n	a14, a1, a14
42001bd7:	0ea9      	s32i.n	a10, a14, 0
42001bd9:	4ca4e2        	movi	a14, 0x44c
42001bdc:	e1ea      	add.n	a14, a1, a14
42001bde:	0e99      	s32i.n	a9, a14, 0
42001be0:	9fa2e2        	movi	a14, 0x29f
42001be3:	edea      	add.n	a14, a13, a14
42001be5:	b7a0f2        	movi	a15, 183
42001be8:	08dff2        	addmi	a15, a15, 0x800
42001beb:	f1fa      	add.n	a15, a1, a15
42001bed:	000ff2        	l8ui	a15, a15, 0
42001bf0:	004ef2        	s8i	a15, a14, 0
42001bf3:	9ea2e2        	movi	a14, 0x29e
42001bf6:	edea      	add.n	a14, a13, a14
42001bf8:	b6a0f2        	movi	a15, 182
42001bfb:	08dff2        	addmi	a15, a15, 0x800
42001bfe:	f1fa      	add.n	a15, a1, a15
42001c00:	000ff2        	l8ui	a15, a15, 0
42001c03:	004ef2        	s8i	a15, a14, 0
42001c06:	9da2e2        	movi	a14, 0x29d
42001c09:	edea      	add.n	a14, a13, a14
42001c0b:	b5a0f2        	movi	a15, 181
42001c0e:	08dff2        	addmi	a15, a15, 0x800
42001c11:	f1fa      	add.n	a15, a1, a15
42001c13:	000ff2        	l8ui	a15, a15, 0
42001c16:	004ef2        	s8i	a15, a14, 0
42001c19:	bca2e2        	movi	a14, 0x2bc
42001c1c:	edea      	add.n	a14, a13, a14
42001c1e:	004ec2        	s8i	a12, a14, 0
42001c21:	84a4e2        	movi	a14, 0x484
42001c24:	e1ea      	add.n	a14, a1, a14
42001c26:	0e89      	s32i.n	a8, a14, 0
42001c28:	5e1c      	movi.n	a14, 21
42001c2a:	80a4f2        	movi	a15, 0x480
42001c2d:	f1fa      	add.n	a15, a1, a15
42001c2f:	0fe9      	s32i.n	a14, a15, 0
42001c31:	7ca4e2        	movi	a14, 0x47c
42001c34:	e1ea      	add.n	a14, a1, a14
42001c36:	0eb9      	s32i.n	a11, a14, 0
42001c38:	78a4e2        	movi	a14, 0x478
42001c3b:	e1ea      	add.n	a14, a1, a14
42001c3d:	0e89      	s32i.n	a8, a14, 0
42001c3f:	74a4e2        	movi	a14, 0x474
42001c42:	e1ea      	add.n	a14, a1, a14
42001c44:	0ea9      	s32i.n	a10, a14, 0
42001c46:	6ca4e2        	movi	a14, 0x46c
42001c49:	e1ea      	add.n	a14, a1, a14
42001c4b:	0e99      	s32i.n	a9, a14, 0
42001c4d:	bfa2e2        	movi	a14, 0x2bf
42001c50:	edea      	add.n	a14, a13, a14
42001c52:	baa0f2        	movi	a15, 186
42001c55:	08dff2        	addmi	a15, a15, 0x800
42001c58:	f1fa      	add.n	a15, a1, a15
42001c5a:	000ff2        	l8ui	a15, a15, 0
42001c5d:	004ef2        	s8i	a15, a14, 0
42001c60:	bea2e2        	movi	a14, 0x2be
42001c63:	edea      	add.n	a14, a13, a14
42001c65:	b9a0f2        	movi	a15, 185
42001c68:	08dff2        	addmi	a15, a15, 0x800
42001c6b:	f1fa      	add.n	a15, a1, a15
42001c6d:	000ff2        	l8ui	a15, a15, 0
42001c70:	004ef2        	s8i	a15, a14, 0
42001c73:	bda2e2        	movi	a14, 0x2bd
42001c76:	edea      	add.n	a14, a13, a14
42001c78:	b8a0f2        	movi	a15, 184
42001c7b:	08dff2        	addmi	a15, a15, 0x800
42001c7e:	f1fa      	add.n	a15, a1, a15
42001c80:	000ff2        	l8ui	a15, a15, 0
42001c83:	004ef2        	s8i	a15, a14, 0
42001c86:	dca2e2        	movi	a14, 0x2dc
42001c89:	edea      	add.n	a14, a13, a14
42001c8b:	004ec2        	s8i	a12, a14, 0
42001c8e:	a4a4e2        	movi	a14, 0x4a4
42001c91:	e1ea      	add.n	a14, a1, a14
42001c93:	0e89      	s32i.n	a8, a14, 0
42001c95:	6e1c      	movi.n	a14, 22
42001c97:	a0a4f2        	movi	a15, 0x4a0
42001c9a:	f1fa      	add.n	a15, a1, a15
42001c9c:	0fe9      	s32i.n	a14, a15, 0
42001c9e:	9ca4e2        	movi	a14, 0x49c
42001ca1:	e1ea      	add.n	a14, a1, a14
42001ca3:	0eb9      	s32i.n	a11, a14, 0
42001ca5:	98a4e2        	movi	a14, 0x498
42001ca8:	e1ea      	add.n	a14, a1, a14
42001caa:	0e89      	s32i.n	a8, a14, 0
42001cac:	94a4e2        	movi	a14, 0x494
42001caf:	e1ea      	add.n	a14, a1, a14
42001cb1:	0ea9      	s32i.n	a10, a14, 0
42001cb3:	8ca4e2        	movi	a14, 0x48c
42001cb6:	e1ea      	add.n	a14, a1, a14
42001cb8:	0e99      	s32i.n	a9, a14, 0
42001cba:	dfa2e2        	movi	a14, 0x2df
42001cbd:	edea      	add.n	a14, a13, a14
42001cbf:	bda0f2        	movi	a15, 189
42001cc2:	08dff2        	addmi	a15, a15, 0x800
42001cc5:	f1fa      	add.n	a15, a1, a15
42001cc7:	000ff2        	l8ui	a15, a15, 0
42001cca:	004ef2        	s8i	a15, a14, 0
42001ccd:	dea2e2        	movi	a14, 0x2de
42001cd0:	edea      	add.n	a14, a13, a14
42001cd2:	bca0f2        	movi	a15, 188
42001cd5:	08dff2        	addmi	a15, a15, 0x800
42001cd8:	f1fa      	add.n	a15, a1, a15
42001cda:	000ff2        	l8ui	a15, a15, 0
42001cdd:	004ef2        	s8i	a15, a14, 0
42001ce0:	dda2e2        	movi	a14, 0x2dd
42001ce3:	edea      	add.n	a14, a13, a14
42001ce5:	bba0f2        	movi	a15, 187
42001ce8:	08dff2        	addmi	a15, a15, 0x800
42001ceb:	f1fa      	add.n	a15, a1, a15
42001ced:	000ff2        	l8ui	a15, a15, 0
42001cf0:	004ef2        	s8i	a15, a14, 0
42001cf3:	fca2e2        	movi	a14, 0x2fc
42001cf6:	edea      	add.n	a14, a13, a14
42001cf8:	004ec2        	s8i	a12, a14, 0
42001cfb:	c4a4e2        	movi	a14, 0x4c4
42001cfe:	e1ea      	add.n	a14, a1, a14
42001d00:	0e89      	s32i.n	a8, a14, 0
42001d02:	7e1c      	movi.n	a14, 23
42001d04:	c0a4f2        	movi	a15, 0x4c0
42001d07:	f1fa      	add.n	a15, a1, a15
42001d09:	0fe9      	s32i.n	a14, a15, 0
42001d0b:	bca4e2        	movi	a14, 0x4bc
42001d0e:	e1ea      	add.n	a14, a1, a14
42001d10:	0eb9      	s32i.n	a11, a14, 0
42001d12:	b8a4e2        	movi	a14, 0x4b8
42001d15:	e1ea      	add.n	a14, a1, a14
42001d17:	0e89      	s32i.n	a8, a14, 0
42001d19:	b4a4e2        	movi	a14, 0x4b4
42001d1c:	e1ea      	add.n	a14, a1, a14
42001d1e:	0ea9      	s32i.n	a10, a14, 0
42001d20:	aca4e2        	movi	a14, 0x4ac
42001d23:	e1ea      	add.n	a14, a1, a14
42001d25:	0e99      	s32i.n	a9, a14, 0
42001d27:	ffa2e2        	movi	a14, 0x2ff
42001d2a:	edea      	add.n	a14, a13, a14
42001d2c:	c0a0f2        	movi	a15, 192
42001d2f:	08dff2        	addmi	a15, a15, 0x800
42001d32:	f1fa      	add.n	a15, a1, a15
42001d34:	000ff2        	l8ui	a15, a15, 0
42001d37:	004ef2        	s8i	a15, a14, 0
42001d3a:	fea2e2        	movi	a14, 0x2fe
42001d3d:	edea      	add.n	a14, a13, a14
42001d3f:	bfa0f2        	movi	a15, 191
42001d42:	08dff2        	addmi	a15, a15, 0x800
42001d45:	f1fa      	add.n	a15, a1, a15
42001d47:	000ff2        	l8ui	a15, a15, 0
42001d4a:	004ef2        	s8i	a15, a14, 0
42001d4d:	fda2e2        	movi	a14, 0x2fd
42001d50:	edea      	add.n	a14, a13, a14
42001d52:	bea0f2        	movi	a15, 190
42001d55:	08dff2        	addmi	a15, a15, 0x800
42001d58:	f1fa      	add.n	a15, a1, a15
42001d5a:	000ff2        	l8ui	a15, a15, 0
42001d5d:	004ef2        	s8i	a15, a14, 0
42001d60:	1ca3e2        	movi	a14, 0x31c
42001d63:	edea      	add.n	a14, a13, a14
42001d65:	004ec2        	s8i	a12, a14, 0
42001d68:	e4a4e2        	movi	a14, 0x4e4
42001d6b:	e1ea      	add.n	a14, a1, a14
42001d6d:	0e89      	s32i.n	a8, a14, 0
42001d6f:	8e1c      	movi.n	a14, 24
42001d71:	e0a4f2        	movi	a15, 0x4e0
42001d74:	f1fa      	add.n	a15, a1, a15
42001d76:	0fe9      	s32i.n	a14, a15, 0
42001d78:	dca4e2        	movi	a14, 0x4dc
42001d7b:	e1ea      	add.n	a14, a1, a14
42001d7d:	0eb9      	s32i.n	a11, a14, 0
42001d7f:	d8a4e2        	movi	a14, 0x4d8
42001d82:	e1ea      	add.n	a14, a1, a14
42001d84:	0e89      	s32i.n	a8, a14, 0
42001d86:	d4a4e2        	movi	a14, 0x4d4
42001d89:	e1ea      	add.n	a14, a1, a14
42001d8b:	0ea9      	s32i.n	a10, a14, 0
42001d8d:	cca4e2        	movi	a14, 0x4cc
42001d90:	e1ea      	add.n	a14, a1, a14
42001d92:	0e99      	s32i.n	a9, a14, 0
42001d94:	1fa3e2        	movi	a14, 0x31f
42001d97:	edea      	add.n	a14, a13, a14
42001d99:	c3a0f2        	movi	a15, 195
42001d9c:	08dff2        	addmi	a15, a15, 0x800
42001d9f:	f1fa      	add.n	a15, a1, a15
42001da1:	000ff2        	l8ui	a15, a15, 0
42001da4:	004ef2        	s8i	a15, a14, 0
42001da7:	1ea3e2        	movi	a14, 0x31e
42001daa:	edea      	add.n	a14, a13, a14
42001dac:	c2a0f2        	movi	a15, 194
42001daf:	08dff2        	addmi	a15, a15, 0x800
42001db2:	f1fa      	add.n	a15, a1, a15
42001db4:	000ff2        	l8ui	a15, a15, 0
42001db7:	004ef2        	s8i	a15, a14, 0
42001dba:	1da3e2        	movi	a14, 0x31d
42001dbd:	edea      	add.n	a14, a13, a14
42001dbf:	c1a0f2        	movi	a15, 193
42001dc2:	08dff2        	addmi	a15, a15, 0x800
42001dc5:	f1fa      	add.n	a15, a1, a15
42001dc7:	000ff2        	l8ui	a15, a15, 0
42001dca:	004ef2        	s8i	a15, a14, 0
42001dcd:	3ca3e2        	movi	a14, 0x33c
42001dd0:	edea      	add.n	a14, a13, a14
42001dd2:	004ec2        	s8i	a12, a14, 0
42001dd5:	04a5e2        	movi	a14, 0x504
42001dd8:	e1ea      	add.n	a14, a1, a14
42001dda:	0e89      	s32i.n	a8, a14, 0
42001ddc:	9e1c      	movi.n	a14, 25
42001dde:	00a5f2        	movi	a15, 0x500
42001de1:	f1fa      	add.n	a15, a1, a15
42001de3:	0fe9      	s32i.n	a14, a15, 0
42001de5:	fca4e2        	movi	a14, 0x4fc
42001de8:	e1ea      	add.n	a14, a1, a14
42001dea:	0eb9      	s32i.n	a11, a14, 0
42001dec:	f8a4e2        	movi	a14, 0x4f8
42001def:	e1ea      	add.n	a14, a1, a14
42001df1:	0e89      	s32i.n	a8, a14, 0
42001df3:	f4a4e2        	movi	a14, 0x4f4
42001df6:	e1ea      	add.n	a14, a1, a14
42001df8:	0ea9      	s32i.n	a10, a14, 0
42001dfa:	eca4e2        	movi	a14, 0x4ec
42001dfd:	e1ea      	add.n	a14, a1, a14
42001dff:	0e99      	s32i.n	a9, a14, 0
42001e01:	3fa3e2        	movi	a14, 0x33f
42001e04:	edea      	add.n	a14, a13, a14
42001e06:	c6a0f2        	movi	a15, 198
42001e09:	08dff2        	addmi	a15, a15, 0x800
42001e0c:	f1fa      	add.n	a15, a1, a15
42001e0e:	000ff2        	l8ui	a15, a15, 0
42001e11:	004ef2        	s8i	a15, a14, 0
42001e14:	3ea3e2        	movi	a14, 0x33e
42001e17:	edea      	add.n	a14, a13, a14
42001e19:	c5a0f2        	movi	a15, 197
42001e1c:	08dff2        	addmi	a15, a15, 0x800
42001e1f:	f1fa      	add.n	a15, a1, a15
42001e21:	000ff2        	l8ui	a15, a15, 0
42001e24:	004ef2        	s8i	a15, a14, 0
42001e27:	3da3e2        	movi	a14, 0x33d
42001e2a:	edea      	add.n	a14, a13, a14
42001e2c:	c4a0f2        	movi	a15, 196
42001e2f:	08dff2        	addmi	a15, a15, 0x800
42001e32:	f1fa      	add.n	a15, a1, a15
42001e34:	000ff2        	l8ui	a15, a15, 0
42001e37:	004ef2        	s8i	a15, a14, 0
42001e3a:	5ca3e2        	movi	a14, 0x35c
42001e3d:	edea      	add.n	a14, a13, a14
42001e3f:	004ec2        	s8i	a12, a14, 0
42001e42:	24a5e2        	movi	a14, 0x524
42001e45:	e1ea      	add.n	a14, a1, a14
42001e47:	0e89      	s32i.n	a8, a14, 0
42001e49:	ae1c      	movi.n	a14, 26
42001e4b:	20a5f2        	movi	a15, 0x520
42001e4e:	f1fa      	add.n	a15, a1, a15
42001e50:	0fe9      	s32i.n	a14, a15, 0
42001e52:	1ca5e2        	movi	a14, 0x51c
42001e55:	e1ea      	add.n	a14, a1, a14
42001e57:	0eb9      	s32i.n	a11, a14, 0
42001e59:	18a5e2        	movi	a14, 0x518
42001e5c:	e1ea      	add.n	a14, a1, a14
42001e5e:	0e89      	s32i.n	a8, a14, 0
42001e60:	14a5e2        	movi	a14, 0x514
42001e63:	e1ea      	add.n	a14, a1, a14
42001e65:	0ea9      	s32i.n	a10, a14, 0
42001e67:	0ca5e2        	movi	a14, 0x50c
42001e6a:	e1ea      	add.n	a14, a1, a14
42001e6c:	0e99      	s32i.n	a9, a14, 0
42001e6e:	5fa3e2        	movi	a14, 0x35f
42001e71:	edea      	add.n	a14, a13, a14
42001e73:	c9a0f2        	movi	a15, 201
42001e76:	08dff2        	addmi	a15, a15, 0x800
42001e79:	f1fa      	add.n	a15, a1, a15
42001e7b:	000ff2        	l8ui	a15, a15, 0
42001e7e:	004ef2        	s8i	a15, a14, 0
42001e81:	5ea3e2        	movi	a14, 0x35e
42001e84:	edea      	add.n	a14, a13, a14
42001e86:	c8a0f2        	movi	a15, 200
42001e89:	08dff2        	addmi	a15, a15, 0x800
42001e8c:	f1fa      	add.n	a15, a1, a15
42001e8e:	000ff2        	l8ui	a15, a15, 0
42001e91:	004ef2        	s8i	a15, a14, 0
42001e94:	5da3e2        	movi	a14, 0x35d
42001e97:	edea      	add.n	a14, a13, a14
42001e99:	c7a0f2        	movi	a15, 199
42001e9c:	08dff2        	addmi	a15, a15, 0x800
42001e9f:	f1fa      	add.n	a15, a1, a15
42001ea1:	000ff2        	l8ui	a15, a15, 0
42001ea4:	004ef2        	s8i	a15, a14, 0
42001ea7:	7ca3e2        	movi	a14, 0x37c
42001eaa:	edea      	add.n	a14, a13, a14
42001eac:	004ec2        	s8i	a12, a14, 0
42001eaf:	44a5e2        	movi	a14, 0x544
42001eb2:	e1ea      	add.n	a14, a1, a14
42001eb4:	0e89      	s32i.n	a8, a14, 0
42001eb6:	be1c      	movi.n	a14, 27
42001eb8:	40a5f2        	movi	a15, 0x540
42001ebb:	f1fa      	add.n	a15, a1, a15
42001ebd:	0fe9      	s32i.n	a14, a15, 0
42001ebf:	3ca5e2        	movi	a14, 0x53c
42001ec2:	e1ea      	add.n	a14, a1, a14
42001ec4:	0eb9      	s32i.n	a11, a14, 0
42001ec6:	38a5e2        	movi	a14, 0x538
42001ec9:	e1ea      	add.n	a14, a1, a14
42001ecb:	0e89      	s32i.n	a8, a14, 0
42001ecd:	34a5e2        	movi	a14, 0x534
42001ed0:	e1ea      	add.n	a14, a1, a14
42001ed2:	0ea9      	s32i.n	a10, a14, 0
42001ed4:	2ca5e2        	movi	a14, 0x52c
42001ed7:	e1ea      	add.n	a14, a1, a14
42001ed9:	0e99      	s32i.n	a9, a14, 0
42001edb:	7fa3e2        	movi	a14, 0x37f
42001ede:	edea      	add.n	a14, a13, a14
42001ee0:	cca0f2        	movi	a15, 204
42001ee3:	08dff2        	addmi	a15, a15, 0x800
42001ee6:	f1fa      	add.n	a15, a1, a15
42001ee8:	000ff2        	l8ui	a15, a15, 0
42001eeb:	004ef2        	s8i	a15, a14, 0
42001eee:	7ea3e2        	movi	a14, 0x37e
42001ef1:	edea      	add.n	a14, a13, a14
42001ef3:	cba0f2        	movi	a15, 203
42001ef6:	08dff2        	addmi	a15, a15, 0x800
42001ef9:	f1fa      	add.n	a15, a1, a15
42001efb:	000ff2        	l8ui	a15, a15, 0
42001efe:	004ef2        	s8i	a15, a14, 0
42001f01:	7da3e2        	movi	a14, 0x37d
42001f04:	edea      	add.n	a14, a13, a14
42001f06:	caa0f2        	movi	a15, 202
42001f09:	08dff2        	addmi	a15, a15, 0x800
42001f0c:	f1fa      	add.n	a15, a1, a15
42001f0e:	000ff2        	l8ui	a15, a15, 0
42001f11:	004ef2        	s8i	a15, a14, 0
42001f14:	9ca3e2        	movi	a14, 0x39c
42001f17:	edea      	add.n	a14, a13, a14
42001f19:	004ec2        	s8i	a12, a14, 0
42001f1c:	64a5e2        	movi	a14, 0x564
42001f1f:	e1ea      	add.n	a14, a1, a14
42001f21:	0e89      	s32i.n	a8, a14, 0
42001f23:	ce1c      	movi.n	a14, 28
42001f25:	60a5f2        	movi	a15, 0x560
42001f28:	f1fa      	add.n	a15, a1, a15
42001f2a:	0fe9      	s32i.n	a14, a15, 0
42001f2c:	5ca5e2        	movi	a14, 0x55c
42001f2f:	e1ea      	add.n	a14, a1, a14
42001f31:	0eb9      	s32i.n	a11, a14, 0
42001f33:	58a5e2        	movi	a14, 0x558
42001f36:	e1ea      	add.n	a14, a1, a14
42001f38:	0e89      	s32i.n	a8, a14, 0
42001f3a:	54a5e2        	movi	a14, 0x554
42001f3d:	e1ea      	add.n	a14, a1, a14
42001f3f:	0ea9      	s32i.n	a10, a14, 0
42001f41:	4ca5e2        	movi	a14, 0x54c
42001f44:	e1ea      	add.n	a14, a1, a14
42001f46:	0e99      	s32i.n	a9, a14, 0
42001f48:	9fa3e2        	movi	a14, 0x39f
42001f4b:	edea      	add.n	a14, a13, a14
42001f4d:	cfa0f2        	movi	a15, 207
42001f50:	08dff2        	addmi	a15, a15, 0x800
42001f53:	f1fa      	add.n	a15, a1, a15
42001f55:	000ff2        	l8ui	a15, a15, 0
42001f58:	004ef2        	s8i	a15, a14, 0
42001f5b:	9ea3e2        	movi	a14, 0x39e
42001f5e:	edea      	add.n	a14, a13, a14
42001f60:	cea0f2        	movi	a15, 206
42001f63:	08dff2        	addmi	a15, a15, 0x800
42001f66:	f1fa      	add.n	a15, a1, a15
42001f68:	000ff2        	l8ui	a15, a15, 0
42001f6b:	004ef2        	s8i	a15, a14, 0
42001f6e:	9da3e2        	movi	a14, 0x39d
42001f71:	edea      	add.n	a14, a13, a14
42001f73:	cda0f2        	movi	a15, 205
42001f76:	08dff2        	addmi	a15, a15, 0x800
42001f79:	f1fa      	add.n	a15, a1, a15
42001f7b:	000ff2        	l8ui	a15, a15, 0
42001f7e:	004ef2        	s8i	a15, a14, 0
42001f81:	bca3e2        	movi	a14, 0x3bc
42001f84:	edea      	add.n	a14, a13, a14
42001f86:	004ec2        	s8i	a12, a14, 0
42001f89:	84a5e2        	movi	a14, 0x584
42001f8c:	e1ea      	add.n	a14, a1, a14
42001f8e:	0e89      	s32i.n	a8, a14, 0
42001f90:	de1c      	movi.n	a14, 29
42001f92:	80a5f2        	movi	a15, 0x580
42001f95:	f1fa      	add.n	a15, a1, a15
42001f97:	0fe9      	s32i.n	a14, a15, 0
42001f99:	7ca5e2        	movi	a14, 0x57c
42001f9c:	e1ea      	add.n	a14, a1, a14
42001f9e:	0eb9      	s32i.n	a11, a14, 0
42001fa0:	78a5e2        	movi	a14, 0x578
42001fa3:	e1ea      	add.n	a14, a1, a14
42001fa5:	0e89      	s32i.n	a8, a14, 0
42001fa7:	74a5e2        	movi	a14, 0x574
42001faa:	e1ea      	add.n	a14, a1, a14
42001fac:	0ea9      	s32i.n	a10, a14, 0
42001fae:	6ca5e2        	movi	a14, 0x56c
42001fb1:	e1ea      	add.n	a14, a1, a14
42001fb3:	0e99      	s32i.n	a9, a14, 0
42001fb5:	bfa3e2        	movi	a14, 0x3bf
42001fb8:	edea      	add.n	a14, a13, a14
42001fba:	d2a0f2        	movi	a15, 210
42001fbd:	08dff2        	addmi	a15, a15, 0x800
42001fc0:	f1fa      	add.n	a15, a1, a15
42001fc2:	000ff2        	l8ui	a15, a15, 0
42001fc5:	004ef2        	s8i	a15, a14, 0
42001fc8:	bea3e2        	movi	a14, 0x3be
42001fcb:	edea      	add.n	a14, a13, a14
42001fcd:	d1a0f2        	movi	a15, 209
42001fd0:	08dff2        	addmi	a15, a15, 0x800
42001fd3:	f1fa      	add.n	a15, a1, a15
42001fd5:	000ff2        	l8ui	a15, a15, 0
42001fd8:	004ef2        	s8i	a15, a14, 0
42001fdb:	bda3e2        	movi	a14, 0x3bd
42001fde:	edea      	add.n	a14, a13, a14
42001fe0:	d0a0f2        	movi	a15, 208
42001fe3:	08dff2        	addmi	a15, a15, 0x800
42001fe6:	f1fa      	add.n	a15, a1, a15
42001fe8:	000ff2        	l8ui	a15, a15, 0
42001feb:	004ef2        	s8i	a15, a14, 0
42001fee:	dca3e2        	movi	a14, 0x3dc
42001ff1:	edea      	add.n	a14, a13, a14
42001ff3:	004ec2        	s8i	a12, a14, 0
42001ff6:	a4a5e2        	movi	a14, 0x5a4
42001ff9:	e1ea      	add.n	a14, a1, a14
42001ffb:	0e89      	s32i.n	a8, a14, 0
42001ffd:	ee1c      	movi.n	a14, 30
42001fff:	a0a5f2        	movi	a15, 0x5a0
42002002:	f1fa      	add.n	a15, a1, a15
42002004:	0fe9      	s32i.n	a14, a15, 0
42002006:	9ca5e2        	movi	a14, 0x59c
42002009:	e1ea      	add.n	a14, a1, a14
4200200b:	0eb9      	s32i.n	a11, a14, 0
4200200d:	98a5e2        	movi	a14, 0x598
42002010:	e1ea      	add.n	a14, a1, a14
42002012:	0e89      	s32i.n	a8, a14, 0
42002014:	94a5e2        	movi	a14, 0x594
42002017:	e1ea      	add.n	a14, a1, a14
42002019:	0ea9      	s32i.n	a10, a14, 0
4200201b:	8ca5e2        	movi	a14, 0x58c
4200201e:	e1ea      	add.n	a14, a1, a14
42002020:	0e99      	s32i.n	a9, a14, 0
42002022:	dfa3e2        	movi	a14, 0x3df
42002025:	edea      	add.n	a14, a13, a14
42002027:	d5a0f2        	movi	a15, 213
4200202a:	08dff2        	addmi	a15, a15, 0x800
4200202d:	f1fa      	add.n	a15, a1, a15
4200202f:	000ff2        	l8ui	a15, a15, 0
42002032:	004ef2        	s8i	a15, a14, 0
42002035:	dea3e2        	movi	a14, 0x3de
42002038:	edea      	add.n	a14, a13, a14
4200203a:	d4a0f2        	movi	a15, 212
4200203d:	08dff2        	addmi	a15, a15, 0x800
42002040:	f1fa      	add.n	a15, a1, a15
42002042:	000ff2        	l8ui	a15, a15, 0
42002045:	004ef2        	s8i	a15, a14, 0
42002048:	dda3e2        	movi	a14, 0x3dd
4200204b:	edea      	add.n	a14, a13, a14
4200204d:	d3a0f2        	movi	a15, 211
42002050:	08dff2        	addmi	a15, a15, 0x800
42002053:	f1fa      	add.n	a15, a1, a15
42002055:	000ff2        	l8ui	a15, a15, 0
42002058:	004ef2        	s8i	a15, a14, 0
4200205b:	fca3e2        	movi	a14, 0x3fc
4200205e:	edea      	add.n	a14, a13, a14
42002060:	004ec2        	s8i	a12, a14, 0
42002063:	c4a5e2        	movi	a14, 0x5c4
42002066:	e1ea      	add.n	a14, a1, a14
42002068:	0e89      	s32i.n	a8, a14, 0
4200206a:	fe1c      	movi.n	a14, 31
4200206c:	c0a5f2        	movi	a15, 0x5c0
4200206f:	f1fa      	add.n	a15, a1, a15
42002071:	0fe9      	s32i.n	a14, a15, 0
42002073:	bca5e2        	movi	a14, 0x5bc
42002076:	e1ea      	add.n	a14, a1, a14
42002078:	0eb9      	s32i.n	a11, a14, 0
4200207a:	b8a5e2        	movi	a14, 0x5b8
4200207d:	e1ea      	add.n	a14, a1, a14
4200207f:	0e89      	s32i.n	a8, a14, 0
42002081:	b4a5e2        	movi	a14, 0x5b4
42002084:	e1ea      	add.n	a14, a1, a14
42002086:	0ea9      	s32i.n	a10, a14, 0
42002088:	aca5e2        	movi	a14, 0x5ac
4200208b:	e1ea      	add.n	a14, a1, a14
4200208d:	0e99      	s32i.n	a9, a14, 0
4200208f:	ffa3e2        	movi	a14, 0x3ff
42002092:	edea      	add.n	a14, a13, a14
42002094:	d8a0f2        	movi	a15, 216
42002097:	08dff2        	addmi	a15, a15, 0x800
4200209a:	f1fa      	add.n	a15, a1, a15
4200209c:	000ff2        	l8ui	a15, a15, 0
4200209f:	004ef2        	s8i	a15, a14, 0
420020a2:	fea3e2        	movi	a14, 0x3fe
420020a5:	edea      	add.n	a14, a13, a14
420020a7:	d7a0f2        	movi	a15, 215
420020aa:	08dff2        	addmi	a15, a15, 0x800
420020ad:	f1fa      	add.n	a15, a1, a15
420020af:	000ff2        	l8ui	a15, a15, 0
420020b2:	004ef2        	s8i	a15, a14, 0
420020b5:	fda3e2        	movi	a14, 0x3fd
420020b8:	edea      	add.n	a14, a13, a14
420020ba:	d6a0f2        	movi	a15, 214
420020bd:	08dff2        	addmi	a15, a15, 0x800
420020c0:	f1fa      	add.n	a15, a1, a15
420020c2:	000ff2        	l8ui	a15, a15, 0
420020c5:	004ef2        	s8i	a15, a14, 0
420020c8:	1ca4e2        	movi	a14, 0x41c
420020cb:	edea      	add.n	a14, a13, a14
420020cd:	004ec2        	s8i	a12, a14, 0
420020d0:	18a4e2        	movi	a14, 0x418
420020d3:	edea      	add.n	a14, a13, a14
420020d5:	0e89      	s32i.n	a8, a14, 0
420020d7:	14a4e2        	movi	a14, 0x414
420020da:	edea      	add.n	a14, a13, a14
420020dc:	0eb9      	s32i.n	a11, a14, 0
420020de:	10a4e2        	movi	a14, 0x410
420020e1:	edea      	add.n	a14, a13, a14
420020e3:	0eb9      	s32i.n	a11, a14, 0
420020e5:	0ca4e2        	movi	a14, 0x40c
420020e8:	edea      	add.n	a14, a13, a14
420020ea:	0e89      	s32i.n	a8, a14, 0
420020ec:	08a4e2        	movi	a14, 0x408
420020ef:	edea      	add.n	a14, a13, a14
420020f1:	0ea9      	s32i.n	a10, a14, 0
420020f3:	04dde2        	addmi	a14, a13, 0x400
420020f6:	0e99      	s32i.n	a9, a14, 0
420020f8:	1fa4e2        	movi	a14, 0x41f
420020fb:	edea      	add.n	a14, a13, a14
420020fd:	dba0f2        	movi	a15, 219
42002100:	08dff2        	addmi	a15, a15, 0x800
42002103:	f1fa      	add.n	a15, a1, a15
42002105:	000ff2        	l8ui	a15, a15, 0
42002108:	004ef2        	s8i	a15, a14, 0
4200210b:	1ea4e2        	movi	a14, 0x41e
4200210e:	edea      	add.n	a14, a13, a14
42002110:	daa0f2        	movi	a15, 218
42002113:	08dff2        	addmi	a15, a15, 0x800
42002116:	f1fa      	add.n	a15, a1, a15
42002118:	000ff2        	l8ui	a15, a15, 0
4200211b:	004ef2        	s8i	a15, a14, 0
4200211e:	1da4e2        	movi	a14, 0x41d
42002121:	edea      	add.n	a14, a13, a14
42002123:	d9a0f2        	movi	a15, 217
42002126:	08dff2        	addmi	a15, a15, 0x800
42002129:	f1fa      	add.n	a15, a1, a15
4200212b:	000ff2        	l8ui	a15, a15, 0
4200212e:	004ef2        	s8i	a15, a14, 0
42002131:	3ca4e2        	movi	a14, 0x43c
42002134:	edea      	add.n	a14, a13, a14
42002136:	004ec2        	s8i	a12, a14, 0
42002139:	38a4e2        	movi	a14, 0x438
4200213c:	edea      	add.n	a14, a13, a14
4200213e:	0e89      	s32i.n	a8, a14, 0
42002140:	34a4e2        	movi	a14, 0x434
42002143:	edea      	add.n	a14, a13, a14
42002145:	1f2c      	movi.n	a15, 33
42002147:	0ef9      	s32i.n	a15, a14, 0
42002149:	30a4e2        	movi	a14, 0x430
4200214c:	edea      	add.n	a14, a13, a14
4200214e:	0eb9      	s32i.n	a11, a14, 0
42002150:	2ca4e2        	movi	a14, 0x42c
42002153:	edea      	add.n	a14, a13, a14
42002155:	0e89      	s32i.n	a8, a14, 0
42002157:	28a4e2        	movi	a14, 0x428
4200215a:	edea      	add.n	a14, a13, a14
4200215c:	0ea9      	s32i.n	a10, a14, 0
4200215e:	20a4e2        	movi	a14, 0x420
42002161:	edea      	add.n	a14, a13, a14
42002163:	0e99      	s32i.n	a9, a14, 0
42002165:	3fa4e2        	movi	a14, 0x43f
42002168:	edea      	add.n	a14, a13, a14
4200216a:	dea0f2        	movi	a15, 222
4200216d:	08dff2        	addmi	a15, a15, 0x800
42002170:	f1fa      	add.n	a15, a1, a15
42002172:	000ff2        	l8ui	a15, a15, 0
42002175:	004ef2        	s8i	a15, a14, 0
42002178:	3ea4e2        	movi	a14, 0x43e
4200217b:	edea      	add.n	a14, a13, a14
4200217d:	dda0f2        	movi	a15, 221
42002180:	08dff2        	addmi	a15, a15, 0x800
42002183:	f1fa      	add.n	a15, a1, a15
42002185:	000ff2        	l8ui	a15, a15, 0
42002188:	004ef2        	s8i	a15, a14, 0
4200218b:	3da4e2        	movi	a14, 0x43d
4200218e:	edea      	add.n	a14, a13, a14
42002190:	dca0f2        	movi	a15, 220
42002193:	08dff2        	addmi	a15, a15, 0x800
42002196:	f1fa      	add.n	a15, a1, a15
42002198:	000ff2        	l8ui	a15, a15, 0
4200219b:	004ef2        	s8i	a15, a14, 0
4200219e:	5ca4e2        	movi	a14, 0x45c
420021a1:	edea      	add.n	a14, a13, a14
420021a3:	004ec2        	s8i	a12, a14, 0
420021a6:	58a4e2        	movi	a14, 0x458
420021a9:	edea      	add.n	a14, a13, a14
420021ab:	0e89      	s32i.n	a8, a14, 0
420021ad:	54a4e2        	movi	a14, 0x454
420021b0:	edea      	add.n	a14, a13, a14
420021b2:	2f2c      	movi.n	a15, 34
420021b4:	0ef9      	s32i.n	a15, a14, 0
420021b6:	50a4e2        	movi	a14, 0x450
420021b9:	edea      	add.n	a14, a13, a14
420021bb:	0eb9      	s32i.n	a11, a14, 0
420021bd:	4ca4e2        	movi	a14, 0x44c
420021c0:	edea      	add.n	a14, a13, a14
420021c2:	0e89      	s32i.n	a8, a14, 0
420021c4:	48a4e2        	movi	a14, 0x448
420021c7:	edea      	add.n	a14, a13, a14
420021c9:	0ea9      	s32i.n	a10, a14, 0
420021cb:	40a4e2        	movi	a14, 0x440
420021ce:	edea      	add.n	a14, a13, a14
420021d0:	0e99      	s32i.n	a9, a14, 0
420021d2:	5fa4e2        	movi	a14, 0x45f
420021d5:	edea      	add.n	a14, a13, a14
420021d7:	e1a0f2        	movi	a15, 225
420021da:	08dff2        	addmi	a15, a15, 0x800
420021dd:	f1fa      	add.n	a15, a1, a15
420021df:	000ff2        	l8ui	a15, a15, 0
420021e2:	004ef2        	s8i	a15, a14, 0
420021e5:	5ea4e2        	movi	a14, 0x45e
420021e8:	edea      	add.n	a14, a13, a14
420021ea:	e0a0f2        	movi	a15, 224
420021ed:	08dff2        	addmi	a15, a15, 0x800
420021f0:	f1fa      	add.n	a15, a1, a15
420021f2:	000ff2        	l8ui	a15, a15, 0
420021f5:	004ef2        	s8i	a15, a14, 0
420021f8:	5da4e2        	movi	a14, 0x45d
420021fb:	edea      	add.n	a14, a13, a14
420021fd:	dfa0f2        	movi	a15, 223
42002200:	08dff2        	addmi	a15, a15, 0x800
42002203:	f1fa      	add.n	a15, a1, a15
42002205:	000ff2        	l8ui	a15, a15, 0
42002208:	004ef2        	s8i	a15, a14, 0
4200220b:	7ca4e2        	movi	a14, 0x47c
4200220e:	edea      	add.n	a14, a13, a14
42002210:	004ec2        	s8i	a12, a14, 0
42002213:	78a4e2        	movi	a14, 0x478
42002216:	edea      	add.n	a14, a13, a14
42002218:	0e89      	s32i.n	a8, a14, 0
4200221a:	74a4e2        	movi	a14, 0x474
4200221d:	edea      	add.n	a14, a13, a14
4200221f:	3f2c      	movi.n	a15, 35
42002221:	0ef9      	s32i.n	a15, a14, 0
42002223:	70a4e2        	movi	a14, 0x470
42002226:	edea      	add.n	a14, a13, a14
42002228:	0eb9      	s32i.n	a11, a14, 0
4200222a:	6ca4e2        	movi	a14, 0x46c
4200222d:	edea      	add.n	a14, a13, a14
4200222f:	0e89      	s32i.n	a8, a14, 0
42002231:	68a4e2        	movi	a14, 0x468
42002234:	edea      	add.n	a14, a13, a14
42002236:	0ea9      	s32i.n	a10, a14, 0
42002238:	60a4e2        	movi	a14, 0x460
4200223b:	edea      	add.n	a14, a13, a14
4200223d:	0e99      	s32i.n	a9, a14, 0
4200223f:	7fa4e2        	movi	a14, 0x47f
42002242:	edea      	add.n	a14, a13, a14
42002244:	e4a0f2        	movi	a15, 228
42002247:	08dff2        	addmi	a15, a15, 0x800
4200224a:	f1fa      	add.n	a15, a1, a15
4200224c:	000ff2        	l8ui	a15, a15, 0
4200224f:	004ef2        	s8i	a15, a14, 0
42002252:	7ea4e2        	movi	a14, 0x47e
42002255:	edea      	add.n	a14, a13, a14
42002257:	e3a0f2        	movi	a15, 227
4200225a:	08dff2        	addmi	a15, a15, 0x800
4200225d:	f1fa      	add.n	a15, a1, a15
4200225f:	000ff2        	l8ui	a15, a15, 0
42002262:	004ef2        	s8i	a15, a14, 0
42002265:	7da4e2        	movi	a14, 0x47d
42002268:	edea      	add.n	a14, a13, a14
4200226a:	e2a0f2        	movi	a15, 226
4200226d:	08dff2        	addmi	a15, a15, 0x800
42002270:	f1fa      	add.n	a15, a1, a15
42002272:	000ff2        	l8ui	a15, a15, 0
42002275:	004ef2        	s8i	a15, a14, 0
42002278:	9ca4e2        	movi	a14, 0x49c
4200227b:	edea      	add.n	a14, a13, a14
4200227d:	004ec2        	s8i	a12, a14, 0
42002280:	98a4e2        	movi	a14, 0x498
42002283:	edea      	add.n	a14, a13, a14
42002285:	0e89      	s32i.n	a8, a14, 0
42002287:	94a4e2        	movi	a14, 0x494
4200228a:	edea      	add.n	a14, a13, a14
4200228c:	4f2c      	movi.n	a15, 36
4200228e:	0ef9      	s32i.n	a15, a14, 0
42002290:	90a4e2        	movi	a14, 0x490
42002293:	edea      	add.n	a14, a13, a14
42002295:	0eb9      	s32i.n	a11, a14, 0
42002297:	8ca4e2        	movi	a14, 0x48c
4200229a:	edea      	add.n	a14, a13, a14
4200229c:	0e89      	s32i.n	a8, a14, 0
4200229e:	88a4e2        	movi	a14, 0x488
420022a1:	edea      	add.n	a14, a13, a14
420022a3:	0ea9      	s32i.n	a10, a14, 0
420022a5:	80a4e2        	movi	a14, 0x480
420022a8:	edea      	add.n	a14, a13, a14
420022aa:	0e99      	s32i.n	a9, a14, 0
420022ac:	9fa4e2        	movi	a14, 0x49f
420022af:	edea      	add.n	a14, a13, a14
420022b1:	e7a0f2        	movi	a15, 231
420022b4:	08dff2        	addmi	a15, a15, 0x800
420022b7:	f1fa      	add.n	a15, a1, a15
420022b9:	000ff2        	l8ui	a15, a15, 0
420022bc:	004ef2        	s8i	a15, a14, 0
420022bf:	9ea4e2        	movi	a14, 0x49e
420022c2:	edea      	add.n	a14, a13, a14
420022c4:	e6a0f2        	movi	a15, 230
420022c7:	08dff2        	addmi	a15, a15, 0x800
420022ca:	f1fa      	add.n	a15, a1, a15
420022cc:	000ff2        	l8ui	a15, a15, 0
420022cf:	004ef2        	s8i	a15, a14, 0
420022d2:	9da4e2        	movi	a14, 0x49d
420022d5:	edea      	add.n	a14, a13, a14
420022d7:	e5a0f2        	movi	a15, 229
420022da:	08dff2        	addmi	a15, a15, 0x800
420022dd:	f1fa      	add.n	a15, a1, a15
420022df:	000ff2        	l8ui	a15, a15, 0
420022e2:	004ef2        	s8i	a15, a14, 0
420022e5:	bca4e2        	movi	a14, 0x4bc
420022e8:	edea      	add.n	a14, a13, a14
420022ea:	004ec2        	s8i	a12, a14, 0
420022ed:	b8a4e2        	movi	a14, 0x4b8
420022f0:	edea      	add.n	a14, a13, a14
420022f2:	0e89      	s32i.n	a8, a14, 0
420022f4:	b4a4e2        	movi	a14, 0x4b4
420022f7:	edea      	add.n	a14, a13, a14
420022f9:	5f2c      	movi.n	a15, 37
420022fb:	0ef9      	s32i.n	a15, a14, 0
420022fd:	b0a4e2        	movi	a14, 0x4b0
42002300:	edea      	add.n	a14, a13, a14
42002302:	0eb9      	s32i.n	a11, a14, 0
42002304:	aca4e2        	movi	a14, 0x4ac
42002307:	edea      	add.n	a14, a13, a14
42002309:	0e89      	s32i.n	a8, a14, 0
4200230b:	a8a4e2        	movi	a14, 0x4a8
4200230e:	edea      	add.n	a14, a13, a14
42002310:	0ea9      	s32i.n	a10, a14, 0
42002312:	a0a4e2        	movi	a14, 0x4a0
42002315:	edea      	add.n	a14, a13, a14
42002317:	0e99      	s32i.n	a9, a14, 0
42002319:	bfa4e2        	movi	a14, 0x4bf
4200231c:	edea      	add.n	a14, a13, a14
4200231e:	eaa0f2        	movi	a15, 234
42002321:	08dff2        	addmi	a15, a15, 0x800
42002324:	f1fa      	add.n	a15, a1, a15
42002326:	000ff2        	l8ui	a15, a15, 0
42002329:	004ef2        	s8i	a15, a14, 0
4200232c:	bea4e2        	movi	a14, 0x4be
4200232f:	edea      	add.n	a14, a13, a14
42002331:	e9a0f2        	movi	a15, 233
42002334:	08dff2        	addmi	a15, a15, 0x800
42002337:	f1fa      	add.n	a15, a1, a15
42002339:	000ff2        	l8ui	a15, a15, 0
4200233c:	004ef2        	s8i	a15, a14, 0
4200233f:	bda4e2        	movi	a14, 0x4bd
42002342:	edea      	add.n	a14, a13, a14
42002344:	e8a0f2        	movi	a15, 232
42002347:	08dff2        	addmi	a15, a15, 0x800
4200234a:	f1fa      	add.n	a15, a1, a15
4200234c:	000ff2        	l8ui	a15, a15, 0
4200234f:	004ef2        	s8i	a15, a14, 0
42002352:	dca4e2        	movi	a14, 0x4dc
42002355:	edea      	add.n	a14, a13, a14
42002357:	004ec2        	s8i	a12, a14, 0
4200235a:	d8a4e2        	movi	a14, 0x4d8
4200235d:	edea      	add.n	a14, a13, a14
4200235f:	0e89      	s32i.n	a8, a14, 0
42002361:	d4a4e2        	movi	a14, 0x4d4
42002364:	edea      	add.n	a14, a13, a14
42002366:	6f2c      	movi.n	a15, 38
42002368:	0ef9      	s32i.n	a15, a14, 0
4200236a:	d0a4e2        	movi	a14, 0x4d0
4200236d:	edea      	add.n	a14, a13, a14
4200236f:	0eb9      	s32i.n	a11, a14, 0
42002371:	cca4e2        	movi	a14, 0x4cc
42002374:	edea      	add.n	a14, a13, a14
42002376:	0e89      	s32i.n	a8, a14, 0
42002378:	c8a4e2        	movi	a14, 0x4c8
4200237b:	edea      	add.n	a14, a13, a14
4200237d:	0ea9      	s32i.n	a10, a14, 0
4200237f:	c0a4e2        	movi	a14, 0x4c0
42002382:	edea      	add.n	a14, a13, a14
42002384:	0e99      	s32i.n	a9, a14, 0
42002386:	dfa4e2        	movi	a14, 0x4df
42002389:	edea      	add.n	a14, a13, a14
4200238b:	eda0f2        	movi	a15, 237
4200238e:	08dff2        	addmi	a15, a15, 0x800
42002391:	f1fa      	add.n	a15, a1, a15
42002393:	000ff2        	l8ui	a15, a15, 0
42002396:	004ef2        	s8i	a15, a14, 0
42002399:	dea4e2        	movi	a14, 0x4de
4200239c:	edea      	add.n	a14, a13, a14
4200239e:	eca0f2        	movi	a15, 236
420023a1:	08dff2        	addmi	a15, a15, 0x800
420023a4:	f1fa      	add.n	a15, a1, a15
420023a6:	000ff2        	l8ui	a15, a15, 0
420023a9:	004ef2        	s8i	a15, a14, 0
420023ac:	dda4e2        	movi	a14, 0x4dd
420023af:	edea      	add.n	a14, a13, a14
420023b1:	eba0f2        	movi	a15, 235
420023b4:	08dff2        	addmi	a15, a15, 0x800
420023b7:	f1fa      	add.n	a15, a1, a15
420023b9:	000ff2        	l8ui	a15, a15, 0
420023bc:	004ef2        	s8i	a15, a14, 0
420023bf:	fca4e2        	movi	a14, 0x4fc
420023c2:	edea      	add.n	a14, a13, a14
420023c4:	004ec2        	s8i	a12, a14, 0
420023c7:	f8a4e2        	movi	a14, 0x4f8
420023ca:	edea      	add.n	a14, a13, a14
420023cc:	0e89      	s32i.n	a8, a14, 0
420023ce:	f4a4e2        	movi	a14, 0x4f4
420023d1:	edea      	add.n	a14, a13, a14
420023d3:	7f2c      	movi.n	a15, 39
420023d5:	0ef9      	s32i.n	a15, a14, 0
420023d7:	f0a4e2        	movi	a14, 0x4f0
420023da:	edea      	add.n	a14, a13, a14
420023dc:	0eb9      	s32i.n	a11, a14, 0
420023de:	eca4e2        	movi	a14, 0x4ec
420023e1:	edea      	add.n	a14, a13, a14
420023e3:	0e89      	s32i.n	a8, a14, 0
420023e5:	e8a4e2        	movi	a14, 0x4e8
420023e8:	edea      	add.n	a14, a13, a14
420023ea:	0ea9      	s32i.n	a10, a14, 0
420023ec:	e0a4e2        	movi	a14, 0x4e0
420023ef:	edea      	add.n	a14, a13, a14
420023f1:	0e99      	s32i.n	a9, a14, 0
420023f3:	ffa4e2        	movi	a14, 0x4ff
420023f6:	edea      	add.n	a14, a13, a14
420023f8:	f0a0f2        	movi	a15, 240
420023fb:	08dff2        	addmi	a15, a15, 0x800
420023fe:	f1fa      	add.n	a15, a1, a15
42002400:	000ff2        	l8ui	a15, a15, 0
42002403:	004ef2        	s8i	a15, a14, 0
42002406:	fea4e2        	movi	a14, 0x4fe
42002409:	edea      	add.n	a14, a13, a14
4200240b:	efa0f2        	movi	a15, 239
4200240e:	08dff2        	addmi	a15, a15, 0x800
42002411:	f1fa      	add.n	a15, a1, a15
42002413:	000ff2        	l8ui	a15, a15, 0
42002416:	004ef2        	s8i	a15, a14, 0
42002419:	fda4e2        	movi	a14, 0x4fd
4200241c:	edea      	add.n	a14, a13, a14
4200241e:	eea0f2        	movi	a15, 238
42002421:	08dff2        	addmi	a15, a15, 0x800
42002424:	f1fa      	add.n	a15, a1, a15
42002426:	000ff2        	l8ui	a15, a15, 0
42002429:	004ef2        	s8i	a15, a14, 0
4200242c:	1ca5e2        	movi	a14, 0x51c
4200242f:	edea      	add.n	a14, a13, a14
42002431:	004ec2        	s8i	a12, a14, 0
42002434:	18a5e2        	movi	a14, 0x518
42002437:	edea      	add.n	a14, a13, a14
42002439:	0e89      	s32i.n	a8, a14, 0
4200243b:	14a5e2        	movi	a14, 0x514
4200243e:	edea      	add.n	a14, a13, a14
42002440:	8f2c      	movi.n	a15, 40
42002442:	0ef9      	s32i.n	a15, a14, 0
42002444:	10a5e2        	movi	a14, 0x510
42002447:	edea      	add.n	a14, a13, a14
42002449:	0eb9      	s32i.n	a11, a14, 0
4200244b:	0ca5e2        	movi	a14, 0x50c
4200244e:	edea      	add.n	a14, a13, a14
42002450:	0e89      	s32i.n	a8, a14, 0
42002452:	08a5e2        	movi	a14, 0x508
42002455:	edea      	add.n	a14, a13, a14
42002457:	0ea9      	s32i.n	a10, a14, 0
42002459:	05dde2        	addmi	a14, a13, 0x500
4200245c:	0e99      	s32i.n	a9, a14, 0
4200245e:	1fa5e2        	movi	a14, 0x51f
42002461:	edea      	add.n	a14, a13, a14
42002463:	f3a0f2        	movi	a15, 243
42002466:	08dff2        	addmi	a15, a15, 0x800
42002469:	f1fa      	add.n	a15, a1, a15
4200246b:	000ff2        	l8ui	a15, a15, 0
4200246e:	004ef2        	s8i	a15, a14, 0
42002471:	1ea5e2        	movi	a14, 0x51e
42002474:	edea      	add.n	a14, a13, a14
42002476:	f2a0f2        	movi	a15, 242
42002479:	08dff2        	addmi	a15, a15, 0x800
4200247c:	f1fa      	add.n	a15, a1, a15
4200247e:	000ff2        	l8ui	a15, a15, 0
42002481:	004ef2        	s8i	a15, a14, 0
42002484:	1da5e2        	movi	a14, 0x51d
42002487:	edea      	add.n	a14, a13, a14
42002489:	f1a0f2        	movi	a15, 241
4200248c:	08dff2        	addmi	a15, a15, 0x800
4200248f:	f1fa      	add.n	a15, a1, a15
42002491:	000ff2        	l8ui	a15, a15, 0
42002494:	004ef2        	s8i	a15, a14, 0
42002497:	3ca5e2        	movi	a14, 0x53c
4200249a:	edea      	add.n	a14, a13, a14
4200249c:	004ec2        	s8i	a12, a14, 0
4200249f:	38a5e2        	movi	a14, 0x538
420024a2:	edea      	add.n	a14, a13, a14
420024a4:	0e89      	s32i.n	a8, a14, 0
420024a6:	34a5e2        	movi	a14, 0x534
420024a9:	edea      	add.n	a14, a13, a14
420024ab:	9f2c      	movi.n	a15, 41
420024ad:	0ef9      	s32i.n	a15, a14, 0
420024af:	30a5e2        	movi	a14, 0x530
420024b2:	edea      	add.n	a14, a13, a14
420024b4:	0eb9      	s32i.n	a11, a14, 0
420024b6:	2ca5e2        	movi	a14, 0x52c
420024b9:	edea      	add.n	a14, a13, a14
420024bb:	0e89      	s32i.n	a8, a14, 0
420024bd:	28a5e2        	movi	a14, 0x528
420024c0:	edea      	add.n	a14, a13, a14
420024c2:	0ea9      	s32i.n	a10, a14, 0
420024c4:	20a5e2        	movi	a14, 0x520
420024c7:	edea      	add.n	a14, a13, a14
420024c9:	0e99      	s32i.n	a9, a14, 0
420024cb:	3fa5e2        	movi	a14, 0x53f
420024ce:	edea      	add.n	a14, a13, a14
420024d0:	f6a0f2        	movi	a15, 246
420024d3:	08dff2        	addmi	a15, a15, 0x800
420024d6:	f1fa      	add.n	a15, a1, a15
420024d8:	000ff2        	l8ui	a15, a15, 0
420024db:	004ef2        	s8i	a15, a14, 0
420024de:	3ea5e2        	movi	a14, 0x53e
420024e1:	edea      	add.n	a14, a13, a14
420024e3:	f5a0f2        	movi	a15, 245
420024e6:	08dff2        	addmi	a15, a15, 0x800
420024e9:	f1fa      	add.n	a15, a1, a15
420024eb:	000ff2        	l8ui	a15, a15, 0
420024ee:	004ef2        	s8i	a15, a14, 0
420024f1:	3da5e2        	movi	a14, 0x53d
420024f4:	edea      	add.n	a14, a13, a14
420024f6:	f4a0f2        	movi	a15, 244
420024f9:	08dff2        	addmi	a15, a15, 0x800
420024fc:	f1fa      	add.n	a15, a1, a15
420024fe:	000ff2        	l8ui	a15, a15, 0
42002501:	004ef2        	s8i	a15, a14, 0
42002504:	5ca5e2        	movi	a14, 0x55c
42002507:	edea      	add.n	a14, a13, a14
42002509:	004ec2        	s8i	a12, a14, 0
4200250c:	58a5e2        	movi	a14, 0x558
4200250f:	edea      	add.n	a14, a13, a14
42002511:	0e89      	s32i.n	a8, a14, 0
42002513:	54a5e2        	movi	a14, 0x554
42002516:	edea      	add.n	a14, a13, a14
42002518:	af2c      	movi.n	a15, 42
4200251a:	0ef9      	s32i.n	a15, a14, 0
4200251c:	50a5e2        	movi	a14, 0x550
4200251f:	edea      	add.n	a14, a13, a14
42002521:	0eb9      	s32i.n	a11, a14, 0
42002523:	4ca5e2        	movi	a14, 0x54c
42002526:	edea      	add.n	a14, a13, a14
42002528:	0e89      	s32i.n	a8, a14, 0
4200252a:	48a5e2        	movi	a14, 0x548
4200252d:	edea      	add.n	a14, a13, a14
4200252f:	0ea9      	s32i.n	a10, a14, 0
42002531:	40a5e2        	movi	a14, 0x540
42002534:	edea      	add.n	a14, a13, a14
42002536:	0e99      	s32i.n	a9, a14, 0
42002538:	5fa5e2        	movi	a14, 0x55f
4200253b:	edea      	add.n	a14, a13, a14
4200253d:	f9a0f2        	movi	a15, 249
42002540:	08dff2        	addmi	a15, a15, 0x800
42002543:	f1fa      	add.n	a15, a1, a15
42002545:	000ff2        	l8ui	a15, a15, 0
42002548:	004ef2        	s8i	a15, a14, 0
4200254b:	5ea5e2        	movi	a14, 0x55e
4200254e:	edea      	add.n	a14, a13, a14
42002550:	f8a0f2        	movi	a15, 248
42002553:	08dff2        	addmi	a15, a15, 0x800
42002556:	f1fa      	add.n	a15, a1, a15
42002558:	000ff2        	l8ui	a15, a15, 0
4200255b:	004ef2        	s8i	a15, a14, 0
4200255e:	5da5e2        	movi	a14, 0x55d
42002561:	edea      	add.n	a14, a13, a14
42002563:	f7a0f2        	movi	a15, 247
42002566:	08dff2        	addmi	a15, a15, 0x800
42002569:	f1fa      	add.n	a15, a1, a15
4200256b:	000ff2        	l8ui	a15, a15, 0
4200256e:	004ef2        	s8i	a15, a14, 0
42002571:	7ca5e2        	movi	a14, 0x57c
42002574:	edea      	add.n	a14, a13, a14
42002576:	004ec2        	s8i	a12, a14, 0
42002579:	78a5e2        	movi	a14, 0x578
4200257c:	edea      	add.n	a14, a13, a14
4200257e:	0e89      	s32i.n	a8, a14, 0
42002580:	74a5e2        	movi	a14, 0x574
42002583:	edea      	add.n	a14, a13, a14
42002585:	bf2c      	movi.n	a15, 43
42002587:	0ef9      	s32i.n	a15, a14, 0
42002589:	70a5e2        	movi	a14, 0x570
4200258c:	edea      	add.n	a14, a13, a14
4200258e:	0eb9      	s32i.n	a11, a14, 0
42002590:	6ca5e2        	movi	a14, 0x56c
42002593:	edea      	add.n	a14, a13, a14
42002595:	0e89      	s32i.n	a8, a14, 0
42002597:	68a5e2        	movi	a14, 0x568
4200259a:	edea      	add.n	a14, a13, a14
4200259c:	0ea9      	s32i.n	a10, a14, 0
4200259e:	60a5e2        	movi	a14, 0x560
420025a1:	edea      	add.n	a14, a13, a14
420025a3:	0e99      	s32i.n	a9, a14, 0
420025a5:	7fa5e2        	movi	a14, 0x57f
420025a8:	edea      	add.n	a14, a13, a14
420025aa:	fca0f2        	movi	a15, 252
420025ad:	08dff2        	addmi	a15, a15, 0x800
420025b0:	f1fa      	add.n	a15, a1, a15
420025b2:	000ff2        	l8ui	a15, a15, 0
420025b5:	004ef2        	s8i	a15, a14, 0
420025b8:	7ea5e2        	movi	a14, 0x57e
420025bb:	edea      	add.n	a14, a13, a14
420025bd:	fba0f2        	movi	a15, 251
420025c0:	08dff2        	addmi	a15, a15, 0x800
420025c3:	f1fa      	add.n	a15, a1, a15
420025c5:	000ff2        	l8ui	a15, a15, 0
420025c8:	004ef2        	s8i	a15, a14, 0
420025cb:	7da5e2        	movi	a14, 0x57d
420025ce:	edea      	add.n	a14, a13, a14
420025d0:	faa0f2        	movi	a15, 250
420025d3:	08dff2        	addmi	a15, a15, 0x800
420025d6:	f1fa      	add.n	a15, a1, a15
420025d8:	000ff2        	l8ui	a15, a15, 0
420025db:	004ef2        	s8i	a15, a14, 0
420025de:	9ca5e2        	movi	a14, 0x59c
420025e1:	edea      	add.n	a14, a13, a14
420025e3:	004ec2        	s8i	a12, a14, 0
420025e6:	98a5e2        	movi	a14, 0x598
420025e9:	edea      	add.n	a14, a13, a14
420025eb:	0e89      	s32i.n	a8, a14, 0
420025ed:	94a5e2        	movi	a14, 0x594
420025f0:	edea      	add.n	a14, a13, a14
420025f2:	cf2c      	movi.n	a15, 44
420025f4:	0ef9      	s32i.n	a15, a14, 0
420025f6:	90a5e2        	movi	a14, 0x590
420025f9:	edea      	add.n	a14, a13, a14
420025fb:	0eb9      	s32i.n	a11, a14, 0
420025fd:	8ca5e2        	movi	a14, 0x58c
42002600:	edea      	add.n	a14, a13, a14
42002602:	0e89      	s32i.n	a8, a14, 0
42002604:	88a5e2        	movi	a14, 0x588
42002607:	edea      	add.n	a14, a13, a14
42002609:	0ea9      	s32i.n	a10, a14, 0
4200260b:	80a5e2        	movi	a14, 0x580
4200260e:	edea      	add.n	a14, a13, a14
42002610:	0e99      	s32i.n	a9, a14, 0
42002612:	9fa5e2        	movi	a14, 0x59f
42002615:	edea      	add.n	a14, a13, a14
42002617:	ffa0f2        	movi	a15, 255
4200261a:	08dff2        	addmi	a15, a15, 0x800
4200261d:	f1fa      	add.n	a15, a1, a15
4200261f:	000ff2        	l8ui	a15, a15, 0
42002622:	004ef2        	s8i	a15, a14, 0
42002625:	9ea5e2        	movi	a14, 0x59e
42002628:	edea      	add.n	a14, a13, a14
4200262a:	fea0f2        	movi	a15, 254
4200262d:	08dff2        	addmi	a15, a15, 0x800
42002630:	f1fa      	add.n	a15, a1, a15
42002632:	000ff2        	l8ui	a15, a15, 0
42002635:	004ef2        	s8i	a15, a14, 0
42002638:	9da5e2        	movi	a14, 0x59d
4200263b:	edea      	add.n	a14, a13, a14
4200263d:	fda0f2        	movi	a15, 253
42002640:	08dff2        	addmi	a15, a15, 0x800
42002643:	f1fa      	add.n	a15, a1, a15
42002645:	000ff2        	l8ui	a15, a15, 0
42002648:	004ef2        	s8i	a15, a14, 0
4200264b:	bca5e2        	movi	a14, 0x5bc
4200264e:	edea      	add.n	a14, a13, a14
42002650:	004ec2        	s8i	a12, a14, 0
42002653:	b8a5e2        	movi	a14, 0x5b8
42002656:	edea      	add.n	a14, a13, a14
42002658:	0e89      	s32i.n	a8, a14, 0
4200265a:	b4a5e2        	movi	a14, 0x5b4
4200265d:	edea      	add.n	a14, a13, a14
4200265f:	df2c      	movi.n	a15, 45
42002661:	0ef9      	s32i.n	a15, a14, 0
42002663:	b0a5e2        	movi	a14, 0x5b0
42002666:	edea      	add.n	a14, a13, a14
42002668:	0eb9      	s32i.n	a11, a14, 0
4200266a:	aca5e2        	movi	a14, 0x5ac
4200266d:	edea      	add.n	a14, a13, a14
4200266f:	0e89      	s32i.n	a8, a14, 0
42002671:	a8a5e2        	movi	a14, 0x5a8
42002674:	edea      	add.n	a14, a13, a14
42002676:	0ea9      	s32i.n	a10, a14, 0
42002678:	a0a5e2        	movi	a14, 0x5a0
4200267b:	edea      	add.n	a14, a13, a14
4200267d:	0e99      	s32i.n	a9, a14, 0
4200267f:	bfa5e2        	movi	a14, 0x5bf
42002682:	edea      	add.n	a14, a13, a14
42002684:	2f0c      	movi.n	a15, 2
42002686:	09dff2        	addmi	a15, a15, 0x900
42002689:	f1fa      	add.n	a15, a1, a15
4200268b:	000ff2        	l8ui	a15, a15, 0
4200268e:	004ef2        	s8i	a15, a14, 0
42002691:	bea5e2        	movi	a14, 0x5be
42002694:	edea      	add.n	a14, a13, a14
42002696:	1f0c      	movi.n	a15, 1
42002698:	09dff2        	addmi	a15, a15, 0x900
4200269b:	f1fa      	add.n	a15, a1, a15
4200269d:	000ff2        	l8ui	a15, a15, 0
420026a0:	004ef2        	s8i	a15, a14, 0
420026a3:	bda5e2        	movi	a14, 0x5bd
420026a6:	edea      	add.n	a14, a13, a14
420026a8:	0f0c      	movi.n	a15, 0
420026aa:	09dff2        	addmi	a15, a15, 0x900
420026ad:	f1fa      	add.n	a15, a1, a15
420026af:	000ff2        	l8ui	a15, a15, 0
420026b2:	004ef2        	s8i	a15, a14, 0
420026b5:	dca5e2        	movi	a14, 0x5dc
420026b8:	edea      	add.n	a14, a13, a14
420026ba:	004ec2        	s8i	a12, a14, 0
420026bd:	d8a5e2        	movi	a14, 0x5d8
420026c0:	edea      	add.n	a14, a13, a14
420026c2:	0e89      	s32i.n	a8, a14, 0
420026c4:	d4a5e2        	movi	a14, 0x5d4
420026c7:	edea      	add.n	a14, a13, a14
420026c9:	ef2c      	movi.n	a15, 46
420026cb:	0ef9      	s32i.n	a15, a14, 0
420026cd:	d0a5e2        	movi	a14, 0x5d0
420026d0:	edea      	add.n	a14, a13, a14
420026d2:	0eb9      	s32i.n	a11, a14, 0
420026d4:	cca5e2        	movi	a14, 0x5cc
420026d7:	edea      	add.n	a14, a13, a14
420026d9:	0e89      	s32i.n	a8, a14, 0
420026db:	c8a5e2        	movi	a14, 0x5c8
420026de:	edea      	add.n	a14, a13, a14
420026e0:	0ea9      	s32i.n	a10, a14, 0
420026e2:	c0a5e2        	movi	a14, 0x5c0
420026e5:	edea      	add.n	a14, a13, a14
420026e7:	0e99      	s32i.n	a9, a14, 0
420026e9:	dfa5e2        	movi	a14, 0x5df
420026ec:	edea      	add.n	a14, a13, a14
420026ee:	5f0c      	movi.n	a15, 5
420026f0:	09dff2        	addmi	a15, a15, 0x900
420026f3:	f1fa      	add.n	a15, a1, a15
420026f5:	000ff2        	l8ui	a15, a15, 0
420026f8:	004ef2        	s8i	a15, a14, 0
420026fb:	dea5e2        	movi	a14, 0x5de
420026fe:	edea      	add.n	a14, a13, a14
42002700:	4f0c      	movi.n	a15, 4
42002702:	09dff2        	addmi	a15, a15, 0x900
42002705:	f1fa      	add.n	a15, a1, a15
42002707:	000ff2        	l8ui	a15, a15, 0
4200270a:	004ef2        	s8i	a15, a14, 0
4200270d:	dda5e2        	movi	a14, 0x5dd
42002710:	edea      	add.n	a14, a13, a14
42002712:	3f0c      	movi.n	a15, 3
42002714:	09dff2        	addmi	a15, a15, 0x900
42002717:	f1fa      	add.n	a15, a1, a15
42002719:	000ff2        	l8ui	a15, a15, 0
4200271c:	004ef2        	s8i	a15, a14, 0
4200271f:	fca5e2        	movi	a14, 0x5fc
42002722:	edea      	add.n	a14, a13, a14
42002724:	004ec2        	s8i	a12, a14, 0
42002727:	f8a5e2        	movi	a14, 0x5f8
4200272a:	edea      	add.n	a14, a13, a14
4200272c:	0e89      	s32i.n	a8, a14, 0
4200272e:	f4a5e2        	movi	a14, 0x5f4
42002731:	edea      	add.n	a14, a13, a14
42002733:	ff2c      	movi.n	a15, 47
42002735:	0ef9      	s32i.n	a15, a14, 0
42002737:	f0a5e2        	movi	a14, 0x5f0
4200273a:	edea      	add.n	a14, a13, a14
4200273c:	0eb9      	s32i.n	a11, a14, 0
4200273e:	eca5e2        	movi	a14, 0x5ec
42002741:	edea      	add.n	a14, a13, a14
42002743:	0e89      	s32i.n	a8, a14, 0
42002745:	e8a5e2        	movi	a14, 0x5e8
42002748:	edea      	add.n	a14, a13, a14
4200274a:	0ea9      	s32i.n	a10, a14, 0
4200274c:	e0a5e2        	movi	a14, 0x5e0
4200274f:	edea      	add.n	a14, a13, a14
42002751:	0e99      	s32i.n	a9, a14, 0
42002753:	ffa5e2        	movi	a14, 0x5ff
42002756:	edea      	add.n	a14, a13, a14
42002758:	8f0c      	movi.n	a15, 8
4200275a:	09dff2        	addmi	a15, a15, 0x900
4200275d:	f1fa      	add.n	a15, a1, a15
4200275f:	000ff2        	l8ui	a15, a15, 0
42002762:	004ef2        	s8i	a15, a14, 0
42002765:	fea5e2        	movi	a14, 0x5fe
42002768:	edea      	add.n	a14, a13, a14
4200276a:	7f0c      	movi.n	a15, 7
4200276c:	09dff2        	addmi	a15, a15, 0x900
4200276f:	f1fa      	add.n	a15, a1, a15
42002771:	000ff2        	l8ui	a15, a15, 0
42002774:	004ef2        	s8i	a15, a14, 0
42002777:	fda5e2        	movi	a14, 0x5fd
4200277a:	edea      	add.n	a14, a13, a14
4200277c:	6f0c      	movi.n	a15, 6
4200277e:	09dff2        	addmi	a15, a15, 0x900
42002781:	f1fa      	add.n	a15, a1, a15
42002783:	000ff2        	l8ui	a15, a15, 0
42002786:	004ef2        	s8i	a15, a14, 0
42002789:	1ca6e2        	movi	a14, 0x61c
4200278c:	edea      	add.n	a14, a13, a14
4200278e:	004ec2        	s8i	a12, a14, 0
42002791:	18a6e2        	movi	a14, 0x618
42002794:	edea      	add.n	a14, a13, a14
42002796:	0e89      	s32i.n	a8, a14, 0
42002798:	14a6e2        	movi	a14, 0x614
4200279b:	edea      	add.n	a14, a13, a14
4200279d:	0f3c      	movi.n	a15, 48
4200279f:	0ef9      	s32i.n	a15, a14, 0
420027a1:	10a6e2        	movi	a14, 0x610
420027a4:	edea      	add.n	a14, a13, a14
420027a6:	0eb9      	s32i.n	a11, a14, 0
420027a8:	0ca6e2        	movi	a14, 0x60c
420027ab:	edea      	add.n	a14, a13, a14
420027ad:	0e89      	s32i.n	a8, a14, 0
420027af:	08a6e2        	movi	a14, 0x608
420027b2:	edea      	add.n	a14, a13, a14
420027b4:	0ea9      	s32i.n	a10, a14, 0
420027b6:	06dde2        	addmi	a14, a13, 0x600
420027b9:	0e99      	s32i.n	a9, a14, 0
420027bb:	1fa6e2        	movi	a14, 0x61f
420027be:	edea      	add.n	a14, a13, a14
420027c0:	bf0c      	movi.n	a15, 11
420027c2:	09dff2        	addmi	a15, a15, 0x900
420027c5:	f1fa      	add.n	a15, a1, a15
420027c7:	000ff2        	l8ui	a15, a15, 0
420027ca:	004ef2        	s8i	a15, a14, 0
420027cd:	1ea6e2        	movi	a14, 0x61e
420027d0:	edea      	add.n	a14, a13, a14
420027d2:	af0c      	movi.n	a15, 10
420027d4:	09dff2        	addmi	a15, a15, 0x900
420027d7:	f1fa      	add.n	a15, a1, a15
420027d9:	000ff2        	l8ui	a15, a15, 0
420027dc:	004ef2        	s8i	a15, a14, 0
420027df:	1da6e2        	movi	a14, 0x61d
420027e2:	edea      	add.n	a14, a13, a14
420027e4:	9f0c      	movi.n	a15, 9
420027e6:	09dff2        	addmi	a15, a15, 0x900
420027e9:	f1fa      	add.n	a15, a1, a15
420027eb:	000ff2        	l8ui	a15, a15, 0
420027ee:	004ef2        	s8i	a15, a14, 0
420027f1:	3ca6e2        	movi	a14, 0x63c
420027f4:	edea      	add.n	a14, a13, a14
420027f6:	004ec2        	s8i	a12, a14, 0
420027f9:	38a6e2        	movi	a14, 0x638
420027fc:	edea      	add.n	a14, a13, a14
420027fe:	0e89      	s32i.n	a8, a14, 0
42002800:	34a6e2        	movi	a14, 0x634
42002803:	edea      	add.n	a14, a13, a14
42002805:	1f3c      	movi.n	a15, 49
42002807:	0ef9      	s32i.n	a15, a14, 0
42002809:	30a6e2        	movi	a14, 0x630
4200280c:	edea      	add.n	a14, a13, a14
4200280e:	0eb9      	s32i.n	a11, a14, 0
42002810:	2ca6e2        	movi	a14, 0x62c
42002813:	edea      	add.n	a14, a13, a14
42002815:	0e89      	s32i.n	a8, a14, 0
42002817:	28a6e2        	movi	a14, 0x628
4200281a:	edea      	add.n	a14, a13, a14
4200281c:	0ea9      	s32i.n	a10, a14, 0
4200281e:	20a6e2        	movi	a14, 0x620
42002821:	edea      	add.n	a14, a13, a14
42002823:	0e99      	s32i.n	a9, a14, 0
42002825:	3fa6e2        	movi	a14, 0x63f
42002828:	edea      	add.n	a14, a13, a14
4200282a:	ef0c      	movi.n	a15, 14
4200282c:	09dff2        	addmi	a15, a15, 0x900
4200282f:	f1fa      	add.n	a15, a1, a15
42002831:	000ff2        	l8ui	a15, a15, 0
42002834:	004ef2        	s8i	a15, a14, 0
42002837:	3ea6e2        	movi	a14, 0x63e
4200283a:	edea      	add.n	a14, a13, a14
4200283c:	df0c      	movi.n	a15, 13
4200283e:	09dff2        	addmi	a15, a15, 0x900
42002841:	f1fa      	add.n	a15, a1, a15
42002843:	000ff2        	l8ui	a15, a15, 0
42002846:	004ef2        	s8i	a15, a14, 0
42002849:	3da6e2        	movi	a14, 0x63d
4200284c:	edea      	add.n	a14, a13, a14
4200284e:	cf0c      	movi.n	a15, 12
42002850:	09dff2        	addmi	a15, a15, 0x900
42002853:	f1fa      	add.n	a15, a1, a15
42002855:	000ff2        	l8ui	a15, a15, 0
42002858:	004ef2        	s8i	a15, a14, 0
4200285b:	5ca6e2        	movi	a14, 0x65c
4200285e:	edea      	add.n	a14, a13, a14
42002860:	004ec2        	s8i	a12, a14, 0
42002863:	58a6e2        	movi	a14, 0x658
42002866:	edea      	add.n	a14, a13, a14
42002868:	0e89      	s32i.n	a8, a14, 0
4200286a:	54a6e2        	movi	a14, 0x654
4200286d:	edea      	add.n	a14, a13, a14
4200286f:	2f3c      	movi.n	a15, 50
42002871:	0ef9      	s32i.n	a15, a14, 0
42002873:	50a6e2        	movi	a14, 0x650
42002876:	edea      	add.n	a14, a13, a14
42002878:	0eb9      	s32i.n	a11, a14, 0
4200287a:	4ca6e2        	movi	a14, 0x64c
4200287d:	edea      	add.n	a14, a13, a14
4200287f:	0e89      	s32i.n	a8, a14, 0
42002881:	48a6e2        	movi	a14, 0x648
42002884:	edea      	add.n	a14, a13, a14
42002886:	0ea9      	s32i.n	a10, a14, 0
42002888:	40a6e2        	movi	a14, 0x640
4200288b:	edea      	add.n	a14, a13, a14
4200288d:	0e99      	s32i.n	a9, a14, 0
4200288f:	5fa6e2        	movi	a14, 0x65f
42002892:	edea      	add.n	a14, a13, a14
42002894:	1f1c      	movi.n	a15, 17
42002896:	09dff2        	addmi	a15, a15, 0x900
42002899:	f1fa      	add.n	a15, a1, a15
4200289b:	000ff2        	l8ui	a15, a15, 0
4200289e:	004ef2        	s8i	a15, a14, 0
420028a1:	5ea6e2        	movi	a14, 0x65e
420028a4:	edea      	add.n	a14, a13, a14
420028a6:	0f1c      	movi.n	a15, 16
420028a8:	09dff2        	addmi	a15, a15, 0x900
420028ab:	f1fa      	add.n	a15, a1, a15
420028ad:	000ff2        	l8ui	a15, a15, 0
420028b0:	004ef2        	s8i	a15, a14, 0
420028b3:	5da6e2        	movi	a14, 0x65d
420028b6:	edea      	add.n	a14, a13, a14
420028b8:	ff0c      	movi.n	a15, 15
420028ba:	09dff2        	addmi	a15, a15, 0x900
420028bd:	f1fa      	add.n	a15, a1, a15
420028bf:	000ff2        	l8ui	a15, a15, 0
420028c2:	004ef2        	s8i	a15, a14, 0
420028c5:	7ca6e2        	movi	a14, 0x67c
420028c8:	edea      	add.n	a14, a13, a14
420028ca:	004ec2        	s8i	a12, a14, 0
420028cd:	78a6e2        	movi	a14, 0x678
420028d0:	edea      	add.n	a14, a13, a14
420028d2:	0e89      	s32i.n	a8, a14, 0
420028d4:	74a6e2        	movi	a14, 0x674
420028d7:	edea      	add.n	a14, a13, a14
420028d9:	3f3c      	movi.n	a15, 51
420028db:	0ef9      	s32i.n	a15, a14, 0
420028dd:	70a6e2        	movi	a14, 0x670
420028e0:	edea      	add.n	a14, a13, a14
420028e2:	0eb9      	s32i.n	a11, a14, 0
420028e4:	6ca6e2        	movi	a14, 0x66c
420028e7:	edea      	add.n	a14, a13, a14
420028e9:	0e89      	s32i.n	a8, a14, 0
420028eb:	68a6e2        	movi	a14, 0x668
420028ee:	edea      	add.n	a14, a13, a14
420028f0:	0ea9      	s32i.n	a10, a14, 0
420028f2:	60a6e2        	movi	a14, 0x660
420028f5:	edea      	add.n	a14, a13, a14
420028f7:	0e99      	s32i.n	a9, a14, 0
420028f9:	7fa6e2        	movi	a14, 0x67f
420028fc:	edea      	add.n	a14, a13, a14
420028fe:	4f1c      	movi.n	a15, 20
42002900:	09dff2        	addmi	a15, a15, 0x900
42002903:	f1fa      	add.n	a15, a1, a15
42002905:	000ff2        	l8ui	a15, a15, 0
42002908:	004ef2        	s8i	a15, a14, 0
4200290b:	7ea6e2        	movi	a14, 0x67e
4200290e:	edea      	add.n	a14, a13, a14
42002910:	3f1c      	movi.n	a15, 19
42002912:	09dff2        	addmi	a15, a15, 0x900
42002915:	f1fa      	add.n	a15, a1, a15
42002917:	000ff2        	l8ui	a15, a15, 0
4200291a:	004ef2        	s8i	a15, a14, 0
4200291d:	7da6e2        	movi	a14, 0x67d
42002920:	edea      	add.n	a14, a13, a14
42002922:	2f1c      	movi.n	a15, 18
42002924:	09dff2        	addmi	a15, a15, 0x900
42002927:	f1fa      	add.n	a15, a1, a15
42002929:	000ff2        	l8ui	a15, a15, 0
4200292c:	004ef2        	s8i	a15, a14, 0
4200292f:	9ca6e2        	movi	a14, 0x69c
42002932:	edea      	add.n	a14, a13, a14
42002934:	004ec2        	s8i	a12, a14, 0
42002937:	98a6e2        	movi	a14, 0x698
4200293a:	edea      	add.n	a14, a13, a14
4200293c:	0e89      	s32i.n	a8, a14, 0
4200293e:	94a6e2        	movi	a14, 0x694
42002941:	edea      	add.n	a14, a13, a14
42002943:	4f3c      	movi.n	a15, 52
42002945:	0ef9      	s32i.n	a15, a14, 0
42002947:	90a6e2        	movi	a14, 0x690
4200294a:	edea      	add.n	a14, a13, a14
4200294c:	0eb9      	s32i.n	a11, a14, 0
4200294e:	8ca6e2        	movi	a14, 0x68c
42002951:	edea      	add.n	a14, a13, a14
42002953:	0e89      	s32i.n	a8, a14, 0
42002955:	88a6e2        	movi	a14, 0x688
42002958:	edea      	add.n	a14, a13, a14
4200295a:	0ea9      	s32i.n	a10, a14, 0
4200295c:	80a6e2        	movi	a14, 0x680
4200295f:	edea      	add.n	a14, a13, a14
42002961:	0e99      	s32i.n	a9, a14, 0
42002963:	9fa6e2        	movi	a14, 0x69f
42002966:	edea      	add.n	a14, a13, a14
42002968:	7f1c      	movi.n	a15, 23
4200296a:	09dff2        	addmi	a15, a15, 0x900
4200296d:	f1fa      	add.n	a15, a1, a15
4200296f:	000ff2        	l8ui	a15, a15, 0
42002972:	004ef2        	s8i	a15, a14, 0
42002975:	9ea6e2        	movi	a14, 0x69e
42002978:	edea      	add.n	a14, a13, a14
4200297a:	6f1c      	movi.n	a15, 22
4200297c:	09dff2        	addmi	a15, a15, 0x900
4200297f:	f1fa      	add.n	a15, a1, a15
42002981:	000ff2        	l8ui	a15, a15, 0
42002984:	004ef2        	s8i	a15, a14, 0
42002987:	9da6e2        	movi	a14, 0x69d
4200298a:	edea      	add.n	a14, a13, a14
4200298c:	5f1c      	movi.n	a15, 21
4200298e:	09dff2        	addmi	a15, a15, 0x900
42002991:	f1fa      	add.n	a15, a1, a15
42002993:	000ff2        	l8ui	a15, a15, 0
42002996:	004ef2        	s8i	a15, a14, 0
42002999:	bca6e2        	movi	a14, 0x6bc
4200299c:	edea      	add.n	a14, a13, a14
4200299e:	004ec2        	s8i	a12, a14, 0
420029a1:	b8a6c2        	movi	a12, 0x6b8
420029a4:	cdca      	add.n	a12, a13, a12
420029a6:	0c89      	s32i.n	a8, a12, 0
420029a8:	b4a6c2        	movi	a12, 0x6b4
420029ab:	cdca      	add.n	a12, a13, a12
420029ad:	5e3c      	movi.n	a14, 53
420029af:	0ce9      	s32i.n	a14, a12, 0
420029b1:	b0a6c2        	movi	a12, 0x6b0
420029b4:	cdca      	add.n	a12, a13, a12
420029b6:	0cb9      	s32i.n	a11, a12, 0
420029b8:	aca6b2        	movi	a11, 0x6ac
420029bb:	bdba      	add.n	a11, a13, a11
420029bd:	0b89      	s32i.n	a8, a11, 0
420029bf:	a8a682        	movi	a8, 0x6a8
420029c2:	8d8a      	add.n	a8, a13, a8
420029c4:	08a9      	s32i.n	a10, a8, 0
420029c6:	a0a682        	movi	a8, 0x6a0
420029c9:	8d8a      	add.n	a8, a13, a8
420029cb:	0899      	s32i.n	a9, a8, 0
420029cd:	bfa682        	movi	a8, 0x6bf
420029d0:	8d8a      	add.n	a8, a13, a8
420029d2:	060192        	l8ui	a9, a1, 6
420029d5:	004892        	s8i	a9, a8, 0
420029d8:	bea682        	movi	a8, 0x6be
420029db:	8d8a      	add.n	a8, a13, a8
420029dd:	050192        	l8ui	a9, a1, 5
420029e0:	004892        	s8i	a9, a8, 0
420029e3:	bda682        	movi	a8, 0x6bd
420029e6:	8d8a      	add.n	a8, a13, a8
420029e8:	040192        	l8ui	a9, a1, 4
420029eb:	004892        	s8i	a9, a8, 0
420029ee:	683c      	movi.n	a8, 54
420029f0:	6189      	s32i.n	a8, a1, 24
420029f2:	51d9      	s32i.n	a13, a1, 20
420029f4:	793c      	movi.n	a9, 55
420029f6:	2199      	s32i.n	a9, a1, 8
420029f8:	fa9391        	l32r	a9, 42001444 <<&mut W as core::fmt::Write>::write_str+0x18>
420029fb:	1199      	s32i.n	a9, a1, 4
420029fd:	4189      	s32i.n	a8, a1, 16
420029ff:	1cc182        	addi	a8, a1, 28
42002a02:	3189      	s32i.n	a8, a1, 12
42002a04:	04c1b2        	addi	a11, a1, 4
42002a07:	fa9081        	l32r	a8, 42001448 <<&mut W as core::fmt::Write>::write_str+0x1c>
42002a0a:	03ad      	mov.n	a10, a3
42002a0c:	0008e0        	callx8	a8
42002a0f:	0a2d      	mov.n	a2, a10
42002a11:	f01d      	retw.n
42002a13:	800000        	add	a0, a0, a0
42002a16:	00c037        	bnall	a0, a3, 42002a1a <<esp_backtrace::arch::Context as core::fmt::Debug>::fmt+0x15ce>
42002a19:	000780        	ret
42002a1c:	3fffffff 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a15, -16, q7, q7, q7, q7
42002a20:	000000        	ill
42002a23:	800140        	add	a0, a1, a4
42002a26:	        	bnone	a0, a0, 42002a60 <esp_backtrace::arch::backtrace+0x38>

42002a28 <esp_backtrace::arch::backtrace>:
42002a28:	00a136        	entry	a1, 80
42002a2b:	208110        	or	a8, a1, a1
42002a2e:	f0c892        	addi	a9, a8, -16
42002a31:	0020c0        	memw
42002a34:	09b8      	l32i.n	a11, a9, 0
42002a36:	f4c882        	addi	a8, a8, -12
42002a39:	0020c0        	memw
42002a3c:	08c8      	l32i.n	a12, a8, 0
42002a3e:	f60c      	movi.n	a6, 15
42002a40:	109c60        	and	a9, a12, a6
42002a43:	080c      	movi.n	a8, 0
42002a45:	034956        	bnez	a9, 42002a7d <esp_backtrace::arch::backtrace+0x55>
42002a48:	fff3a1        	l32r	a10, 42002a14 <<esp_backtrace::arch::Context as core::fmt::Debug>::fmt+0x15c8>
42002a4b:	9caa      	add.n	a9, a12, a10
42002a4d:	fff251        	l32r	a5, 42002a18 <<esp_backtrace::arch::Context as core::fmt::Debug>::fmt+0x15cc>
42002a50:	293597        	bltu	a5, a9, 42002a7d <esp_backtrace::arch::backtrace+0x55>
42002a53:	026c16        	beqz	a12, 42002a7d <esp_backtrace::arch::backtrace+0x55>
42002a56:	f0cc92        	addi	a9, a12, -16
42002a59:	0020c0        	memw
42002a5c:	09d8      	l32i.n	a13, a9, 0
42002a5e:	ffef91        	l32r	a9, 42002a1c <<esp_backtrace::arch::Context as core::fmt::Debug>::fmt+0x15d0>
42002a61:	10dd90        	and	a13, a13, a9
42002a64:	ffef71        	l32r	a7, 42002a20 <<esp_backtrace::arch::Context as core::fmt::Debug>::fmt+0x15d4>
42002a67:	20ed70        	or	a14, a13, a7
42002a6a:	10bb90        	and	a11, a11, a9
42002a6d:	20db70        	or	a13, a11, a7
42002a70:	f4ccb2        	addi	a11, a12, -12
42002a73:	0020c0        	memw
42002a76:	0bb8      	l32i.n	a11, a11, 0
42002a78:	31e9      	s32i.n	a14, a1, 12
42002a7a:	4f9de7        	bne	a13, a14, 42002acd <esp_backtrace::arch::backtrace+0xa5>
42002a7d:	b189      	s32i.n	a8, a1, 44
42002a7f:	a189      	s32i.n	a8, a1, 40
42002a81:	085d      	mov.n	a5, a8
42002a83:	08ed      	mov.n	a14, a8
42002a85:	08fd      	mov.n	a15, a8
42002a87:	08dd      	mov.n	a13, a8
42002a89:	08bd      	mov.n	a11, a8
42002a8b:	084d      	mov.n	a4, a8
42002a8d:	083d      	mov.n	a3, a8
42002a8f:	4178      	l32i.n	a7, a1, 16
42002a91:	136272        	s32i	a7, a2, 76
42002a94:	126282        	s32i	a8, a2, 72
42002a97:	5188      	l32i.n	a8, a1, 20
42002a99:	116282        	s32i	a8, a2, 68
42002a9c:	b188      	l32i.n	a8, a1, 44
42002a9e:	106282        	s32i	a8, a2, 64
42002aa1:	6188      	l32i.n	a8, a1, 24
42002aa3:	f289      	s32i.n	a8, a2, 60
42002aa5:	a188      	l32i.n	a8, a1, 40
42002aa7:	e289      	s32i.n	a8, a2, 56
42002aa9:	7188      	l32i.n	a8, a1, 28
42002aab:	d289      	s32i.n	a8, a2, 52
42002aad:	c259      	s32i.n	a5, a2, 48
42002aaf:	8188      	l32i.n	a8, a1, 32
42002ab1:	b289      	s32i.n	a8, a2, 44
42002ab3:	a2e9      	s32i.n	a14, a2, 40
42002ab5:	92c9      	s32i.n	a12, a2, 36
42002ab7:	82f9      	s32i.n	a15, a2, 32
42002ab9:	9188      	l32i.n	a8, a1, 36
42002abb:	7289      	s32i.n	a8, a2, 28
42002abd:	62d9      	s32i.n	a13, a2, 24
42002abf:	5269      	s32i.n	a6, a2, 20
42002ac1:	42b9      	s32i.n	a11, a2, 16
42002ac3:	32a9      	s32i.n	a10, a2, 12
42002ac5:	2249      	s32i.n	a4, a2, 8
42002ac7:	1299      	s32i.n	a9, a2, 4
42002ac9:	0239      	s32i.n	a3, a2, 0
42002acb:	f01d      	retw.n
42002acd:	10cb60        	and	a12, a11, a6
42002ad0:	1bbc56        	bnez	a12, 42002c8f <esp_backtrace::arch::backtrace+0x267>
42002ad3:	cbaa      	add.n	a12, a11, a10
42002ad5:	02b5c7        	bgeu	a5, a12, 42002adb <esp_backtrace::arch::backtrace+0xb3>
42002ad8:	006cc6        	j	42002c8f <esp_backtrace::arch::backtrace+0x267>
42002adb:	1b0b16        	beqz	a11, 42002c8f <esp_backtrace::arch::backtrace+0x267>
42002ade:	f0cbc2        	addi	a12, a11, -16
42002ae1:	0020c0        	memw
42002ae4:	0cc8      	l32i.n	a12, a12, 0
42002ae6:	10cc90        	and	a12, a12, a9
42002ae9:	20dc70        	or	a13, a12, a7
42002aec:	f4cbb2        	addi	a11, a11, -12
42002aef:	0020c0        	memw
42002af2:	0bb8      	l32i.n	a11, a11, 0
42002af4:	130c      	movi.n	a3, 1
42002af6:	31c8      	l32i.n	a12, a1, 12
42002af8:	21d9      	s32i.n	a13, a1, 8
42002afa:	029cd7        	bne	a12, a13, 42002b00 <esp_backtrace::arch::backtrace+0xd8>
42002afd:	006946        	j	42002ca6 <esp_backtrace::arch::backtrace+0x27e>
42002b00:	10cb60        	and	a12, a11, a6
42002b03:	19fc56        	bnez	a12, 42002ca6 <esp_backtrace::arch::backtrace+0x27e>
42002b06:	cbaa      	add.n	a12, a11, a10
42002b08:	02b5c7        	bgeu	a5, a12, 42002b0e <esp_backtrace::arch::backtrace+0xe6>
42002b0b:	0065c6        	j	42002ca6 <esp_backtrace::arch::backtrace+0x27e>
42002b0e:	194b16        	beqz	a11, 42002ca6 <esp_backtrace::arch::backtrace+0x27e>
42002b11:	f0cbc2        	addi	a12, a11, -16
42002b14:	0020c0        	memw
42002b17:	0cc8      	l32i.n	a12, a12, 0
42002b19:	10cc90        	and	a12, a12, a9
42002b1c:	20dc70        	or	a13, a12, a7
42002b1f:	f4cbb2        	addi	a11, a11, -12
42002b22:	0020c0        	memw
42002b25:	0bb8      	l32i.n	a11, a11, 0
42002b27:	140c      	movi.n	a4, 1
42002b29:	21c8      	l32i.n	a12, a1, 8
42002b2b:	11d9      	s32i.n	a13, a1, 4
42002b2d:	029cd7        	bne	a12, a13, 42002b33 <esp_backtrace::arch::backtrace+0x10b>
42002b30:	0061c6        	j	42002cbb <esp_backtrace::arch::backtrace+0x293>
42002b33:	10cb60        	and	a12, a11, a6
42002b36:	181c56        	bnez	a12, 42002cbb <esp_backtrace::arch::backtrace+0x293>
42002b39:	cbaa      	add.n	a12, a11, a10
42002b3b:	02b5c7        	bgeu	a5, a12, 42002b41 <esp_backtrace::arch::backtrace+0x119>
42002b3e:	005e46        	j	42002cbb <esp_backtrace::arch::backtrace+0x293>
42002b41:	176b16        	beqz	a11, 42002cbb <esp_backtrace::arch::backtrace+0x293>
42002b44:	f0cbc2        	addi	a12, a11, -16
42002b47:	0020c0        	memw
42002b4a:	0cc8      	l32i.n	a12, a12, 0
42002b4c:	10cc90        	and	a12, a12, a9
42002b4f:	20ec70        	or	a14, a12, a7
42002b52:	f4cbb2        	addi	a11, a11, -12
42002b55:	0020c0        	memw
42002b58:	0bc8      	l32i.n	a12, a11, 0
42002b5a:	1b0c      	movi.n	a11, 1
42002b5c:	11d8      	l32i.n	a13, a1, 4
42002b5e:	029de7        	bne	a13, a14, 42002b64 <esp_backtrace::arch::backtrace+0x13c>
42002b61:	005b46        	j	42002cd2 <esp_backtrace::arch::backtrace+0x2aa>
42002b64:	10dc60        	and	a13, a12, a6
42002b67:	167d56        	bnez	a13, 42002cd2 <esp_backtrace::arch::backtrace+0x2aa>
42002b6a:	dcaa      	add.n	a13, a12, a10
42002b6c:	02b5d7        	bgeu	a5, a13, 42002b72 <esp_backtrace::arch::backtrace+0x14a>
42002b6f:	0057c6        	j	42002cd2 <esp_backtrace::arch::backtrace+0x2aa>
42002b72:	15cc16        	beqz	a12, 42002cd2 <esp_backtrace::arch::backtrace+0x2aa>
42002b75:	f0ccb2        	addi	a11, a12, -16
42002b78:	0020c0        	memw
42002b7b:	0bb8      	l32i.n	a11, a11, 0
42002b7d:	10bb90        	and	a11, a11, a9
42002b80:	204b70        	or	a4, a11, a7
42002b83:	f4ccb2        	addi	a11, a12, -12
42002b86:	0020c0        	memw
42002b89:	0bb8      	l32i.n	a11, a11, 0
42002b8b:	1d0c      	movi.n	a13, 1
42002b8d:	91e9      	s32i.n	a14, a1, 36
42002b8f:	029e47        	bne	a14, a4, 42002b95 <esp_backtrace::arch::backtrace+0x16d>
42002b92:	0053c6        	j	42002ce5 <esp_backtrace::arch::backtrace+0x2bd>
42002b95:	10cb60        	and	a12, a11, a6
42002b98:	149c56        	bnez	a12, 42002ce5 <esp_backtrace::arch::backtrace+0x2bd>
42002b9b:	cbaa      	add.n	a12, a11, a10
42002b9d:	02b5c7        	bgeu	a5, a12, 42002ba3 <esp_backtrace::arch::backtrace+0x17b>
42002ba0:	005046        	j	42002ce5 <esp_backtrace::arch::backtrace+0x2bd>
42002ba3:	13eb16        	beqz	a11, 42002ce5 <esp_backtrace::arch::backtrace+0x2bd>
42002ba6:	f0cbc2        	addi	a12, a11, -16
42002ba9:	0020c0        	memw
42002bac:	0cc8      	l32i.n	a12, a12, 0
42002bae:	10cc90        	and	a12, a12, a9
42002bb1:	20dc70        	or	a13, a12, a7
42002bb4:	f4cbb2        	addi	a11, a11, -12
42002bb7:	0020c0        	memw
42002bba:	0bb8      	l32i.n	a11, a11, 0
42002bbc:	1f0c      	movi.n	a15, 1
42002bbe:	0294d7        	bne	a4, a13, 42002bc4 <esp_backtrace::arch::backtrace+0x19c>
42002bc1:	004cc6        	j	42002cf8 <esp_backtrace::arch::backtrace+0x2d0>
42002bc4:	10cb60        	and	a12, a11, a6
42002bc7:	12dc56        	bnez	a12, 42002cf8 <esp_backtrace::arch::backtrace+0x2d0>
42002bca:	cbaa      	add.n	a12, a11, a10
42002bcc:	02b5c7        	bgeu	a5, a12, 42002bd2 <esp_backtrace::arch::backtrace+0x1aa>
42002bcf:	004946        	j	42002cf8 <esp_backtrace::arch::backtrace+0x2d0>
42002bd2:	122b16        	beqz	a11, 42002cf8 <esp_backtrace::arch::backtrace+0x2d0>
42002bd5:	0149      	s32i.n	a4, a1, 0
42002bd7:	f0cbc2        	addi	a12, a11, -16
42002bda:	0020c0        	memw
42002bdd:	0cc8      	l32i.n	a12, a12, 0
42002bdf:	10cc90        	and	a12, a12, a9
42002be2:	20cc70        	or	a12, a12, a7
42002be5:	f4cbb2        	addi	a11, a11, -12
42002be8:	0020c0        	memw
42002beb:	0bb8      	l32i.n	a11, a11, 0
42002bed:	1e0c      	movi.n	a14, 1
42002bef:	81d9      	s32i.n	a13, a1, 32
42002bf1:	029dc7        	bne	a13, a12, 42002bf7 <esp_backtrace::arch::backtrace+0x1cf>
42002bf4:	0046c6        	j	42002d13 <esp_backtrace::arch::backtrace+0x2eb>
42002bf7:	71c9      	s32i.n	a12, a1, 28
42002bf9:	10cb60        	and	a12, a11, a6
42002bfc:	113c56        	bnez	a12, 42002d13 <esp_backtrace::arch::backtrace+0x2eb>
42002bff:	cbaa      	add.n	a12, a11, a10
42002c01:	02b5c7        	bgeu	a5, a12, 42002c07 <esp_backtrace::arch::backtrace+0x1df>
42002c04:	0042c6        	j	42002d13 <esp_backtrace::arch::backtrace+0x2eb>
42002c07:	108b16        	beqz	a11, 42002d13 <esp_backtrace::arch::backtrace+0x2eb>
42002c0a:	f0cbc2        	addi	a12, a11, -16
42002c0d:	0020c0        	memw
42002c10:	0cc8      	l32i.n	a12, a12, 0
42002c12:	10cc90        	and	a12, a12, a9
42002c15:	20dc70        	or	a13, a12, a7
42002c18:	f4cbb2        	addi	a11, a11, -12
42002c1b:	0020c0        	memw
42002c1e:	0bb8      	l32i.n	a11, a11, 0
42002c20:	61d9      	s32i.n	a13, a1, 24
42002c22:	71c8      	l32i.n	a12, a1, 28
42002c24:	029cd7        	bne	a12, a13, 42002c2a <esp_backtrace::arch::backtrace+0x202>
42002c27:	003ec6        	j	42002d26 <esp_backtrace::arch::backtrace+0x2fe>
42002c2a:	10db60        	and	a13, a11, a6
42002c2d:	0f5d56        	bnez	a13, 42002d26 <esp_backtrace::arch::backtrace+0x2fe>
42002c30:	dbaa      	add.n	a13, a11, a10
42002c32:	02b5d7        	bgeu	a5, a13, 42002c38 <esp_backtrace::arch::backtrace+0x210>
42002c35:	003b46        	j	42002d26 <esp_backtrace::arch::backtrace+0x2fe>
42002c38:	0eab16        	beqz	a11, 42002d26 <esp_backtrace::arch::backtrace+0x2fe>
42002c3b:	f0cbc2        	addi	a12, a11, -16
42002c3e:	0020c0        	memw
42002c41:	0cc8      	l32i.n	a12, a12, 0
42002c43:	10cc90        	and	a12, a12, a9
42002c46:	20cc70        	or	a12, a12, a7
42002c49:	f4cbb2        	addi	a11, a11, -12
42002c4c:	0020c0        	memw
42002c4f:	0bb8      	l32i.n	a11, a11, 0
42002c51:	51c9      	s32i.n	a12, a1, 20
42002c53:	61d8      	l32i.n	a13, a1, 24
42002c55:	029dc7        	bne	a13, a12, 42002c5b <esp_backtrace::arch::backtrace+0x233>
42002c58:	003746        	j	42002d39 <esp_backtrace::arch::backtrace+0x311>
42002c5b:	10cb60        	and	a12, a11, a6
42002c5e:	0d7c56        	bnez	a12, 42002d39 <esp_backtrace::arch::backtrace+0x311>
42002c61:	cbaa      	add.n	a12, a11, a10
42002c63:	02b5c7        	bgeu	a5, a12, 42002c69 <esp_backtrace::arch::backtrace+0x241>
42002c66:	0033c6        	j	42002d39 <esp_backtrace::arch::backtrace+0x311>
42002c69:	0ccb16        	beqz	a11, 42002d39 <esp_backtrace::arch::backtrace+0x311>
42002c6c:	f0cbc2        	addi	a12, a11, -16
42002c6f:	0020c0        	memw
42002c72:	0cc8      	l32i.n	a12, a12, 0
42002c74:	109c90        	and	a9, a12, a9
42002c77:	20c970        	or	a12, a9, a7
42002c7a:	f4cb92        	addi	a9, a11, -12
42002c7d:	0020c0        	memw
42002c80:	0998      	l32i.n	a9, a9, 0
42002c82:	51b8      	l32i.n	a11, a1, 20
42002c84:	41c9      	s32i.n	a12, a1, 16
42002c86:	021bc7        	beq	a11, a12, 42002c8c <esp_backtrace::arch::backtrace+0x264>
42002c89:	002fc6        	j	42002d4c <esp_backtrace::arch::backtrace+0x324>
42002c8c:	0037c6        	j	42002d6f <esp_backtrace::arch::backtrace+0x347>
42002c8f:	b189      	s32i.n	a8, a1, 44
42002c91:	a189      	s32i.n	a8, a1, 40
42002c93:	085d      	mov.n	a5, a8
42002c95:	08ed      	mov.n	a14, a8
42002c97:	08fd      	mov.n	a15, a8
42002c99:	08dd      	mov.n	a13, a8
42002c9b:	08bd      	mov.n	a11, a8
42002c9d:	084d      	mov.n	a4, a8
42002c9f:	083d      	mov.n	a3, a8
42002ca1:	3198      	l32i.n	a9, a1, 12
42002ca3:	ff7a06        	j	42002a8f <esp_backtrace::arch::backtrace+0x67>
42002ca6:	b189      	s32i.n	a8, a1, 44
42002ca8:	a189      	s32i.n	a8, a1, 40
42002caa:	085d      	mov.n	a5, a8
42002cac:	08ed      	mov.n	a14, a8
42002cae:	08fd      	mov.n	a15, a8
42002cb0:	08dd      	mov.n	a13, a8
42002cb2:	08bd      	mov.n	a11, a8
42002cb4:	084d      	mov.n	a4, a8
42002cb6:	3198      	l32i.n	a9, a1, 12
42002cb8:	ff74c6        	j	42002a8f <esp_backtrace::arch::backtrace+0x67>
42002cbb:	b189      	s32i.n	a8, a1, 44
42002cbd:	a189      	s32i.n	a8, a1, 40
42002cbf:	085d      	mov.n	a5, a8
42002cc1:	08ed      	mov.n	a14, a8
42002cc3:	08fd      	mov.n	a15, a8
42002cc5:	08dd      	mov.n	a13, a8
42002cc7:	08bd      	mov.n	a11, a8
42002cc9:	043d      	mov.n	a3, a4
42002ccb:	3198      	l32i.n	a9, a1, 12
42002ccd:	21a8      	l32i.n	a10, a1, 8
42002ccf:	ff6f06        	j	42002a8f <esp_backtrace::arch::backtrace+0x67>
42002cd2:	b189      	s32i.n	a8, a1, 44
42002cd4:	a189      	s32i.n	a8, a1, 40
42002cd6:	085d      	mov.n	a5, a8
42002cd8:	08ed      	mov.n	a14, a8
42002cda:	08fd      	mov.n	a15, a8
42002cdc:	08dd      	mov.n	a13, a8
42002cde:	0b4d      	mov.n	a4, a11
42002ce0:	0b3d      	mov.n	a3, a11
42002ce2:	000906        	j	42002d0a <esp_backtrace::arch::backtrace+0x2e2>
42002ce5:	b189      	s32i.n	a8, a1, 44
42002ce7:	a189      	s32i.n	a8, a1, 40
42002ce9:	085d      	mov.n	a5, a8
42002ceb:	08ed      	mov.n	a14, a8
42002ced:	08fd      	mov.n	a15, a8
42002cef:	0dbd      	mov.n	a11, a13
42002cf1:	0d4d      	mov.n	a4, a13
42002cf3:	0d3d      	mov.n	a3, a13
42002cf5:	000446        	j	42002d0a <esp_backtrace::arch::backtrace+0x2e2>
42002cf8:	b189      	s32i.n	a8, a1, 44
42002cfa:	a189      	s32i.n	a8, a1, 40
42002cfc:	085d      	mov.n	a5, a8
42002cfe:	08ed      	mov.n	a14, a8
42002d00:	0fdd      	mov.n	a13, a15
42002d02:	0fbd      	mov.n	a11, a15
42002d04:	04cd      	mov.n	a12, a4
42002d06:	0f4d      	mov.n	a4, a15
42002d08:	0f3d      	mov.n	a3, a15
42002d0a:	3198      	l32i.n	a9, a1, 12
42002d0c:	21a8      	l32i.n	a10, a1, 8
42002d0e:	1168      	l32i.n	a6, a1, 4
42002d10:	ff5ec6        	j	42002a8f <esp_backtrace::arch::backtrace+0x67>
42002d13:	b189      	s32i.n	a8, a1, 44
42002d15:	a189      	s32i.n	a8, a1, 40
42002d17:	085d      	mov.n	a5, a8
42002d19:	0efd      	mov.n	a15, a14
42002d1b:	0edd      	mov.n	a13, a14
42002d1d:	0ebd      	mov.n	a11, a14
42002d1f:	0e4d      	mov.n	a4, a14
42002d21:	0e3d      	mov.n	a3, a14
42002d23:	001606        	j	42002d7f <esp_backtrace::arch::backtrace+0x357>
42002d26:	b189      	s32i.n	a8, a1, 44
42002d28:	a189      	s32i.n	a8, a1, 40
42002d2a:	03ed      	mov.n	a14, a3
42002d2c:	03fd      	mov.n	a15, a3
42002d2e:	03dd      	mov.n	a13, a3
42002d30:	03bd      	mov.n	a11, a3
42002d32:	034d      	mov.n	a4, a3
42002d34:	035d      	mov.n	a5, a3
42002d36:	001146        	j	42002d7f <esp_backtrace::arch::backtrace+0x357>
42002d39:	b189      	s32i.n	a8, a1, 44
42002d3b:	035d      	mov.n	a5, a3
42002d3d:	03ed      	mov.n	a14, a3
42002d3f:	03fd      	mov.n	a15, a3
42002d41:	03dd      	mov.n	a13, a3
42002d43:	03bd      	mov.n	a11, a3
42002d45:	034d      	mov.n	a4, a3
42002d47:	a139      	s32i.n	a3, a1, 40
42002d49:	000c86        	j	42002d7f <esp_backtrace::arch::backtrace+0x357>
42002d4c:	180c      	movi.n	a8, 1
42002d4e:	0b0c      	movi.n	a11, 0
42002d50:	083d      	mov.n	a3, a8
42002d52:	3419b7        	beq	a9, a11, 42002d8a <esp_backtrace::arch::backtrace+0x362>
42002d55:	c9aa      	add.n	a12, a9, a10
42002d57:	ff33d1        	l32r	a13, 42002a24 <<esp_backtrace::arch::Context as core::fmt::Debug>::fmt+0x15d8>
42002d5a:	03ad      	mov.n	a10, a3
42002d5c:	36bcd7        	bgeu	a12, a13, 42002d96 <esp_backtrace::arch::backtrace+0x36e>
42002d5f:	10c960        	and	a12, a9, a6
42002d62:	039d      	mov.n	a9, a3
42002d64:	011cb7        	beq	a12, a11, 42002d69 <esp_backtrace::arch::backtrace+0x341>
42002d67:	0b9d      	mov.n	a9, a11
42002d69:	1099a0        	and	a9, a9, a10
42002d6c:	108980        	and	a8, a9, a8
42002d6f:	a139      	s32i.n	a3, a1, 40
42002d71:	035d      	mov.n	a5, a3
42002d73:	03ed      	mov.n	a14, a3
42002d75:	03fd      	mov.n	a15, a3
42002d77:	03dd      	mov.n	a13, a3
42002d79:	03bd      	mov.n	a11, a3
42002d7b:	034d      	mov.n	a4, a3
42002d7d:	b139      	s32i.n	a3, a1, 44
42002d7f:	3198      	l32i.n	a9, a1, 12
42002d81:	21a8      	l32i.n	a10, a1, 8
42002d83:	1168      	l32i.n	a6, a1, 4
42002d85:	01c8      	l32i.n	a12, a1, 0
42002d87:	ff4106        	j	42002a8f <esp_backtrace::arch::backtrace+0x67>
42002d8a:	0b8d      	mov.n	a8, a11
42002d8c:	c9aa      	add.n	a12, a9, a10
42002d8e:	ff25d1        	l32r	a13, 42002a24 <<esp_backtrace::arch::Context as core::fmt::Debug>::fmt+0x15d8>
42002d91:	03ad      	mov.n	a10, a3
42002d93:	c83cd7        	bltu	a12, a13, 42002d5f <esp_backtrace::arch::backtrace+0x337>
42002d96:	0bad      	mov.n	a10, a11
42002d98:	10c960        	and	a12, a9, a6
42002d9b:	039d      	mov.n	a9, a3
42002d9d:	c69cb7        	bne	a12, a11, 42002d67 <esp_backtrace::arch::backtrace+0x33f>
42002da0:	fff146        	j	42002d69 <esp_backtrace::arch::backtrace+0x341>
42002da3:	104800        	and	a4, a8, a0
42002da6:	3c3c01        	l32r	a0, 41fd1e98 <__user_exception+0x1c58c70>
42002da9:	14          	.byte 0x14
42002daa:	303c01        	l32r	a0, 41fcee9c <__user_exception+0x1c55c74>
42002dad:	10          	.byte 0x10
42002dae:	a83c01        	l32r	a0, 41fecea0 <__user_exception+0x1c73c78>
42002db1:	420050        	xorb	b0, b0, b5
42002db4:	6188      	l32i.n	a8, a1, 24
42002db6:	d44200        	extui	a4, a0, 2, 14
42002db9:	0068      	l32i.n	a6, a0, 0
42002dbb:	130c42        	l8ui	a4, a12, 19
42002dbe:	00          	.byte 00
42002dbf:	42          	.byte 0x42
42002dc0:	011470        	slli	a1, a4, 25
42002dc3:	bc3c      	movi.n	a12, 59
42002dc5:	14          	.byte 0x14
42002dc6:	f43c01        	l32r	a0, 41fffeb8 <__user_exception+0x1c86c90>
42002dc9:	420012        	l8ui	a1, a0, 66
42002dcc:	0114c4        	ee.ldqa.s16.128.ip	a12, 0x140
42002dcf:	e03c      	movi.n	a0, 62
42002dd1:	14          	.byte 0x14
42002dd2:	283c01        	l32r	a0, 41fccec4 <__user_exception+0x1c53c9c>
42002dd5:	002a      	add.n	a0, a0, a2
42002dd7:	42          	.byte 0x42
42002dd8:	3c7c      	movi.n	a12, -13
42002dda:	00          	.byte 00
42002ddb:	14ec42        	s32c1i	a4, a12, 80
42002dde:	        	l32r	a0, 41fd06d0 <__user_exception+0x1c574a8>

42002de0 <rust_begin_unwind>:
42002de0:	01a136        	entry	a1, 208
42002de3:	2129      	s32i.n	a2, a1, 8
42002de5:	8129      	s32i.n	a2, a1, 32
42002de7:	aca082        	movi	a8, 172
42002dea:	818a      	add.n	a8, a1, a8
42002dec:	00c882        	addi	a8, a8, 0
42002def:	7189      	s32i.n	a8, a1, 28
42002df1:	256182        	s32i	a8, a1, 148
42002df4:	030c      	movi.n	a3, 0
42002df6:	e139      	s32i.n	a3, a1, 56
42002df8:	d139      	s32i.n	a3, a1, 52
42002dfa:	ffea21        	l32r	a2, 42002da4 <esp_backtrace::arch::backtrace+0x37c>
42002dfd:	c129      	s32i.n	a2, a1, 48
42002dff:	140c      	movi.n	a4, 1
42002e01:	b149      	s32i.n	a4, a1, 44
42002e03:	ffe961        	l32r	a6, 42002da8 <esp_backtrace::arch::backtrace+0x380>
42002e06:	a169      	s32i.n	a6, a1, 40
42002e08:	94a082        	movi	a8, 148
42002e0b:	818a      	add.n	a8, a1, a8
42002e0d:	00c8a2        	addi	a10, a8, 0
42002e10:	ffe771        	l32r	a7, 42002dac <esp_backtrace::arch::backtrace+0x384>
42002e13:	28c1c2        	addi	a12, a1, 40
42002e16:	ffe651        	l32r	a5, 42002db0 <esp_backtrace::arch::backtrace+0x388>
42002e19:	07bd      	mov.n	a11, a7
42002e1b:	0005e0        	callx8	a5
42002e1e:	7188      	l32i.n	a8, a1, 28
42002e20:	256182        	s32i	a8, a1, 148
42002e23:	e139      	s32i.n	a3, a1, 56
42002e25:	5139      	s32i.n	a3, a1, 20
42002e27:	d139      	s32i.n	a3, a1, 52
42002e29:	3129      	s32i.n	a2, a1, 12
42002e2b:	c129      	s32i.n	a2, a1, 48
42002e2d:	6149      	s32i.n	a4, a1, 24
42002e2f:	b149      	s32i.n	a4, a1, 44
42002e31:	4169      	s32i.n	a6, a1, 16
42002e33:	a169      	s32i.n	a6, a1, 40
42002e35:	94a082        	movi	a8, 148
42002e38:	818a      	add.n	a8, a1, a8
42002e3a:	00c8a2        	addi	a10, a8, 0
42002e3d:	28c1c2        	addi	a12, a1, 40
42002e40:	07bd      	mov.n	a11, a7
42002e42:	7159      	s32i.n	a5, a1, 28
42002e44:	0005e0        	callx8	a5
42002e47:	ffdb81        	l32r	a8, 42002db4 <esp_backtrace::arch::backtrace+0x38c>
42002e4a:	21a8      	l32i.n	a10, a1, 8
42002e4c:	0008e0        	callx8	a8
42002e4f:	320c      	movi.n	a2, 3
42002e51:	4c0c      	movi.n	a12, 4
42002e53:	11c9      	s32i.n	a12, a1, 4
42002e55:	077a16        	beqz	a10, 42002ed0 <rust_begin_unwind+0xf0>
42002e58:	3a88      	l32i.n	a8, a10, 12
42002e5a:	2a98      	l32i.n	a9, a10, 8
42002e5c:	0ab8      	l32i.n	a11, a10, 0
42002e5e:	1aa8      	l32i.n	a10, a10, 4
42002e60:	2461a2        	s32i	a10, a1, 144
42002e63:	2361b2        	s32i	a11, a1, 140
42002e66:	9199      	s32i.n	a9, a1, 36
42002e68:	216182        	s32i	a8, a1, 132
42002e6b:	aca082        	movi	a8, 172
42002e6e:	818a      	add.n	a8, a1, a8
42002e70:	00c882        	addi	a8, a8, 0
42002e73:	226182        	s32i	a8, a1, 136
42002e76:	ffd081        	l32r	a8, 42002db8 <esp_backtrace::arch::backtrace+0x390>
42002e79:	2a6182        	s32i	a8, a1, 168
42002e7c:	84a092        	movi	a9, 132
42002e7f:	919a      	add.n	a9, a1, a9
42002e81:	00c992        	addi	a9, a9, 0
42002e84:	296192        	s32i	a9, a1, 164
42002e87:	286182        	s32i	a8, a1, 160
42002e8a:	24c182        	addi	a8, a1, 36
42002e8d:	276182        	s32i	a8, a1, 156
42002e90:	ffcb81        	l32r	a8, 42002dbc <esp_backtrace::arch::backtrace+0x394>
42002e93:	266182        	s32i	a8, a1, 152
42002e96:	8ca082        	movi	a8, 140
42002e99:	818a      	add.n	a8, a1, a8
42002e9b:	00c882        	addi	a8, a8, 0
42002e9e:	256182        	s32i	a8, a1, 148
42002ea1:	5168      	l32i.n	a6, a1, 20
42002ea3:	e169      	s32i.n	a6, a1, 56
42002ea5:	d129      	s32i.n	a2, a1, 52
42002ea7:	94a082        	movi	a8, 148
42002eaa:	818a      	add.n	a8, a1, a8
42002eac:	00c882        	addi	a8, a8, 0
42002eaf:	c189      	s32i.n	a8, a1, 48
42002eb1:	b1c9      	s32i.n	a12, a1, 44
42002eb3:	ffc381        	l32r	a8, 42002dc0 <esp_backtrace::arch::backtrace+0x398>
42002eb6:	a189      	s32i.n	a8, a1, 40
42002eb8:	88a082        	movi	a8, 136
42002ebb:	818a      	add.n	a8, a1, a8
42002ebd:	00c8a2        	addi	a10, a8, 0
42002ec0:	ffbbb1        	l32r	a11, 42002dac <esp_backtrace::arch::backtrace+0x384>
42002ec3:	28c1c2        	addi	a12, a1, 40
42002ec6:	7188      	l32i.n	a8, a1, 28
42002ec8:	0008e0        	callx8	a8
42002ecb:	3188      	l32i.n	a8, a1, 12
42002ecd:	000c86        	j	42002f03 <rust_begin_unwind+0x123>
42002ed0:	aca082        	movi	a8, 172
42002ed3:	818a      	add.n	a8, a1, a8
42002ed5:	00c882        	addi	a8, a8, 0
42002ed8:	256182        	s32i	a8, a1, 148
42002edb:	5168      	l32i.n	a6, a1, 20
42002edd:	e169      	s32i.n	a6, a1, 56
42002edf:	d169      	s32i.n	a6, a1, 52
42002ee1:	3178      	l32i.n	a7, a1, 12
42002ee3:	c179      	s32i.n	a7, a1, 48
42002ee5:	6188      	l32i.n	a8, a1, 24
42002ee7:	b189      	s32i.n	a8, a1, 44
42002ee9:	ffb681        	l32r	a8, 42002dc4 <esp_backtrace::arch::backtrace+0x39c>
42002eec:	a189      	s32i.n	a8, a1, 40
42002eee:	94a082        	movi	a8, 148
42002ef1:	818a      	add.n	a8, a1, a8
42002ef3:	00c8a2        	addi	a10, a8, 0
42002ef6:	ffadb1        	l32r	a11, 42002dac <esp_backtrace::arch::backtrace+0x384>
42002ef9:	28c1c2        	addi	a12, a1, 40
42002efc:	7188      	l32i.n	a8, a1, 28
42002efe:	0008e0        	callx8	a8
42002f01:	078d      	mov.n	a8, a7
42002f03:	aca092        	movi	a9, 172
42002f06:	919a      	add.n	a9, a1, a9
42002f08:	00c932        	addi	a3, a9, 0
42002f0b:	256132        	s32i	a3, a1, 148
42002f0e:	e169      	s32i.n	a6, a1, 56
42002f10:	d169      	s32i.n	a6, a1, 52
42002f12:	c189      	s32i.n	a8, a1, 48
42002f14:	6148      	l32i.n	a4, a1, 24
42002f16:	b149      	s32i.n	a4, a1, 44
42002f18:	4198      	l32i.n	a9, a1, 16
42002f1a:	a199      	s32i.n	a9, a1, 40
42002f1c:	94a082        	movi	a8, 148
42002f1f:	818a      	add.n	a8, a1, a8
42002f21:	00c8a2        	addi	a10, a8, 0
42002f24:	ffa271        	l32r	a7, 42002dac <esp_backtrace::arch::backtrace+0x384>
42002f27:	28c1c2        	addi	a12, a1, 40
42002f2a:	07bd      	mov.n	a11, a7
42002f2c:	7158      	l32i.n	a5, a1, 28
42002f2e:	0005e0        	callx8	a5
42002f31:	226132        	s32i	a3, a1, 136
42002f34:	ffa581        	l32r	a8, 42002dc8 <esp_backtrace::arch::backtrace+0x3a0>
42002f37:	246182        	s32i	a8, a1, 144
42002f3a:	20c182        	addi	a8, a1, 32
42002f3d:	236182        	s32i	a8, a1, 140
42002f40:	2129      	s32i.n	a2, a1, 8
42002f42:	444122        	s8i	a2, a1, 68
42002f45:	1188      	l32i.n	a8, a1, 4
42002f47:	106182        	s32i	a8, a1, 64
42002f4a:	f169      	s32i.n	a6, a1, 60
42002f4c:	082c      	movi.n	a8, 32
42002f4e:	e189      	s32i.n	a8, a1, 56
42002f50:	290c      	movi.n	a9, 2
42002f52:	5199      	s32i.n	a9, a1, 20
42002f54:	c199      	s32i.n	a9, a1, 48
42002f56:	a199      	s32i.n	a9, a1, 40
42002f58:	2a6142        	s32i	a4, a1, 168
42002f5b:	28c182        	addi	a8, a1, 40
42002f5e:	296182        	s32i	a8, a1, 164
42002f61:	286142        	s32i	a4, a1, 160
42002f64:	8ca082        	movi	a8, 140
42002f67:	818a      	add.n	a8, a1, a8
42002f69:	00c882        	addi	a8, a8, 0
42002f6c:	276182        	s32i	a8, a1, 156
42002f6f:	266192        	s32i	a9, a1, 152
42002f72:	ff9681        	l32r	a8, 42002dcc <esp_backtrace::arch::backtrace+0x3a4>
42002f75:	256182        	s32i	a8, a1, 148
42002f78:	88a082        	movi	a8, 136
42002f7b:	818a      	add.n	a8, a1, a8
42002f7d:	00c8a2        	addi	a10, a8, 0
42002f80:	94a082        	movi	a8, 148
42002f83:	818a      	add.n	a8, a1, a8
42002f85:	00c8c2        	addi	a12, a8, 0
42002f88:	07bd      	mov.n	a11, a7
42002f8a:	072d      	mov.n	a2, a7
42002f8c:	0005e0        	callx8	a5
42002f8f:	256132        	s32i	a3, a1, 148
42002f92:	e169      	s32i.n	a6, a1, 56
42002f94:	d169      	s32i.n	a6, a1, 52
42002f96:	3178      	l32i.n	a7, a1, 12
42002f98:	c179      	s32i.n	a7, a1, 48
42002f9a:	b149      	s32i.n	a4, a1, 44
42002f9c:	4188      	l32i.n	a8, a1, 16
42002f9e:	a189      	s32i.n	a8, a1, 40
42002fa0:	94a082        	movi	a8, 148
42002fa3:	818a      	add.n	a8, a1, a8
42002fa5:	00c8a2        	addi	a10, a8, 0
42002fa8:	28c1c2        	addi	a12, a1, 40
42002fab:	02bd      	mov.n	a11, a2
42002fad:	0005e0        	callx8	a5
42002fb0:	256132        	s32i	a3, a1, 148
42002fb3:	e169      	s32i.n	a6, a1, 56
42002fb5:	d169      	s32i.n	a6, a1, 52
42002fb7:	c179      	s32i.n	a7, a1, 48
42002fb9:	b149      	s32i.n	a4, a1, 44
42002fbb:	ff8581        	l32r	a8, 42002dd0 <esp_backtrace::arch::backtrace+0x3a8>
42002fbe:	a189      	s32i.n	a8, a1, 40
42002fc0:	94a082        	movi	a8, 148
42002fc3:	818a      	add.n	a8, a1, a8
42002fc5:	00c8a2        	addi	a10, a8, 0
42002fc8:	28c1c2        	addi	a12, a1, 40
42002fcb:	02bd      	mov.n	a11, a2
42002fcd:	0005e0        	callx8	a5
42002fd0:	256132        	s32i	a3, a1, 148
42002fd3:	e169      	s32i.n	a6, a1, 56
42002fd5:	d169      	s32i.n	a6, a1, 52
42002fd7:	c179      	s32i.n	a7, a1, 48
42002fd9:	b149      	s32i.n	a4, a1, 44
42002fdb:	4188      	l32i.n	a8, a1, 16
42002fdd:	a189      	s32i.n	a8, a1, 40
42002fdf:	94a082        	movi	a8, 148
42002fe2:	818a      	add.n	a8, a1, a8
42002fe4:	00c8a2        	addi	a10, a8, 0
42002fe7:	28c1c2        	addi	a12, a1, 40
42002fea:	02bd      	mov.n	a11, a2
42002fec:	0005e0        	callx8	a5
42002fef:	28c1a2        	addi	a10, a1, 40
42002ff2:	ff7881        	l32r	a8, 42002dd4 <esp_backtrace::arch::backtrace+0x3ac>
42002ff5:	0008e0        	callx8	a8
42002ff8:	1e6142        	s32i	a4, a1, 120
42002ffb:	a80c      	movi.n	a8, 10
42002ffd:	1f6182        	s32i	a8, a1, 124
42003000:	a188      	l32i.n	a8, a1, 40
42003002:	ff7531        	l32r	a3, 42002dd8 <esp_backtrace::arch::backtrace+0x3b0>
42003005:	ff7571        	l32r	a7, 42002ddc <esp_backtrace::arch::backtrace+0x3b4>
42003008:	050816        	beqz	a8, 4200305c <rust_begin_unwind+0x27c>
4200300b:	b188      	l32i.n	a8, a1, 44
4200300d:	216182        	s32i	a8, a1, 132
42003010:	aca082        	movi	a8, 172
42003013:	818a      	add.n	a8, a1, a8
42003015:	00c882        	addi	a8, a8, 0
42003018:	226182        	s32i	a8, a1, 136
4200301b:	246132        	s32i	a3, a1, 144
4200301e:	84a082        	movi	a8, 132
42003021:	818a      	add.n	a8, a1, a8
42003023:	00c882        	addi	a8, a8, 0
42003026:	236182        	s32i	a8, a1, 140
42003029:	296162        	s32i	a6, a1, 164
4200302c:	6188      	l32i.n	a8, a1, 24
4200302e:	286182        	s32i	a8, a1, 160
42003031:	8ca082        	movi	a8, 140
42003034:	818a      	add.n	a8, a1, a8
42003036:	00c882        	addi	a8, a8, 0
42003039:	276182        	s32i	a8, a1, 156
4200303c:	5188      	l32i.n	a8, a1, 20
4200303e:	266182        	s32i	a8, a1, 152
42003041:	256172        	s32i	a7, a1, 148
42003044:	88a082        	movi	a8, 136
42003047:	818a      	add.n	a8, a1, a8
42003049:	00c8a2        	addi	a10, a8, 0
4200304c:	ff58b1        	l32r	a11, 42002dac <esp_backtrace::arch::backtrace+0x384>
4200304f:	94a082        	movi	a8, 148
42003052:	818a      	add.n	a8, a1, a8
42003054:	00c8c2        	addi	a12, a8, 0
42003057:	7188      	l32i.n	a8, a1, 28
42003059:	0008e0        	callx8	a8
4200305c:	c188      	l32i.n	a8, a1, 48
4200305e:	050816        	beqz	a8, 420030b2 <rust_begin_unwind+0x2d2>
42003061:	d188      	l32i.n	a8, a1, 52
42003063:	216182        	s32i	a8, a1, 132
42003066:	aca082        	movi	a8, 172
42003069:	818a      	add.n	a8, a1, a8
4200306b:	00c882        	addi	a8, a8, 0
4200306e:	226182        	s32i	a8, a1, 136
42003071:	246132        	s32i	a3, a1, 144
42003074:	84a082        	movi	a8, 132
42003077:	818a      	add.n	a8, a1, a8
42003079:	00c882        	addi	a8, a8, 0
4200307c:	236182        	s32i	a8, a1, 140
4200307f:	296162        	s32i	a6, a1, 164
42003082:	6188      	l32i.n	a8, a1, 24
42003084:	286182        	s32i	a8, a1, 160
42003087:	8ca082        	movi	a8, 140
4200308a:	818a      	add.n	a8, a1, a8
4200308c:	00c882        	addi	a8, a8, 0
4200308f:	276182        	s32i	a8, a1, 156
42003092:	5188      	l32i.n	a8, a1, 20
42003094:	266182        	s32i	a8, a1, 152
42003097:	256172        	s32i	a7, a1, 148
4200309a:	88a082        	movi	a8, 136
4200309d:	818a      	add.n	a8, a1, a8
4200309f:	00c8a2        	addi	a10, a8, 0
420030a2:	ff42b1        	l32r	a11, 42002dac <esp_backtrace::arch::backtrace+0x384>
420030a5:	94a082        	movi	a8, 148
420030a8:	818a      	add.n	a8, a1, a8
420030aa:	00c8c2        	addi	a12, a8, 0
420030ad:	7188      	l32i.n	a8, a1, 28
420030af:	0008e0        	callx8	a8
420030b2:	2188      	l32i.n	a8, a1, 8
420030b4:	1e6182        	s32i	a8, a1, 120
420030b7:	e188      	l32i.n	a8, a1, 56
420030b9:	050816        	beqz	a8, 4200310d <rust_begin_unwind+0x32d>
420030bc:	f188      	l32i.n	a8, a1, 60
420030be:	216182        	s32i	a8, a1, 132
420030c1:	aca082        	movi	a8, 172
420030c4:	818a      	add.n	a8, a1, a8
420030c6:	00c882        	addi	a8, a8, 0
420030c9:	226182        	s32i	a8, a1, 136
420030cc:	246132        	s32i	a3, a1, 144
420030cf:	84a082        	movi	a8, 132
420030d2:	818a      	add.n	a8, a1, a8
420030d4:	00c882        	addi	a8, a8, 0
420030d7:	236182        	s32i	a8, a1, 140
420030da:	296162        	s32i	a6, a1, 164
420030dd:	6188      	l32i.n	a8, a1, 24
420030df:	286182        	s32i	a8, a1, 160
420030e2:	8ca082        	movi	a8, 140
420030e5:	818a      	add.n	a8, a1, a8
420030e7:	00c882        	addi	a8, a8, 0
420030ea:	276182        	s32i	a8, a1, 156
420030ed:	5188      	l32i.n	a8, a1, 20
420030ef:	266182        	s32i	a8, a1, 152
420030f2:	256172        	s32i	a7, a1, 148
420030f5:	88a082        	movi	a8, 136
420030f8:	818a      	add.n	a8, a1, a8
420030fa:	00c8a2        	addi	a10, a8, 0
420030fd:	ff2bb1        	l32r	a11, 42002dac <esp_backtrace::arch::backtrace+0x384>
42003100:	94a082        	movi	a8, 148
42003103:	818a      	add.n	a8, a1, a8
42003105:	00c8c2        	addi	a12, a8, 0
42003108:	7188      	l32i.n	a8, a1, 28
4200310a:	0008e0        	callx8	a8
4200310d:	102182        	l32i	a8, a1, 64
42003110:	051816        	beqz	a8, 42003165 <rust_begin_unwind+0x385>
42003113:	112182        	l32i	a8, a1, 68
42003116:	216182        	s32i	a8, a1, 132
42003119:	aca082        	movi	a8, 172
4200311c:	818a      	add.n	a8, a1, a8
4200311e:	00c882        	addi	a8, a8, 0
42003121:	226182        	s32i	a8, a1, 136
42003124:	246132        	s32i	a3, a1, 144
42003127:	84a082        	movi	a8, 132
4200312a:	818a      	add.n	a8, a1, a8
4200312c:	00c882        	addi	a8, a8, 0
4200312f:	236182        	s32i	a8, a1, 140
42003132:	296162        	s32i	a6, a1, 164
42003135:	6188      	l32i.n	a8, a1, 24
42003137:	286182        	s32i	a8, a1, 160
4200313a:	8ca082        	movi	a8, 140
4200313d:	818a      	add.n	a8, a1, a8
4200313f:	00c882        	addi	a8, a8, 0
42003142:	276182        	s32i	a8, a1, 156
42003145:	5188      	l32i.n	a8, a1, 20
42003147:	266182        	s32i	a8, a1, 152
4200314a:	256172        	s32i	a7, a1, 148
4200314d:	88a082        	movi	a8, 136
42003150:	818a      	add.n	a8, a1, a8
42003152:	00c8a2        	addi	a10, a8, 0
42003155:	ff15b1        	l32r	a11, 42002dac <esp_backtrace::arch::backtrace+0x384>
42003158:	94a082        	movi	a8, 148
4200315b:	818a      	add.n	a8, a1, a8
4200315d:	00c8c2        	addi	a12, a8, 0
42003160:	7188      	l32i.n	a8, a1, 28
42003162:	0008e0        	callx8	a8
42003165:	122182        	l32i	a8, a1, 72
42003168:	051816        	beqz	a8, 420031bd <rust_begin_unwind+0x3dd>
4200316b:	132182        	l32i	a8, a1, 76
4200316e:	216182        	s32i	a8, a1, 132
42003171:	aca082        	movi	a8, 172
42003174:	818a      	add.n	a8, a1, a8
42003176:	00c882        	addi	a8, a8, 0
42003179:	226182        	s32i	a8, a1, 136
4200317c:	246132        	s32i	a3, a1, 144
4200317f:	84a082        	movi	a8, 132
42003182:	818a      	add.n	a8, a1, a8
42003184:	00c882        	addi	a8, a8, 0
42003187:	236182        	s32i	a8, a1, 140
4200318a:	296162        	s32i	a6, a1, 164
4200318d:	6188      	l32i.n	a8, a1, 24
4200318f:	286182        	s32i	a8, a1, 160
42003192:	8ca082        	movi	a8, 140
42003195:	818a      	add.n	a8, a1, a8
42003197:	00c882        	addi	a8, a8, 0
4200319a:	276182        	s32i	a8, a1, 156
4200319d:	5188      	l32i.n	a8, a1, 20
4200319f:	266182        	s32i	a8, a1, 152
420031a2:	256172        	s32i	a7, a1, 148
420031a5:	88a082        	movi	a8, 136
420031a8:	818a      	add.n	a8, a1, a8
420031aa:	00c8a2        	addi	a10, a8, 0
420031ad:	feffb1        	l32r	a11, 42002dac <esp_backtrace::arch::backtrace+0x384>
420031b0:	94a082        	movi	a8, 148
420031b3:	818a      	add.n	a8, a1, a8
420031b5:	00c8c2        	addi	a12, a8, 0
420031b8:	7188      	l32i.n	a8, a1, 28
420031ba:	0008e0        	callx8	a8
420031bd:	142182        	l32i	a8, a1, 80
420031c0:	051816        	beqz	a8, 42003215 <rust_begin_unwind+0x435>
420031c3:	152182        	l32i	a8, a1, 84
420031c6:	216182        	s32i	a8, a1, 132
420031c9:	aca082        	movi	a8, 172
420031cc:	818a      	add.n	a8, a1, a8
420031ce:	00c882        	addi	a8, a8, 0
420031d1:	226182        	s32i	a8, a1, 136
420031d4:	246132        	s32i	a3, a1, 144
420031d7:	84a082        	movi	a8, 132
420031da:	818a      	add.n	a8, a1, a8
420031dc:	00c882        	addi	a8, a8, 0
420031df:	236182        	s32i	a8, a1, 140
420031e2:	296162        	s32i	a6, a1, 164
420031e5:	6188      	l32i.n	a8, a1, 24
420031e7:	286182        	s32i	a8, a1, 160
420031ea:	8ca082        	movi	a8, 140
420031ed:	818a      	add.n	a8, a1, a8
420031ef:	00c882        	addi	a8, a8, 0
420031f2:	276182        	s32i	a8, a1, 156
420031f5:	5188      	l32i.n	a8, a1, 20
420031f7:	266182        	s32i	a8, a1, 152
420031fa:	256172        	s32i	a7, a1, 148
420031fd:	88a082        	movi	a8, 136
42003200:	818a      	add.n	a8, a1, a8
42003202:	00c8a2        	addi	a10, a8, 0
42003205:	fee9b1        	l32r	a11, 42002dac <esp_backtrace::arch::backtrace+0x384>
42003208:	94a082        	movi	a8, 148
4200320b:	818a      	add.n	a8, a1, a8
4200320d:	00c8c2        	addi	a12, a8, 0
42003210:	7188      	l32i.n	a8, a1, 28
42003212:	0008e0        	callx8	a8
42003215:	162182        	l32i	a8, a1, 88
42003218:	051816        	beqz	a8, 4200326d <rust_begin_unwind+0x48d>
4200321b:	172182        	l32i	a8, a1, 92
4200321e:	216182        	s32i	a8, a1, 132
42003221:	aca082        	movi	a8, 172
42003224:	818a      	add.n	a8, a1, a8
42003226:	00c882        	addi	a8, a8, 0
42003229:	226182        	s32i	a8, a1, 136
4200322c:	246132        	s32i	a3, a1, 144
4200322f:	84a082        	movi	a8, 132
42003232:	818a      	add.n	a8, a1, a8
42003234:	00c882        	addi	a8, a8, 0
42003237:	236182        	s32i	a8, a1, 140
4200323a:	296162        	s32i	a6, a1, 164
4200323d:	6188      	l32i.n	a8, a1, 24
4200323f:	286182        	s32i	a8, a1, 160
42003242:	8ca082        	movi	a8, 140
42003245:	818a      	add.n	a8, a1, a8
42003247:	00c882        	addi	a8, a8, 0
4200324a:	276182        	s32i	a8, a1, 156
4200324d:	5188      	l32i.n	a8, a1, 20
4200324f:	266182        	s32i	a8, a1, 152
42003252:	256172        	s32i	a7, a1, 148
42003255:	88a082        	movi	a8, 136
42003258:	818a      	add.n	a8, a1, a8
4200325a:	00c8a2        	addi	a10, a8, 0
4200325d:	fed3b1        	l32r	a11, 42002dac <esp_backtrace::arch::backtrace+0x384>
42003260:	94a082        	movi	a8, 148
42003263:	818a      	add.n	a8, a1, a8
42003265:	00c8c2        	addi	a12, a8, 0
42003268:	7188      	l32i.n	a8, a1, 28
4200326a:	0008e0        	callx8	a8
4200326d:	182182        	l32i	a8, a1, 96
42003270:	051816        	beqz	a8, 420032c5 <rust_begin_unwind+0x4e5>
42003273:	192182        	l32i	a8, a1, 100
42003276:	216182        	s32i	a8, a1, 132
42003279:	aca082        	movi	a8, 172
4200327c:	818a      	add.n	a8, a1, a8
4200327e:	00c882        	addi	a8, a8, 0
42003281:	226182        	s32i	a8, a1, 136
42003284:	246132        	s32i	a3, a1, 144
42003287:	84a082        	movi	a8, 132
4200328a:	818a      	add.n	a8, a1, a8
4200328c:	00c882        	addi	a8, a8, 0
4200328f:	236182        	s32i	a8, a1, 140
42003292:	296162        	s32i	a6, a1, 164
42003295:	6188      	l32i.n	a8, a1, 24
42003297:	286182        	s32i	a8, a1, 160
4200329a:	8ca082        	movi	a8, 140
4200329d:	818a      	add.n	a8, a1, a8
4200329f:	00c882        	addi	a8, a8, 0
420032a2:	276182        	s32i	a8, a1, 156
420032a5:	5188      	l32i.n	a8, a1, 20
420032a7:	266182        	s32i	a8, a1, 152
420032aa:	256172        	s32i	a7, a1, 148
420032ad:	88a082        	movi	a8, 136
420032b0:	818a      	add.n	a8, a1, a8
420032b2:	00c8a2        	addi	a10, a8, 0
420032b5:	febdb1        	l32r	a11, 42002dac <esp_backtrace::arch::backtrace+0x384>
420032b8:	94a082        	movi	a8, 148
420032bb:	818a      	add.n	a8, a1, a8
420032bd:	00c8c2        	addi	a12, a8, 0
420032c0:	7188      	l32i.n	a8, a1, 28
420032c2:	0008e0        	callx8	a8
420032c5:	1a2182        	l32i	a8, a1, 104
420032c8:	051816        	beqz	a8, 4200331d <rust_begin_unwind+0x53d>
420032cb:	1b2182        	l32i	a8, a1, 108
420032ce:	216182        	s32i	a8, a1, 132
420032d1:	aca082        	movi	a8, 172
420032d4:	818a      	add.n	a8, a1, a8
420032d6:	00c882        	addi	a8, a8, 0
420032d9:	226182        	s32i	a8, a1, 136
420032dc:	246132        	s32i	a3, a1, 144
420032df:	84a082        	movi	a8, 132
420032e2:	818a      	add.n	a8, a1, a8
420032e4:	00c882        	addi	a8, a8, 0
420032e7:	236182        	s32i	a8, a1, 140
420032ea:	296162        	s32i	a6, a1, 164
420032ed:	6188      	l32i.n	a8, a1, 24
420032ef:	286182        	s32i	a8, a1, 160
420032f2:	8ca082        	movi	a8, 140
420032f5:	818a      	add.n	a8, a1, a8
420032f7:	00c882        	addi	a8, a8, 0
420032fa:	276182        	s32i	a8, a1, 156
420032fd:	5188      	l32i.n	a8, a1, 20
420032ff:	266182        	s32i	a8, a1, 152
42003302:	256172        	s32i	a7, a1, 148
42003305:	88a082        	movi	a8, 136
42003308:	818a      	add.n	a8, a1, a8
4200330a:	00c8a2        	addi	a10, a8, 0
4200330d:	fea7b1        	l32r	a11, 42002dac <esp_backtrace::arch::backtrace+0x384>
42003310:	94a082        	movi	a8, 148
42003313:	818a      	add.n	a8, a1, a8
42003315:	00c8c2        	addi	a12, a8, 0
42003318:	7188      	l32i.n	a8, a1, 28
4200331a:	0008e0        	callx8	a8
4200331d:	1c2182        	l32i	a8, a1, 112
42003320:	051816        	beqz	a8, 42003375 <rust_begin_unwind+0x595>
42003323:	1d2182        	l32i	a8, a1, 116
42003326:	216182        	s32i	a8, a1, 132
42003329:	aca082        	movi	a8, 172
4200332c:	818a      	add.n	a8, a1, a8
4200332e:	00c882        	addi	a8, a8, 0
42003331:	226182        	s32i	a8, a1, 136
42003334:	246132        	s32i	a3, a1, 144
42003337:	84a082        	movi	a8, 132
4200333a:	818a      	add.n	a8, a1, a8
4200333c:	00c882        	addi	a8, a8, 0
4200333f:	236182        	s32i	a8, a1, 140
42003342:	296162        	s32i	a6, a1, 164
42003345:	6188      	l32i.n	a8, a1, 24
42003347:	286182        	s32i	a8, a1, 160
4200334a:	8ca082        	movi	a8, 140
4200334d:	818a      	add.n	a8, a1, a8
4200334f:	00c882        	addi	a8, a8, 0
42003352:	276182        	s32i	a8, a1, 156
42003355:	5188      	l32i.n	a8, a1, 20
42003357:	266182        	s32i	a8, a1, 152
4200335a:	256172        	s32i	a7, a1, 148
4200335d:	88a082        	movi	a8, 136
42003360:	818a      	add.n	a8, a1, a8
42003362:	00c8a2        	addi	a10, a8, 0
42003365:	fe91b1        	l32r	a11, 42002dac <esp_backtrace::arch::backtrace+0x384>
42003368:	94a082        	movi	a8, 148
4200336b:	818a      	add.n	a8, a1, a8
4200336d:	00c8c2        	addi	a12, a8, 0
42003370:	7188      	l32i.n	a8, a1, 28
42003372:	0008e0        	callx8	a8
42003375:	ffff06        	j	42003375 <rust_begin_unwind+0x595>
42003378:	000000        	ill
4200337b:	17c801        	l32r	a0, 41fc929c <__user_exception+0x1c50074>
4200337e:	243c01        	l32r	a0, 41fcc470 <__user_exception+0x1c53248>
42003381:	3c0117        	bnone	a1, a1, 420033c1 <<&T as core::fmt::Display>::fmt+0x9>
42003384:	60          	.byte 0x60
42003385:	420056        	bnez	a0, 420037a9 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x79>

42003388 <<esp_backtrace::arch::ExceptionCause as core::fmt::Debug>::fmt>:
42003388:	004136        	entry	a1, 32
4200338b:	0288      	l32i.n	a8, a2, 0
4200338d:	018880        	slli	a8, a8, 24
42003390:	fffa91        	l32r	a9, 42003378 <rust_begin_unwind+0x598>
42003393:	889a      	add.n	a8, a8, a9
42003395:	318880        	srai	a8, a8, 24
42003398:	fff991        	l32r	a9, 4200337c <rust_begin_unwind+0x59c>
4200339b:	a09890        	addx4	a9, a8, a9
4200339e:	09b8      	l32i.n	a11, a9, 0
420033a0:	fff891        	l32r	a9, 42003380 <rust_begin_unwind+0x5a0>
420033a3:	a08890        	addx4	a8, a8, a9
420033a6:	08c8      	l32i.n	a12, a8, 0
420033a8:	fff781        	l32r	a8, 42003384 <rust_begin_unwind+0x5a4>
420033ab:	03ad      	mov.n	a10, a3
420033ad:	0008e0        	callx8	a8
420033b0:	0a2d      	mov.n	a2, a10
420033b2:	f01d      	retw.n
420033b4:	005ca4        	ee.ld.qacc_l.l.128.ip	a10, 0x5c0
420033b7:	42          	.byte 0x42

420033b8 <<&T as core::fmt::Display>::fmt>:
420033b8:	004136        	entry	a1, 32
420033bb:	12b8      	l32i.n	a11, a2, 4
420033bd:	02a8      	l32i.n	a10, a2, 0
420033bf:	fffd81        	l32r	a8, 420033b4 <<esp_backtrace::arch::ExceptionCause as core::fmt::Debug>::fmt+0x2c>
420033c2:	03cd      	mov.n	a12, a3
420033c4:	0008e0        	callx8	a8
420033c7:	0a2d      	mov.n	a2, a10
420033c9:	f01d      	retw.n
420033cb:	00          	.byte 00
420033cc:	5088      	l32i.n	a8, a0, 20
420033ce:	        	ee.ldf.64.xp	f4, f3, a0, a2

420033d0 <<&T as core::fmt::Display>::fmt>:
420033d0:	004136        	entry	a1, 32
420033d3:	02a8      	l32i.n	a10, a2, 0
420033d5:	fffd81        	l32r	a8, 420033cc <<&T as core::fmt::Display>::fmt+0x14>
420033d8:	03bd      	mov.n	a11, a3
420033da:	0008e0        	callx8	a8
420033dd:	0a2d      	mov.n	a2, a10
420033df:	f01d      	retw.n
420033e1:	000000        	ill

420033e4 <core::ptr::drop_in_place<log::SetLoggerError>>:
420033e4:	004136        	entry	a1, 32
420033e7:	f01d      	retw.n
420033e9:	000000        	ill

420033ec <core::ptr::drop_in_place<&mut esp_println::Printer>>:
420033ec:	004136        	entry	a1, 32
420033ef:	f01d      	retw.n
420033f1:	000000        	ill
420033f4:	00          	.byte 00
420033f5:	0008      	l32i.n	a0, a0, 0
420033f7:	000000        	ill
420033fa:	2c0001        	l32r	a0, 41fce3fc <__user_exception+0x1c551d4>
420033fd:	4842000e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 0xfffffe00, q0, q0, q4, q2
42003401:	400006        	j	42013405 <memset+0xc42d>
42003404:	000ee0        	callx8	a14
42003407:	42          	.byte 0x42

42003408 <<&mut W as core::fmt::Write>::write_char>:
42003408:	006136        	entry	a1, 48
4200340b:	080c      	movi.n	a8, 0
4200340d:	0189      	s32i.n	a8, a1, 0
4200340f:	07e3f6        	bgeui	a3, 128, 4200341a <<&mut W as core::fmt::Write>::write_char+0x12>
42003412:	004132        	s8i	a3, a1, 0
42003415:	180c      	movi.n	a8, 1
42003417:	0024c6        	j	420034ae <<&mut W as core::fmt::Write>::write_char+0xa6>
4200341a:	fff681        	l32r	a8, 420033f4 <core::ptr::drop_in_place<&mut esp_println::Printer>+0x8>
4200341d:	1eb387        	bgeu	a3, a8, 4200343f <<&mut W as core::fmt::Write>::write_char+0x37>
42003420:	f83c      	movi.n	a8, 63
42003422:	108380        	and	a8, a3, a8
42003425:	80a092        	movi	a9, 128
42003428:	208890        	or	a8, a8, a9
4200342b:	014182        	s8i	a8, a1, 1
4200342e:	418630        	srli	a8, a3, 6
42003431:	c0a092        	movi	a9, 192
42003434:	208890        	or	a8, a8, a9
42003437:	004182        	s8i	a8, a1, 0
4200343a:	280c      	movi.n	a8, 2
4200343c:	001b86        	j	420034ae <<&mut W as core::fmt::Write>::write_char+0xa6>
4200343f:	ffee81        	l32r	a8, 420033f8 <core::ptr::drop_in_place<&mut esp_println::Printer>+0xc>
42003442:	2ab387        	bgeu	a3, a8, 42003470 <<&mut W as core::fmt::Write>::write_char+0x68>
42003445:	f83c      	movi.n	a8, 63
42003447:	109380        	and	a9, a3, a8
4200344a:	80a0a2        	movi	a10, 128
4200344d:	2099a0        	or	a9, a9, a10
42003450:	024192        	s8i	a9, a1, 2
42003453:	419c30        	srli	a9, a3, 12
42003456:	e0a0b2        	movi	a11, 224
42003459:	2099b0        	or	a9, a9, a11
4200345c:	004192        	s8i	a9, a1, 0
4200345f:	419630        	srli	a9, a3, 6
42003462:	108980        	and	a8, a9, a8
42003465:	2088a0        	or	a8, a8, a10
42003468:	014182        	s8i	a8, a1, 1
4200346b:	380c      	movi.n	a8, 3
4200346d:	000f46        	j	420034ae <<&mut W as core::fmt::Write>::write_char+0xa6>
42003470:	f83c      	movi.n	a8, 63
42003472:	109380        	and	a9, a3, a8
42003475:	80a0a2        	movi	a10, 128
42003478:	2099a0        	or	a9, a9, a10
4200347b:	034192        	s8i	a9, a1, 3
4200347e:	419630        	srli	a9, a3, 6
42003481:	109980        	and	a9, a9, a8
42003484:	2099a0        	or	a9, a9, a10
42003487:	024192        	s8i	a9, a1, 2
4200348a:	419c30        	srli	a9, a3, 12
4200348d:	108980        	and	a8, a9, a8
42003490:	2088a0        	or	a8, a8, a10
42003493:	014182        	s8i	a8, a1, 1
42003496:	281c      	movi.n	a8, 18
42003498:	400800        	ssr	a8
4200349b:	918030        	srl	a8, a3
4200349e:	790c      	movi.n	a9, 7
420034a0:	108890        	and	a8, a8, a9
420034a3:	f0a092        	movi	a9, 240
420034a6:	208890        	or	a8, a8, a9
420034a9:	004182        	s8i	a8, a1, 0
420034ac:	480c      	movi.n	a8, 4
420034ae:	00c162        	addi	a6, a1, 0
420034b1:	568a      	add.n	a5, a6, a8
420034b3:	ffd281        	l32r	a8, 420033fc <core::ptr::drop_in_place<&mut esp_println::Printer>+0x10>
420034b6:	0008e0        	callx8	a8
420034b9:	0a7d      	mov.n	a7, a10
420034bb:	ffd141        	l32r	a4, 42003400 <core::ptr::drop_in_place<&mut esp_println::Printer>+0x14>
420034be:	0006a2        	l8ui	a10, a6, 0
420034c1:	0004e0        	callx8	a4
420034c4:	661b      	addi.n	a6, a6, 1
420034c6:	f49657        	bne	a6, a5, 420034be <<&mut W as core::fmt::Write>::write_char+0xb6>
420034c9:	ffce81        	l32r	a8, 42003404 <core::ptr::drop_in_place<&mut esp_println::Printer>+0x18>
420034cc:	07ad      	mov.n	a10, a7
420034ce:	0008e0        	callx8	a8
420034d1:	020c      	movi.n	a2, 0
420034d3:	f01d      	retw.n
420034d5:	000000        	ill
420034d8:	011880        	slli	a1, a8, 24
420034db:	a83c      	movi.n	a8, 58
420034dd:	420050        	xorb	b0, b0, b5

420034e0 <<&mut W as core::fmt::Write>::write_fmt>:
420034e0:	008136        	entry	a1, 64
420034e3:	0288      	l32i.n	a8, a2, 0
420034e5:	5398      	l32i.n	a9, a3, 20
420034e7:	6199      	s32i.n	a9, a1, 24
420034e9:	4398      	l32i.n	a9, a3, 16
420034eb:	5199      	s32i.n	a9, a1, 20
420034ed:	3398      	l32i.n	a9, a3, 12
420034ef:	4199      	s32i.n	a9, a1, 16
420034f1:	2398      	l32i.n	a9, a3, 8
420034f3:	3199      	s32i.n	a9, a1, 12
420034f5:	1398      	l32i.n	a9, a3, 4
420034f7:	2199      	s32i.n	a9, a1, 8
420034f9:	0398      	l32i.n	a9, a3, 0
420034fb:	1199      	s32i.n	a9, a1, 4
420034fd:	0189      	s32i.n	a8, a1, 0
420034ff:	00c1a2        	addi	a10, a1, 0
42003502:	fff5b1        	l32r	a11, 420034d8 <<&mut W as core::fmt::Write>::write_char+0xd0>
42003505:	04c1c2        	addi	a12, a1, 4
42003508:	fff581        	l32r	a8, 420034dc <<&mut W as core::fmt::Write>::write_char+0xd4>
4200350b:	0008e0        	callx8	a8
4200350e:	0a2d      	mov.n	a2, a10
42003510:	f01d      	retw.n
42003512:	00          	.byte 00
42003513:	00          	.byte 00
42003514:	0e2c      	movi.n	a14, 32
42003516:	484200        	ssx	f4, a2, a0
42003519:	400006        	j	4201351d <memset+0xc545>
4200351c:	000ee0        	callx8	a14
4200351f:	42          	.byte 0x42

42003520 <<&mut W as core::fmt::Write>::write_str>:
42003520:	004136        	entry	a1, 32
42003523:	fffc81        	l32r	a8, 42003514 <<&mut W as core::fmt::Write>::write_fmt+0x34>
42003526:	0008e0        	callx8	a8
42003529:	0a7d      	mov.n	a7, a10
4200352b:	00f416        	beqz	a4, 4200353e <<&mut W as core::fmt::Write>::write_str+0x1e>
4200352e:	634a      	add.n	a6, a3, a4
42003530:	fffa51        	l32r	a5, 42003518 <<&mut W as core::fmt::Write>::write_fmt+0x38>
42003533:	0003a2        	l8ui	a10, a3, 0
42003536:	0005e0        	callx8	a5
42003539:	331b      	addi.n	a3, a3, 1
4200353b:	f49367        	bne	a3, a6, 42003533 <<&mut W as core::fmt::Write>::write_str+0x13>
4200353e:	fff781        	l32r	a8, 4200351c <<&mut W as core::fmt::Write>::write_fmt+0x3c>
42003541:	07ad      	mov.n	a10, a7
42003543:	0008e0        	callx8	a8
42003546:	020c      	movi.n	a2, 0
42003548:	f01d      	retw.n
4200354a:	00          	.byte 00
4200354b:	189800        	lsxp	f9, a8, a0
4200354e:	a43c01        	l32r	a0, 41fec640 <__user_exception+0x1c73418>
42003551:	0118      	l32i.n	a1, a1, 0
42003553:	283c      	movi.n	a8, 50
42003555:	003b      	addi.n	a0, a0, 3
42003557:	195c42        	s16i	a4, a12, 50
4200355a:	303c01        	l32r	a0, 41fcf64c <__user_exception+0x1c56424>
4200355d:	420037        	bnone	a0, a3, 420035a3 <esp_println::logger::init_logger_from_env+0x2f>
42003560:	20          	.byte 0x20
42003561:	c89a      	add.n	a12, a8, a9
42003563:	0118c03f 	ee.vmulas.s16.accx.ld.ip.qup	q3, a3, 0, q7, q0, q1, q0
42003567:	ec3c      	movi.n	a12, 62
42003569:	0118      	l32i.n	a1, a1, 0
4200356b:	643c      	movi.n	a4, 54
4200356d:	0119      	s32i.n	a1, a1, 0
4200356f:	043c      	movi.n	a4, 48
42003571:	420064        	ee.st.accx.ip	a6, 0xfffffc00

42003574 <esp_println::logger::init_logger_from_env>:
42003574:	006136        	entry	a1, 48
42003577:	fff5a1        	l32r	a10, 4200354c <<&mut W as core::fmt::Write>::write_str+0x2c>
4200357a:	fff5b1        	l32r	a11, 42003550 <<&mut W as core::fmt::Write>::write_str+0x30>
4200357d:	fff581        	l32r	a8, 42003554 <<&mut W as core::fmt::Write>::write_str+0x34>
42003580:	0008e0        	callx8	a8
42003583:	018a56        	bnez	a10, 4200359f <esp_println::logger::init_logger_from_env+0x2b>
42003586:	fff4a1        	l32r	a10, 42003558 <<&mut W as core::fmt::Write>::write_str+0x38>
42003589:	5b0c      	movi.n	a11, 5
4200358b:	fff481        	l32r	a8, 4200355c <<&mut W as core::fmt::Write>::write_str+0x3c>
4200358e:	0008e0        	callx8	a8
42003591:	680c      	movi.n	a8, 6
42003593:	019a87        	bne	a10, a8, 42003598 <esp_println::logger::init_logger_from_env+0x24>
42003596:	0a0c      	movi.n	a10, 0
42003598:	fff281        	l32r	a8, 42003560 <<&mut W as core::fmt::Write>::write_str+0x40>
4200359b:	08a9      	s32i.n	a10, a8, 0
4200359d:	f01d      	retw.n
4200359f:	fff1a1        	l32r	a10, 42003564 <<&mut W as core::fmt::Write>::write_str+0x44>
420035a2:	bb2c      	movi.n	a11, 43
420035a4:	00c1c2        	addi	a12, a1, 0
420035a7:	fff0d1        	l32r	a13, 42003568 <<&mut W as core::fmt::Write>::write_str+0x48>
420035aa:	fff0e1        	l32r	a14, 4200356c <<&mut W as core::fmt::Write>::write_str+0x4c>
420035ad:	fff081        	l32r	a8, 42003570 <<&mut W as core::fmt::Write>::write_str+0x50>
420035b0:	0008e0        	callx8	a8
420035b3:	0041f0        	break	1, 15
	...

420035b8 <<esp_println::logger::EspLogger as log::Log>::enabled>:
420035b8:	004136        	entry	a1, 32
420035bb:	120c      	movi.n	a2, 1
420035bd:	f01d      	retw.n
420035bf:	186c00        	lsxp	f6, a12, a0
420035c2:	883c01        	l32r	a0, 41fe56b4 <__user_exception+0x1c6c48c>
420035c5:	0119      	s32i.n	a1, a1, 0
420035c7:	833c      	movi.n	a3, 56
420035c9:	0119      	s32i.n	a1, a1, 0
420035cb:	7e3c      	movi.n	a14, 55
420035cd:	0119      	s32i.n	a1, a1, 0
420035cf:	793c      	movi.n	a9, 55
420035d1:	0119      	s32i.n	a1, a1, 0
420035d3:	743c      	movi.n	a4, 55
420035d5:	0119      	s32i.n	a1, a1, 0
420035d7:	c13c      	movi.n	a1, 60
420035d9:	010a      	add.n	a0, a1, a0
420035db:	b83c      	movi.n	a8, 59
420035dd:	420033        	lsi	f3, a0, 0x108
420035e0:	d0          	.byte 0xd0
420035e1:	420033        	lsi	f3, a0, 0x108
420035e4:	003714        	ee.ld.qacc_l.l.128.ip	a1, 0x370
420035e7:	199442        	l16si	a4, a4, 50
420035ea:	803c01        	l32r	a0, 41fe36dc <__user_exception+0x1c6a4b4>
420035ed:	0118      	l32i.n	a1, a1, 0
420035ef:	a83c      	movi.n	a8, 58
420035f1:	420050        	xorb	b0, b0, b5

420035f4 <<esp_println::logger::EspLogger as log::Log>::log>:
420035f4:	010136        	entry	a1, 128
420035f7:	8388      	l32i.n	a8, a3, 32
420035f9:	980b      	addi.n	a9, a8, -1
420035fb:	fff1a1        	l32r	a10, 420035c0 <<esp_println::logger::EspLogger as log::Log>::enabled+0x8>
420035fe:	a099a0        	addx4	a9, a9, a10
42003601:	0998      	l32i.n	a9, a9, 0
42003603:	0009a0        	jx	a9
42003606:	fff391        	l32r	a9, 420035d4 <<esp_println::logger::EspLogger as log::Log>::enabled+0x1c>
42003609:	000506        	j	42003621 <<esp_println::logger::EspLogger as log::Log>::log+0x2d>
4200360c:	fff191        	l32r	a9, 420035d0 <<esp_println::logger::EspLogger as log::Log>::enabled+0x18>
4200360f:	000386        	j	42003621 <<esp_println::logger::EspLogger as log::Log>::log+0x2d>
42003612:	ffee91        	l32r	a9, 420035cc <<esp_println::logger::EspLogger as log::Log>::enabled+0x14>
42003615:	000206        	j	42003621 <<esp_println::logger::EspLogger as log::Log>::log+0x2d>
42003618:	ffec91        	l32r	a9, 420035c8 <<esp_println::logger::EspLogger as log::Log>::enabled+0x10>
4200361b:	000086        	j	42003621 <<esp_println::logger::EspLogger as log::Log>::log+0x2d>
4200361e:	ffe991        	l32r	a9, 420035c4 <<esp_println::logger::EspLogger as log::Log>::enabled+0xc>
42003621:	0199      	s32i.n	a9, a1, 0
42003623:	590c      	movi.n	a9, 5
42003625:	1199      	s32i.n	a9, a1, 4
42003627:	4a0c      	movi.n	a10, 4
42003629:	31a9      	s32i.n	a10, a1, 12
4200362b:	ffebb1        	l32r	a11, 420035d8 <<esp_println::logger::EspLogger as log::Log>::enabled+0x20>
4200362e:	21b9      	s32i.n	a11, a1, 8
42003630:	54c1b2        	addi	a11, a1, 84
42003633:	41b9      	s32i.n	a11, a1, 16
42003635:	d189      	s32i.n	a8, a1, 52
42003637:	ffe981        	l32r	a8, 420035dc <<esp_println::logger::EspLogger as log::Log>::enabled+0x24>
4200363a:	c189      	s32i.n	a8, a1, 48
4200363c:	08c1b2        	addi	a11, a1, 8
4200363f:	b1b9      	s32i.n	a11, a1, 44
42003641:	ffe7b1        	l32r	a11, 420035e0 <<esp_println::logger::EspLogger as log::Log>::enabled+0x28>
42003644:	a1b9      	s32i.n	a11, a1, 40
42003646:	38c1b2        	addi	a11, a1, 56
42003649:	91b9      	s32i.n	a11, a1, 36
4200364b:	ffe6b1        	l32r	a11, 420035e4 <<esp_println::logger::EspLogger as log::Log>::enabled+0x2c>
4200364e:	81b9      	s32i.n	a11, a1, 32
42003650:	34c1b2        	addi	a11, a1, 52
42003653:	71b9      	s32i.n	a11, a1, 28
42003655:	6189      	s32i.n	a8, a1, 24
42003657:	00c182        	addi	a8, a1, 0
4200365a:	5189      	s32i.n	a8, a1, 20
4200365c:	2cc382        	addi	a8, a3, 44
4200365f:	e189      	s32i.n	a8, a1, 56
42003661:	080c      	movi.n	a8, 0
42003663:	136182        	s32i	a8, a1, 76
42003666:	1261a2        	s32i	a10, a1, 72
42003669:	14c182        	addi	a8, a1, 20
4200366c:	116182        	s32i	a8, a1, 68
4200366f:	106192        	s32i	a9, a1, 64
42003672:	ffdd81        	l32r	a8, 420035e8 <<esp_println::logger::EspLogger as log::Log>::enabled+0x30>
42003675:	f189      	s32i.n	a8, a1, 60
42003677:	10c1a2        	addi	a10, a1, 16
4200367a:	ffdcb1        	l32r	a11, 420035ec <<esp_println::logger::EspLogger as log::Log>::enabled+0x34>
4200367d:	3cc1c2        	addi	a12, a1, 60
42003680:	ffdc81        	l32r	a8, 420035f0 <<esp_println::logger::EspLogger as log::Log>::enabled+0x38>
42003683:	0008e0        	callx8	a8
42003686:	f01d      	retw.n

42003688 <<esp_println::logger::EspLogger as log::Log>::flush>:
42003688:	004136        	entry	a1, 32
4200368b:	f01d      	retw.n
4200368d:	000000        	ill
42003690:	0e2c      	movi.n	a14, 32
42003692:	484200        	ssx	f4, a2, a0
42003695:	400006        	j	42013699 <memset+0xc6c1>
42003698:	000ee0        	callx8	a14
4200369b:	42          	.byte 0x42

4200369c <<esp_println::Printer as core::fmt::Write>::write_str>:
4200369c:	004136        	entry	a1, 32
4200369f:	fffc81        	l32r	a8, 42003690 <<esp_println::logger::EspLogger as log::Log>::flush+0x8>
420036a2:	0008e0        	callx8	a8
420036a5:	0a7d      	mov.n	a7, a10
420036a7:	00f416        	beqz	a4, 420036ba <<esp_println::Printer as core::fmt::Write>::write_str+0x1e>
420036aa:	634a      	add.n	a6, a3, a4
420036ac:	fffa51        	l32r	a5, 42003694 <<esp_println::logger::EspLogger as log::Log>::flush+0xc>
420036af:	0003a2        	l8ui	a10, a3, 0
420036b2:	0005e0        	callx8	a5
420036b5:	331b      	addi.n	a3, a3, 1
420036b7:	f49367        	bne	a3, a6, 420036af <<esp_println::Printer as core::fmt::Write>::write_str+0x13>
420036ba:	fff781        	l32r	a8, 42003698 <<esp_println::logger::EspLogger as log::Log>::flush+0x10>
420036bd:	07ad      	mov.n	a10, a7
420036bf:	0008e0        	callx8	a8
420036c2:	020c      	movi.n	a2, 0
420036c4:	f01d      	retw.n
420036c6:	00          	.byte 00
420036c7:	00          	.byte 00
420036c8:	19bc      	beqz.n	a9, 420036fd <core::ptr::drop_in_place<&u32>+0x1>
420036ca:	303c01        	l32r	a0, 41fcf7bc <__user_exception+0x1c56594>
420036cd:	420054        	ee.st.accx.ip	a5, 0xfffffc00

420036d0 <<&T as core::fmt::Debug>::fmt>:
420036d0:	004136        	entry	a1, 32
420036d3:	fffdb1        	l32r	a11, 420036c8 <<esp_println::Printer as core::fmt::Write>::write_str+0x2c>
420036d6:	2c0c      	movi.n	a12, 2
420036d8:	fffd81        	l32r	a8, 420036cc <<esp_println::Printer as core::fmt::Write>::write_str+0x30>
420036db:	03ad      	mov.n	a10, a3
420036dd:	0008e0        	callx8	a8
420036e0:	0a2d      	mov.n	a2, a10
420036e2:	f01d      	retw.n
420036e4:	005ca4        	ee.ld.qacc_l.l.128.ip	a10, 0x5c0
420036e7:	42          	.byte 0x42

420036e8 <<&T as core::fmt::Display>::fmt>:
420036e8:	004136        	entry	a1, 32
420036eb:	12b8      	l32i.n	a11, a2, 4
420036ed:	02a8      	l32i.n	a10, a2, 0
420036ef:	fffd81        	l32r	a8, 420036e4 <<&T as core::fmt::Debug>::fmt+0x14>
420036f2:	03cd      	mov.n	a12, a3
420036f4:	0008e0        	callx8	a8
420036f7:	0a2d      	mov.n	a2, a10
420036f9:	f01d      	retw.n
	...

420036fc <core::ptr::drop_in_place<&u32>>:
420036fc:	004136        	entry	a1, 32
420036ff:	f01d      	retw.n
42003701:	000000        	ill

42003704 <core::ptr::drop_in_place<log::NopLogger>>:
42003704:	004136        	entry	a1, 32
42003707:	f01d      	retw.n
42003709:	000000        	ill
4200370c:	19fc      	bnez.n	a9, 42003741 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x11>
4200370e:	303c01        	l32r	a0, 41fcf800 <__user_exception+0x1c565d8>
42003711:	420054        	ee.st.accx.ip	a5, 0xfffffc00

42003714 <<log::Level as core::fmt::Display>::fmt>:
42003714:	004136        	entry	a1, 32
42003717:	0288      	l32i.n	a8, a2, 0
42003719:	fffc91        	l32r	a9, 4200370c <core::ptr::drop_in_place<log::NopLogger>+0x8>
4200371c:	b08890        	addx8	a8, a8, a9
4200371f:	08b8      	l32i.n	a11, a8, 0
42003721:	18c8      	l32i.n	a12, a8, 4
42003723:	fffb81        	l32r	a8, 42003710 <core::ptr::drop_in_place<log::NopLogger>+0xc>
42003726:	03ad      	mov.n	a10, a3
42003728:	0008e0        	callx8	a8
4200372b:	0a2d      	mov.n	a2, a10
4200372d:	f01d      	retw.n
	...

42003730 <<log::LevelFilter as core::str::traits::FromStr>::from_str>:
42003730:	004136        	entry	a1, 32
42003733:	028d      	mov.n	a8, a2
42003735:	620c      	movi.n	a2, 6
42003737:	1e5326        	beqi	a3, 5, 42003759 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x29>
4200373a:	314326        	beqi	a3, 4, 4200376f <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x3f>
4200373d:	023326        	beqi	a3, 3, 42003743 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x13>
42003740:	005d06        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003743:	0008b2        	l8ui	a11, a8, 0
42003746:	bfcba2        	addi	a10, a11, -65
42003749:	ffa092        	movi	a9, 255
4200374c:	10ca90        	and	a12, a10, a9
4200374f:	aa1c      	movi.n	a10, 26
42003751:	303ca7        	bltu	a12, a10, 42003785 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x55>
42003754:	0c0c      	movi.n	a12, 0
42003756:	000b46        	j	42003787 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x57>
42003759:	0008b2        	l8ui	a11, a8, 0
4200375c:	bfcba2        	addi	a10, a11, -65
4200375f:	ffa092        	movi	a9, 255
42003762:	10ca90        	and	a12, a10, a9
42003765:	aa1c      	movi.n	a10, 26
42003767:	3f3ca7        	bltu	a12, a10, 420037aa <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x7a>
4200376a:	0c0c      	movi.n	a12, 0
4200376c:	000f06        	j	420037ac <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x7c>
4200376f:	0008b2        	l8ui	a11, a8, 0
42003772:	bfcba2        	addi	a10, a11, -65
42003775:	ffa092        	movi	a9, 255
42003778:	10ca90        	and	a12, a10, a9
4200377b:	aa1c      	movi.n	a10, 26
4200377d:	4e3ca7        	bltu	a12, a10, 420037cf <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x9f>
42003780:	0c0c      	movi.n	a12, 0
42003782:	0012c6        	j	420037d1 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0xa1>
42003785:	1c0c      	movi.n	a12, 1
42003787:	11ccb0        	slli	a12, a12, 5
4200378a:	20bcb0        	or	a11, a12, a11
4200378d:	10bb90        	and	a11, a11, a9
42003790:	6fa0c2        	movi	a12, 111
42003793:	021bc7        	beq	a11, a12, 42003799 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x69>
42003796:	004786        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003799:	0108b2        	l8ui	a11, a8, 1
4200379c:	bfcbc2        	addi	a12, a11, -65
4200379f:	10cc90        	and	a12, a12, a9
420037a2:	653ca7        	bltu	a12, a10, 4200380b <<log::LevelFilter as core::str::traits::FromStr>::from_str+0xdb>
420037a5:	0c0c      	movi.n	a12, 0
420037a7:	001886        	j	4200380d <<log::LevelFilter as core::str::traits::FromStr>::from_str+0xdd>
420037aa:	1c0c      	movi.n	a12, 1
420037ac:	11ccb0        	slli	a12, a12, 5
420037af:	20bcb0        	or	a11, a12, a11
420037b2:	10cb90        	and	a12, a11, a9
420037b5:	65a0b2        	movi	a11, 101
420037b8:	021cb7        	beq	a12, a11, 420037be <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x8e>
420037bb:	006646        	j	42003958 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x228>
420037be:	0108c2        	l8ui	a12, a8, 1
420037c1:	bfccd2        	addi	a13, a12, -65
420037c4:	10dd90        	and	a13, a13, a9
420037c7:	673da7        	bltu	a13, a10, 42003832 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x102>
420037ca:	0d0c      	movi.n	a13, 0
420037cc:	001906        	j	42003834 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x104>
420037cf:	1c0c      	movi.n	a12, 1
420037d1:	11ccb0        	slli	a12, a12, 5
420037d4:	20bcb0        	or	a11, a12, a11
420037d7:	10bb90        	and	a11, a11, a9
420037da:	69a0c2        	movi	a12, 105
420037dd:	191bc7        	beq	a11, a12, 420037fa <<log::LevelFilter as core::str::traits::FromStr>::from_str+0xca>
420037e0:	77a0c2        	movi	a12, 119
420037e3:	021bc7        	beq	a11, a12, 420037e9 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0xb9>
420037e6:	003386        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
420037e9:	0108b2        	l8ui	a11, a8, 1
420037ec:	bfcbc2        	addi	a12, a11, -65
420037ef:	10cc90        	and	a12, a12, a9
420037f2:	6d3ca7        	bltu	a12, a10, 42003863 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x133>
420037f5:	0c0c      	movi.n	a12, 0
420037f7:	001a86        	j	42003865 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x135>
420037fa:	0108b2        	l8ui	a11, a8, 1
420037fd:	bfcbc2        	addi	a12, a11, -65
42003800:	10cc90        	and	a12, a12, a9
42003803:	7e3ca7        	bltu	a12, a10, 42003885 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x155>
42003806:	0c0c      	movi.n	a12, 0
42003808:	001ec6        	j	42003887 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x157>
4200380b:	1c0c      	movi.n	a12, 1
4200380d:	11ccb0        	slli	a12, a12, 5
42003810:	20bcb0        	or	a11, a12, a11
42003813:	10cb90        	and	a12, a11, a9
42003816:	66a0b2        	movi	a11, 102
42003819:	021cb7        	beq	a12, a11, 4200381f <<log::LevelFilter as core::str::traits::FromStr>::from_str+0xef>
4200381c:	002606        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
4200381f:	020882        	l8ui	a8, a8, 2
42003822:	bfc8c2        	addi	a12, a8, -65
42003825:	10cc90        	and	a12, a12, a9
42003828:	0d0c      	movi.n	a13, 0
4200382a:	793ca7        	bltu	a12, a10, 420038a7 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x177>
4200382d:	0dad      	mov.n	a10, a13
4200382f:	001d86        	j	420038a9 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x179>
42003832:	1d0c      	movi.n	a13, 1
42003834:	11ddb0        	slli	a13, a13, 5
42003837:	20cdc0        	or	a12, a13, a12
4200383a:	10dc90        	and	a13, a12, a9
4200383d:	72a0c2        	movi	a12, 114
42003840:	021dc7        	beq	a13, a12, 42003846 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x116>
42003843:	004446        	j	42003958 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x228>
42003846:	0208d2        	l8ui	a13, a8, 2
42003849:	bfcde2        	addi	a14, a13, -65
4200384c:	10ee90        	and	a14, a14, a9
4200384f:	673ea7        	bltu	a14, a10, 420038ba <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x18a>
42003852:	0e0c      	movi.n	a14, 0
42003854:	11eeb0        	slli	a14, a14, 5
42003857:	20ded0        	or	a13, a14, a13
4200385a:	10dd90        	and	a13, a13, a9
4200385d:	6a1dc7        	beq	a13, a12, 420038cb <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x19b>
42003860:	003d06        	j	42003958 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x228>
42003863:	1c0c      	movi.n	a12, 1
42003865:	11ccb0        	slli	a12, a12, 5
42003868:	20bcb0        	or	a11, a12, a11
4200386b:	10bb90        	and	a11, a11, a9
4200386e:	61a0c2        	movi	a12, 97
42003871:	439bc7        	bne	a11, a12, 420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003874:	0208b2        	l8ui	a11, a8, 2
42003877:	bfcbc2        	addi	a12, a11, -65
4200387a:	10cc90        	and	a12, a12, a9
4200387d:	5b3ca7        	bltu	a12, a10, 420038dc <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x1ac>
42003880:	0c0c      	movi.n	a12, 0
42003882:	001606        	j	420038de <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x1ae>
42003885:	1c0c      	movi.n	a12, 1
42003887:	11ccb0        	slli	a12, a12, 5
4200388a:	20bcb0        	or	a11, a12, a11
4200388d:	10bb90        	and	a11, a11, a9
42003890:	6ea0c2        	movi	a12, 110
42003893:	219bc7        	bne	a11, a12, 420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003896:	0208b2        	l8ui	a11, a8, 2
42003899:	bfcbc2        	addi	a12, a11, -65
4200389c:	10cc90        	and	a12, a12, a9
4200389f:	5e3ca7        	bltu	a12, a10, 42003901 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x1d1>
420038a2:	0c0c      	movi.n	a12, 0
420038a4:	0016c6        	j	42003903 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x1d3>
420038a7:	1a0c      	movi.n	a10, 1
420038a9:	11aab0        	slli	a10, a10, 5
420038ac:	208a80        	or	a8, a10, a8
420038af:	108890        	and	a8, a8, a9
420038b2:	0298b7        	bne	a8, a11, 420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
420038b5:	008c46        	j	42003aea <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x3ba>
420038b8:	f01d      	retw.n
420038ba:	1e0c      	movi.n	a14, 1
420038bc:	11eeb0        	slli	a14, a14, 5
420038bf:	20ded0        	or	a13, a14, a13
420038c2:	10dd90        	and	a13, a13, a9
420038c5:	021dc7        	beq	a13, a12, 420038cb <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x19b>
420038c8:	002306        	j	42003958 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x228>
420038cb:	0308d2        	l8ui	a13, a8, 3
420038ce:	bfcde2        	addi	a14, a13, -65
420038d1:	10ee90        	and	a14, a14, a9
420038d4:	4e3ea7        	bltu	a14, a10, 42003926 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x1f6>
420038d7:	0e0c      	movi.n	a14, 0
420038d9:	0012c6        	j	42003928 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x1f8>
420038dc:	1c0c      	movi.n	a12, 1
420038de:	11ccb0        	slli	a12, a12, 5
420038e1:	20bcb0        	or	a11, a12, a11
420038e4:	10bb90        	and	a11, a11, a9
420038e7:	72a0c2        	movi	a12, 114
420038ea:	ca9bc7        	bne	a11, a12, 420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
420038ed:	030882        	l8ui	a8, a8, 3
420038f0:	bfc8b2        	addi	a11, a8, -65
420038f3:	10bb90        	and	a11, a11, a9
420038f6:	02bba7        	bgeu	a11, a10, 420038fc <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x1cc>
420038f9:	005146        	j	42003a42 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x312>
420038fc:	0a0c      	movi.n	a10, 0
420038fe:	005086        	j	42003a44 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x314>
42003901:	1c0c      	movi.n	a12, 1
42003903:	11ccb0        	slli	a12, a12, 5
42003906:	20bcb0        	or	a11, a12, a11
42003909:	10bb90        	and	a11, a11, a9
4200390c:	66a0c2        	movi	a12, 102
4200390f:	a59bc7        	bne	a11, a12, 420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003912:	030882        	l8ui	a8, a8, 3
42003915:	bfc8b2        	addi	a11, a8, -65
42003918:	10bb90        	and	a11, a11, a9
4200391b:	02bba7        	bgeu	a11, a10, 42003921 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x1f1>
4200391e:	004e46        	j	42003a5b <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x32b>
42003921:	0a0c      	movi.n	a10, 0
42003923:	004d86        	j	42003a5d <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x32d>
42003926:	1e0c      	movi.n	a14, 1
42003928:	11eeb0        	slli	a14, a14, 5
4200392b:	20ded0        	or	a13, a14, a13
4200392e:	10dd90        	and	a13, a13, a9
42003931:	6fa0e2        	movi	a14, 111
42003934:	209de7        	bne	a13, a14, 42003958 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x228>
42003937:	0408e2        	l8ui	a14, a8, 4
4200393a:	bfced2        	addi	a13, a14, -65
4200393d:	107d90        	and	a7, a13, a9
42003940:	1d0c      	movi.n	a13, 1
42003942:	0dfd      	mov.n	a15, a13
42003944:	0137a7        	bltu	a7, a10, 42003949 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x219>
42003947:	0f0c      	movi.n	a15, 0
42003949:	11ffb0        	slli	a15, a15, 5
4200394c:	20efe0        	or	a14, a15, a14
4200394f:	10ee90        	and	a14, a14, a9
42003952:	029ec7        	bne	a14, a12, 42003958 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x228>
42003955:	006446        	j	42003aea <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x3ba>
42003958:	0008c2        	l8ui	a12, a8, 0
4200395b:	bfccd2        	addi	a13, a12, -65
4200395e:	10dd90        	and	a13, a13, a9
42003961:	043da7        	bltu	a13, a10, 42003969 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x239>
42003964:	0d0c      	movi.n	a13, 0
42003966:	000046        	j	4200396b <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x23b>
42003969:	1d0c      	movi.n	a13, 1
4200396b:	11ddb0        	slli	a13, a13, 5
4200396e:	20cdc0        	or	a12, a13, a12
42003971:	10cc90        	and	a12, a12, a9
42003974:	74a0d2        	movi	a13, 116
42003977:	251cd7        	beq	a12, a13, 420039a0 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x270>
4200397a:	64a0d2        	movi	a13, 100
4200397d:	021cd7        	beq	a12, a13, 42003983 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x253>
42003980:	ffcd06        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003983:	0108c2        	l8ui	a12, a8, 1
42003986:	bfccd2        	addi	a13, a12, -65
42003989:	10dd90        	and	a13, a13, a9
4200398c:	213da7        	bltu	a13, a10, 420039b1 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x281>
4200398f:	0d0c      	movi.n	a13, 0
42003991:	11ddb0        	slli	a13, a13, 5
42003994:	20cdc0        	or	a12, a13, a12
42003997:	10cc90        	and	a12, a12, a9
4200399a:	241cb7        	beq	a12, a11, 420039c2 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x292>
4200399d:	ffc5c6        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
420039a0:	0108c2        	l8ui	a12, a8, 1
420039a3:	bfccd2        	addi	a13, a12, -65
420039a6:	10dd90        	and	a13, a13, a9
420039a9:	263da7        	bltu	a13, a10, 420039d3 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x2a3>
420039ac:	0d0c      	movi.n	a13, 0
420039ae:	0008c6        	j	420039d5 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x2a5>
420039b1:	1d0c      	movi.n	a13, 1
420039b3:	11ddb0        	slli	a13, a13, 5
420039b6:	20cdc0        	or	a12, a13, a12
420039b9:	10cc90        	and	a12, a12, a9
420039bc:	021cb7        	beq	a12, a11, 420039c2 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x292>
420039bf:	ffbd46        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
420039c2:	0208b2        	l8ui	a11, a8, 2
420039c5:	bfcbc2        	addi	a12, a11, -65
420039c8:	10cc90        	and	a12, a12, a9
420039cb:	293ca7        	bltu	a12, a10, 420039f8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x2c8>
420039ce:	0c0c      	movi.n	a12, 0
420039d0:	000986        	j	420039fa <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x2ca>
420039d3:	1d0c      	movi.n	a13, 1
420039d5:	11ddb0        	slli	a13, a13, 5
420039d8:	20cdc0        	or	a12, a13, a12
420039db:	10cc90        	and	a12, a12, a9
420039de:	72a0d2        	movi	a13, 114
420039e1:	021cd7        	beq	a12, a13, 420039e7 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x2b7>
420039e4:	ffb406        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
420039e7:	0208c2        	l8ui	a12, a8, 2
420039ea:	bfccd2        	addi	a13, a12, -65
420039ed:	10dd90        	and	a13, a13, a9
420039f0:	293da7        	bltu	a13, a10, 42003a1d <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x2ed>
420039f3:	0d0c      	movi.n	a13, 0
420039f5:	000986        	j	42003a1f <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x2ef>
420039f8:	1c0c      	movi.n	a12, 1
420039fa:	11ccb0        	slli	a12, a12, 5
420039fd:	20bcb0        	or	a11, a12, a11
42003a00:	10bb90        	and	a11, a11, a9
42003a03:	62a0c2        	movi	a12, 98
42003a06:	021bc7        	beq	a11, a12, 42003a0c <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x2dc>
42003a09:	ffaac6        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003a0c:	0308b2        	l8ui	a11, a8, 3
42003a0f:	bfcbc2        	addi	a12, a11, -65
42003a12:	10cc90        	and	a12, a12, a9
42003a15:	5b3ca7        	bltu	a12, a10, 42003a74 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x344>
42003a18:	0c0c      	movi.n	a12, 0
42003a1a:	001606        	j	42003a76 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x346>
42003a1d:	1d0c      	movi.n	a13, 1
42003a1f:	11ddb0        	slli	a13, a13, 5
42003a22:	20cdc0        	or	a12, a13, a12
42003a25:	10cc90        	and	a12, a12, a9
42003a28:	61a0d2        	movi	a13, 97
42003a2b:	021cd7        	beq	a12, a13, 42003a31 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x301>
42003a2e:	ffa186        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003a31:	0308c2        	l8ui	a12, a8, 3
42003a34:	bfccd2        	addi	a13, a12, -65
42003a37:	10dd90        	and	a13, a13, a9
42003a3a:	5b3da7        	bltu	a13, a10, 42003a99 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x369>
42003a3d:	0d0c      	movi.n	a13, 0
42003a3f:	001606        	j	42003a9b <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x36b>
42003a42:	1a0c      	movi.n	a10, 1
42003a44:	11aab0        	slli	a10, a10, 5
42003a47:	208a80        	or	a8, a10, a8
42003a4a:	108890        	and	a8, a8, a9
42003a4d:	6ea092        	movi	a9, 110
42003a50:	021897        	beq	a8, a9, 42003a56 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x326>
42003a53:	ff9846        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003a56:	2d0c      	movi.n	a13, 2
42003a58:	002386        	j	42003aea <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x3ba>
42003a5b:	1a0c      	movi.n	a10, 1
42003a5d:	11aab0        	slli	a10, a10, 5
42003a60:	208a80        	or	a8, a10, a8
42003a63:	108890        	and	a8, a8, a9
42003a66:	6fa092        	movi	a9, 111
42003a69:	021897        	beq	a8, a9, 42003a6f <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x33f>
42003a6c:	ff9206        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003a6f:	3d0c      	movi.n	a13, 3
42003a71:	001d46        	j	42003aea <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x3ba>
42003a74:	1c0c      	movi.n	a12, 1
42003a76:	11ccb0        	slli	a12, a12, 5
42003a79:	20bcb0        	or	a11, a12, a11
42003a7c:	10bb90        	and	a11, a11, a9
42003a7f:	75a0c2        	movi	a12, 117
42003a82:	021bc7        	beq	a11, a12, 42003a88 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x358>
42003a85:	ff8bc6        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003a88:	040882        	l8ui	a8, a8, 4
42003a8b:	bfc8b2        	addi	a11, a8, -65
42003a8e:	10bb90        	and	a11, a11, a9
42003a91:	293ba7        	bltu	a11, a10, 42003abe <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x38e>
42003a94:	0a0c      	movi.n	a10, 0
42003a96:	000986        	j	42003ac0 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x390>
42003a99:	1d0c      	movi.n	a13, 1
42003a9b:	11ddb0        	slli	a13, a13, 5
42003a9e:	20cdc0        	or	a12, a13, a12
42003aa1:	10cc90        	and	a12, a12, a9
42003aa4:	63a0d2        	movi	a13, 99
42003aa7:	021cd7        	beq	a12, a13, 42003aad <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x37d>
42003aaa:	ff8286        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003aad:	040882        	l8ui	a8, a8, 4
42003ab0:	bfc8c2        	addi	a12, a8, -65
42003ab3:	10cc90        	and	a12, a12, a9
42003ab6:	1d3ca7        	bltu	a12, a10, 42003ad7 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x3a7>
42003ab9:	0a0c      	movi.n	a10, 0
42003abb:	000686        	j	42003ad9 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x3a9>
42003abe:	1a0c      	movi.n	a10, 1
42003ac0:	11aab0        	slli	a10, a10, 5
42003ac3:	208a80        	or	a8, a10, a8
42003ac6:	108890        	and	a8, a8, a9
42003ac9:	67a092        	movi	a9, 103
42003acc:	021897        	beq	a8, a9, 42003ad2 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x3a2>
42003acf:	ff7946        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003ad2:	4d0c      	movi.n	a13, 4
42003ad4:	000486        	j	42003aea <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x3ba>
42003ad7:	1a0c      	movi.n	a10, 1
42003ad9:	11aab0        	slli	a10, a10, 5
42003adc:	208a80        	or	a8, a10, a8
42003adf:	108890        	and	a8, a8, a9
42003ae2:	0218b7        	beq	a8, a11, 42003ae8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x3b8>
42003ae5:	ff73c6        	j	420038b8 <<log::LevelFilter as core::str::traits::FromStr>::from_str+0x188>
42003ae8:	5d0c      	movi.n	a13, 5
42003aea:	0d2d      	mov.n	a2, a13
42003aec:	f01d      	retw.n
	...

42003af0 <<log::NopLogger as log::Log>::enabled>:
42003af0:	004136        	entry	a1, 32
42003af3:	020c      	movi.n	a2, 0
42003af5:	f01d      	retw.n
	...

42003af8 <<log::NopLogger as log::Log>::log>:
42003af8:	004136        	entry	a1, 32
42003afb:	f01d      	retw.n
42003afd:	000000        	ill

42003b00 <<log::NopLogger as log::Log>::flush>:
42003b00:	004136        	entry	a1, 32
42003b03:	f01d      	retw.n
42003b05:	000000        	ill
42003b08:	9a1c      	movi.n	a10, 25
42003b0a:	3fc8      	l32i.n	a12, a15, 12
42003b0c:	1afc      	bnez.n	a10, 42003b41 <log::set_logger_racy+0x19>
42003b0e:	e83c01        	l32r	a0, 41ffdc00 <__user_exception+0x1c849d8>
42003b11:	420036        	entry	a0, 0x2100
42003b14:	1ac8      	l32i.n	a12, a10, 4
42003b16:	043c01        	l32r	a0, 41fc4c08 <__user_exception+0x1c4b9e0>
42003b19:	011b      	addi.n	a0, a1, 1
42003b1b:	9c3c      	movi.n	a12, 57
42003b1d:	420061        	l32r	a6, 41fd4320 <__user_exception+0x1c5b0f8>
42003b20:	c89a04        	ee.vld.h.64.ip	q1, a0, 0xfffffcd0
42003b23:	c89a003f 	ee.vmulas.u8.accx.ld.xp.qup	q1, a3, a0, q4, q1, q1, q2
42003b27:	 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 96, q4, q7, q0, q1

42003b28 <log::set_logger_racy>:
42003b28:	008136        	entry	a1, 64
42003b2b:	fff781        	l32r	a8, 42003b08 <<log::NopLogger as log::Log>::flush+0x8>
42003b2e:	0898      	l32i.n	a9, a8, 0
42003b30:	0020c0        	memw
42003b33:	006916        	beqz	a9, 42003b3d <log::set_logger_racy+0x15>
42003b36:	1b1926        	beqi	a9, 1, 42003b55 <log::set_logger_racy+0x2d>
42003b39:	120c      	movi.n	a2, 1
42003b3b:	f01d      	retw.n
42003b3d:	fff891        	l32r	a9, 42003b20 <<log::NopLogger as log::Log>::flush+0x20>
42003b40:	0939      	s32i.n	a3, a9, 0
42003b42:	fff891        	l32r	a9, 42003b24 <<log::NopLogger as log::Log>::flush+0x24>
42003b45:	0929      	s32i.n	a2, a9, 0
42003b47:	0020c0        	memw
42003b4a:	290c      	movi.n	a9, 2
42003b4c:	0899      	s32i.n	a9, a8, 0
42003b4e:	0020c0        	memw
42003b51:	020c      	movi.n	a2, 0
42003b53:	f01d      	retw.n
42003b55:	080c      	movi.n	a8, 0
42003b57:	4189      	s32i.n	a8, a1, 16
42003b59:	180c      	movi.n	a8, 1
42003b5b:	1189      	s32i.n	a8, a1, 4
42003b5d:	ffeb91        	l32r	a9, 42003b0c <<log::NopLogger as log::Log>::flush+0xc>
42003b60:	0199      	s32i.n	a9, a1, 0
42003b62:	3189      	s32i.n	a8, a1, 12
42003b64:	18c182        	addi	a8, a1, 24
42003b67:	2189      	s32i.n	a8, a1, 8
42003b69:	ffe981        	l32r	a8, 42003b10 <<log::NopLogger as log::Log>::flush+0x10>
42003b6c:	7189      	s32i.n	a8, a1, 28
42003b6e:	ffe981        	l32r	a8, 42003b14 <<log::NopLogger as log::Log>::flush+0x14>
42003b71:	6189      	s32i.n	a8, a1, 24
42003b73:	00c1a2        	addi	a10, a1, 0
42003b76:	ffe8b1        	l32r	a11, 42003b18 <<log::NopLogger as log::Log>::flush+0x18>
42003b79:	ffe881        	l32r	a8, 42003b1c <<log::NopLogger as log::Log>::flush+0x1c>
42003b7c:	0008e0        	callx8	a8
42003b7f:	0041f0        	break	1, 15
42003b82:	140000        	extui	a0, a0, 0, 2
42003b85:	011b      	addi.n	a0, a1, 1
42003b87:	cc3c      	movi.n	a12, 60
42003b89:	011b      	addi.n	a0, a1, 1
42003b8b:	c83c      	movi.n	a8, 60
42003b8d:	420061        	l32r	a6, 41fd4390 <__user_exception+0x1c5b168>
42003b90:	9a1c      	movi.n	a10, 25
42003b92:	3fc8      	l32i.n	a12, a15, 12
42003b94:	c89a04        	ee.vld.h.64.ip	q1, a0, 0xfffffcd0
42003b97:	c89a003f 	ee.vmulas.u8.accx.ld.xp.qup	q1, a3, a0, q4, q1, q1, q2
42003b9b:	0119c03f 	ee.vmulas.s16.accx.ld.ip.qup	q3, a3, 0, q7, q0, q1, q1
42003b9f:	cc3c      	movi.n	a12, 60
42003ba1:	0119      	s32i.n	a1, a1, 0
42003ba3:	      	movi.n	a6, 51

42003ba4 <log::__private_api::log>:
42003ba4:	00e136        	entry	a1, 112
42003ba7:	2159      	s32i.n	a5, a1, 8
42003ba9:	1139      	s32i.n	a3, a1, 4
42003bab:	082656        	bnez	a6, 42003c31 <log::__private_api::log+0x8d>
42003bae:	04b8      	l32i.n	a11, a4, 0
42003bb0:	14c8      	l32i.n	a12, a4, 4
42003bb2:	24d8      	l32i.n	a13, a4, 8
42003bb4:	34e8      	l32i.n	a14, a4, 12
42003bb6:	44f8      	l32i.n	a15, a4, 16
42003bb8:	5478      	l32i.n	a7, a4, 20
42003bba:	fff581        	l32r	a8, 42003b90 <log::set_logger_racy+0x68>
42003bbd:	0898      	l32i.n	a9, a8, 0
42003bbf:	0020c0        	memw
42003bc2:	fff481        	l32r	a8, 42003b94 <log::set_logger_racy+0x6c>
42003bc5:	0888      	l32i.n	a8, a8, 0
42003bc7:	0189      	s32i.n	a8, a1, 0
42003bc9:	fff3a1        	l32r	a10, 42003b98 <log::set_logger_racy+0x70>
42003bcc:	0aa8      	l32i.n	a10, a10, 0
42003bce:	0268      	l32i.n	a6, a2, 0
42003bd0:	1248      	l32i.n	a4, a2, 4
42003bd2:	2288      	l32i.n	a8, a2, 8
42003bd4:	3258      	l32i.n	a5, a2, 12
42003bd6:	4238      	l32i.n	a3, a2, 16
42003bd8:	5228      	l32i.n	a2, a2, 20
42003bda:	a179      	s32i.n	a7, a1, 40
42003bdc:	91f9      	s32i.n	a15, a1, 36
42003bde:	71e9      	s32i.n	a14, a1, 28
42003be0:	61d9      	s32i.n	a13, a1, 24
42003be2:	136122        	s32i	a2, a1, 76
42003be5:	126132        	s32i	a3, a1, 72
42003be8:	116152        	s32i	a5, a1, 68
42003beb:	106182        	s32i	a8, a1, 64
42003bee:	f149      	s32i.n	a4, a1, 60
42003bf0:	e169      	s32i.n	a6, a1, 56
42003bf2:	d1c9      	s32i.n	a12, a1, 52
42003bf4:	c1b9      	s32i.n	a11, a1, 48
42003bf6:	1188      	l32i.n	a8, a1, 4
42003bf8:	b189      	s32i.n	a8, a1, 44
42003bfa:	080c      	movi.n	a8, 0
42003bfc:	8189      	s32i.n	a8, a1, 32
42003bfe:	5189      	s32i.n	a8, a1, 20
42003c00:	2188      	l32i.n	a8, a1, 8
42003c02:	4189      	s32i.n	a8, a1, 16
42003c04:	180c      	movi.n	a8, 1
42003c06:	3189      	s32i.n	a8, a1, 12
42003c08:	2b0c      	movi.n	a11, 2
42003c0a:	0e99b7        	bne	a9, a11, 42003c1c <log::__private_api::log+0x78>
42003c0d:	0188      	l32i.n	a8, a1, 0
42003c0f:	1199b7        	bne	a9, a11, 42003c24 <log::__private_api::log+0x80>
42003c12:	5888      	l32i.n	a8, a8, 20
42003c14:	0cc1b2        	addi	a11, a1, 12
42003c17:	0008e0        	callx8	a8
42003c1a:	f01d      	retw.n
42003c1c:	ffe0a1        	l32r	a10, 42003b9c <log::set_logger_racy+0x74>
42003c1f:	0188      	l32i.n	a8, a1, 0
42003c21:	ed19b7        	beq	a9, a11, 42003c12 <log::__private_api::log+0x6e>
42003c24:	ffdf81        	l32r	a8, 42003ba0 <log::set_logger_racy+0x78>
42003c27:	5888      	l32i.n	a8, a8, 20
42003c29:	0cc1b2        	addi	a11, a1, 12
42003c2c:	0008e0        	callx8	a8
42003c2f:	f01d      	retw.n
42003c31:	ffd4a1        	l32r	a10, 42003b84 <log::set_logger_racy+0x5c>
42003c34:	5b5c      	movi.n	a11, 85
42003c36:	ffd4c1        	l32r	a12, 42003b88 <log::set_logger_racy+0x60>
42003c39:	ffd481        	l32r	a8, 42003b8c <log::set_logger_racy+0x64>
42003c3c:	0008e0        	callx8	a8
42003c3f:	0041f0        	break	1, 15
42003c42:	00          	.byte 00
42003c43:	1bdc00        	un.s	b13, f12, f0
42003c46:	ec3c01        	l32r	a0, 41ffed38 <__user_exception+0x1c85b10>
42003c49:	011b      	addi.n	a0, a1, 1
42003c4b:	3c3c      	movi.n	a12, 51
42003c4d:	0059      	s32i.n	a5, a0, 0
42003c4f:	42          	.byte 0x42

42003c50 <<log::SetLoggerError as core::fmt::Debug>::fmt>:
42003c50:	006136        	entry	a1, 48
42003c53:	0129      	s32i.n	a2, a1, 0
42003c55:	fffbb1        	l32r	a11, 42003c44 <log::__private_api::log+0xa0>
42003c58:	ec0c      	movi.n	a12, 14
42003c5a:	00c1d2        	addi	a13, a1, 0
42003c5d:	fffae1        	l32r	a14, 42003c48 <log::__private_api::log+0xa4>
42003c60:	fffb81        	l32r	a8, 42003c4c <log::__private_api::log+0xa8>
42003c63:	03ad      	mov.n	a10, a3
42003c65:	0008e0        	callx8	a8
42003c68:	0a2d      	mov.n	a2, a10
42003c6a:	f01d      	retw.n
42003c6c:	1c98      	l32i.n	a9, a12, 4
42003c6e:	ec3c01        	l32r	a0, 41ffed60 <__user_exception+0x1c85b38>
42003c71:	420051        	l32r	a5, 41fd4474 <__user_exception+0x1c5b24c>
42003c74:	1c88      	l32i.n	a8, a12, 4
42003c76:	543c01        	l32r	a0, 41fd8d68 <__user_exception+0x1c5fb40>
42003c79:	420064        	ee.st.accx.ip	a6, 0xfffffc00

42003c7c <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt>:
42003c7c:	016136        	entry	a1, 176
42003c7f:	80a0a2        	movi	a10, 128
42003c82:	04c182        	addi	a8, a1, 4
42003c85:	88aa      	add.n	a8, a8, a10
42003c87:	0278      	l32i.n	a7, a2, 0
42003c89:	f90c      	movi.n	a9, 15
42003c8b:	7b5c      	movi.n	a11, 87
42003c8d:	0d3c      	movi.n	a13, 48
42003c8f:	ae0c      	movi.n	a14, 10
42003c91:	000386        	j	42003ca3 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x27>
42003c94:	a7aa      	add.n	a10, a7, a10
42003c96:	880b      	addi.n	a8, a8, -1
42003c98:	0048a2        	s8i	a10, a8, 0
42003c9b:	ac0b      	addi.n	a10, a12, -1
42003c9d:	4174f0        	srli	a7, a15, 4
42003ca0:	10bfb6        	bltui	a15, 16, 42003cb4 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x38>
42003ca3:	0acd      	mov.n	a12, a10
42003ca5:	07fd      	mov.n	a15, a7
42003ca7:	10af90        	and	a10, a15, a9
42003caa:	0d7d      	mov.n	a7, a13
42003cac:	e43ae7        	bltu	a10, a14, 42003c94 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x18>
42003caf:	0b7d      	mov.n	a7, a11
42003cb1:	fff7c6        	j	42003c94 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x18>
42003cb4:	81a082        	movi	a8, 129
42003cb7:	1aba87        	bgeu	a10, a8, 42003cd5 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x59>
42003cba:	04c192        	addi	a9, a1, 4
42003cbd:	e9aa      	add.n	a14, a9, a10
42003cbf:	c0f8c0        	sub	a15, a8, a12
42003cc2:	1b0c      	movi.n	a11, 1
42003cc4:	ffeac1        	l32r	a12, 42003c6c <<log::SetLoggerError as core::fmt::Debug>::fmt+0x1c>
42003cc7:	2d0c      	movi.n	a13, 2
42003cc9:	ffe981        	l32r	a8, 42003c70 <<log::SetLoggerError as core::fmt::Debug>::fmt+0x20>
42003ccc:	03ad      	mov.n	a10, a3
42003cce:	0008e0        	callx8	a8
42003cd1:	0a2d      	mov.n	a2, a10
42003cd3:	f01d      	retw.n
42003cd5:	80a0b2        	movi	a11, 128
42003cd8:	ffe7c1        	l32r	a12, 42003c74 <<log::SetLoggerError as core::fmt::Debug>::fmt+0x24>
42003cdb:	ffe781        	l32r	a8, 42003c78 <<log::SetLoggerError as core::fmt::Debug>::fmt+0x28>
42003cde:	0008e0        	callx8	a8
42003ce1:	0041f0        	break	1, 15
42003ce4:	1c98      	l32i.n	a9, a12, 4
42003ce6:	ec3c01        	l32r	a0, 41ffedd8 <__user_exception+0x1c85bb0>
42003ce9:	420051        	l32r	a5, 41fd44ec <__user_exception+0x1c5b2c4>
42003cec:	1c88      	l32i.n	a8, a12, 4
42003cee:	543c01        	l32r	a0, 41fd8de0 <__user_exception+0x1c5fbb8>
42003cf1:	420064        	ee.st.accx.ip	a6, 0xfffffc00

42003cf4 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt>:
42003cf4:	016136        	entry	a1, 176
42003cf7:	80a0a2        	movi	a10, 128
42003cfa:	04c182        	addi	a8, a1, 4
42003cfd:	88aa      	add.n	a8, a8, a10
42003cff:	0278      	l32i.n	a7, a2, 0
42003d01:	f90c      	movi.n	a9, 15
42003d03:	7b3c      	movi.n	a11, 55
42003d05:	0d3c      	movi.n	a13, 48
42003d07:	ae0c      	movi.n	a14, 10
42003d09:	000386        	j	42003d1b <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x27>
42003d0c:	a7aa      	add.n	a10, a7, a10
42003d0e:	880b      	addi.n	a8, a8, -1
42003d10:	0048a2        	s8i	a10, a8, 0
42003d13:	ac0b      	addi.n	a10, a12, -1
42003d15:	4174f0        	srli	a7, a15, 4
42003d18:	10bfb6        	bltui	a15, 16, 42003d2c <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x38>
42003d1b:	0acd      	mov.n	a12, a10
42003d1d:	07fd      	mov.n	a15, a7
42003d1f:	10af90        	and	a10, a15, a9
42003d22:	0d7d      	mov.n	a7, a13
42003d24:	e43ae7        	bltu	a10, a14, 42003d0c <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x18>
42003d27:	0b7d      	mov.n	a7, a11
42003d29:	fff7c6        	j	42003d0c <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x18>
42003d2c:	81a082        	movi	a8, 129
42003d2f:	1aba87        	bgeu	a10, a8, 42003d4d <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x59>
42003d32:	04c192        	addi	a9, a1, 4
42003d35:	e9aa      	add.n	a14, a9, a10
42003d37:	c0f8c0        	sub	a15, a8, a12
42003d3a:	1b0c      	movi.n	a11, 1
42003d3c:	ffeac1        	l32r	a12, 42003ce4 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x68>
42003d3f:	2d0c      	movi.n	a13, 2
42003d41:	ffe981        	l32r	a8, 42003ce8 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x6c>
42003d44:	03ad      	mov.n	a10, a3
42003d46:	0008e0        	callx8	a8
42003d49:	0a2d      	mov.n	a2, a10
42003d4b:	f01d      	retw.n
42003d4d:	80a0b2        	movi	a11, 128
42003d50:	ffe7c1        	l32r	a12, 42003cec <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x70>
42003d53:	ffe781        	l32r	a8, 42003cf0 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x74>
42003d56:	0008e0        	callx8	a8
42003d59:	0041f0        	break	1, 15
42003d5c:	011d67        	beq	a13, a6, 42003d61 <<core::cell::BorrowMutError as core::fmt::Debug>::fmt+0x1>
42003d5f:	      	movi.n	a6, 51

42003d60 <<core::cell::BorrowMutError as core::fmt::Debug>::fmt>:
42003d60:	004136        	entry	a1, 32
42003d63:	53a8      	l32i.n	a10, a3, 20
42003d65:	6388      	l32i.n	a8, a3, 24
42003d67:	3888      	l32i.n	a8, a8, 12
42003d69:	fffcb1        	l32r	a11, 42003d5c <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x68>
42003d6c:	ec0c      	movi.n	a12, 14
42003d6e:	0008e0        	callx8	a8
42003d71:	0a2d      	mov.n	a2, a10
42003d73:	f01d      	retw.n
42003d75:	000000        	ill
42003d78:	e0          	.byte 0xe0
42003d79:	003d      	mov.n	a3, a0
42003d7b:	42          	.byte 0x42

42003d7c <core::str::slice_error_fail>:
42003d7c:	004136        	entry	a1, 32
42003d7f:	fffe81        	l32r	a8, 42003d78 <<core::cell::BorrowMutError as core::fmt::Debug>::fmt+0x18>
42003d82:	02ad      	mov.n	a10, a2
42003d84:	03bd      	mov.n	a11, a3
42003d86:	04cd      	mov.n	a12, a4
42003d88:	05dd      	mov.n	a13, a5
42003d8a:	06ed      	mov.n	a14, a6
42003d8c:	0008e0        	callx8	a8
42003d8f:	0041f0        	break	1, 15
42003d92:	640000        	extui	a0, a0, 0, 7
42003d95:	011d      	mov.n	a1, a1
42003d97:	753c      	movi.n	a5, 55
42003d99:	011d      	mov.n	a1, a1
42003d9b:	7c3c      	movi.n	a12, 55
42003d9d:	003d      	mov.n	a3, a0
42003d9f:	000042        	l8ui	a4, a0, 0
42003da2:	001c      	movi.n	a0, 16
42003da4:	110000        	slli	a0, a0, 16
42003da7:	080000        	lsx	f0, a0, a0
42003daa:	000000        	ill
42003dad:	00          	.byte 00
42003dae:	e00001        	l32r	a0, 41ffbdb0 <__user_exception+0x1c82b88>
42003db1:	011d      	mov.n	a1, a1
42003db3:	243c      	movi.n	a4, 50
42003db5:	420060        	xorb	b0, b0, b6
42003db8:	0047e4        	ee.ld.qacc_l.l.128.ip	a14, 0x470
42003dbb:	5cc442        	addi	a4, a4, 92
42003dbe:	d44200        	extui	a4, a0, 2, 14
42003dc1:	0068      	l32i.n	a6, a0, 0
42003dc3:	619c42        	l16si	a4, a12, 194
42003dc6:	7a4200        	divn.s	f4, f2, f0
42003dc9:	011d      	mov.n	a1, a1
42003dcb:	c83c      	movi.n	a8, 60
42003dcd:	420061        	l32r	a6, 41fd45d0 <__user_exception+0x1c5b3a8>
42003dd0:	011ef4        	ee.ldqa.s16.128.ip	a15, 0x1e0
42003dd3:	e43c      	movi.n	a4, 62
42003dd5:	420064        	ee.st.accx.ip	a6, 0xfffffc00
42003dd8:	1e18      	l32i.n	a1, a14, 4
42003dda:	503c01        	l32r	a0, 41fd7ecc <__user_exception+0x1c5eca4>
42003ddd:	 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a1, 0x110, q0, q0, q3, q4

42003de0 <core::str::slice_error_fail_rt>:
42003de0:	012136        	entry	a1, 144
42003de3:	2159      	s32i.n	a5, a1, 8
42003de5:	1149      	s32i.n	a4, a1, 4
42003de7:	01a182        	movi	a8, 0x101
42003dea:	143387        	bltu	a3, a8, 42003e02 <core::str::slice_error_fail_rt+0x22>
42003ded:	01d282        	addmi	a8, a2, 0x100
42003df0:	000882        	l8ui	a8, a8, 0
42003df3:	239800        	sext	a9, a8, 7
42003df6:	bfaf82        	movi	a8, -65
42003df9:	18a897        	bge	a8, a9, 42003e15 <core::str::slice_error_fail_rt+0x35>
42003dfc:	00a182        	movi	a8, 0x100
42003dff:	000cc6        	j	42003e36 <core::str::slice_error_fail_rt+0x56>
42003e02:	080c      	movi.n	a8, 0
42003e04:	4139      	s32i.n	a3, a1, 16
42003e06:	3129      	s32i.n	a2, a1, 12
42003e08:	ffe391        	l32r	a9, 42003d94 <core::str::slice_error_fail+0x18>
42003e0b:	6189      	s32i.n	a8, a1, 24
42003e0d:	5199      	s32i.n	a9, a1, 20
42003e0f:	33b347        	bgeu	a3, a4, 42003e46 <core::str::slice_error_fail_rt+0x66>
42003e12:	001dc6        	j	42003e8d <core::str::slice_error_fail_rt+0xad>
42003e15:	ff0292        	l8ui	a9, a2, 255
42003e18:	239900        	sext	a9, a9, 7
42003e1b:	05a897        	bge	a8, a9, 42003e24 <core::str::slice_error_fail_rt+0x44>
42003e1e:	ffa082        	movi	a8, 255
42003e21:	000446        	j	42003e36 <core::str::slice_error_fail_rt+0x56>
42003e24:	fe0292        	l8ui	a9, a2, 254
42003e27:	239900        	sext	a9, a9, 7
42003e2a:	05a897        	bge	a8, a9, 42003e33 <core::str::slice_error_fail_rt+0x53>
42003e2d:	fea082        	movi	a8, 254
42003e30:	000086        	j	42003e36 <core::str::slice_error_fail_rt+0x56>
42003e33:	fda082        	movi	a8, 253
42003e36:	4189      	s32i.n	a8, a1, 16
42003e38:	3129      	s32i.n	a2, a1, 12
42003e3a:	580c      	movi.n	a8, 5
42003e3c:	ffd791        	l32r	a9, 42003d98 <core::str::slice_error_fail+0x1c>
42003e3f:	6189      	s32i.n	a8, a1, 24
42003e41:	5199      	s32i.n	a9, a1, 20
42003e43:	463347        	bltu	a3, a4, 42003e8d <core::str::slice_error_fail_rt+0xad>
42003e46:	433357        	bltu	a3, a5, 42003e8d <core::str::slice_error_fail_rt+0xad>
42003e49:	023547        	bltu	a5, a4, 42003e4f <core::str::slice_error_fail_rt+0x6f>
42003e4c:	0021c6        	j	42003ed7 <core::str::slice_error_fail_rt+0xf7>
42003e4f:	080c      	movi.n	a8, 0
42003e51:	f189      	s32i.n	a8, a1, 60
42003e53:	480c      	movi.n	a8, 4
42003e55:	c189      	s32i.n	a8, a1, 48
42003e57:	ffe091        	l32r	a9, 42003dd8 <core::str::slice_error_fail+0x5c>
42003e5a:	b199      	s32i.n	a9, a1, 44
42003e5c:	e189      	s32i.n	a8, a1, 56
42003e5e:	44c182        	addi	a8, a1, 68
42003e61:	d189      	s32i.n	a8, a1, 52
42003e63:	ffd481        	l32r	a8, 42003db4 <core::str::slice_error_fail+0x38>
42003e66:	186182        	s32i	a8, a1, 96
42003e69:	14c192        	addi	a9, a1, 20
42003e6c:	176192        	s32i	a9, a1, 92
42003e6f:	166182        	s32i	a8, a1, 88
42003e72:	0cc182        	addi	a8, a1, 12
42003e75:	156182        	s32i	a8, a1, 84
42003e78:	ffd281        	l32r	a8, 42003dc0 <core::str::slice_error_fail+0x44>
42003e7b:	146182        	s32i	a8, a1, 80
42003e7e:	08c192        	addi	a9, a1, 8
42003e81:	136192        	s32i	a9, a1, 76
42003e84:	126182        	s32i	a8, a1, 72
42003e87:	04c182        	addi	a8, a1, 4
42003e8a:	000e06        	j	42003ec6 <core::str::slice_error_fail_rt+0xe6>
42003e8d:	013347        	bltu	a3, a4, 42003e92 <core::str::slice_error_fail_rt+0xb2>
42003e90:	054d      	mov.n	a4, a5
42003e92:	9149      	s32i.n	a4, a1, 36
42003e94:	080c      	movi.n	a8, 0
42003e96:	f189      	s32i.n	a8, a1, 60
42003e98:	380c      	movi.n	a8, 3
42003e9a:	c189      	s32i.n	a8, a1, 48
42003e9c:	ffd091        	l32r	a9, 42003ddc <core::str::slice_error_fail+0x60>
42003e9f:	b199      	s32i.n	a9, a1, 44
42003ea1:	e189      	s32i.n	a8, a1, 56
42003ea3:	44c182        	addi	a8, a1, 68
42003ea6:	d189      	s32i.n	a8, a1, 52
42003ea8:	ffc381        	l32r	a8, 42003db4 <core::str::slice_error_fail+0x38>
42003eab:	166182        	s32i	a8, a1, 88
42003eae:	14c192        	addi	a9, a1, 20
42003eb1:	156192        	s32i	a9, a1, 84
42003eb4:	146182        	s32i	a8, a1, 80
42003eb7:	0cc182        	addi	a8, a1, 12
42003eba:	136182        	s32i	a8, a1, 76
42003ebd:	ffc081        	l32r	a8, 42003dc0 <core::str::slice_error_fail+0x44>
42003ec0:	126182        	s32i	a8, a1, 72
42003ec3:	24c182        	addi	a8, a1, 36
42003ec6:	116182        	s32i	a8, a1, 68
42003ec9:	2cc1a2        	addi	a10, a1, 44
42003ecc:	ffbe81        	l32r	a8, 42003dc4 <core::str::slice_error_fail+0x48>
42003ecf:	06bd      	mov.n	a11, a6
42003ed1:	0008e0        	callx8	a8
42003ed4:	0041f0        	break	1, 15
42003ed7:	021456        	bnez	a4, 42003efc <core::str::slice_error_fail_rt+0x11c>
42003eda:	054d      	mov.n	a4, a5
42003edc:	7149      	s32i.n	a4, a1, 28
42003ede:	03cd      	mov.n	a12, a3
42003ee0:	48b437        	bgeu	a4, a3, 42003f2c <core::str::slice_error_fail_rt+0x14c>
42003ee3:	380c      	movi.n	a8, 3
42003ee5:	738480        	maxu	a8, a4, a8
42003ee8:	fdc8a2        	addi	a10, a8, -3
42003eeb:	b41b      	addi.n	a11, a4, 1
42003eed:	1fbba7        	bgeu	a11, a10, 42003f10 <core::str::slice_error_fail_rt+0x130>
42003ef0:	ffb8c1        	l32r	a12, 42003dd0 <core::str::slice_error_fail+0x54>
42003ef3:	ffb881        	l32r	a8, 42003dd4 <core::str::slice_error_fail+0x58>
42003ef6:	0008e0        	callx8	a8
42003ef9:	0041f0        	break	1, 15
42003efc:	70b437        	bgeu	a4, a3, 42003f70 <core::str::slice_error_fail_rt+0x190>
42003eff:	824a      	add.n	a8, a2, a4
42003f01:	000882        	l8ui	a8, a8, 0
42003f04:	238800        	sext	a8, a8, 7
42003f07:	c0af92        	movi	a9, -64
42003f0a:	cca897        	bge	a8, a9, 42003eda <core::str::slice_error_fail_rt+0xfa>
42003f0d:	fff2c6        	j	42003edc <core::str::slice_error_fail_rt+0xfc>
42003f10:	92aa      	add.n	a9, a2, a10
42003f12:	b2ba      	add.n	a11, a2, a11
42003f14:	c08b90        	sub	a8, a11, a9
42003f17:	c0afc2        	movi	a12, -64
42003f1a:	0c19b7        	beq	a9, a11, 42003f2a <core::str::slice_error_fail_rt+0x14a>
42003f1d:	880b      	addi.n	a8, a8, -1
42003f1f:	bb0b      	addi.n	a11, a11, -1
42003f21:	000bd2        	l8ui	a13, a11, 0
42003f24:	23dd00        	sext	a13, a13, 7
42003f27:	ef2dc7        	blt	a13, a12, 42003f1a <core::str::slice_error_fail_rt+0x13a>
42003f2a:	c8aa      	add.n	a12, a8, a10
42003f2c:	013c16        	beqz	a12, 42003f43 <core::str::slice_error_fail_rt+0x163>
42003f2f:	46bc37        	bgeu	a12, a3, 42003f79 <core::str::slice_error_fail_rt+0x199>
42003f32:	82ca      	add.n	a8, a2, a12
42003f34:	000882        	l8ui	a8, a8, 0
42003f37:	238800        	sext	a8, a8, 7
42003f3a:	bfaf92        	movi	a9, -65
42003f3d:	3ba987        	bge	a9, a8, 42003f7c <core::str::slice_error_fail_rt+0x19c>
42003f40:	c033c0        	sub	a3, a3, a12
42003f43:	00f356        	bnez	a3, 42003f56 <core::str::slice_error_fail_rt+0x176>
42003f46:	ffa0a1        	l32r	a10, 42003dc8 <core::str::slice_error_fail+0x4c>
42003f49:	bb2c      	movi.n	a11, 43
42003f4b:	ffa081        	l32r	a8, 42003dcc <core::str::slice_error_fail+0x50>
42003f4e:	06cd      	mov.n	a12, a6
42003f50:	0008e0        	callx8	a8
42003f53:	0041f0        	break	1, 15
42003f56:	82ca      	add.n	a8, a2, a12
42003f58:	000892        	l8ui	a9, a8, 0
42003f5b:	239900        	sext	a9, a9, 7
42003f5e:	fa7c      	movi.n	a10, -1
42003f60:	29aa97        	bge	a10, a9, 42003f8d <core::str::slice_error_fail_rt+0x1ad>
42003f63:	ffa082        	movi	a8, 255
42003f66:	108980        	and	a8, a9, a8
42003f69:	8189      	s32i.n	a8, a1, 32
42003f6b:	180c      	movi.n	a8, 1
42003f6d:	002486        	j	42004003 <core::str::slice_error_fail_rt+0x223>
42003f70:	029437        	bne	a4, a3, 42003f76 <core::str::slice_error_fail_rt+0x196>
42003f73:	ffd8c6        	j	42003eda <core::str::slice_error_fail_rt+0xfa>
42003f76:	ffd886        	j	42003edc <core::str::slice_error_fail_rt+0xfc>
42003f79:	c313c7        	beq	a3, a12, 42003f40 <core::str::slice_error_fail_rt+0x160>
42003f7c:	ff8881        	l32r	a8, 42003d9c <core::str::slice_error_fail+0x20>
42003f7f:	02ad      	mov.n	a10, a2
42003f81:	03bd      	mov.n	a11, a3
42003f83:	03dd      	mov.n	a13, a3
42003f85:	06ed      	mov.n	a14, a6
42003f87:	0008e0        	callx8	a8
42003f8a:	0041f0        	break	1, 15
42003f8d:	0108b2        	l8ui	a11, a8, 1
42003f90:	fa3c      	movi.n	a10, 63
42003f92:	10dba0        	and	a13, a11, a10
42003f95:	fb1c      	movi.n	a11, 31
42003f97:	10b9b0        	and	a11, a9, a11
42003f9a:	dfafe2        	movi	a14, -33
42003f9d:	31be97        	bgeu	a14, a9, 42003fd2 <core::str::slice_error_fail_rt+0x1f2>
42003fa0:	0208e2        	l8ui	a14, a8, 2
42003fa3:	10eea0        	and	a14, a14, a10
42003fa6:	11dda0        	slli	a13, a13, 6
42003fa9:	20dde0        	or	a13, a13, a14
42003fac:	0e7c      	movi.n	a14, -16
42003fae:	2939e7        	bltu	a9, a14, 42003fdb <core::str::slice_error_fail_rt+0x1fb>
42003fb1:	019be0        	slli	a9, a11, 18
42003fb4:	ff7bb1        	l32r	a11, 42003da0 <core::str::slice_error_fail+0x24>
42003fb7:	1099b0        	and	a9, a9, a11
42003fba:	030882        	l8ui	a8, a8, 3
42003fbd:	1088a0        	and	a8, a8, a10
42003fc0:	11ada0        	slli	a10, a13, 6
42003fc3:	208a80        	or	a8, a10, a8
42003fc6:	208890        	or	a8, a8, a9
42003fc9:	ff7691        	l32r	a9, 42003da4 <core::str::slice_error_fail+0x28>
42003fcc:	119897        	bne	a8, a9, 42003fe1 <core::str::slice_error_fail_rt+0x201>
42003fcf:	ffdcc6        	j	42003f46 <core::str::slice_error_fail_rt+0x166>
42003fd2:	118ba0        	slli	a8, a11, 6
42003fd5:	2088d0        	or	a8, a8, a13
42003fd8:	000146        	j	42003fe1 <core::str::slice_error_fail_rt+0x201>
42003fdb:	118b40        	slli	a8, a11, 12
42003fde:	208d80        	or	a8, a13, a8
42003fe1:	8189      	s32i.n	a8, a1, 32
42003fe3:	04e8f6        	bgeui	a8, 128, 42003feb <core::str::slice_error_fail_rt+0x20b>
42003fe6:	180c      	movi.n	a8, 1
42003fe8:	0005c6        	j	42004003 <core::str::slice_error_fail_rt+0x223>
42003feb:	ff6f91        	l32r	a9, 42003da8 <core::str::slice_error_fail+0x2c>
42003fee:	04b897        	bgeu	a8, a9, 42003ff6 <core::str::slice_error_fail_rt+0x216>
42003ff1:	280c      	movi.n	a8, 2
42003ff3:	000306        	j	42004003 <core::str::slice_error_fail_rt+0x223>
42003ff6:	ff6d91        	l32r	a9, 42003dac <core::str::slice_error_fail+0x30>
42003ff9:	043897        	bltu	a8, a9, 42004001 <core::str::slice_error_fail_rt+0x221>
42003ffc:	480c      	movi.n	a8, 4
42003ffe:	000046        	j	42004003 <core::str::slice_error_fail_rt+0x223>
42004001:	380c      	movi.n	a8, 3
42004003:	91c9      	s32i.n	a12, a1, 36
42004005:	88ca      	add.n	a8, a8, a12
42004007:	a189      	s32i.n	a8, a1, 40
42004009:	080c      	movi.n	a8, 0
4200400b:	f189      	s32i.n	a8, a1, 60
4200400d:	580c      	movi.n	a8, 5
4200400f:	c189      	s32i.n	a8, a1, 48
42004011:	ff6791        	l32r	a9, 42003db0 <core::str::slice_error_fail+0x34>
42004014:	b199      	s32i.n	a9, a1, 44
42004016:	e189      	s32i.n	a8, a1, 56
42004018:	44c182        	addi	a8, a1, 68
4200401b:	d189      	s32i.n	a8, a1, 52
4200401d:	ff6581        	l32r	a8, 42003db4 <core::str::slice_error_fail+0x38>
42004020:	1a6182        	s32i	a8, a1, 104
42004023:	14c192        	addi	a9, a1, 20
42004026:	196192        	s32i	a9, a1, 100
42004029:	186182        	s32i	a8, a1, 96
4200402c:	0cc182        	addi	a8, a1, 12
4200402f:	176182        	s32i	a8, a1, 92
42004032:	ff6181        	l32r	a8, 42003db8 <core::str::slice_error_fail+0x3c>
42004035:	166182        	s32i	a8, a1, 88
42004038:	24c182        	addi	a8, a1, 36
4200403b:	156182        	s32i	a8, a1, 84
4200403e:	ff5f81        	l32r	a8, 42003dbc <core::str::slice_error_fail+0x40>
42004041:	146182        	s32i	a8, a1, 80
42004044:	20c182        	addi	a8, a1, 32
42004047:	136182        	s32i	a8, a1, 76
4200404a:	ff5d81        	l32r	a8, 42003dc0 <core::str::slice_error_fail+0x44>
4200404d:	126182        	s32i	a8, a1, 72
42004050:	1cc182        	addi	a8, a1, 28
42004053:	ff9bc6        	j	42003ec6 <core::str::slice_error_fail_rt+0xe6>
42004056:	640000        	extui	a0, a0, 0, 7
42004059:	011d      	mov.n	a1, a1
4200405b:	233c      	movi.n	a3, 50
4200405d:	3c0123        	lsi	f2, a1, 240

42004060 <<&T as core::fmt::Debug>::fmt>:
42004060:	004136        	entry	a1, 32
42004063:	5378      	l32i.n	a7, a3, 20
42004065:	6388      	l32i.n	a8, a3, 24
42004067:	3868      	l32i.n	a6, a8, 12
42004069:	fffbb1        	l32r	a11, 42004058 <core::str::slice_error_fail_rt+0x278>
4200406c:	3c0c      	movi.n	a12, 3
4200406e:	07ad      	mov.n	a10, a7
42004070:	0006e0        	callx8	a6
42004073:	003a16        	beqz	a10, 4200407a <<&T as core::fmt::Debug>::fmt+0x1a>
42004076:	120c      	movi.n	a2, 1
42004078:	f01d      	retw.n
4200407a:	fff8b1        	l32r	a11, 4200405c <core::str::slice_error_fail_rt+0x27c>
4200407d:	7c0c      	movi.n	a12, 7
4200407f:	07ad      	mov.n	a10, a7
42004081:	0006e0        	callx8	a6
42004084:	0a2d      	mov.n	a2, a10
42004086:	f01d      	retw.n
42004088:	1fbc      	beqz.n	a15, 420040bd <core::unicode::unicode_data::grapheme_extend::lookup+0x1d>
4200408a:	9c3c01        	l32r	a0, 41feb17c <__user_exception+0x1c71f54>
4200408d:	003c011f 	ee.vmulas.s16.accx.ld.ip.qup	q1, a1, 16, q4, q0, q3, q4
42004091:	420062        	l8ui	a6, a0, 66
42004094:	001fffff 	ee.vmulas.s16.accx.ld.ip.qup	q1, a15, 240, q7, q6, q1, q7
42004098:	012040        	slli	a2, a0, 28
4200409b:	ac3c      	movi.n	a12, 58
4200409d:	 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a1, 0x110, q4, q0, q3, q4

420040a0 <core::unicode::unicode_data::grapheme_extend::lookup>:
420040a0:	004136        	entry	a1, 32
420040a3:	119250        	slli	a9, a2, 11
420040a6:	0b0c      	movi.n	a11, 0
420040a8:	172c      	movi.n	a7, 33
420040aa:	fff781        	l32r	a8, 42004088 <<&T as core::fmt::Debug>::fmt+0x28>
420040ad:	1c0c      	movi.n	a12, 1
420040af:	fd7c      	movi.n	a13, -1
420040b1:	ffa0e2        	movi	a14, 255
420040b4:	0bad      	mov.n	a10, a11
420040b6:	07fd      	mov.n	a15, a7
420040b8:	0001c6        	j	420040c3 <core::unicode::unicode_data::grapheme_extend::lookup+0x23>
420040bb:	07fd      	mov.n	a15, a7
420040bd:	c07fa0        	sub	a7, a15, a10
420040c0:	3bbaf7        	bgeu	a10, a15, 420040ff <core::unicode::unicode_data::grapheme_extend::lookup+0x5f>
420040c3:	417170        	srli	a7, a7, 1
420040c6:	77aa      	add.n	a7, a7, a10
420040c8:	a06780        	addx4	a6, a7, a8
420040cb:	0668      	l32i.n	a6, a6, 0
420040cd:	116650        	slli	a6, a6, 11
420040d0:	0c5d      	mov.n	a5, a12
420040d2:	0a1697        	beq	a6, a9, 420040e0 <core::unicode::unicode_data::grapheme_extend::lookup+0x40>
420040d5:	0d4d      	mov.n	a4, a13
420040d7:	0cb697        	bgeu	a6, a9, 420040e7 <core::unicode::unicode_data::grapheme_extend::lookup+0x47>
420040da:	0e1466        	bnei	a4, 1, 420040ec <core::unicode::unicode_data::grapheme_extend::lookup+0x4c>
420040dd:	fff686        	j	420040bb <core::unicode::unicode_data::grapheme_extend::lookup+0x1b>
420040e0:	0b5d      	mov.n	a5, a11
420040e2:	0d4d      	mov.n	a4, a13
420040e4:	f23697        	bltu	a6, a9, 420040da <core::unicode::unicode_data::grapheme_extend::lookup+0x3a>
420040e7:	054d      	mov.n	a4, a5
420040e9:	ce1426        	beqi	a4, 1, 420040bb <core::unicode::unicode_data::grapheme_extend::lookup+0x1b>
420040ec:	10a4e0        	and	a10, a4, a14
420040ef:	0a9ae7        	bne	a10, a14, 420040fd <core::unicode::unicode_data::grapheme_extend::lookup+0x5d>
420040f2:	a71b      	addi.n	a10, a7, 1
420040f4:	c07fa0        	sub	a7, a15, a10
420040f7:	c83af7        	bltu	a10, a15, 420040c3 <core::unicode::unicode_data::grapheme_extend::lookup+0x23>
420040fa:	000046        	j	420040ff <core::unicode::unicode_data::grapheme_extend::lookup+0x5f>
420040fd:	a71b      	addi.n	a10, a7, 1
420040ff:	092c      	movi.n	a9, 32
42004101:	02b9a7        	bgeu	a9, a10, 42004107 <core::unicode::unicode_data::grapheme_extend::lookup+0x67>
42004104:	002246        	j	42004191 <core::unicode::unicode_data::grapheme_extend::lookup+0xf1>
42004107:	a0ba80        	addx4	a11, a10, a8
4200410a:	0b98      	l32i.n	a9, a11, 0
4200410c:	5c1c      	movi.n	a12, 21
4200410e:	400c00        	ssr	a12
42004111:	919090        	srl	a9, a9
42004114:	07ca66        	bnei	a10, 32, 4200411f <core::unicode::unicode_data::grapheme_extend::lookup+0x7f>
42004117:	d7a2b2        	movi	a11, 0x2d7
4200411a:	fa1c      	movi.n	a10, 31
4200411c:	000306        	j	4200412c <core::unicode::unicode_data::grapheme_extend::lookup+0x8c>
4200411f:	1bb8      	l32i.n	a11, a11, 4
42004121:	400c00        	ssr	a12
42004124:	91b0b0        	srl	a11, a11
42004127:	048a16        	beqz	a10, 42004173 <core::unicode::unicode_data::grapheme_extend::lookup+0xd3>
4200412a:	aa0b      	addi.n	a10, a10, -1
4200412c:	a08a80        	addx4	a8, a10, a8
4200412f:	0888      	l32i.n	a8, a8, 0
42004131:	ffd8a1        	l32r	a10, 42004094 <<&T as core::fmt::Debug>::fmt+0x34>
42004134:	10a8a0        	and	a10, a8, a10
42004137:	f87c      	movi.n	a8, -1
42004139:	308980        	xor	a8, a9, a8
4200413c:	8b8a      	add.n	a8, a11, a8
4200413e:	02a816        	beqz	a8, 4200416c <core::unicode::unicode_data::grapheme_extend::lookup+0xcc>
42004141:	c0c2a0        	sub	a12, a2, a10
42004144:	d7a2a2        	movi	a10, 0x2d7
42004147:	73a9a0        	maxu	a10, a9, a10
4200414a:	c0da90        	sub	a13, a10, a9
4200414d:	bb0b      	addi.n	a11, a11, -1
4200414f:	0e0c      	movi.n	a14, 0
42004151:	ffd1f1        	l32r	a15, 42004098 <<&T as core::fmt::Debug>::fmt+0x38>
42004154:	0e7d      	mov.n	a7, a14
42004156:	281ed7        	beq	a14, a13, 42004182 <core::unicode::unicode_data::grapheme_extend::lookup+0xe2>
42004159:	6f9a      	add.n	a6, a15, a9
4200415b:	000662        	l8ui	a6, a6, 0
4200415e:	776a      	add.n	a7, a7, a6
42004160:	083c77        	bltu	a12, a7, 4200416c <core::unicode::unicode_data::grapheme_extend::lookup+0xcc>
42004163:	ee1b      	addi.n	a14, a14, 1
42004165:	991b      	addi.n	a9, a9, 1
42004167:	eb9e87        	bne	a14, a8, 42004156 <core::unicode::unicode_data::grapheme_extend::lookup+0xb6>
4200416a:	0b9d      	mov.n	a9, a11
4200416c:	180c      	movi.n	a8, 1
4200416e:	102980        	and	a2, a9, a8
42004171:	f01d      	retw.n
42004173:	0a0c      	movi.n	a10, 0
42004175:	f87c      	movi.n	a8, -1
42004177:	308980        	xor	a8, a9, a8
4200417a:	8b8a      	add.n	a8, a11, a8
4200417c:	fc1856        	bnez	a8, 42004141 <core::unicode::unicode_data::grapheme_extend::lookup+0xa1>
4200417f:	fffa46        	j	4200416c <core::unicode::unicode_data::grapheme_extend::lookup+0xcc>
42004182:	d7a2b2        	movi	a11, 0x2d7
42004185:	ffc5c1        	l32r	a12, 4200409c <<&T as core::fmt::Debug>::fmt+0x3c>
42004188:	ffc281        	l32r	a8, 42004090 <<&T as core::fmt::Debug>::fmt+0x30>
4200418b:	0008e0        	callx8	a8
4200418e:	0041f0        	break	1, 15
42004191:	1a2c      	movi.n	a10, 33
42004193:	ffbec1        	l32r	a12, 4200408c <<&T as core::fmt::Debug>::fmt+0x2c>
42004196:	ffbe81        	l32r	a8, 42004090 <<&T as core::fmt::Debug>::fmt+0x30>
42004199:	0abd      	mov.n	a11, a10
4200419b:	0008e0        	callx8	a8
4200419e:	0041f0        	break	1, 15
420041a1:	000000        	ill

420041a4 <_ZN4core3ptr25drop_in_place$LT$char$GT$17h1e0fb300621b04f3E.llvm.7723965441082667207>:
420041a4:	004136        	entry	a1, 32
420041a7:	f01d      	retw.n
420041a9:	000000        	ill
420041ac:	0a0a      	add.n	a0, a10, a0
420041ae:	0a0a      	add.n	a0, a10, a0
420041b0:	ff          	.byte 0xff
420041b1:	80fefefe 	ee.ldf.128.ip	f1, f12, f15, f15, a15, -32
420041b5:	808080        	add	a8, a0, a8
420041b8:	010aa5        	call8	42005264 <core::fmt::Formatter::pad_integral+0x78>
420041bb:	      	movi.n	a6, 51

420041bc <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str>:
420041bc:	008136        	entry	a1, 64
420041bf:	7139      	s32i.n	a3, a1, 28
420041c1:	1288      	l32i.n	a8, a2, 4
420041c3:	5189      	s32i.n	a8, a1, 20
420041c5:	0288      	l32i.n	a8, a2, 0
420041c7:	4189      	s32i.n	a8, a1, 16
420041c9:	2288      	l32i.n	a8, a2, 8
420041cb:	6189      	s32i.n	a8, a1, 24
420041cd:	050c      	movi.n	a5, 0
420041cf:	ffa082        	movi	a8, 255
420041d2:	2189      	s32i.n	a8, a1, 8
420041d4:	180c      	movi.n	a8, 1
420041d6:	1189      	s32i.n	a8, a1, 4
420041d8:	056d      	mov.n	a6, a5
420041da:	053d      	mov.n	a3, a5
420041dc:	0159      	s32i.n	a5, a1, 0
420041de:	3149      	s32i.n	a4, a1, 12
420041e0:	0006c6        	j	420041ff <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x43>
420041e3:	080c      	movi.n	a8, 0
420041e5:	120c      	movi.n	a2, 1
420041e7:	108820        	and	a8, a8, a2
420041ea:	6198      	l32i.n	a9, a1, 24
420041ec:	004982        	s8i	a8, a9, 0
420041ef:	5188      	l32i.n	a8, a1, 20
420041f1:	3888      	l32i.n	a8, a8, 12
420041f3:	41a8      	l32i.n	a10, a1, 16
420041f5:	0008e0        	callx8	a8
420041f8:	076d      	mov.n	a6, a7
420041fa:	3148      	l32i.n	a4, a1, 12
420041fc:	132a56        	bnez	a10, 42004332 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x176>
420041ff:	2188      	l32i.n	a8, a1, 8
42004201:	108580        	and	a8, a5, a8
42004204:	128856        	bnez	a8, 42004330 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x174>
42004207:	08b437        	bgeu	a4, a3, 42004213 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x57>
4200420a:	0037c6        	j	420042ed <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x131>
4200420d:	02b437        	bgeu	a4, a3, 42004213 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x57>
42004210:	003646        	j	420042ed <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x131>
42004213:	7188      	l32i.n	a8, a1, 28
42004215:	883a      	add.n	a8, a8, a3
42004217:	c09430        	sub	a9, a4, a3
4200421a:	1a89f6        	bgeui	a9, 8, 42004238 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x7c>
4200421d:	029347        	bne	a3, a4, 42004223 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x67>
42004220:	002dc6        	j	420042db <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x11f>
42004223:	0b0c      	movi.n	a11, 0
42004225:	a8ba      	add.n	a10, a8, a11
42004227:	000aa2        	l8ui	a10, a10, 0
4200422a:	029a66        	bnei	a10, 10, 42004230 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x74>
4200422d:	002286        	j	420042bb <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xff>
42004230:	bb1b      	addi.n	a11, a11, 1
42004232:	ef9b97        	bne	a11, a9, 42004225 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x69>
42004235:	002886        	j	420042db <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x11f>
42004238:	a83b      	addi.n	a10, a8, 3
4200423a:	cb7c      	movi.n	a11, -4
4200423c:	10aab0        	and	a10, a10, a11
4200423f:	1d1a87        	beq	a10, a8, 42004260 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xa4>
42004242:	c0aa80        	sub	a10, a10, a8
42004245:	017a16        	beqz	a10, 42004260 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xa4>
42004248:	0b0c      	movi.n	a11, 0
4200424a:	c8ba      	add.n	a12, a8, a11
4200424c:	000cc2        	l8ui	a12, a12, 0
4200424f:	669c26        	beqi	a12, 10, 420042b9 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xfd>
42004252:	bb1b      	addi.n	a11, a11, 1
42004254:	f29ba7        	bne	a11, a10, 4200424a <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x8e>
42004257:	f8c9b2        	addi	a11, a9, -8
4200425a:	07bba7        	bgeu	a11, a10, 42004265 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xa9>
4200425d:	000f06        	j	4200429d <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xe1>
42004260:	f8c9b2        	addi	a11, a9, -8
42004263:	0a0c      	movi.n	a10, 0
42004265:	c8aa      	add.n	a12, a8, a10
42004267:	0cf8      	l32i.n	a15, a12, 0
42004269:	fd7c      	movi.n	a13, -1
4200426b:	307fd0        	xor	a7, a15, a13
4200426e:	ffcfe1        	l32r	a14, 420041ac <_ZN4core3ptr25drop_in_place$LT$char$GT$17h1e0fb300621b04f3E.llvm.7723965441082667207+0x8>
42004271:	305fe0        	xor	a5, a15, a14
42004274:	ffcff1        	l32r	a15, 420041b0 <_ZN4core3ptr25drop_in_place$LT$char$GT$17h1e0fb300621b04f3E.llvm.7723965441082667207+0xc>
42004277:	55fa      	add.n	a5, a5, a15
42004279:	105750        	and	a5, a7, a5
4200427c:	ffce71        	l32r	a7, 420041b4 <_ZN4core3ptr25drop_in_place$LT$char$GT$17h1e0fb300621b04f3E.llvm.7723965441082667207+0x10>
4200427f:	105570        	and	a5, a5, a7
42004282:	017556        	bnez	a5, 4200429d <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xe1>
42004285:	1cc8      	l32i.n	a12, a12, 4
42004287:	30dcd0        	xor	a13, a12, a13
4200428a:	30cce0        	xor	a12, a12, a14
4200428d:	ccfa      	add.n	a12, a12, a15
4200428f:	10cdc0        	and	a12, a13, a12
42004292:	10cc70        	and	a12, a12, a7
42004295:	004c56        	bnez	a12, 4200429d <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xe1>
42004298:	aa8b      	addi.n	a10, a10, 8
4200429a:	c7bba7        	bgeu	a11, a10, 42004265 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xa9>
4200429d:	4819a7        	beq	a9, a10, 420042e9 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x12d>
420042a0:	c099a0        	sub	a9, a9, a10
420042a3:	b8aa      	add.n	a11, a8, a10
420042a5:	080c      	movi.n	a8, 0
420042a7:	cb8a      	add.n	a12, a11, a8
420042a9:	000cc2        	l8ui	a12, a12, 0
420042ac:	079c26        	beqi	a12, 10, 420042b7 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xfb>
420042af:	881b      	addi.n	a8, a8, 1
420042b1:	f29897        	bne	a8, a9, 420042a7 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xeb>
420042b4:	000c46        	j	420042e9 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x12d>
420042b7:	b8aa      	add.n	a11, a8, a10
420042b9:	3148      	l32i.n	a4, a1, 12
420042bb:	83ba      	add.n	a8, a3, a11
420042bd:	381b      	addi.n	a3, a8, 1
420042bf:	023847        	bltu	a8, a4, 420042c5 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x109>
420042c2:	ffd1c6        	j	4200420d <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x51>
420042c5:	7198      	l32i.n	a9, a1, 28
420042c7:	898a      	add.n	a8, a9, a8
420042c9:	000882        	l8ui	a8, a8, 0
420042cc:	029826        	beqi	a8, 10, 420042d2 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x116>
420042cf:	ffce86        	j	4200420d <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x51>
420042d2:	050c      	movi.n	a5, 0
420042d4:	037d      	mov.n	a7, a3
420042d6:	032d      	mov.n	a2, a3
420042d8:	000686        	j	420042f6 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x13a>
420042db:	043d      	mov.n	a3, a4
420042dd:	067d      	mov.n	a7, a6
420042df:	1158      	l32i.n	a5, a1, 4
420042e1:	042d      	mov.n	a2, a4
420042e3:	0f9647        	bne	a6, a4, 420042f6 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x13a>
420042e6:	001186        	j	42004330 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x174>
420042e9:	3148      	l32i.n	a4, a1, 12
420042eb:	043d      	mov.n	a3, a4
420042ed:	067d      	mov.n	a7, a6
420042ef:	1158      	l32i.n	a5, a1, 4
420042f1:	042d      	mov.n	a2, a4
420042f3:	391647        	beq	a6, a4, 42004330 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x174>
420042f6:	6188      	l32i.n	a8, a1, 24
420042f8:	000882        	l8ui	a8, a8, 0
420042fb:	010816        	beqz	a8, 4200430f <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x153>
420042fe:	5188      	l32i.n	a8, a1, 20
42004300:	3888      	l32i.n	a8, a8, 12
42004302:	ffadb1        	l32r	a11, 420041b8 <_ZN4core3ptr25drop_in_place$LT$char$GT$17h1e0fb300621b04f3E.llvm.7723965441082667207+0x14>
42004305:	4c0c      	movi.n	a12, 4
42004307:	41a8      	l32i.n	a10, a1, 16
42004309:	0008e0        	callx8	a8
4200430c:	024a56        	bnez	a10, 42004334 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x178>
4200430f:	7188      	l32i.n	a8, a1, 28
42004311:	b86a      	add.n	a11, a8, a6
42004313:	c0c260        	sub	a12, a2, a6
42004316:	029267        	bne	a2, a6, 4200431c <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x160>
42004319:	ffb186        	j	420041e3 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x27>
4200431c:	8cba      	add.n	a8, a12, a11
4200431e:	880b      	addi.n	a8, a8, -1
42004320:	000882        	l8ui	a8, a8, 0
42004323:	a90c      	movi.n	a9, 10
42004325:	021897        	beq	a8, a9, 4200432b <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x16f>
42004328:	ffadc6        	j	420041e3 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x27>
4200432b:	180c      	movi.n	a8, 1
4200432d:	ffad06        	j	420041e5 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x29>
42004330:	0128      	l32i.n	a2, a1, 0
42004332:	f01d      	retw.n
42004334:	120c      	movi.n	a2, 1
42004336:	f01d      	retw.n
42004338:	3c01231e 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a1, -208, q0, q4, q0, q1
4200433c:	012a74        	ee.ldqa.s16.128.ip	a7, 0x2a0
4200433f:	bc3c      	movi.n	a12, 59
42004341:	420041        	l32r	a4, 41fd4b44 <__user_exception+0x1c5b91c>
42004344:	231c      	movi.n	a3, 18
42004346:	213c01        	l32r	a0, 41fcc838 <__user_exception+0x1c53610>
42004349:	3c0123        	lsi	f2, a1, 240
4200434c:	231a      	add.n	a2, a3, a1
4200434e:	173c01        	l32r	a0, 41fca040 <__user_exception+0x1c50e18>
42004351:	3c0123        	lsi	f2, a1, 240

42004354 <core::fmt::builders::DebugStruct::field>:
42004354:	00c136        	entry	a1, 96
42004357:	04fd      	mov.n	a15, a4
42004359:	040282        	l8ui	a8, a2, 4
4200435c:	1d0c      	movi.n	a13, 1
4200435e:	0d7d      	mov.n	a7, a13
42004360:	007816        	beqz	a8, 4200436b <core::fmt::builders::DebugStruct::field+0x17>
42004363:	0542d2        	s8i	a13, a2, 5
42004366:	044272        	s8i	a7, a2, 4
42004369:	f01d      	retw.n
4200436b:	0248      	l32i.n	a4, a2, 0
4200436d:	7488      	l32i.n	a8, a4, 28
4200436f:	490c      	movi.n	a9, 4
42004371:	10a890        	and	a10, a8, a9
42004374:	050292        	l8ui	a9, a2, 5
42004377:	1159      	s32i.n	a5, a1, 4
42004379:	0169      	s32i.n	a6, a1, 0
4200437b:	0d6d      	mov.n	a6, a13
4200437d:	01da56        	bnez	a10, 4200439e <core::fmt::builders::DebugStruct::field+0x4a>
42004380:	ffa082        	movi	a8, 255
42004383:	108980        	and	a8, a9, a8
42004386:	090c      	movi.n	a9, 0
42004388:	029897        	bne	a8, a9, 4200438e <core::fmt::builders::DebugStruct::field+0x3a>
4200438b:	002bc6        	j	4200443e <core::fmt::builders::DebugStruct::field+0xea>
4200438e:	ffefb1        	l32r	a11, 4200434c <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x190>
42004391:	0f5d      	mov.n	a5, a15
42004393:	021897        	beq	a8, a9, 42004399 <core::fmt::builders::DebugStruct::field+0x45>
42004396:	002bc6        	j	42004449 <core::fmt::builders::DebugStruct::field+0xf5>
42004399:	3c0c      	movi.n	a12, 3
4200439b:	002b06        	j	4200444b <core::fmt::builders::DebugStruct::field+0xf7>
4200439e:	ffa0a2        	movi	a10, 255
420043a1:	1099a0        	and	a9, a9, a10
420043a4:	01a956        	bnez	a9, 420043c2 <core::fmt::builders::DebugStruct::field+0x6e>
420043a7:	54a8      	l32i.n	a10, a4, 20
420043a9:	6488      	l32i.n	a8, a4, 24
420043ab:	3888      	l32i.n	a8, a8, 12
420043ad:	ffe2b1        	l32r	a11, 42004338 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x17c>
420043b0:	3c0c      	movi.n	a12, 3
420043b2:	0f7d      	mov.n	a7, a15
420043b4:	0008e0        	callx8	a8
420043b7:	07fd      	mov.n	a15, a7
420043b9:	06dd      	mov.n	a13, a6
420043bb:	0d7d      	mov.n	a7, a13
420043bd:	fa2a56        	bnez	a10, 42004363 <core::fmt::builders::DebugStruct::field+0xf>
420043c0:	7488      	l32i.n	a8, a4, 28
420043c2:	170c      	movi.n	a7, 1
420043c4:	174172        	s8i	a7, a1, 23
420043c7:	5498      	l32i.n	a9, a4, 20
420043c9:	64a8      	l32i.n	a10, a4, 24
420043cb:	17c1b2        	addi	a11, a1, 23
420043ce:	41b9      	s32i.n	a11, a1, 16
420043d0:	31a9      	s32i.n	a10, a1, 12
420043d2:	2199      	s32i.n	a9, a1, 8
420043d4:	0498      	l32i.n	a9, a4, 0
420043d6:	14a8      	l32i.n	a10, a4, 4
420043d8:	24b8      	l32i.n	a11, a4, 8
420043da:	34c8      	l32i.n	a12, a4, 12
420043dc:	44d8      	l32i.n	a13, a4, 16
420043de:	2004e2        	l8ui	a14, a4, 32
420043e1:	3841e2        	s8i	a14, a1, 56
420043e4:	a1d9      	s32i.n	a13, a1, 40
420043e6:	d189      	s32i.n	a8, a1, 52
420043e8:	ffd581        	l32r	a8, 4200433c <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x180>
420043eb:	c189      	s32i.n	a8, a1, 48
420043ed:	91c9      	s32i.n	a12, a1, 36
420043ef:	81b9      	s32i.n	a11, a1, 32
420043f1:	71a9      	s32i.n	a10, a1, 28
420043f3:	6199      	s32i.n	a9, a1, 24
420043f5:	08c1a2        	addi	a10, a1, 8
420043f8:	b1a9      	s32i.n	a10, a1, 44
420043fa:	ffd151        	l32r	a5, 42004340 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x184>
420043fd:	03bd      	mov.n	a11, a3
420043ff:	0fcd      	mov.n	a12, a15
42004401:	0005e0        	callx8	a5
42004404:	02ca56        	bnez	a10, 42004434 <core::fmt::builders::DebugStruct::field+0xe0>
42004407:	08c1a2        	addi	a10, a1, 8
4200440a:	ffceb1        	l32r	a11, 42004344 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x188>
4200440d:	2c0c      	movi.n	a12, 2
4200440f:	0005e0        	callx8	a5
42004412:	01ea56        	bnez	a10, 42004434 <core::fmt::builders::DebugStruct::field+0xe0>
42004415:	0188      	l32i.n	a8, a1, 0
42004417:	3888      	l32i.n	a8, a8, 12
42004419:	18c1b2        	addi	a11, a1, 24
4200441c:	11a8      	l32i.n	a10, a1, 4
4200441e:	0008e0        	callx8	a8
42004421:	00fa56        	bnez	a10, 42004434 <core::fmt::builders::DebugStruct::field+0xe0>
42004424:	c188      	l32i.n	a8, a1, 48
42004426:	3888      	l32i.n	a8, a8, 12
42004428:	b1a8      	l32i.n	a10, a1, 44
4200442a:	ffc7b1        	l32r	a11, 42004348 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x18c>
4200442d:	2c0c      	movi.n	a12, 2
4200442f:	0008e0        	callx8	a8
42004432:	0a7d      	mov.n	a7, a10
42004434:	06dd      	mov.n	a13, a6
42004436:	0542d2        	s8i	a13, a2, 5
42004439:	044272        	s8i	a7, a2, 4
4200443c:	f01d      	retw.n
4200443e:	ffc4b1        	l32r	a11, 42004350 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x194>
42004441:	0f5d      	mov.n	a5, a15
42004443:	029897        	bne	a8, a9, 42004449 <core::fmt::builders::DebugStruct::field+0xf5>
42004446:	ffd3c6        	j	42004399 <core::fmt::builders::DebugStruct::field+0x45>
42004449:	2c0c      	movi.n	a12, 2
4200444b:	54a8      	l32i.n	a10, a4, 20
4200444d:	6488      	l32i.n	a8, a4, 24
4200444f:	3888      	l32i.n	a8, a8, 12
42004451:	0008e0        	callx8	a8
42004454:	06dd      	mov.n	a13, a6
42004456:	0d7d      	mov.n	a7, a13
42004458:	05cd      	mov.n	a12, a5
4200445a:	03bd      	mov.n	a11, a3
4200445c:	f03a56        	bnez	a10, 42004363 <core::fmt::builders::DebugStruct::field+0xf>
4200445f:	54a8      	l32i.n	a10, a4, 20
42004461:	6488      	l32i.n	a8, a4, 24
42004463:	3888      	l32i.n	a8, a8, 12
42004465:	0008e0        	callx8	a8
42004468:	06dd      	mov.n	a13, a6
4200446a:	0d7d      	mov.n	a7, a13
4200446c:	ef3a56        	bnez	a10, 42004363 <core::fmt::builders::DebugStruct::field+0xf>
4200446f:	54a8      	l32i.n	a10, a4, 20
42004471:	6488      	l32i.n	a8, a4, 24
42004473:	3888      	l32i.n	a8, a8, 12
42004475:	ffb3b1        	l32r	a11, 42004344 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x188>
42004478:	2c0c      	movi.n	a12, 2
4200447a:	0008e0        	callx8	a8
4200447d:	06dd      	mov.n	a13, a6
4200447f:	0188      	l32i.n	a8, a1, 0
42004481:	1198      	l32i.n	a9, a1, 4
42004483:	0d7d      	mov.n	a7, a13
42004485:	edaa56        	bnez	a10, 42004363 <core::fmt::builders::DebugStruct::field+0xf>
42004488:	3888      	l32i.n	a8, a8, 12
4200448a:	09ad      	mov.n	a10, a9
4200448c:	04bd      	mov.n	a11, a4
4200448e:	0008e0        	callx8	a8
42004491:	06dd      	mov.n	a13, a6
42004493:	0a7d      	mov.n	a7, a10
42004495:	0542d2        	s8i	a13, a2, 5
42004498:	044272        	s8i	a7, a2, 4
4200449b:	f01d      	retw.n
4200449d:	000000        	ill
420044a0:	3c01232e 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a2, -208, q0, q4, q0, q1
420044a4:	012a74        	ee.ldqa.s16.128.ip	a7, 0x2a0
420044a7:	213c      	movi.n	a1, 50
420044a9:	3c0123        	lsi	f2, a1, 240
420044ac:	231a      	add.n	a2, a3, a1
420044ae:	2d3c01        	l32r	a0, 41fcf9a0 <__user_exception+0x1c56778>
420044b1:	3c0123        	lsi	f2, a1, 240

420044b4 <core::fmt::builders::DebugTuple::field>:
420044b4:	00c136        	entry	a1, 96
420044b7:	080282        	l8ui	a8, a2, 8
420044ba:	00c816        	beqz	a8, 420044ca <core::fmt::builders::DebugTuple::field+0x16>
420044bd:	0258      	l32i.n	a5, a2, 0
420044bf:	170c      	movi.n	a7, 1
420044c1:	084272        	s8i	a7, a2, 8
420044c4:	851b      	addi.n	a8, a5, 1
420044c6:	0289      	s32i.n	a8, a2, 0
420044c8:	f01d      	retw.n
420044ca:	1268      	l32i.n	a6, a2, 4
420044cc:	7688      	l32i.n	a8, a6, 28
420044ce:	490c      	movi.n	a9, 4
420044d0:	109890        	and	a9, a8, a9
420044d3:	0258      	l32i.n	a5, a2, 0
420044d5:	011956        	bnez	a9, 420044ea <core::fmt::builders::DebugTuple::field+0x36>
420044d8:	080c      	movi.n	a8, 0
420044da:	2d1587        	beq	a5, a8, 4200450b <core::fmt::builders::DebugTuple::field+0x57>
420044dd:	fff3b1        	l32r	a11, 420044ac <core::fmt::builders::DebugStruct::field+0x158>
420044e0:	170c      	movi.n	a7, 1
420044e2:	07cd      	mov.n	a12, a7
420044e4:	2d9587        	bne	a5, a8, 42004515 <core::fmt::builders::DebugTuple::field+0x61>
420044e7:	000b06        	j	42004517 <core::fmt::builders::DebugTuple::field+0x63>
420044ea:	043556        	bnez	a5, 42004531 <core::fmt::builders::DebugTuple::field+0x7d>
420044ed:	56a8      	l32i.n	a10, a6, 20
420044ef:	6688      	l32i.n	a8, a6, 24
420044f1:	3888      	l32i.n	a8, a8, 12
420044f3:	ffebb1        	l32r	a11, 420044a0 <core::fmt::builders::DebugStruct::field+0x14c>
420044f6:	2c0c      	movi.n	a12, 2
420044f8:	0008e0        	callx8	a8
420044fb:	030a16        	beqz	a10, 4200452f <core::fmt::builders::DebugTuple::field+0x7b>
420044fe:	170c      	movi.n	a7, 1
42004500:	050c      	movi.n	a5, 0
42004502:	084272        	s8i	a7, a2, 8
42004505:	851b      	addi.n	a8, a5, 1
42004507:	0289      	s32i.n	a8, a2, 0
42004509:	f01d      	retw.n
4200450b:	ffe9b1        	l32r	a11, 420044b0 <core::fmt::builders::DebugStruct::field+0x15c>
4200450e:	170c      	movi.n	a7, 1
42004510:	07cd      	mov.n	a12, a7
42004512:	011587        	beq	a5, a8, 42004517 <core::fmt::builders::DebugTuple::field+0x63>
42004515:	2c0c      	movi.n	a12, 2
42004517:	56a8      	l32i.n	a10, a6, 20
42004519:	6688      	l32i.n	a8, a6, 24
4200451b:	3888      	l32i.n	a8, a8, 12
4200451d:	0008e0        	callx8	a8
42004520:	f9da56        	bnez	a10, 420044c1 <core::fmt::builders::DebugTuple::field+0xd>
42004523:	3488      	l32i.n	a8, a4, 12
42004525:	03ad      	mov.n	a10, a3
42004527:	06bd      	mov.n	a11, a6
42004529:	0008e0        	callx8	a8
4200452c:	001506        	j	42004584 <core::fmt::builders::DebugTuple::field+0xd0>
4200452f:	7688      	l32i.n	a8, a6, 28
42004531:	170c      	movi.n	a7, 1
42004533:	0f4172        	s8i	a7, a1, 15
42004536:	5698      	l32i.n	a9, a6, 20
42004538:	66a8      	l32i.n	a10, a6, 24
4200453a:	0fc1b2        	addi	a11, a1, 15
4200453d:	21b9      	s32i.n	a11, a1, 8
4200453f:	11a9      	s32i.n	a10, a1, 4
42004541:	0199      	s32i.n	a9, a1, 0
42004543:	0698      	l32i.n	a9, a6, 0
42004545:	16a8      	l32i.n	a10, a6, 4
42004547:	26b8      	l32i.n	a11, a6, 8
42004549:	36c8      	l32i.n	a12, a6, 12
4200454b:	46d8      	l32i.n	a13, a6, 16
4200454d:	2006e2        	l8ui	a14, a6, 32
42004550:	3041e2        	s8i	a14, a1, 48
42004553:	81d9      	s32i.n	a13, a1, 32
42004555:	b189      	s32i.n	a8, a1, 44
42004557:	ffd381        	l32r	a8, 420044a4 <core::fmt::builders::DebugStruct::field+0x150>
4200455a:	a189      	s32i.n	a8, a1, 40
4200455c:	00c182        	addi	a8, a1, 0
4200455f:	9189      	s32i.n	a8, a1, 36
42004561:	71c9      	s32i.n	a12, a1, 28
42004563:	61b9      	s32i.n	a11, a1, 24
42004565:	51a9      	s32i.n	a10, a1, 20
42004567:	4199      	s32i.n	a9, a1, 16
42004569:	3488      	l32i.n	a8, a4, 12
4200456b:	10c1b2        	addi	a11, a1, 16
4200456e:	03ad      	mov.n	a10, a3
42004570:	0008e0        	callx8	a8
42004573:	f4aa56        	bnez	a10, 420044c1 <core::fmt::builders::DebugTuple::field+0xd>
42004576:	a188      	l32i.n	a8, a1, 40
42004578:	3888      	l32i.n	a8, a8, 12
4200457a:	91a8      	l32i.n	a10, a1, 36
4200457c:	ffcbb1        	l32r	a11, 420044a8 <core::fmt::builders::DebugStruct::field+0x154>
4200457f:	2c0c      	movi.n	a12, 2
42004581:	0008e0        	callx8	a8
42004584:	0a7d      	mov.n	a7, a10
42004586:	084272        	s8i	a7, a2, 8
42004589:	851b      	addi.n	a8, a5, 1
4200458b:	0289      	s32i.n	a8, a2, 0
4200458d:	f01d      	retw.n
4200458f:	080000        	lsx	f0, a0, a0
42004592:	000000        	ill
42004595:	00          	.byte 00
42004596:	bc0001        	l32r	a0, 41ff3598 <__user_exception+0x1c7a370>
42004599:	420041        	l32r	a4, 41fd4d9c <__user_exception+0x1c5bb74>

4200459c <core::fmt::Write::write_char>:
4200459c:	006136        	entry	a1, 48
4200459f:	080c      	movi.n	a8, 0
420045a1:	0189      	s32i.n	a8, a1, 0
420045a3:	07e3f6        	bgeui	a3, 128, 420045ae <core::fmt::Write::write_char+0x12>
420045a6:	004132        	s8i	a3, a1, 0
420045a9:	1c0c      	movi.n	a12, 1
420045ab:	0024c6        	j	42004642 <core::fmt::Write::write_char+0xa6>
420045ae:	fff881        	l32r	a8, 42004590 <core::fmt::builders::DebugTuple::field+0xdc>
420045b1:	1eb387        	bgeu	a3, a8, 420045d3 <core::fmt::Write::write_char+0x37>
420045b4:	f83c      	movi.n	a8, 63
420045b6:	108380        	and	a8, a3, a8
420045b9:	80a092        	movi	a9, 128
420045bc:	208890        	or	a8, a8, a9
420045bf:	014182        	s8i	a8, a1, 1
420045c2:	418630        	srli	a8, a3, 6
420045c5:	c0a092        	movi	a9, 192
420045c8:	208890        	or	a8, a8, a9
420045cb:	004182        	s8i	a8, a1, 0
420045ce:	2c0c      	movi.n	a12, 2
420045d0:	001b86        	j	42004642 <core::fmt::Write::write_char+0xa6>
420045d3:	fff081        	l32r	a8, 42004594 <core::fmt::builders::DebugTuple::field+0xe0>
420045d6:	2ab387        	bgeu	a3, a8, 42004604 <core::fmt::Write::write_char+0x68>
420045d9:	f83c      	movi.n	a8, 63
420045db:	109380        	and	a9, a3, a8
420045de:	80a0a2        	movi	a10, 128
420045e1:	2099a0        	or	a9, a9, a10
420045e4:	024192        	s8i	a9, a1, 2
420045e7:	419c30        	srli	a9, a3, 12
420045ea:	e0a0b2        	movi	a11, 224
420045ed:	2099b0        	or	a9, a9, a11
420045f0:	004192        	s8i	a9, a1, 0
420045f3:	419630        	srli	a9, a3, 6
420045f6:	108980        	and	a8, a9, a8
420045f9:	2088a0        	or	a8, a8, a10
420045fc:	014182        	s8i	a8, a1, 1
420045ff:	3c0c      	movi.n	a12, 3
42004601:	000f46        	j	42004642 <core::fmt::Write::write_char+0xa6>
42004604:	f83c      	movi.n	a8, 63
42004606:	109380        	and	a9, a3, a8
42004609:	80a0a2        	movi	a10, 128
4200460c:	2099a0        	or	a9, a9, a10
4200460f:	034192        	s8i	a9, a1, 3
42004612:	419630        	srli	a9, a3, 6
42004615:	109980        	and	a9, a9, a8
42004618:	2099a0        	or	a9, a9, a10
4200461b:	024192        	s8i	a9, a1, 2
4200461e:	419c30        	srli	a9, a3, 12
42004621:	108980        	and	a8, a9, a8
42004624:	2088a0        	or	a8, a8, a10
42004627:	014182        	s8i	a8, a1, 1
4200462a:	281c      	movi.n	a8, 18
4200462c:	400800        	ssr	a8
4200462f:	918030        	srl	a8, a3
42004632:	790c      	movi.n	a9, 7
42004634:	108890        	and	a8, a8, a9
42004637:	f0a092        	movi	a9, 240
4200463a:	208890        	or	a8, a8, a9
4200463d:	004182        	s8i	a8, a1, 0
42004640:	4c0c      	movi.n	a12, 4
42004642:	00c1b2        	addi	a11, a1, 0
42004645:	ffd481        	l32r	a8, 42004598 <core::fmt::builders::DebugTuple::field+0xe4>
42004648:	02ad      	mov.n	a10, a2
4200464a:	0008e0        	callx8	a8
4200464d:	0a2d      	mov.n	a2, a10
4200464f:	f01d      	retw.n
42004651:	000000        	ill
42004654:	012334        	ee.ldqa.s16.128.ip	a3, 0x230
42004657:	a83c      	movi.n	a8, 58
42004659:	420050        	xorb	b0, b0, b5

4200465c <core::fmt::Write::write_fmt>:
4200465c:	008136        	entry	a1, 64
4200465f:	0129      	s32i.n	a2, a1, 0
42004661:	5388      	l32i.n	a8, a3, 20
42004663:	6189      	s32i.n	a8, a1, 24
42004665:	4388      	l32i.n	a8, a3, 16
42004667:	5189      	s32i.n	a8, a1, 20
42004669:	3388      	l32i.n	a8, a3, 12
4200466b:	4189      	s32i.n	a8, a1, 16
4200466d:	2388      	l32i.n	a8, a3, 8
4200466f:	3189      	s32i.n	a8, a1, 12
42004671:	1388      	l32i.n	a8, a3, 4
42004673:	2189      	s32i.n	a8, a1, 8
42004675:	0388      	l32i.n	a8, a3, 0
42004677:	1189      	s32i.n	a8, a1, 4
42004679:	00c1a2        	addi	a10, a1, 0
4200467c:	fff6b1        	l32r	a11, 42004654 <core::fmt::Write::write_char+0xb8>
4200467f:	04c1c2        	addi	a12, a1, 4
42004682:	fff581        	l32r	a8, 42004658 <core::fmt::Write::write_char+0xbc>
42004685:	0008e0        	callx8	a8
42004688:	0a2d      	mov.n	a2, a10
4200468a:	f01d      	retw.n
4200468c:	41bc      	beqz.n	a1, 420046c4 <<&mut W as core::fmt::Write>::write_char+0x14>
4200468e:	        	ee.ldf.64.xp	f4, f3, a0, a2

42004690 <<&mut W as core::fmt::Write>::write_str>:
42004690:	004136        	entry	a1, 32
42004693:	02a8      	l32i.n	a10, a2, 0
42004695:	fffd81        	l32r	a8, 4200468c <core::fmt::Write::write_fmt+0x30>
42004698:	03bd      	mov.n	a11, a3
4200469a:	04cd      	mov.n	a12, a4
4200469c:	0008e0        	callx8	a8
4200469f:	0a2d      	mov.n	a2, a10
420046a1:	f01d      	retw.n
420046a3:	080000        	lsx	f0, a0, a0
420046a6:	000000        	ill
420046a9:	00          	.byte 00
420046aa:	bc0001        	l32r	a0, 41ff36ac <__user_exception+0x1c7a484>
420046ad:	420041        	l32r	a4, 41fd4eb0 <__user_exception+0x1c5bc88>

420046b0 <<&mut W as core::fmt::Write>::write_char>:
420046b0:	006136        	entry	a1, 48
420046b3:	02a8      	l32i.n	a10, a2, 0
420046b5:	080c      	movi.n	a8, 0
420046b7:	0189      	s32i.n	a8, a1, 0
420046b9:	07e3f6        	bgeui	a3, 128, 420046c4 <<&mut W as core::fmt::Write>::write_char+0x14>
420046bc:	004132        	s8i	a3, a1, 0
420046bf:	1c0c      	movi.n	a12, 1
420046c1:	0024c6        	j	42004758 <<&mut W as core::fmt::Write>::write_char+0xa8>
420046c4:	fff881        	l32r	a8, 420046a4 <<&mut W as core::fmt::Write>::write_str+0x14>
420046c7:	1eb387        	bgeu	a3, a8, 420046e9 <<&mut W as core::fmt::Write>::write_char+0x39>
420046ca:	f83c      	movi.n	a8, 63
420046cc:	108380        	and	a8, a3, a8
420046cf:	80a092        	movi	a9, 128
420046d2:	208890        	or	a8, a8, a9
420046d5:	014182        	s8i	a8, a1, 1
420046d8:	418630        	srli	a8, a3, 6
420046db:	c0a092        	movi	a9, 192
420046de:	208890        	or	a8, a8, a9
420046e1:	004182        	s8i	a8, a1, 0
420046e4:	2c0c      	movi.n	a12, 2
420046e6:	001b86        	j	42004758 <<&mut W as core::fmt::Write>::write_char+0xa8>
420046e9:	ffef81        	l32r	a8, 420046a8 <<&mut W as core::fmt::Write>::write_str+0x18>
420046ec:	2ab387        	bgeu	a3, a8, 4200471a <<&mut W as core::fmt::Write>::write_char+0x6a>
420046ef:	f83c      	movi.n	a8, 63
420046f1:	109380        	and	a9, a3, a8
420046f4:	80a0b2        	movi	a11, 128
420046f7:	2099b0        	or	a9, a9, a11
420046fa:	024192        	s8i	a9, a1, 2
420046fd:	419c30        	srli	a9, a3, 12
42004700:	e0a0c2        	movi	a12, 224
42004703:	2099c0        	or	a9, a9, a12
42004706:	004192        	s8i	a9, a1, 0
42004709:	419630        	srli	a9, a3, 6
4200470c:	108980        	and	a8, a9, a8
4200470f:	2088b0        	or	a8, a8, a11
42004712:	014182        	s8i	a8, a1, 1
42004715:	3c0c      	movi.n	a12, 3
42004717:	000f46        	j	42004758 <<&mut W as core::fmt::Write>::write_char+0xa8>
4200471a:	f83c      	movi.n	a8, 63
4200471c:	109380        	and	a9, a3, a8
4200471f:	80a0b2        	movi	a11, 128
42004722:	2099b0        	or	a9, a9, a11
42004725:	034192        	s8i	a9, a1, 3
42004728:	419630        	srli	a9, a3, 6
4200472b:	109980        	and	a9, a9, a8
4200472e:	2099b0        	or	a9, a9, a11
42004731:	024192        	s8i	a9, a1, 2
42004734:	419c30        	srli	a9, a3, 12
42004737:	108980        	and	a8, a9, a8
4200473a:	2088b0        	or	a8, a8, a11
4200473d:	014182        	s8i	a8, a1, 1
42004740:	281c      	movi.n	a8, 18
42004742:	400800        	ssr	a8
42004745:	918030        	srl	a8, a3
42004748:	790c      	movi.n	a9, 7
4200474a:	108890        	and	a8, a8, a9
4200474d:	f0a092        	movi	a9, 240
42004750:	208890        	or	a8, a8, a9
42004753:	004182        	s8i	a8, a1, 0
42004756:	4c0c      	movi.n	a12, 4
42004758:	00c1b2        	addi	a11, a1, 0
4200475b:	ffd481        	l32r	a8, 420046ac <<&mut W as core::fmt::Write>::write_str+0x1c>
4200475e:	0008e0        	callx8	a8
42004761:	0a2d      	mov.n	a2, a10
42004763:	f01d      	retw.n
42004765:	000000        	ill
42004768:	012334        	ee.ldqa.s16.128.ip	a3, 0x230
4200476b:	a83c      	movi.n	a8, 58
4200476d:	420050        	xorb	b0, b0, b5

42004770 <<&mut W as core::fmt::Write>::write_fmt>:
42004770:	008136        	entry	a1, 64
42004773:	0288      	l32i.n	a8, a2, 0
42004775:	5398      	l32i.n	a9, a3, 20
42004777:	6199      	s32i.n	a9, a1, 24
42004779:	4398      	l32i.n	a9, a3, 16
4200477b:	5199      	s32i.n	a9, a1, 20
4200477d:	3398      	l32i.n	a9, a3, 12
4200477f:	4199      	s32i.n	a9, a1, 16
42004781:	2398      	l32i.n	a9, a3, 8
42004783:	3199      	s32i.n	a9, a1, 12
42004785:	1398      	l32i.n	a9, a3, 4
42004787:	2199      	s32i.n	a9, a1, 8
42004789:	0398      	l32i.n	a9, a3, 0
4200478b:	1199      	s32i.n	a9, a1, 4
4200478d:	0189      	s32i.n	a8, a1, 0
4200478f:	00c1a2        	addi	a10, a1, 0
42004792:	fff5b1        	l32r	a11, 42004768 <<&mut W as core::fmt::Write>::write_char+0xb8>
42004795:	04c1c2        	addi	a12, a1, 4
42004798:	fff581        	l32r	a8, 4200476c <<&mut W as core::fmt::Write>::write_char+0xbc>
4200479b:	0008e0        	callx8	a8
4200479e:	0a2d      	mov.n	a2, a10
420047a0:	f01d      	retw.n
420047a2:	00          	.byte 00
420047a3:	00          	.byte 00
420047a4:	1c98      	l32i.n	a9, a12, 4
420047a6:	ec3c01        	l32r	a0, 41fff898 <__user_exception+0x1c86670>
420047a9:	420051        	l32r	a5, 41fd4fac <__user_exception+0x1c5bd84>
420047ac:	1c88      	l32i.n	a8, a12, 4
420047ae:	543c01        	l32r	a0, 41fd98a0 <__user_exception+0x1c60678>
420047b1:	420064        	ee.st.accx.ip	a6, 0xfffffc00
420047b4:	0000270f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 112, q4, q4, q0, q0
420047b8:	1759      	s32i.n	a5, a7, 4
420047ba:	10d1b7        	bbs	a1, a11, 420047ce <<&mut W as core::fmt::Write>::write_fmt+0x5e>
420047bd:	000027        	bnone	a0, a2, 420047c1 <<&mut W as core::fmt::Write>::write_fmt+0x51>
420047c0:	fffc      	bnez.n	a15, 42004803 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x1f>
420047c2:	7b0000        	ule.s	b0, f0, f0
420047c5:	000014        	ee.ld.qacc_l.l.128.ip	a1, 0
420047c8:	1c9a      	add.n	a1, a12, a9
420047ca:	ff3c01        	l32r	a0, 420044bc <core::fmt::builders::DebugTuple::field+0x8>
420047cd:	ff0000ff 	ee.vmulas.s16.accx.ld.ip	q6, a15, 0xffffff00, q4, q0
420047d1:	05f5e0        	extui	a15, a14, 21, 1
420047d4:	2ca8      	l32i.n	a10, a12, 8
420047d6:	583c01        	l32r	a0, 41fda8c8 <__user_exception+0x1c616a0>
420047d9:	3c0123        	lsi	f2, a1, 240
420047dc:	012350        	slli	a2, a3, 27
420047df:	a83c      	movi.n	a8, 58
420047e1:	420050        	xorb	b0, b0, b5

420047e4 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt>:
420047e4:	01a136        	entry	a1, 208
420047e7:	7388      	l32i.n	a8, a3, 28
420047e9:	061c      	movi.n	a6, 16
420047eb:	109860        	and	a9, a8, a6
420047ee:	10f956        	bnez	a9, 42004901 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x11d>
420047f1:	092c      	movi.n	a9, 32
420047f3:	108890        	and	a8, a8, a9
420047f6:	13c856        	bnez	a8, 42004936 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x152>
420047f9:	1169      	s32i.n	a6, a1, 4
420047fb:	3139      	s32i.n	a3, a1, 12
420047fd:	2129      	s32i.n	a2, a1, 8
420047ff:	0228      	l32i.n	a2, a2, 0
42004801:	7e2c      	movi.n	a14, 39
42004803:	ffec81        	l32r	a8, 420047b4 <<&mut W as core::fmt::Write>::write_fmt+0x44>
42004806:	023827        	bltu	a8, a2, 4200480c <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x28>
42004809:	005e46        	j	42004986 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x1a2>
4200480c:	ffeb81        	l32r	a8, 420047b8 <<&mut W as core::fmt::Write>::write_fmt+0x48>
4200480f:	8189      	s32i.n	a8, a1, 32
42004811:	ffea81        	l32r	a8, 420047bc <<&mut W as core::fmt::Write>::write_fmt+0x4c>
42004814:	7189      	s32i.n	a8, a1, 28
42004816:	ffea81        	l32r	a8, 420047c0 <<&mut W as core::fmt::Write>::write_fmt+0x50>
42004819:	6189      	s32i.n	a8, a1, 24
4200481b:	ffea81        	l32r	a8, 420047c4 <<&mut W as core::fmt::Write>::write_fmt+0x54>
4200481e:	5189      	s32i.n	a8, a1, 20
42004820:	181c      	movi.n	a8, 17
42004822:	4189      	s32i.n	a8, a1, 16
42004824:	ffe971        	l32r	a7, 420047c8 <<&mut W as core::fmt::Write>::write_fmt+0x58>
42004827:	64a052        	movi	a5, 100
4200482a:	ffe841        	l32r	a4, 420047cc <<&mut W as core::fmt::Write>::write_fmt+0x5c>
4200482d:	ffe861        	l32r	a6, 420047d0 <<&mut W as core::fmt::Write>::write_fmt+0x60>
42004830:	029d      	mov.n	a9, a2
42004832:	fcce82        	addi	a8, a14, -4
42004835:	24c132        	addi	a3, a1, 36
42004838:	a38a      	add.n	a10, a3, a8
4200483a:	81b8      	l32i.n	a11, a1, 32
4200483c:	a229b0        	muluh	a2, a9, a11
4200483f:	412d20        	srli	a2, a2, 13
42004842:	71b8      	l32i.n	a11, a1, 28
42004844:	82b2b0        	mull	a11, a2, a11
42004847:	c0b9b0        	sub	a11, a9, a11
4200484a:	61c8      	l32i.n	a12, a1, 24
4200484c:	10cbc0        	and	a12, a11, a12
4200484f:	41c2c0        	srli	a12, a12, 2
42004852:	51d8      	l32i.n	a13, a1, 20
42004854:	82ccd0        	mull	a12, a12, a13
42004857:	41d8      	l32i.n	a13, a1, 16
42004859:	400d00        	ssr	a13
4200485c:	91c0c0        	srl	a12, a12
4200485f:	90dc70        	addx2	a13, a12, a7
42004862:	010df2        	l8ui	a15, a13, 1
42004865:	014af2        	s8i	a15, a10, 1
42004868:	000dd2        	l8ui	a13, a13, 0
4200486b:	004ad2        	s8i	a13, a10, 0
4200486e:	82ac50        	mull	a10, a12, a5
42004871:	c0aba0        	sub	a10, a11, a10
42004874:	10aa40        	and	a10, a10, a4
42004877:	90aa70        	addx2	a10, a10, a7
4200487a:	010ab2        	l8ui	a11, a10, 1
4200487d:	ce3a      	add.n	a12, a14, a3
4200487f:	dc0b      	addi.n	a13, a12, -1
42004881:	004db2        	s8i	a11, a13, 0
42004884:	000aa2        	l8ui	a10, a10, 0
42004887:	feccb2        	addi	a11, a12, -2
4200488a:	004ba2        	s8i	a10, a11, 0
4200488d:	08ed      	mov.n	a14, a8
4200488f:	9d3697        	bltu	a6, a9, 42004830 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x4c>
42004892:	63a092        	movi	a9, 99
42004895:	023927        	bltu	a9, a2, 4200489b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0xb7>
42004898:	003d46        	j	42004991 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x1ad>
4200489b:	fec882        	addi	a8, a8, -2
4200489e:	24c192        	addi	a9, a1, 36
420048a1:	a98a      	add.n	a10, a9, a8
420048a3:	ffc791        	l32r	a9, 420047c0 <<&mut W as core::fmt::Write>::write_fmt+0x50>
420048a6:	109290        	and	a9, a2, a9
420048a9:	419290        	srli	a9, a9, 2
420048ac:	ffc6b1        	l32r	a11, 420047c4 <<&mut W as core::fmt::Write>::write_fmt+0x54>
420048af:	8299b0        	mull	a9, a9, a11
420048b2:	1b1c      	movi.n	a11, 17
420048b4:	400b00        	ssr	a11
420048b7:	919090        	srl	a9, a9
420048ba:	64a0b2        	movi	a11, 100
420048bd:	82b9b0        	mull	a11, a9, a11
420048c0:	c0b2b0        	sub	a11, a2, a11
420048c3:	ffc2c1        	l32r	a12, 420047cc <<&mut W as core::fmt::Write>::write_fmt+0x5c>
420048c6:	10bbc0        	and	a11, a11, a12
420048c9:	ffbfc1        	l32r	a12, 420047c8 <<&mut W as core::fmt::Write>::write_fmt+0x58>
420048cc:	90bbc0        	addx2	a11, a11, a12
420048cf:	010bc2        	l8ui	a12, a11, 1
420048d2:	014ac2        	s8i	a12, a10, 1
420048d5:	000bb2        	l8ui	a11, a11, 0
420048d8:	004ab2        	s8i	a11, a10, 0
420048db:	3138      	l32i.n	a3, a1, 12
420048dd:	2128      	l32i.n	a2, a1, 8
420048df:	1168      	l32i.n	a6, a1, 4
420048e1:	0299f6        	bgeui	a9, 10, 420048e7 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x103>
420048e4:	002dc6        	j	4200499f <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x1bb>
420048e7:	fec882        	addi	a8, a8, -2
420048ea:	24c1a2        	addi	a10, a1, 36
420048ed:	aa8a      	add.n	a10, a10, a8
420048ef:	ffb6b1        	l32r	a11, 420047c8 <<&mut W as core::fmt::Write>::write_fmt+0x58>
420048f2:	9099b0        	addx2	a9, a9, a11
420048f5:	0109b2        	l8ui	a11, a9, 1
420048f8:	014ab2        	s8i	a11, a10, 1
420048fb:	000992        	l8ui	a9, a9, 0
420048fe:	0029c6        	j	420049a9 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x1c5>
42004901:	80a0a2        	movi	a10, 128
42004904:	24c182        	addi	a8, a1, 36
42004907:	88aa      	add.n	a8, a8, a10
42004909:	0278      	l32i.n	a7, a2, 0
4200490b:	f90c      	movi.n	a9, 15
4200490d:	7b5c      	movi.n	a11, 87
4200490f:	0d3c      	movi.n	a13, 48
42004911:	ae0c      	movi.n	a14, 10
42004913:	000386        	j	42004925 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x141>
42004916:	a7aa      	add.n	a10, a7, a10
42004918:	880b      	addi.n	a8, a8, -1
4200491a:	0048a2        	s8i	a10, a8, 0
4200491d:	ac0b      	addi.n	a10, a12, -1
4200491f:	4174f0        	srli	a7, a15, 4
42004922:	45bfb6        	bltui	a15, 16, 4200496b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x187>
42004925:	0acd      	mov.n	a12, a10
42004927:	07fd      	mov.n	a15, a7
42004929:	10af90        	and	a10, a15, a9
4200492c:	0d7d      	mov.n	a7, a13
4200492e:	e43ae7        	bltu	a10, a14, 42004916 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x132>
42004931:	0b7d      	mov.n	a7, a11
42004933:	fff7c6        	j	42004916 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x132>
42004936:	80a0a2        	movi	a10, 128
42004939:	24c182        	addi	a8, a1, 36
4200493c:	88aa      	add.n	a8, a8, a10
4200493e:	0278      	l32i.n	a7, a2, 0
42004940:	f90c      	movi.n	a9, 15
42004942:	7b3c      	movi.n	a11, 55
42004944:	0d3c      	movi.n	a13, 48
42004946:	ae0c      	movi.n	a14, 10
42004948:	000386        	j	4200495a <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x176>
4200494b:	a7aa      	add.n	a10, a7, a10
4200494d:	880b      	addi.n	a8, a8, -1
4200494f:	0048a2        	s8i	a10, a8, 0
42004952:	ac0b      	addi.n	a10, a12, -1
42004954:	4174f0        	srli	a7, a15, 4
42004957:	10bfb6        	bltui	a15, 16, 4200496b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x187>
4200495a:	0acd      	mov.n	a12, a10
4200495c:	07fd      	mov.n	a15, a7
4200495e:	10af90        	and	a10, a15, a9
42004961:	0d7d      	mov.n	a7, a13
42004963:	e43ae7        	bltu	a10, a14, 4200494b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x167>
42004966:	0b7d      	mov.n	a7, a11
42004968:	fff7c6        	j	4200494b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x167>
4200496b:	81a082        	movi	a8, 129
4200496e:	023a87        	bltu	a10, a8, 42004974 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x190>
42004971:	0093c6        	j	42004bc4 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3e0>
42004974:	24c192        	addi	a9, a1, 36
42004977:	e9aa      	add.n	a14, a9, a10
42004979:	c0f8c0        	sub	a15, a8, a12
4200497c:	170c      	movi.n	a7, 1
4200497e:	ff89c1        	l32r	a12, 420047a4 <<&mut W as core::fmt::Write>::write_fmt+0x34>
42004981:	2d0c      	movi.n	a13, 2
42004983:	000d86        	j	420049bd <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x1d9>
42004986:	0e8d      	mov.n	a8, a14
42004988:	63a092        	movi	a9, 99
4200498b:	02b927        	bgeu	a9, a2, 42004991 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x1ad>
4200498e:	ffc246        	j	4200489b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0xb7>
42004991:	029d      	mov.n	a9, a2
42004993:	3138      	l32i.n	a3, a1, 12
42004995:	2128      	l32i.n	a2, a1, 8
42004997:	1168      	l32i.n	a6, a1, 4
42004999:	0299b6        	bltui	a9, 10, 4200499f <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x1bb>
4200499c:	ffd1c6        	j	420048e7 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x103>
4200499f:	880b      	addi.n	a8, a8, -1
420049a1:	24c1a2        	addi	a10, a1, 36
420049a4:	aa8a      	add.n	a10, a10, a8
420049a6:	30c992        	addi	a9, a9, 48
420049a9:	004a92        	s8i	a9, a10, 0
420049ac:	24c192        	addi	a9, a1, 36
420049af:	e98a      	add.n	a14, a9, a8
420049b1:	792c      	movi.n	a9, 39
420049b3:	c0f980        	sub	a15, a9, a8
420049b6:	170c      	movi.n	a7, 1
420049b8:	ff87c1        	l32r	a12, 420047d4 <<&mut W as core::fmt::Write>::write_fmt+0x64>
420049bb:	0d0c      	movi.n	a13, 0
420049bd:	ff7a81        	l32r	a8, 420047a8 <<&mut W as core::fmt::Write>::write_fmt+0x38>
420049c0:	03ad      	mov.n	a10, a3
420049c2:	07bd      	mov.n	a11, a7
420049c4:	0008e0        	callx8	a8
420049c7:	1f5a56        	bnez	a10, 42004bc0 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3dc>
420049ca:	63b8      	l32i.n	a11, a3, 24
420049cc:	53a8      	l32i.n	a10, a3, 20
420049ce:	080c      	movi.n	a8, 0
420049d0:	d189      	s32i.n	a8, a1, 52
420049d2:	c189      	s32i.n	a8, a1, 48
420049d4:	ff8181        	l32r	a8, 420047d8 <<&mut W as core::fmt::Write>::write_fmt+0x68>
420049d7:	b189      	s32i.n	a8, a1, 44
420049d9:	170c      	movi.n	a7, 1
420049db:	a179      	s32i.n	a7, a1, 40
420049dd:	ff7f81        	l32r	a8, 420047dc <<&mut W as core::fmt::Write>::write_fmt+0x6c>
420049e0:	9189      	s32i.n	a8, a1, 36
420049e2:	24c1c2        	addi	a12, a1, 36
420049e5:	ff7e81        	l32r	a8, 420047e0 <<&mut W as core::fmt::Write>::write_fmt+0x70>
420049e8:	0008e0        	callx8	a8
420049eb:	1d1a56        	bnez	a10, 42004bc0 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3dc>
420049ee:	7388      	l32i.n	a8, a3, 28
420049f0:	109860        	and	a9, a8, a6
420049f3:	107956        	bnez	a9, 42004afe <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x31a>
420049f6:	092c      	movi.n	a9, 32
420049f8:	108890        	and	a8, a8, a9
420049fb:	134856        	bnez	a8, 42004b33 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x34f>
420049fe:	3139      	s32i.n	a3, a1, 12
42004a00:	1298      	l32i.n	a9, a2, 4
42004a02:	7e2c      	movi.n	a14, 39
42004a04:	ff6c81        	l32r	a8, 420047b4 <<&mut W as core::fmt::Write>::write_fmt+0x44>
42004a07:	023897        	bltu	a8, a9, 42004a0d <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x229>
42004a0a:	005dc6        	j	42004b85 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3a1>
42004a0d:	ff6a81        	l32r	a8, 420047b8 <<&mut W as core::fmt::Write>::write_fmt+0x48>
42004a10:	8189      	s32i.n	a8, a1, 32
42004a12:	ff6a81        	l32r	a8, 420047bc <<&mut W as core::fmt::Write>::write_fmt+0x4c>
42004a15:	7189      	s32i.n	a8, a1, 28
42004a17:	ff6a81        	l32r	a8, 420047c0 <<&mut W as core::fmt::Write>::write_fmt+0x50>
42004a1a:	6189      	s32i.n	a8, a1, 24
42004a1c:	ff6a81        	l32r	a8, 420047c4 <<&mut W as core::fmt::Write>::write_fmt+0x54>
42004a1f:	5189      	s32i.n	a8, a1, 20
42004a21:	181c      	movi.n	a8, 17
42004a23:	4189      	s32i.n	a8, a1, 16
42004a25:	ff6871        	l32r	a7, 420047c8 <<&mut W as core::fmt::Write>::write_fmt+0x58>
42004a28:	64a062        	movi	a6, 100
42004a2b:	ff6851        	l32r	a5, 420047cc <<&mut W as core::fmt::Write>::write_fmt+0x5c>
42004a2e:	ff6841        	l32r	a4, 420047d0 <<&mut W as core::fmt::Write>::write_fmt+0x60>
42004a31:	092d      	mov.n	a2, a9
42004a33:	fcce82        	addi	a8, a14, -4
42004a36:	24c132        	addi	a3, a1, 36
42004a39:	a38a      	add.n	a10, a3, a8
42004a3b:	8198      	l32i.n	a9, a1, 32
42004a3d:	a29290        	muluh	a9, a2, a9
42004a40:	419d90        	srli	a9, a9, 13
42004a43:	71b8      	l32i.n	a11, a1, 28
42004a45:	82b9b0        	mull	a11, a9, a11
42004a48:	c0b2b0        	sub	a11, a2, a11
42004a4b:	61c8      	l32i.n	a12, a1, 24
42004a4d:	10cbc0        	and	a12, a11, a12
42004a50:	41c2c0        	srli	a12, a12, 2
42004a53:	51d8      	l32i.n	a13, a1, 20
42004a55:	82ccd0        	mull	a12, a12, a13
42004a58:	41d8      	l32i.n	a13, a1, 16
42004a5a:	400d00        	ssr	a13
42004a5d:	91c0c0        	srl	a12, a12
42004a60:	90dc70        	addx2	a13, a12, a7
42004a63:	010df2        	l8ui	a15, a13, 1
42004a66:	014af2        	s8i	a15, a10, 1
42004a69:	000dd2        	l8ui	a13, a13, 0
42004a6c:	004ad2        	s8i	a13, a10, 0
42004a6f:	82ac60        	mull	a10, a12, a6
42004a72:	c0aba0        	sub	a10, a11, a10
42004a75:	10aa50        	and	a10, a10, a5
42004a78:	90aa70        	addx2	a10, a10, a7
42004a7b:	010ab2        	l8ui	a11, a10, 1
42004a7e:	ce3a      	add.n	a12, a14, a3
42004a80:	dc0b      	addi.n	a13, a12, -1
42004a82:	004db2        	s8i	a11, a13, 0
42004a85:	000aa2        	l8ui	a10, a10, 0
42004a88:	feccb2        	addi	a11, a12, -2
42004a8b:	004ba2        	s8i	a10, a11, 0
42004a8e:	08ed      	mov.n	a14, a8
42004a90:	9d3427        	bltu	a4, a2, 42004a31 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x24d>
42004a93:	63a0a2        	movi	a10, 99
42004a96:	023a97        	bltu	a10, a9, 42004a9c <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x2b8>
42004a99:	003cc6        	j	42004b90 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3ac>
42004a9c:	fec882        	addi	a8, a8, -2
42004a9f:	24c1a2        	addi	a10, a1, 36
42004aa2:	ba8a      	add.n	a11, a10, a8
42004aa4:	ff47a1        	l32r	a10, 420047c0 <<&mut W as core::fmt::Write>::write_fmt+0x50>
42004aa7:	10a9a0        	and	a10, a9, a10
42004aaa:	41a2a0        	srli	a10, a10, 2
42004aad:	ff45c1        	l32r	a12, 420047c4 <<&mut W as core::fmt::Write>::write_fmt+0x54>
42004ab0:	82aac0        	mull	a10, a10, a12
42004ab3:	1c1c      	movi.n	a12, 17
42004ab5:	400c00        	ssr	a12
42004ab8:	91d0a0        	srl	a13, a10
42004abb:	64a0c2        	movi	a12, 100
42004abe:	82cdc0        	mull	a12, a13, a12
42004ac1:	c099c0        	sub	a9, a9, a12
42004ac4:	ff42c1        	l32r	a12, 420047cc <<&mut W as core::fmt::Write>::write_fmt+0x5c>
42004ac7:	1099c0        	and	a9, a9, a12
42004aca:	ff3fc1        	l32r	a12, 420047c8 <<&mut W as core::fmt::Write>::write_fmt+0x58>
42004acd:	9099c0        	addx2	a9, a9, a12
42004ad0:	0109c2        	l8ui	a12, a9, 1
42004ad3:	014bc2        	s8i	a12, a11, 1
42004ad6:	000992        	l8ui	a9, a9, 0
42004ad9:	004b92        	s8i	a9, a11, 0
42004adc:	31a8      	l32i.n	a10, a1, 12
42004ade:	029df6        	bgeui	a13, 10, 42004ae4 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x300>
42004ae1:	002d46        	j	42004b9a <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3b6>
42004ae4:	fec882        	addi	a8, a8, -2
42004ae7:	24c192        	addi	a9, a1, 36
42004aea:	998a      	add.n	a9, a9, a8
42004aec:	ff37b1        	l32r	a11, 420047c8 <<&mut W as core::fmt::Write>::write_fmt+0x58>
42004aef:	90cdb0        	addx2	a12, a13, a11
42004af2:	010cb2        	l8ui	a11, a12, 1
42004af5:	0149b2        	s8i	a11, a9, 1
42004af8:	000cb2        	l8ui	a11, a12, 0
42004afb:	002946        	j	42004ba4 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3c0>
42004afe:	80a0a2        	movi	a10, 128
42004b01:	24c182        	addi	a8, a1, 36
42004b04:	88aa      	add.n	a8, a8, a10
42004b06:	1278      	l32i.n	a7, a2, 4
42004b08:	f90c      	movi.n	a9, 15
42004b0a:	7b5c      	movi.n	a11, 87
42004b0c:	0d3c      	movi.n	a13, 48
42004b0e:	ae0c      	movi.n	a14, 10
42004b10:	000386        	j	42004b22 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x33e>
42004b13:	a7aa      	add.n	a10, a7, a10
42004b15:	880b      	addi.n	a8, a8, -1
42004b17:	0048a2        	s8i	a10, a8, 0
42004b1a:	ac0b      	addi.n	a10, a12, -1
42004b1c:	4174f0        	srli	a7, a15, 4
42004b1f:	45bfb6        	bltui	a15, 16, 42004b68 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x384>
42004b22:	0acd      	mov.n	a12, a10
42004b24:	07fd      	mov.n	a15, a7
42004b26:	10af90        	and	a10, a15, a9
42004b29:	0d7d      	mov.n	a7, a13
42004b2b:	e43ae7        	bltu	a10, a14, 42004b13 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x32f>
42004b2e:	0b7d      	mov.n	a7, a11
42004b30:	fff7c6        	j	42004b13 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x32f>
42004b33:	80a0a2        	movi	a10, 128
42004b36:	24c182        	addi	a8, a1, 36
42004b39:	88aa      	add.n	a8, a8, a10
42004b3b:	1278      	l32i.n	a7, a2, 4
42004b3d:	f90c      	movi.n	a9, 15
42004b3f:	7b3c      	movi.n	a11, 55
42004b41:	0d3c      	movi.n	a13, 48
42004b43:	ae0c      	movi.n	a14, 10
42004b45:	000386        	j	42004b57 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x373>
42004b48:	a7aa      	add.n	a10, a7, a10
42004b4a:	880b      	addi.n	a8, a8, -1
42004b4c:	0048a2        	s8i	a10, a8, 0
42004b4f:	ac0b      	addi.n	a10, a12, -1
42004b51:	4174f0        	srli	a7, a15, 4
42004b54:	10bfb6        	bltui	a15, 16, 42004b68 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x384>
42004b57:	0acd      	mov.n	a12, a10
42004b59:	07fd      	mov.n	a15, a7
42004b5b:	10af90        	and	a10, a15, a9
42004b5e:	0d7d      	mov.n	a7, a13
42004b60:	e43ae7        	bltu	a10, a14, 42004b48 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x364>
42004b63:	0b7d      	mov.n	a7, a11
42004b65:	fff7c6        	j	42004b48 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x364>
42004b68:	81a082        	movi	a8, 129
42004b6b:	55ba87        	bgeu	a10, a8, 42004bc4 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3e0>
42004b6e:	24c192        	addi	a9, a1, 36
42004b71:	e9aa      	add.n	a14, a9, a10
42004b73:	c0f8c0        	sub	a15, a8, a12
42004b76:	1b0c      	movi.n	a11, 1
42004b78:	ff0bc1        	l32r	a12, 420047a4 <<&mut W as core::fmt::Write>::write_fmt+0x34>
42004b7b:	2d0c      	movi.n	a13, 2
42004b7d:	ff0a81        	l32r	a8, 420047a8 <<&mut W as core::fmt::Write>::write_fmt+0x38>
42004b80:	03ad      	mov.n	a10, a3
42004b82:	000d46        	j	42004bbb <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3d7>
42004b85:	0e8d      	mov.n	a8, a14
42004b87:	63a0a2        	movi	a10, 99
42004b8a:	02ba97        	bgeu	a10, a9, 42004b90 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3ac>
42004b8d:	ffc2c6        	j	42004a9c <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x2b8>
42004b90:	09dd      	mov.n	a13, a9
42004b92:	31a8      	l32i.n	a10, a1, 12
42004b94:	029db6        	bltui	a13, 10, 42004b9a <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3b6>
42004b97:	ffd246        	j	42004ae4 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x300>
42004b9a:	880b      	addi.n	a8, a8, -1
42004b9c:	24c192        	addi	a9, a1, 36
42004b9f:	998a      	add.n	a9, a9, a8
42004ba1:	30cdb2        	addi	a11, a13, 48
42004ba4:	0049b2        	s8i	a11, a9, 0
42004ba7:	24c192        	addi	a9, a1, 36
42004baa:	e98a      	add.n	a14, a9, a8
42004bac:	792c      	movi.n	a9, 39
42004bae:	c0f980        	sub	a15, a9, a8
42004bb1:	1b0c      	movi.n	a11, 1
42004bb3:	ff08c1        	l32r	a12, 420047d4 <<&mut W as core::fmt::Write>::write_fmt+0x64>
42004bb6:	0d0c      	movi.n	a13, 0
42004bb8:	fefc81        	l32r	a8, 420047a8 <<&mut W as core::fmt::Write>::write_fmt+0x38>
42004bbb:	0008e0        	callx8	a8
42004bbe:	0a7d      	mov.n	a7, a10
42004bc0:	072d      	mov.n	a2, a7
42004bc2:	f01d      	retw.n
42004bc4:	80a0b2        	movi	a11, 128
42004bc7:	fef9c1        	l32r	a12, 420047ac <<&mut W as core::fmt::Write>::write_fmt+0x3c>
42004bca:	fef981        	l32r	a8, 420047b0 <<&mut W as core::fmt::Write>::write_fmt+0x40>
42004bcd:	0008e0        	callx8	a8
42004bd0:	0041f0        	break	1, 15
42004bd3:	00          	.byte 00
42004bd4:	00          	.byte 00
42004bd5:	280000ff 	ee.vmulas.s8.accx.ld.ip.qup	q0, a15, 0xfffffe00, q4, q0, q0, q0
42004bd9:	24          	.byte 0x24
42004bda:	9c3c01        	l32r	a0, 41febccc <__user_exception+0x1c72aa4>
42004bdd:	420064        	ee.st.accx.ip	a6, 0xfffffc00
42004be0:	0064e4        	ee.ld.qacc_l.l.128.ip	a14, 0x640
42004be3:	ffff42        	s32ri	a4, a15, 0x3fc
42004be6:	580000        	ssxp	f0, a0, a0
42004be9:	3c0123        	lsi	f2, a1, 240
42004bec:	2418      	l32i.n	a1, a4, 8
42004bee:	c83c01        	l32r	a0, 41ff6ce0 <__user_exception+0x1c7dab8>
42004bf1:	420061        	l32r	a6, 41fd53f4 <__user_exception+0x1c5c1cc>

42004bf4 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032>:
42004bf4:	006136        	entry	a1, 48
42004bf7:	180c      	movi.n	a8, 1
42004bf9:	0189      	s32i.n	a8, a1, 0
42004bfb:	04b416        	beqz	a4, 42004c4a <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x56>
42004bfe:	909430        	addx2	a9, a4, a3
42004c01:	fff4a1        	l32r	a10, 42004bd4 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3f0>
42004c04:	10a2a0        	and	a10, a2, a10
42004c07:	41b8a0        	srli	a11, a10, 8
42004c0a:	0a0c      	movi.n	a10, 0
42004c0c:	ffa0c2        	movi	a12, 255
42004c0f:	10dbc0        	and	a13, a11, a12
42004c12:	0103e2        	l8ui	a14, a3, 1
42004c15:	baea      	add.n	a11, a10, a14
42004c17:	0003f2        	l8ui	a15, a3, 0
42004c1a:	332b      	addi.n	a3, a3, 2
42004c1c:	229fd7        	bne	a15, a13, 42004c42 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x4e>
42004c1f:	02bba7        	bgeu	a11, a10, 42004c25 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x31>
42004c22:	002986        	j	42004ccc <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xd8>
42004c25:	02b6b7        	bgeu	a6, a11, 42004c2b <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x37>
42004c28:	002b06        	j	42004cd8 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xe4>
42004c2b:	f5aa      	add.n	a15, a5, a10
42004c2d:	afea      	add.n	a10, a15, a14
42004c2f:	121fa7        	beq	a15, a10, 42004c45 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x51>
42004c32:	10e2c0        	and	a14, a2, a12
42004c35:	4f1b      	addi.n	a4, a15, 1
42004c37:	000f82        	l8ui	a8, a15, 0
42004c3a:	04fd      	mov.n	a15, a4
42004c3c:	ef98e7        	bne	a8, a14, 42004c2f <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x3b>
42004c3f:	001bc6        	j	42004cb2 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xbe>
42004c42:	043df7        	bltu	a13, a15, 42004c4a <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x56>
42004c45:	0bad      	mov.n	a10, a11
42004c47:	c79397        	bne	a3, a9, 42004c12 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x1e>
42004c4a:	c1c8      	l32i.n	a12, a1, 48
42004c4c:	0188      	l32i.n	a8, a1, 0
42004c4e:	08ad      	mov.n	a10, a8
42004c50:	059c16        	beqz	a12, 42004cad <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xb9>
42004c53:	190c      	movi.n	a9, 1
42004c55:	0b0c      	movi.n	a11, 0
42004c57:	09ad      	mov.n	a10, a9
42004c59:	019cb7        	bne	a12, a11, 42004c5e <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x6a>
42004c5c:	0bad      	mov.n	a10, a11
42004c5e:	c7ca      	add.n	a12, a7, a12
42004c60:	f7aa      	add.n	a15, a7, a10
42004c62:	ffe0a1        	l32r	a10, 42004be4 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x400>
42004c65:	10d2a0        	and	a13, a2, a10
42004c68:	7fa0e2        	movi	a14, 127
42004c6b:	09ad      	mov.n	a10, a9
42004c6d:	000762        	l8ui	a6, a7, 0
42004c70:	017680        	slli	a7, a6, 24
42004c73:	317870        	srai	a7, a7, 24
42004c76:	00a796        	bltz	a7, 42004c84 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x90>
42004c79:	0f7d      	mov.n	a7, a15
42004c7b:	c0dd60        	sub	a13, a13, a6
42004c7e:	019dd6        	bgez	a13, 42004c9b <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xa7>
42004c81:	000a06        	j	42004cad <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xb9>
42004c84:	331fc7        	beq	a15, a12, 42004cbb <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xc7>
42004c87:	1077e0        	and	a7, a7, a14
42004c8a:	117780        	slli	a7, a7, 8
42004c8d:	000f62        	l8ui	a6, a15, 0
42004c90:	206760        	or	a6, a7, a6
42004c93:	7f1b      	addi.n	a7, a15, 1
42004c95:	c0dd60        	sub	a13, a13, a6
42004c98:	011d96        	bltz	a13, 42004cad <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xb9>
42004c9b:	09fd      	mov.n	a15, a9
42004c9d:	0197c7        	bne	a7, a12, 42004ca2 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xae>
42004ca0:	0bfd      	mov.n	a15, a11
42004ca2:	30aa90        	xor	a10, a10, a9
42004ca5:	004716        	beqz	a7, 42004cad <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xb9>
42004ca8:	f7fa      	add.n	a15, a7, a15
42004caa:	bf97c7        	bne	a7, a12, 42004c6d <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x79>
42004cad:	102a80        	and	a2, a10, a8
42004cb0:	f01d      	retw.n
42004cb2:	0a0c      	movi.n	a10, 0
42004cb4:	0188      	l32i.n	a8, a1, 0
42004cb6:	102a80        	and	a2, a10, a8
42004cb9:	f01d      	retw.n
42004cbb:	ffcba1        	l32r	a10, 42004be8 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x404>
42004cbe:	bb2c      	movi.n	a11, 43
42004cc0:	ffcbc1        	l32r	a12, 42004bec <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x408>
42004cc3:	ffcb81        	l32r	a8, 42004bf0 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x40c>
42004cc6:	0008e0        	callx8	a8
42004cc9:	0041f0        	break	1, 15
42004ccc:	ffc3c1        	l32r	a12, 42004bd8 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3f4>
42004ccf:	ffc481        	l32r	a8, 42004be0 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3fc>
42004cd2:	0008e0        	callx8	a8
42004cd5:	0041f0        	break	1, 15
42004cd8:	ffc0c1        	l32r	a12, 42004bd8 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3f4>
42004cdb:	ffc081        	l32r	a8, 42004bdc <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3f8>
42004cde:	0bad      	mov.n	a10, a11
42004ce0:	06bd      	mov.n	a11, a6
42004ce2:	0008e0        	callx8	a8
42004ce5:	0041f0        	break	1, 15
42004ce8:	010000        	slli	a0, a0, 32
42004ceb:	000000        	ill
42004cee:	c60002        	l8ui	a0, a0, 198
42004cf1:	fd48      	l32i.n	a4, a13, 60
42004cf3:	ff          	.byte 0xff
42004cf4:	5e          	.byte 0x5e
42004cf5:	fffd31        	l32r	a3, 42004cec <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xf8>
42004cf8:	1f          	.byte 0x1f
42004cf9:	14          	.byte 0x14
42004cfa:	fd          	.byte 0xfd
42004cfb:	fd05e2ff 	ee.vmulas.u16.qacc.ld.ip	q2, a15, -224, q7, q4
42004cff:	ff          	.byte 0xff
42004d00:	fcecb5        	call12	42001bcc <<esp_backtrace::arch::Context as core::fmt::Debug>::fmt+0x780>
42004d03:	ff          	.byte 0xff
42004d04:	50          	.byte 0x50
42004d05:	fcdc      	bnez.n	a12, 42004d28 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x134>
42004d07:	0add50ff 	ee.vmulas.s16.accx.ld.ip.qup	q5, a15, 0xfffffe00, q5, q3, q5, q5
42004d0b:	00          	.byte 00
42004d0c:	00000c1f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a1, 192, q4, q0, q0, q0
42004d10:	0002b81e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a1, 128, q2, q6, q0, q2
42004d14:	02a6e0        	andb	b10, b6, b14
42004d17:	000000        	ill
42004d1a:	01f0ffef 	ee.vmulas.s16.accx.ld.ip.qup	q2, a14, 240, q7, q7, q7, q0
42004d1e:	fd          	.byte 0xfd
42004d1f:	012438ff 	ee.vmulas.s16.accx.ld.ip.qup	q2, a15, 128, q4, q6, q2, q4
42004d23:	903c      	movi.n	a0, 57
42004d25:	24          	.byte 0x24
42004d26:	543c01        	l32r	a0, 41fd9e18 <__user_exception+0x1c60bf0>
42004d29:	3c0125        	call8	42040d3c <memset+0x39d64>
42004d2c:	004bf4        	ee.ld.qacc_l.l.128.ip	a15, 0x4b0
42004d2f:	271642        	l16ui	a4, a6, 78
42004d32:	663c01        	l32r	a0, 41fde624 <__user_exception+0x1c653fc>
42004d35:	3c0127        	bnone	a1, a2, 42004d75 <core::unicode::printable::is_printable+0x39>
42004d38:	012885        	call0	42005fc4 <<&T as core::fmt::Debug>::fmt>
42004d3b:	      	movi.n	a6, 51

42004d3c <core::unicode::printable::is_printable>:
42004d3c:	006136        	entry	a1, 48
42004d3f:	080c      	movi.n	a8, 0
42004d41:	170c      	movi.n	a7, 1
42004d43:	04c2f6        	bgeui	a2, 32, 42004d4b <core::unicode::printable::is_printable+0xf>
42004d46:	08ad      	mov.n	a10, a8
42004d48:	0001c6        	j	42004d53 <core::unicode::printable::is_printable+0x17>
42004d4b:	7fa092        	movi	a9, 127
42004d4e:	07ad      	mov.n	a10, a7
42004d50:	04b297        	bgeu	a2, a9, 42004d58 <core::unicode::printable::is_printable+0x1c>
42004d53:	102a70        	and	a2, a10, a7
42004d56:	f01d      	retw.n
42004d58:	ffe491        	l32r	a9, 42004ce8 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xf4>
42004d5b:	15b297        	bgeu	a2, a9, 42004d74 <core::unicode::printable::is_printable+0x38>
42004d5e:	2fa182        	movi	a8, 0x12f
42004d61:	0189      	s32i.n	a8, a1, 0
42004d63:	fff3b1        	l32r	a11, 42004d30 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x13c>
42004d66:	8c2c      	movi.n	a12, 40
42004d68:	fff3d1        	l32r	a13, 42004d34 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x140>
42004d6b:	1fa1e2        	movi	a14, 0x11f
42004d6e:	fff2f1        	l32r	a15, 42004d38 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x144>
42004d71:	000606        	j	42004d8d <core::unicode::printable::is_printable+0x51>
42004d74:	ffde91        	l32r	a9, 42004cec <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xf8>
42004d77:	1fb297        	bgeu	a2, a9, 42004d9a <core::unicode::printable::is_printable+0x5e>
42004d7a:	c2a182        	movi	a8, 0x1c2
42004d7d:	0189      	s32i.n	a8, a1, 0
42004d7f:	ffe8b1        	l32r	a11, 42004d20 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x12c>
42004d82:	cc2c      	movi.n	a12, 44
42004d84:	ffe8d1        	l32r	a13, 42004d24 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x130>
42004d87:	c4a0e2        	movi	a14, 196
42004d8a:	ffe7f1        	l32r	a15, 42004d28 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x134>
42004d8d:	ffe781        	l32r	a8, 42004d2c <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x138>
42004d90:	02ad      	mov.n	a10, a2
42004d92:	0008e0        	callx8	a8
42004d95:	102a70        	and	a2, a10, a7
42004d98:	f01d      	retw.n
42004d9a:	ffda91        	l32r	a9, 42004d04 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x110>
42004d9d:	929a      	add.n	a9, a2, a9
42004d9f:	ffdaa1        	l32r	a10, 42004d08 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x114>
42004da2:	a039a7        	bltu	a9, a10, 42004d46 <core::unicode::printable::is_printable+0xa>
42004da5:	ffd691        	l32r	a9, 42004d00 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x10c>
42004da8:	929a      	add.n	a9, a2, a9
42004daa:	9859b6        	bltui	a9, 5, 42004d46 <core::unicode::printable::is_printable+0xa>
42004dad:	ffd391        	l32r	a9, 42004cfc <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x108>
42004db0:	929a      	add.n	a9, a2, a9
42004db2:	e2a5a2        	movi	a10, 0x5e2
42004db5:	8d39a7        	bltu	a9, a10, 42004d46 <core::unicode::printable::is_printable+0xa>
42004db8:	ffd091        	l32r	a9, 42004cf8 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x104>
42004dbb:	929a      	add.n	a9, a2, a9
42004dbd:	ffd3a1        	l32r	a10, 42004d0c <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x118>
42004dc0:	8239a7        	bltu	a9, a10, 42004d46 <core::unicode::printable::is_printable+0xa>
42004dc3:	ffcc91        	l32r	a9, 42004cf4 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x100>
42004dc6:	929a      	add.n	a9, a2, a9
42004dc8:	ea0c      	movi.n	a10, 14
42004dca:	02b9a7        	bgeu	a9, a10, 42004dd0 <core::unicode::printable::is_printable+0x94>
42004dcd:	ffdd46        	j	42004d46 <core::unicode::printable::is_printable+0xa>
42004dd0:	e97c      	movi.n	a9, -2
42004dd2:	109290        	and	a9, a2, a9
42004dd5:	ffcea1        	l32r	a10, 42004d10 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x11c>
42004dd8:	0299a7        	bne	a9, a10, 42004dde <core::unicode::printable::is_printable+0xa2>
42004ddb:	ffd9c6        	j	42004d46 <core::unicode::printable::is_printable+0xa>
42004dde:	096c      	movi.n	a9, -32
42004de0:	109290        	and	a9, a2, a9
42004de3:	ffcca1        	l32r	a10, 42004d14 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x120>
42004de6:	0299a7        	bne	a9, a10, 42004dec <core::unicode::printable::is_printable+0xb0>
42004de9:	ffd646        	j	42004d46 <core::unicode::printable::is_printable+0xa>
42004dec:	ffc191        	l32r	a9, 42004cf0 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0xfc>
42004def:	929a      	add.n	a9, a2, a9
42004df1:	08ad      	mov.n	a10, a8
42004df3:	0269f6        	bgeui	a9, 6, 42004df9 <core::unicode::printable::is_printable+0xbd>
42004df6:	ffd646        	j	42004d53 <core::unicode::printable::is_printable+0x17>
42004df9:	ffc781        	l32r	a8, 42004d18 <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x124>
42004dfc:	828a      	add.n	a8, a2, a8
42004dfe:	ffc791        	l32r	a9, 42004d1c <_ZN4core7unicode9printable5check17h05008be2c4004b9dE.llvm.17200090188990483032+0x128>
42004e01:	063897        	bltu	a8, a9, 42004e0b <core::unicode::printable::is_printable+0xcf>
42004e04:	0a0c      	movi.n	a10, 0
42004e06:	102a70        	and	a2, a10, a7
42004e09:	f01d      	retw.n
42004e0b:	1a0c      	movi.n	a10, 1
42004e0d:	102a70        	and	a2, a10, a7
42004e10:	f01d      	retw.n
	...

42004e14 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560>:
42004e14:	004136        	entry	a1, 32
42004e17:	f01d      	retw.n
42004e19:	000000        	ill
42004e1c:	0129b4        	ee.ldqa.s16.128.ip	a11, 0x290
42004e1f:	5c3c      	movi.n	a12, 53
42004e21:	000027        	bnone	a0, a2, 42004e25 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x11>
42004e24:	010000        	slli	a0, a0, 32
42004e27:	225c00        	orb	b5, b12, b0
42004e2a:	00          	.byte 00
42004e2b:	00          	.byte 00
42004e2c:	5c5c      	movi.n	a12, 85
42004e2e:	00          	.byte 00
42004e2f:	00          	.byte 00
42004e30:	6e5c      	movi.n	a14, 86
42004e32:	00          	.byte 00
42004e33:	725c00        	salt	a5, a12, a0
42004e36:	00          	.byte 00
42004e37:	745c00        	extui	a5, a0, 12, 8
42004e3a:	00          	.byte 00
42004e3b:	305c00        	xor	a5, a12, a0
42004e3e:	a00000        	addx4	a0, a0, a0
42004e41:	420040        	xorb	b0, b0, b4
42004e44:	0100c4        	ee.ldqa.s16.128.ip	a12, 0
42004e47:	143c      	movi.n	a4, 49
42004e49:	c03c012e 	ee.vmulas.u16.accx.ld.xp.qup	q1, a2, a1, q0, q0, q3, q4
42004e4d:	0442006f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a6, 0x100, q4, q0, q4, q2
42004e51:	543c012e 	ee.vmulas.u16.qacc.ld.ip.qup	q1, a2, 0x110, q0, q0, q3, q4
42004e55:	420064        	ee.st.accx.ip	a6, 0xfffffc00
42004e58:	4d3c      	movi.n	a13, 52
42004e5a:	        	ee.ldf.64.xp	f4, f3, a0, a2

42004e5c <core::char::methods::<impl char>::escape_debug_ext>:
42004e5c:	006136        	entry	a1, 48
42004e5f:	782c      	movi.n	a8, 39
42004e61:	2f3837        	bltu	a8, a3, 42004e94 <core::char::methods::<impl char>::escape_debug_ext+0x38>
42004e64:	ffee91        	l32r	a9, 42004e1c <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x8>
42004e67:	a09390        	addx4	a9, a3, a9
42004e6a:	0998      	l32i.n	a9, a9, 0
42004e6c:	0009a0        	jx	a9
42004e6f:	080c      	movi.n	a8, 0
42004e71:	094282        	s8i	a8, a2, 9
42004e74:	084282        	s8i	a8, a2, 8
42004e77:	074282        	s8i	a8, a2, 7
42004e7a:	064282        	s8i	a8, a2, 6
42004e7d:	054282        	s8i	a8, a2, 5
42004e80:	044282        	s8i	a8, a2, 4
42004e83:	034282        	s8i	a8, a2, 3
42004e86:	024282        	s8i	a8, a2, 2
42004e89:	093c      	movi.n	a9, 48
42004e8b:	014292        	s8i	a9, a2, 1
42004e8e:	ffeb91        	l32r	a9, 42004e3c <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x28>
42004e91:	0031c6        	j	42004f5c <core::char::methods::<impl char>::escape_debug_ext+0x100>
42004e94:	c85c      	movi.n	a8, 92
42004e96:	021387        	beq	a3, a8, 42004e9c <core::char::methods::<impl char>::escape_debug_ext+0x40>
42004e99:	003546        	j	42004f72 <core::char::methods::<impl char>::escape_debug_ext+0x116>
42004e9c:	090c      	movi.n	a9, 0
42004e9e:	094292        	s8i	a9, a2, 9
42004ea1:	084292        	s8i	a9, a2, 8
42004ea4:	074292        	s8i	a9, a2, 7
42004ea7:	064292        	s8i	a9, a2, 6
42004eaa:	054292        	s8i	a9, a2, 5
42004ead:	044292        	s8i	a9, a2, 4
42004eb0:	034292        	s8i	a9, a2, 3
42004eb3:	024292        	s8i	a9, a2, 2
42004eb6:	014282        	s8i	a8, a2, 1
42004eb9:	ffdc81        	l32r	a8, 42004e2c <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x18>
42004ebc:	0069c6        	j	42005067 <core::char::methods::<impl char>::escape_debug_ext+0x20b>
42004ebf:	080c      	movi.n	a8, 0
42004ec1:	094282        	s8i	a8, a2, 9
42004ec4:	084282        	s8i	a8, a2, 8
42004ec7:	074282        	s8i	a8, a2, 7
42004eca:	064282        	s8i	a8, a2, 6
42004ecd:	054282        	s8i	a8, a2, 5
42004ed0:	044282        	s8i	a8, a2, 4
42004ed3:	034282        	s8i	a8, a2, 3
42004ed6:	024282        	s8i	a8, a2, 2
42004ed9:	74a092        	movi	a9, 116
42004edc:	014292        	s8i	a9, a2, 1
42004edf:	ffd691        	l32r	a9, 42004e38 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x24>
42004ee2:	001d86        	j	42004f5c <core::char::methods::<impl char>::escape_debug_ext+0x100>
42004ee5:	080c      	movi.n	a8, 0
42004ee7:	094282        	s8i	a8, a2, 9
42004eea:	084282        	s8i	a8, a2, 8
42004eed:	074282        	s8i	a8, a2, 7
42004ef0:	064282        	s8i	a8, a2, 6
42004ef3:	054282        	s8i	a8, a2, 5
42004ef6:	044282        	s8i	a8, a2, 4
42004ef9:	034282        	s8i	a8, a2, 3
42004efc:	024282        	s8i	a8, a2, 2
42004eff:	6ea092        	movi	a9, 110
42004f02:	014292        	s8i	a9, a2, 1
42004f05:	ffca91        	l32r	a9, 42004e30 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x1c>
42004f08:	001406        	j	42004f5c <core::char::methods::<impl char>::escape_debug_ext+0x100>
42004f0b:	080c      	movi.n	a8, 0
42004f0d:	094282        	s8i	a8, a2, 9
42004f10:	084282        	s8i	a8, a2, 8
42004f13:	074282        	s8i	a8, a2, 7
42004f16:	064282        	s8i	a8, a2, 6
42004f19:	054282        	s8i	a8, a2, 5
42004f1c:	044282        	s8i	a8, a2, 4
42004f1f:	034282        	s8i	a8, a2, 3
42004f22:	024282        	s8i	a8, a2, 2
42004f25:	72a092        	movi	a9, 114
42004f28:	014292        	s8i	a9, a2, 1
42004f2b:	ffc291        	l32r	a9, 42004e34 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x20>
42004f2e:	000a86        	j	42004f5c <core::char::methods::<impl char>::escape_debug_ext+0x100>
42004f31:	ffbc81        	l32r	a8, 42004e24 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x10>
42004f34:	108480        	and	a8, a4, a8
42004f37:	037816        	beqz	a8, 42004f72 <core::char::methods::<impl char>::escape_debug_ext+0x116>
42004f3a:	080c      	movi.n	a8, 0
42004f3c:	094282        	s8i	a8, a2, 9
42004f3f:	084282        	s8i	a8, a2, 8
42004f42:	074282        	s8i	a8, a2, 7
42004f45:	064282        	s8i	a8, a2, 6
42004f48:	054282        	s8i	a8, a2, 5
42004f4b:	044282        	s8i	a8, a2, 4
42004f4e:	034282        	s8i	a8, a2, 3
42004f51:	024282        	s8i	a8, a2, 2
42004f54:	292c      	movi.n	a9, 34
42004f56:	014292        	s8i	a9, a2, 1
42004f59:	ffb391        	l32r	a9, 42004e28 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x14>
42004f5c:	004292        	s8i	a9, a2, 0
42004f5f:	290c      	movi.n	a9, 2
42004f61:	0b4292        	s8i	a9, a2, 11
42004f64:	0a4282        	s8i	a8, a2, 10
42004f67:	f01d      	retw.n
42004f69:	00a192        	movi	a9, 0x100
42004f6c:	109490        	and	a9, a4, a9
42004f6f:	0d4956        	bnez	a9, 42005047 <core::char::methods::<impl char>::escape_debug_ext+0x1eb>
42004f72:	170c      	movi.n	a7, 1
42004f74:	108470        	and	a8, a4, a7
42004f77:	00a816        	beqz	a8, 42004f85 <core::char::methods::<impl char>::escape_debug_ext+0x129>
42004f7a:	ffb181        	l32r	a8, 42004e40 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x2c>
42004f7d:	03ad      	mov.n	a10, a3
42004f7f:	0008e0        	callx8	a8
42004f82:	014a56        	bnez	a10, 42004f9a <core::char::methods::<impl char>::escape_debug_ext+0x13e>
42004f85:	ffb481        	l32r	a8, 42004e58 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x44>
42004f88:	03ad      	mov.n	a10, a3
42004f8a:	0008e0        	callx8	a8
42004f8d:	009a16        	beqz	a10, 42004f9a <core::char::methods::<impl char>::escape_debug_ext+0x13e>
42004f90:	1239      	s32i.n	a3, a2, 4
42004f92:	80a082        	movi	a8, 128
42004f95:	004282        	s8i	a8, a2, 0
42004f98:	f01d      	retw.n
42004f9a:	080c      	movi.n	a8, 0
42004f9c:	044182        	s8i	a8, a1, 4
42004f9f:	015182        	s16i	a8, a1, 2
42004fa2:	7da082        	movi	a8, 125
42004fa5:	0b4182        	s8i	a8, a1, 11
42004fa8:	f80c      	movi.n	a8, 15
42004faa:	10a380        	and	a10, a3, a8
42004fad:	ffa591        	l32r	a9, 42004e44 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x30>
42004fb0:	a9aa      	add.n	a10, a9, a10
42004fb2:	000aa2        	l8ui	a10, a10, 0
42004fb5:	0a41a2        	s8i	a10, a1, 10
42004fb8:	41a430        	srli	a10, a3, 4
42004fbb:	10aa80        	and	a10, a10, a8
42004fbe:	a9aa      	add.n	a10, a9, a10
42004fc0:	000aa2        	l8ui	a10, a10, 0
42004fc3:	0941a2        	s8i	a10, a1, 9
42004fc6:	41a830        	srli	a10, a3, 8
42004fc9:	10aa80        	and	a10, a10, a8
42004fcc:	a9aa      	add.n	a10, a9, a10
42004fce:	000aa2        	l8ui	a10, a10, 0
42004fd1:	0841a2        	s8i	a10, a1, 8
42004fd4:	41ac30        	srli	a10, a3, 12
42004fd7:	10aa80        	and	a10, a10, a8
42004fda:	a9aa      	add.n	a10, a9, a10
42004fdc:	000aa2        	l8ui	a10, a10, 0
42004fdf:	0741a2        	s8i	a10, a1, 7
42004fe2:	0a1c      	movi.n	a10, 16
42004fe4:	400a00        	ssr	a10
42004fe7:	91a030        	srl	a10, a3
42004fea:	10aa80        	and	a10, a10, a8
42004fed:	a9aa      	add.n	a10, a9, a10
42004fef:	000aa2        	l8ui	a10, a10, 0
42004ff2:	0641a2        	s8i	a10, a1, 6
42004ff5:	4a1c      	movi.n	a10, 20
42004ff7:	400a00        	ssr	a10
42004ffa:	91a030        	srl	a10, a3
42004ffd:	108a80        	and	a8, a10, a8
42005000:	898a      	add.n	a8, a9, a8
42005002:	000882        	l8ui	a8, a8, 0
42005005:	054182        	s8i	a8, a1, 5
42005008:	208370        	or	a8, a3, a7
4200500b:	40f880        	nsau	a8, a8
4200500e:	418280        	srli	a8, a8, 2
42005011:	fec872        	addi	a7, a8, -2
42005014:	b80c      	movi.n	a8, 11
42005016:	5ab787        	bgeu	a7, a8, 42005074 <core::char::methods::<impl char>::escape_debug_ext+0x218>
42005019:	02c1b2        	addi	a11, a1, 2
4200501c:	8b7a      	add.n	a8, a11, a7
4200501e:	ff8a91        	l32r	a9, 42004e48 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x34>
42005021:	0209a2        	l8ui	a10, a9, 2
42005024:	0248a2        	s8i	a10, a8, 2
42005027:	0109a2        	l8ui	a10, a9, 1
4200502a:	0148a2        	s8i	a10, a8, 1
4200502d:	000992        	l8ui	a9, a9, 0
42005030:	004892        	s8i	a9, a8, 0
42005033:	a60c      	movi.n	a6, 10
42005035:	ff8581        	l32r	a8, 42004e4c <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x38>
42005038:	02ad      	mov.n	a10, a2
4200503a:	06cd      	mov.n	a12, a6
4200503c:	0008e0        	callx8	a8
4200503f:	0b4262        	s8i	a6, a2, 11
42005042:	0a4272        	s8i	a7, a2, 10
42005045:	f01d      	retw.n
42005047:	090c      	movi.n	a9, 0
42005049:	094292        	s8i	a9, a2, 9
4200504c:	084292        	s8i	a9, a2, 8
4200504f:	074292        	s8i	a9, a2, 7
42005052:	064292        	s8i	a9, a2, 6
42005055:	054292        	s8i	a9, a2, 5
42005058:	044292        	s8i	a9, a2, 4
4200505b:	034292        	s8i	a9, a2, 3
4200505e:	024292        	s8i	a9, a2, 2
42005061:	014282        	s8i	a8, a2, 1
42005064:	ff6f81        	l32r	a8, 42004e20 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0xc>
42005067:	004282        	s8i	a8, a2, 0
4200506a:	280c      	movi.n	a8, 2
4200506c:	0b4282        	s8i	a8, a2, 11
4200506f:	0a4292        	s8i	a9, a2, 10
42005072:	f01d      	retw.n
42005074:	ab0c      	movi.n	a11, 10
42005076:	ff76c1        	l32r	a12, 42004e50 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x3c>
42005079:	ff7681        	l32r	a8, 42004e54 <_ZN4core3ptr49drop_in_place$LT$$RF$dyn$u20$core..fmt..Debug$GT$17h4dd79388898c9ec9E.llvm.267152541612474560+0x40>
4200507c:	07ad      	mov.n	a10, a7
4200507e:	0008e0        	callx8	a8
42005081:	0041f0        	break	1, 15
42005084:	50a8      	l32i.n	a10, a0, 20
42005086:	        	ee.ldf.64.xp	f4, f3, a0, a2

42005088 <<core::fmt::Arguments as core::fmt::Display>::fmt>:
42005088:	004136        	entry	a1, 32
4200508b:	63b8      	l32i.n	a11, a3, 24
4200508d:	53a8      	l32i.n	a10, a3, 20
4200508f:	fffd81        	l32r	a8, 42005084 <core::char::methods::<impl char>::escape_debug_ext+0x228>
42005092:	02cd      	mov.n	a12, a2
42005094:	0008e0        	callx8	a8
42005097:	0a2d      	mov.n	a2, a10
42005099:	f01d      	retw.n
4200509b:	00          	.byte 00
4200509c:	07ffffff 	ee.vmulas.s16.accx.ld.ip.qup	q7, a15, 0x1f0, q7, q7, q7, q7
420050a0:	6148      	l32i.n	a4, a1, 24
420050a2:	00          	.byte 00
420050a3:	ffff42        	s32ri	a4, a15, 0x3fc
420050a6:	 	ee.fft.ams.s16.st.incp	q3, q2, a15, a15, q6, q4, q2, 0

420050a8 <core::fmt::write>:
420050a8:	00a136        	entry	a1, 80
420050ab:	380c      	movi.n	a8, 3
420050ad:	284182        	s8i	a8, a1, 40
420050b0:	082c      	movi.n	a8, 32
420050b2:	6189      	s32i.n	a8, a1, 24
420050b4:	090c      	movi.n	a9, 0
420050b6:	9199      	s32i.n	a9, a1, 36
420050b8:	8139      	s32i.n	a3, a1, 32
420050ba:	7129      	s32i.n	a2, a1, 28
420050bc:	4199      	s32i.n	a9, a1, 16
420050be:	2199      	s32i.n	a9, a1, 8
420050c0:	4468      	l32i.n	a6, a4, 16
420050c2:	0ad616        	beqz	a6, 42005173 <core::fmt::write+0xcb>
420050c5:	5488      	l32i.n	a8, a4, 20
420050c7:	0ec816        	beqz	a8, 420051b7 <core::fmt::write+0x10f>
420050ca:	190c      	movi.n	a9, 1
420050cc:	1199      	s32i.n	a9, a1, 4
420050ce:	1198b0        	slli	a9, a8, 5
420050d1:	369a      	add.n	a3, a6, a9
420050d3:	880b      	addi.n	a8, a8, -1
420050d5:	fff191        	l32r	a9, 4200509c <<core::fmt::Arguments as core::fmt::Display>::fmt+0x14>
420050d8:	108890        	and	a8, a8, a9
420050db:	881b      	addi.n	a8, a8, 1
420050dd:	0189      	s32i.n	a8, a1, 0
420050df:	0428      	l32i.n	a2, a4, 0
420050e1:	070c      	movi.n	a7, 0
420050e3:	075d      	mov.n	a5, a7
420050e5:	b08520        	addx8	a8, a5, a2
420050e8:	18c8      	l32i.n	a12, a8, 4
420050ea:	00dc16        	beqz	a12, 420050fb <core::fmt::write+0x53>
420050ed:	08b8      	l32i.n	a11, a8, 0
420050ef:	8188      	l32i.n	a8, a1, 32
420050f1:	3888      	l32i.n	a8, a8, 12
420050f3:	71a8      	l32i.n	a10, a1, 28
420050f5:	0008e0        	callx8	a8
420050f8:	0d7a56        	bnez	a10, 420051d3 <core::fmt::write+0x12b>
420050fb:	2488      	l32i.n	a8, a4, 8
420050fd:	4698      	l32i.n	a9, a6, 16
420050ff:	6199      	s32i.n	a9, a1, 24
42005101:	1c0692        	l8ui	a9, a6, 28
42005104:	284192        	s8i	a9, a1, 40
42005107:	6698      	l32i.n	a9, a6, 24
42005109:	9199      	s32i.n	a9, a1, 36
4200510b:	26b8      	l32i.n	a11, a6, 8
4200510d:	3698      	l32i.n	a9, a6, 12
4200510f:	015b16        	beqz	a11, 42005128 <core::fmt::write+0x80>
42005112:	07ad      	mov.n	a10, a7
42005114:	121b66        	bnei	a11, 1, 4200512a <core::fmt::write+0x82>
42005117:	b0b980        	addx8	a11, a9, a8
4200511a:	1bc8      	l32i.n	a12, a11, 4
4200511c:	ffe1d1        	l32r	a13, 420050a0 <<core::fmt::Arguments as core::fmt::Display>::fmt+0x18>
4200511f:	07ad      	mov.n	a10, a7
42005121:	059cd7        	bne	a12, a13, 4200512a <core::fmt::write+0x82>
42005124:	0b98      	l32i.n	a9, a11, 0
42005126:	0998      	l32i.n	a9, a9, 0
42005128:	11a8      	l32i.n	a10, a1, 4
4200512a:	3199      	s32i.n	a9, a1, 12
4200512c:	21a9      	s32i.n	a10, a1, 8
4200512e:	06b8      	l32i.n	a11, a6, 0
42005130:	1698      	l32i.n	a9, a6, 4
42005132:	015b16        	beqz	a11, 4200514b <core::fmt::write+0xa3>
42005135:	07ad      	mov.n	a10, a7
42005137:	121b66        	bnei	a11, 1, 4200514d <core::fmt::write+0xa5>
4200513a:	b0b980        	addx8	a11, a9, a8
4200513d:	1bc8      	l32i.n	a12, a11, 4
4200513f:	ffd8d1        	l32r	a13, 420050a0 <<core::fmt::Arguments as core::fmt::Display>::fmt+0x18>
42005142:	07ad      	mov.n	a10, a7
42005144:	059cd7        	bne	a12, a13, 4200514d <core::fmt::write+0xa5>
42005147:	0b98      	l32i.n	a9, a11, 0
42005149:	0998      	l32i.n	a9, a9, 0
4200514b:	1a0c      	movi.n	a10, 1
4200514d:	5199      	s32i.n	a9, a1, 20
4200514f:	41a9      	s32i.n	a10, a1, 16
42005151:	5698      	l32i.n	a9, a6, 20
42005153:	b08980        	addx8	a8, a9, a8
42005156:	08a8      	l32i.n	a10, a8, 0
42005158:	1888      	l32i.n	a8, a8, 4
4200515a:	08c1b2        	addi	a11, a1, 8
4200515d:	0008e0        	callx8	a8
42005160:	06fa56        	bnez	a10, 420051d3 <core::fmt::write+0x12b>
42005163:	551b      	addi.n	a5, a5, 1
42005165:	20c662        	addi	a6, a6, 32
42005168:	021637        	beq	a6, a3, 4200516e <core::fmt::write+0xc6>
4200516b:	ffdd86        	j	420050e5 <core::fmt::write+0x3d>
4200516e:	0198      	l32i.n	a9, a1, 0
42005170:	0010c6        	j	420051b7 <core::fmt::write+0x10f>
42005173:	3488      	l32i.n	a8, a4, 12
42005175:	03e816        	beqz	a8, 420051b7 <core::fmt::write+0x10f>
42005178:	2478      	l32i.n	a7, a4, 8
4200517a:	b06870        	addx8	a6, a8, a7
4200517d:	880b      	addi.n	a8, a8, -1
4200517f:	ffc991        	l32r	a9, 420050a4 <<core::fmt::Arguments as core::fmt::Display>::fmt+0x1c>
42005182:	108890        	and	a8, a8, a9
42005185:	281b      	addi.n	a2, a8, 1
42005187:	0458      	l32i.n	a5, a4, 0
42005189:	030c      	movi.n	a3, 0
4200518b:	b08350        	addx8	a8, a3, a5
4200518e:	18c8      	l32i.n	a12, a8, 4
42005190:	00dc16        	beqz	a12, 420051a1 <core::fmt::write+0xf9>
42005193:	08b8      	l32i.n	a11, a8, 0
42005195:	8188      	l32i.n	a8, a1, 32
42005197:	3888      	l32i.n	a8, a8, 12
42005199:	71a8      	l32i.n	a10, a1, 28
4200519b:	0008e0        	callx8	a8
4200519e:	031a56        	bnez	a10, 420051d3 <core::fmt::write+0x12b>
420051a1:	07a8      	l32i.n	a10, a7, 0
420051a3:	1788      	l32i.n	a8, a7, 4
420051a5:	08c1b2        	addi	a11, a1, 8
420051a8:	0008e0        	callx8	a8
420051ab:	024a56        	bnez	a10, 420051d3 <core::fmt::write+0x12b>
420051ae:	331b      	addi.n	a3, a3, 1
420051b0:	778b      	addi.n	a7, a7, 8
420051b2:	d59767        	bne	a7, a6, 4200518b <core::fmt::write+0xe3>
420051b5:	029d      	mov.n	a9, a2
420051b7:	1488      	l32i.n	a8, a4, 4
420051b9:	09ad      	mov.n	a10, a9
420051bb:	18b987        	bgeu	a9, a8, 420051d7 <core::fmt::write+0x12f>
420051be:	0488      	l32i.n	a8, a4, 0
420051c0:	b08a80        	addx8	a8, a10, a8
420051c3:	18c8      	l32i.n	a12, a8, 4
420051c5:	08b8      	l32i.n	a11, a8, 0
420051c7:	8188      	l32i.n	a8, a1, 32
420051c9:	3888      	l32i.n	a8, a8, 12
420051cb:	71a8      	l32i.n	a10, a1, 28
420051cd:	0008e0        	callx8	a8
420051d0:	003a16        	beqz	a10, 420051d7 <core::fmt::write+0x12f>
420051d3:	120c      	movi.n	a2, 1
420051d5:	f01d      	retw.n
420051d7:	020c      	movi.n	a2, 0
420051d9:	f01d      	retw.n
420051db:	000000        	ill
420051de:	7c0011        	l32r	a1, 41fe41e0 <__user_exception+0x1c6afb8>
420051e1:	006a      	add.n	a0, a0, a6
420051e3:	53f042        	s32ri	a4, a0, 0x14c
420051e6:	544200        	extui	a4, a0, 2, 6
420051e9:	012a      	add.n	a0, a1, a2
420051eb:	      	movi.n	a6, 51

420051ec <core::fmt::Formatter::pad_integral>:
420051ec:	008136        	entry	a1, 64
420051ef:	6169      	s32i.n	a6, a1, 24
420051f1:	026d      	mov.n	a6, a2
420051f3:	01a316        	beqz	a3, 42005211 <core::fmt::Formatter::pad_integral+0x25>
420051f6:	7628      	l32i.n	a2, a6, 28
420051f8:	180c      	movi.n	a8, 1
420051fa:	108280        	and	a8, a2, a8
420051fd:	090c      	movi.n	a9, 0
420051ff:	701897        	beq	a8, a9, 42005273 <core::fmt::Formatter::pad_integral+0x87>
42005202:	bc2c      	movi.n	a12, 43
42005204:	f87a      	add.n	a15, a8, a7
42005206:	480c      	movi.n	a8, 4
42005208:	108280        	and	a8, a2, a8
4200520b:	010816        	beqz	a8, 4200521f <core::fmt::Formatter::pad_integral+0x33>
4200520e:	001b86        	j	42005280 <core::fmt::Formatter::pad_integral+0x94>
42005211:	7628      	l32i.n	a2, a6, 28
42005213:	f71b      	addi.n	a15, a7, 1
42005215:	dc2c      	movi.n	a12, 45
42005217:	480c      	movi.n	a8, 4
42005219:	108280        	and	a8, a2, a8
4200521c:	060856        	bnez	a8, 42005280 <core::fmt::Formatter::pad_integral+0x94>
4200521f:	040c      	movi.n	a4, 0
42005221:	0688      	l32i.n	a8, a6, 0
42005223:	09f816        	beqz	a8, 420052c6 <core::fmt::Formatter::pad_integral+0xda>
42005226:	1638      	l32i.n	a3, a6, 4
42005228:	27bf37        	bgeu	a15, a3, 42005253 <core::fmt::Formatter::pad_integral+0x67>
4200522b:	880c      	movi.n	a8, 8
4200522d:	108280        	and	a8, a2, a8
42005230:	3179      	s32i.n	a7, a1, 12
42005232:	0c4856        	bnez	a8, 420052fa <core::fmt::Formatter::pad_integral+0x10e>
42005235:	2149      	s32i.n	a4, a1, 8
42005237:	51c9      	s32i.n	a12, a1, 20
42005239:	c083f0        	sub	a8, a3, a15
4200523c:	200642        	l8ui	a4, a6, 32
4200523f:	ffea91        	l32r	a9, 420051e8 <core::fmt::write+0x140>
42005242:	a09490        	addx4	a9, a4, a9
42005245:	0998      	l32i.n	a9, a9, 0
42005247:	08ad      	mov.n	a10, a8
42005249:	0009a0        	jx	a9
4200524c:	0a0c      	movi.n	a10, 0
4200524e:	084d      	mov.n	a4, a8
42005250:	003d86        	j	4200534a <core::fmt::Formatter::pad_integral+0x15e>
42005253:	073d      	mov.n	a3, a7
42005255:	6628      	l32i.n	a2, a6, 24
42005257:	5678      	l32i.n	a7, a6, 20
42005259:	ffe281        	l32r	a8, 420051e4 <core::fmt::write+0x13c>
4200525c:	07ad      	mov.n	a10, a7
4200525e:	02bd      	mov.n	a11, a2
42005260:	04dd      	mov.n	a13, a4
42005262:	05ed      	mov.n	a14, a5
42005264:	0008e0        	callx8	a8
42005267:	07ba16        	beqz	a10, 420052e6 <core::fmt::Formatter::pad_integral+0xfa>
4200526a:	190c      	movi.n	a9, 1
4200526c:	180c      	movi.n	a8, 1
4200526e:	102980        	and	a2, a9, a8
42005271:	f01d      	retw.n
42005273:	ffdac1        	l32r	a12, 420051dc <core::fmt::write+0x134>
42005276:	f87a      	add.n	a15, a8, a7
42005278:	480c      	movi.n	a8, 4
4200527a:	108280        	and	a8, a2, a8
4200527d:	f9e816        	beqz	a8, 4200521f <core::fmt::Formatter::pad_integral+0x33>
42005280:	51c9      	s32i.n	a12, a1, 20
42005282:	29b5f6        	bgeui	a5, 16, 420052af <core::fmt::Formatter::pad_integral+0xc3>
42005285:	0a0c      	movi.n	a10, 0
42005287:	032516        	beqz	a5, 420052bd <core::fmt::Formatter::pad_integral+0xd1>
4200528a:	080c      	movi.n	a8, 0
4200528c:	190c      	movi.n	a9, 1
4200528e:	bfafb2        	movi	a11, -65
42005291:	0acd      	mov.n	a12, a10
42005293:	000186        	j	4200529d <core::fmt::Formatter::pad_integral+0xb1>
42005296:	aada      	add.n	a10, a10, a13
42005298:	cc1b      	addi.n	a12, a12, 1
4200529a:	1f1c57        	beq	a12, a5, 420052bd <core::fmt::Formatter::pad_integral+0xd1>
4200529d:	d4ca      	add.n	a13, a4, a12
4200529f:	000dd2        	l8ui	a13, a13, 0
420052a2:	23ed00        	sext	a14, a13, 7
420052a5:	09dd      	mov.n	a13, a9
420052a7:	eb2be7        	blt	a11, a14, 42005296 <core::fmt::Formatter::pad_integral+0xaa>
420052aa:	08dd      	mov.n	a13, a8
420052ac:	fff986        	j	42005296 <core::fmt::Formatter::pad_integral+0xaa>
420052af:	ffcc81        	l32r	a8, 420051e0 <core::fmt::write+0x138>
420052b2:	04ad      	mov.n	a10, a4
420052b4:	05bd      	mov.n	a11, a5
420052b6:	0f3d      	mov.n	a3, a15
420052b8:	0008e0        	callx8	a8
420052bb:	03fd      	mov.n	a15, a3
420052bd:	fafa      	add.n	a15, a10, a15
420052bf:	51c8      	l32i.n	a12, a1, 20
420052c1:	0688      	l32i.n	a8, a6, 0
420052c3:	f5f856        	bnez	a8, 42005226 <core::fmt::Formatter::pad_integral+0x3a>
420052c6:	073d      	mov.n	a3, a7
420052c8:	6628      	l32i.n	a2, a6, 24
420052ca:	5678      	l32i.n	a7, a6, 20
420052cc:	ffc681        	l32r	a8, 420051e4 <core::fmt::write+0x13c>
420052cf:	07ad      	mov.n	a10, a7
420052d1:	02bd      	mov.n	a11, a2
420052d3:	04dd      	mov.n	a13, a4
420052d5:	05ed      	mov.n	a14, a5
420052d7:	0008e0        	callx8	a8
420052da:	008a16        	beqz	a10, 420052e6 <core::fmt::Formatter::pad_integral+0xfa>
420052dd:	190c      	movi.n	a9, 1
420052df:	180c      	movi.n	a8, 1
420052e1:	102980        	and	a2, a9, a8
420052e4:	f01d      	retw.n
420052e6:	3288      	l32i.n	a8, a2, 12
420052e8:	07ad      	mov.n	a10, a7
420052ea:	61b8      	l32i.n	a11, a1, 24
420052ec:	03cd      	mov.n	a12, a3
420052ee:	0008e0        	callx8	a8
420052f1:	0a9d      	mov.n	a9, a10
420052f3:	180c      	movi.n	a8, 1
420052f5:	102980        	and	a2, a9, a8
420052f8:	f01d      	retw.n
420052fa:	21f9      	s32i.n	a15, a1, 8
420052fc:	4688      	l32i.n	a8, a6, 16
420052fe:	1189      	s32i.n	a8, a1, 4
42005300:	083c      	movi.n	a8, 48
42005302:	4689      	s32i.n	a8, a6, 16
42005304:	200682        	l8ui	a8, a6, 32
42005307:	0189      	s32i.n	a8, a1, 0
42005309:	180c      	movi.n	a8, 1
4200530b:	4189      	s32i.n	a8, a1, 16
4200530d:	204682        	s8i	a8, a6, 32
42005310:	5678      	l32i.n	a7, a6, 20
42005312:	6628      	l32i.n	a2, a6, 24
42005314:	ffb481        	l32r	a8, 420051e4 <core::fmt::write+0x13c>
42005317:	07ad      	mov.n	a10, a7
42005319:	02bd      	mov.n	a11, a2
4200531b:	04dd      	mov.n	a13, a4
4200531d:	05ed      	mov.n	a14, a5
4200531f:	0008e0        	callx8	a8
42005322:	05fa56        	bnez	a10, 42005385 <core::fmt::Formatter::pad_integral+0x199>
42005325:	2188      	l32i.n	a8, a1, 8
42005327:	c04380        	sub	a4, a3, a8
4200532a:	030c      	movi.n	a3, 0
4200532c:	053c      	movi.n	a5, 48
4200532e:	5c1347        	beq	a3, a4, 4200538e <core::fmt::Formatter::pad_integral+0x1a2>
42005331:	4288      	l32i.n	a8, a2, 16
42005333:	07ad      	mov.n	a10, a7
42005335:	05bd      	mov.n	a11, a5
42005337:	0008e0        	callx8	a8
4200533a:	331b      	addi.n	a3, a3, 1
4200533c:	feea16        	beqz	a10, 4200532e <core::fmt::Formatter::pad_integral+0x142>
4200533f:	001086        	j	42005385 <core::fmt::Formatter::pad_integral+0x199>
42005342:	414180        	srli	a4, a8, 1
42005345:	881b      	addi.n	a8, a8, 1
42005347:	41a180        	srli	a10, a8, 1
4200534a:	11a9      	s32i.n	a10, a1, 4
4200534c:	4638      	l32i.n	a3, a6, 16
4200534e:	6678      	l32i.n	a7, a6, 24
42005350:	5628      	l32i.n	a2, a6, 20
42005352:	060c      	movi.n	a6, 0
42005354:	180c      	movi.n	a8, 1
42005356:	4189      	s32i.n	a8, a1, 16
42005358:	101647        	beq	a6, a4, 4200536c <core::fmt::Formatter::pad_integral+0x180>
4200535b:	4788      	l32i.n	a8, a7, 16
4200535d:	02ad      	mov.n	a10, a2
4200535f:	03bd      	mov.n	a11, a3
42005361:	0008e0        	callx8	a8
42005364:	661b      	addi.n	a6, a6, 1
42005366:	feea16        	beqz	a10, 42005358 <core::fmt::Formatter::pad_integral+0x16c>
42005369:	000606        	j	42005385 <core::fmt::Formatter::pad_integral+0x199>
4200536c:	ff9c81        	l32r	a8, 420051dc <core::fmt::write+0x134>
4200536f:	121387        	beq	a3, a8, 42005385 <core::fmt::Formatter::pad_integral+0x199>
42005372:	ff9c81        	l32r	a8, 420051e4 <core::fmt::write+0x13c>
42005375:	02ad      	mov.n	a10, a2
42005377:	07bd      	mov.n	a11, a7
42005379:	51c8      	l32i.n	a12, a1, 20
4200537b:	21d8      	l32i.n	a13, a1, 8
4200537d:	05ed      	mov.n	a14, a5
4200537f:	0008e0        	callx8	a8
42005382:	02aa16        	beqz	a10, 420053b0 <core::fmt::Formatter::pad_integral+0x1c4>
42005385:	4198      	l32i.n	a9, a1, 16
42005387:	180c      	movi.n	a8, 1
42005389:	102980        	and	a2, a9, a8
4200538c:	f01d      	retw.n
4200538e:	3288      	l32i.n	a8, a2, 12
42005390:	07ad      	mov.n	a10, a7
42005392:	61b8      	l32i.n	a11, a1, 24
42005394:	31c8      	l32i.n	a12, a1, 12
42005396:	0008e0        	callx8	a8
42005399:	4198      	l32i.n	a9, a1, 16
4200539b:	ecda56        	bnez	a10, 4200526c <core::fmt::Formatter::pad_integral+0x80>
4200539e:	0188      	l32i.n	a8, a1, 0
420053a0:	204682        	s8i	a8, a6, 32
420053a3:	1188      	l32i.n	a8, a1, 4
420053a5:	4689      	s32i.n	a8, a6, 16
420053a7:	090c      	movi.n	a9, 0
420053a9:	180c      	movi.n	a8, 1
420053ab:	102980        	and	a2, a9, a8
420053ae:	f01d      	retw.n
420053b0:	3788      	l32i.n	a8, a7, 12
420053b2:	02ad      	mov.n	a10, a2
420053b4:	61b8      	l32i.n	a11, a1, 24
420053b6:	31c8      	l32i.n	a12, a1, 12
420053b8:	0008e0        	callx8	a8
420053bb:	4198      	l32i.n	a9, a1, 16
420053bd:	eaba56        	bnez	a10, 4200526c <core::fmt::Formatter::pad_integral+0x80>
420053c0:	080c      	movi.n	a8, 0
420053c2:	1168      	l32i.n	a6, a1, 4
420053c4:	085d      	mov.n	a5, a8
420053c6:	101567        	beq	a5, a6, 420053da <core::fmt::Formatter::pad_integral+0x1ee>
420053c9:	4788      	l32i.n	a8, a7, 16
420053cb:	02ad      	mov.n	a10, a2
420053cd:	03bd      	mov.n	a11, a3
420053cf:	0008e0        	callx8	a8
420053d2:	851b      	addi.n	a8, a5, 1
420053d4:	feca16        	beqz	a10, 420053c4 <core::fmt::Formatter::pad_integral+0x1d8>
420053d7:	000046        	j	420053dc <core::fmt::Formatter::pad_integral+0x1f0>
420053da:	065d      	mov.n	a5, a6
420053dc:	02b567        	bgeu	a5, a6, 420053e2 <core::fmt::Formatter::pad_integral+0x1f6>
420053df:	ffbe86        	j	420052dd <core::fmt::Formatter::pad_integral+0xf1>
420053e2:	090c      	movi.n	a9, 0
420053e4:	180c      	movi.n	a8, 1
420053e6:	102980        	and	a2, a9, a8
420053e9:	f01d      	retw.n
420053eb:	000000        	ill
420053ee:	        	l32r	a1, 41fd2bf0 <__user_exception+0x1c599c8>

420053f0 <core::fmt::Formatter::pad_integral::write_prefix>:
420053f0:	004136        	entry	a1, 32
420053f3:	fffe81        	l32r	a8, 420053ec <core::fmt::Formatter::pad_integral+0x200>
420053f6:	0f1487        	beq	a4, a8, 42005409 <core::fmt::Formatter::pad_integral::write_prefix+0x19>
420053f9:	4388      	l32i.n	a8, a3, 16
420053fb:	02ad      	mov.n	a10, a2
420053fd:	04bd      	mov.n	a11, a4
420053ff:	0008e0        	callx8	a8
42005402:	003a16        	beqz	a10, 42005409 <core::fmt::Formatter::pad_integral::write_prefix+0x19>
42005405:	120c      	movi.n	a2, 1
42005407:	f01d      	retw.n
42005409:	00e516        	beqz	a5, 4200541b <core::fmt::Formatter::pad_integral::write_prefix+0x2b>
4200540c:	3388      	l32i.n	a8, a3, 12
4200540e:	02ad      	mov.n	a10, a2
42005410:	05bd      	mov.n	a11, a5
42005412:	06cd      	mov.n	a12, a6
42005414:	0008e0        	callx8	a8
42005417:	0a2d      	mov.n	a2, a10
42005419:	f01d      	retw.n
4200541b:	020c      	movi.n	a2, 0
4200541d:	f01d      	retw.n
4200541f:	000000        	ill
42005422:	001c      	movi.n	a0, 16
42005424:	110000        	slli	a0, a0, 16
42005427:	6a7c00        	maddn.s	f7, f12, f0
4200542a:	644200        	extui	a4, a0, 2, 7
4200542d:	012a      	add.n	a0, a1, a2
4200542f:	      	movi.n	a6, 51

42005430 <core::fmt::Formatter::pad>:
42005430:	006136        	entry	a1, 48
42005433:	2298      	l32i.n	a9, a2, 8
42005435:	0288      	l32i.n	a8, a2, 0
42005437:	20a890        	or	a10, a8, a9
4200543a:	150c      	movi.n	a5, 1
4200543c:	167a16        	beqz	a10, 420055a7 <core::fmt::Formatter::pad+0x177>
4200543f:	3159      	s32i.n	a5, a1, 12
42005441:	0ff916        	beqz	a9, 42005544 <core::fmt::Formatter::pad+0x114>
42005444:	0189      	s32i.n	a8, a1, 0
42005446:	2149      	s32i.n	a4, a1, 8
42005448:	d34a      	add.n	a13, a3, a4
4200544a:	32f8      	l32i.n	a15, a2, 12
4200544c:	090c      	movi.n	a9, 0
4200544e:	ffa0b2        	movi	a11, 255
42005451:	fe7c      	movi.n	a14, -1
42005453:	fff4a1        	l32r	a10, 42005424 <core::fmt::Formatter::pad_integral::write_prefix+0x34>
42005456:	1139      	s32i.n	a3, a1, 4
42005458:	035d      	mov.n	a5, a3
4200545a:	097d      	mov.n	a7, a9
4200545c:	000446        	j	42005471 <core::fmt::Formatter::pad+0x41>
4200545f:	1065b0        	and	a6, a5, a11
42005462:	5c1b      	addi.n	a5, a12, 1
42005464:	771b      	addi.n	a7, a7, 1
42005466:	c089c0        	sub	a8, a9, a12
42005469:	985a      	add.n	a9, a8, a5
4200546b:	0296a7        	bne	a6, a10, 42005471 <core::fmt::Formatter::pad+0x41>
4200546e:	003286        	j	4200553c <core::fmt::Formatter::pad+0x10c>
42005471:	05cd      	mov.n	a12, a5
42005473:	6817f7        	beq	a7, a15, 420054df <core::fmt::Formatter::pad+0xaf>
42005476:	029cd7        	bne	a12, a13, 4200547c <core::fmt::Formatter::pad+0x4c>
42005479:	002fc6        	j	4200553c <core::fmt::Formatter::pad+0x10c>
4200547c:	000c62        	l8ui	a6, a12, 0
4200547f:	235600        	sext	a5, a6, 7
42005482:	d92e57        	blt	a14, a5, 4200545f <core::fmt::Formatter::pad+0x2f>
42005485:	010c42        	l8ui	a4, a12, 1
42005488:	f63c      	movi.n	a6, 63
4200548a:	103460        	and	a3, a4, a6
4200548d:	f41c      	movi.n	a4, 31
4200548f:	104540        	and	a4, a5, a4
42005492:	dfaf82        	movi	a8, -33
42005495:	30b857        	bgeu	a8, a5, 420054c9 <core::fmt::Formatter::pad+0x99>
42005498:	020c82        	l8ui	a8, a12, 2
4200549b:	108860        	and	a8, a8, a6
4200549e:	1133a0        	slli	a3, a3, 6
420054a1:	203380        	or	a3, a3, a8
420054a4:	087c      	movi.n	a8, -16
420054a6:	2a3587        	bltu	a5, a8, 420054d4 <core::fmt::Formatter::pad+0xa4>
420054a9:	0184e0        	slli	a8, a4, 18
420054ac:	ffdd51        	l32r	a5, 42005420 <core::fmt::Formatter::pad_integral::write_prefix+0x30>
420054af:	108850        	and	a8, a8, a5
420054b2:	030c52        	l8ui	a5, a12, 3
420054b5:	106560        	and	a6, a5, a6
420054b8:	1153a0        	slli	a5, a3, 6
420054bb:	206560        	or	a6, a5, a6
420054be:	206680        	or	a6, a6, a8
420054c1:	7716a7        	beq	a6, a10, 4200553c <core::fmt::Formatter::pad+0x10c>
420054c4:	5c4b      	addi.n	a5, a12, 4
420054c6:	ffe686        	j	42005464 <core::fmt::Formatter::pad+0x34>
420054c9:	1184a0        	slli	a8, a4, 6
420054cc:	206830        	or	a6, a8, a3
420054cf:	5c2b      	addi.n	a5, a12, 2
420054d1:	ffe3c6        	j	42005464 <core::fmt::Formatter::pad+0x34>
420054d4:	118440        	slli	a8, a4, 12
420054d7:	206380        	or	a6, a3, a8
420054da:	5c3b      	addi.n	a5, a12, 3
420054dc:	ffe106        	j	42005464 <core::fmt::Formatter::pad+0x34>
420054df:	591cd7        	beq	a12, a13, 4200553c <core::fmt::Formatter::pad+0x10c>
420054e2:	000c82        	l8ui	a8, a12, 0
420054e5:	23d800        	sext	a13, a8, 7
420054e8:	2148      	l32i.n	a4, a1, 8
420054ea:	1138      	l32i.n	a3, a1, 4
420054ec:	02aed7        	bge	a14, a13, 420054f2 <core::fmt::Formatter::pad+0xc2>
420054ef:	003186        	j	420055b9 <core::fmt::Formatter::pad+0x189>
420054f2:	086c      	movi.n	a8, -32
420054f4:	02bd87        	bgeu	a13, a8, 420054fa <core::fmt::Formatter::pad+0xca>
420054f7:	002f86        	j	420055b9 <core::fmt::Formatter::pad+0x189>
420054fa:	087c      	movi.n	a8, -16
420054fc:	02bd87        	bgeu	a13, a8, 42005502 <core::fmt::Formatter::pad+0xd2>
420054ff:	002d86        	j	420055b9 <core::fmt::Formatter::pad+0x189>
42005502:	108db0        	and	a8, a13, a11
42005505:	010cb2        	l8ui	a11, a12, 1
42005508:	fd3c      	movi.n	a13, 63
4200550a:	10bbd0        	and	a11, a11, a13
4200550d:	11bb40        	slli	a11, a11, 12
42005510:	020ce2        	l8ui	a14, a12, 2
42005513:	10eed0        	and	a14, a14, a13
42005516:	11eea0        	slli	a14, a14, 6
42005519:	20beb0        	or	a11, a14, a11
4200551c:	030cc2        	l8ui	a12, a12, 3
4200551f:	10ccd0        	and	a12, a12, a13
42005522:	20bbc0        	or	a11, a11, a12
42005525:	0188e0        	slli	a8, a8, 18
42005528:	ffbec1        	l32r	a12, 42005420 <core::fmt::Formatter::pad_integral::write_prefix+0x30>
4200552b:	1088c0        	and	a8, a8, a12
4200552e:	208b80        	or	a8, a11, a8
42005531:	0218a7        	beq	a8, a10, 42005537 <core::fmt::Formatter::pad+0x107>
42005534:	002046        	j	420055b9 <core::fmt::Formatter::pad+0x189>
42005537:	3158      	l32i.n	a5, a1, 12
42005539:	000146        	j	42005542 <core::fmt::Formatter::pad+0x112>
4200553c:	3158      	l32i.n	a5, a1, 12
4200553e:	2148      	l32i.n	a4, a1, 8
42005540:	1138      	l32i.n	a3, a1, 4
42005542:	0188      	l32i.n	a8, a1, 0
42005544:	05f816        	beqz	a8, 420055a7 <core::fmt::Formatter::pad+0x177>
42005547:	1278      	l32i.n	a7, a2, 4
42005549:	29b4f6        	bgeui	a4, 16, 42005576 <core::fmt::Formatter::pad+0x146>
4200554c:	0a0c      	movi.n	a10, 0
4200554e:	02e416        	beqz	a4, 42005580 <core::fmt::Formatter::pad+0x150>
42005551:	080c      	movi.n	a8, 0
42005553:	190c      	movi.n	a9, 1
42005555:	bfafb2        	movi	a11, -65
42005558:	0acd      	mov.n	a12, a10
4200555a:	000186        	j	42005564 <core::fmt::Formatter::pad+0x134>
4200555d:	aada      	add.n	a10, a10, a13
4200555f:	cc1b      	addi.n	a12, a12, 1
42005561:	1b1c47        	beq	a12, a4, 42005580 <core::fmt::Formatter::pad+0x150>
42005564:	d3ca      	add.n	a13, a3, a12
42005566:	000dd2        	l8ui	a13, a13, 0
42005569:	23ed00        	sext	a14, a13, 7
4200556c:	09dd      	mov.n	a13, a9
4200556e:	eb2be7        	blt	a11, a14, 4200555d <core::fmt::Formatter::pad+0x12d>
42005571:	08dd      	mov.n	a13, a8
42005573:	fff986        	j	4200555d <core::fmt::Formatter::pad+0x12d>
42005576:	ffac81        	l32r	a8, 42005428 <core::fmt::Formatter::pad_integral::write_prefix+0x38>
42005579:	03ad      	mov.n	a10, a3
4200557b:	04bd      	mov.n	a11, a4
4200557d:	0008e0        	callx8	a8
42005580:	23ba77        	bgeu	a10, a7, 420055a7 <core::fmt::Formatter::pad+0x177>
42005583:	1139      	s32i.n	a3, a1, 4
42005585:	2149      	s32i.n	a4, a1, 8
42005587:	c087a0        	sub	a8, a7, a10
4200558a:	200292        	l8ui	a9, a2, 32
4200558d:	050c      	movi.n	a5, 0
4200558f:	ffa7a1        	l32r	a10, 4200542c <core::fmt::Formatter::pad_integral::write_prefix+0x3c>
42005592:	a099a0        	addx4	a9, a9, a10
42005595:	0998      	l32i.n	a9, a9, 0
42005597:	0189      	s32i.n	a8, a1, 0
42005599:	053d      	mov.n	a3, a5
4200559b:	0009a0        	jx	a9
4200559e:	090c      	movi.n	a9, 0
420055a0:	0199      	s32i.n	a9, a1, 0
420055a2:	083d      	mov.n	a3, a8
420055a4:	000d06        	j	420055dc <core::fmt::Formatter::pad+0x1ac>
420055a7:	52a8      	l32i.n	a10, a2, 20
420055a9:	6288      	l32i.n	a8, a2, 24
420055ab:	3888      	l32i.n	a8, a8, 12
420055ad:	03bd      	mov.n	a11, a3
420055af:	04cd      	mov.n	a12, a4
420055b1:	0008e0        	callx8	a8
420055b4:	102a50        	and	a2, a10, a5
420055b7:	f01d      	retw.n
420055b9:	078916        	beqz	a9, 42005635 <core::fmt::Formatter::pad+0x205>
420055bc:	72b947        	bgeu	a9, a4, 42005632 <core::fmt::Formatter::pad+0x202>
420055bf:	839a      	add.n	a8, a3, a9
420055c1:	000882        	l8ui	a8, a8, 0
420055c4:	238800        	sext	a8, a8, 7
420055c7:	c0afa2        	movi	a10, -64
420055ca:	67a8a7        	bge	a8, a10, 42005635 <core::fmt::Formatter::pad+0x205>
420055cd:	0a0c      	movi.n	a10, 0
420055cf:	001906        	j	42005637 <core::fmt::Formatter::pad+0x207>
420055d2:	413180        	srli	a3, a8, 1
420055d5:	881b      	addi.n	a8, a8, 1
420055d7:	418180        	srli	a8, a8, 1
420055da:	0189      	s32i.n	a8, a1, 0
420055dc:	4278      	l32i.n	a7, a2, 16
420055de:	6248      	l32i.n	a4, a2, 24
420055e0:	5268      	l32i.n	a6, a2, 20
420055e2:	161537        	beq	a5, a3, 420055fc <core::fmt::Formatter::pad+0x1cc>
420055e5:	4488      	l32i.n	a8, a4, 16
420055e7:	06ad      	mov.n	a10, a6
420055e9:	07bd      	mov.n	a11, a7
420055eb:	0008e0        	callx8	a8
420055ee:	551b      	addi.n	a5, a5, 1
420055f0:	feea16        	beqz	a10, 420055e2 <core::fmt::Formatter::pad+0x1b2>
420055f3:	3158      	l32i.n	a5, a1, 12
420055f5:	05ad      	mov.n	a10, a5
420055f7:	102a50        	and	a2, a10, a5
420055fa:	f01d      	retw.n
420055fc:	ff8a81        	l32r	a8, 42005424 <core::fmt::Formatter::pad_integral::write_prefix+0x34>
420055ff:	3158      	l32i.n	a5, a1, 12
42005601:	05ad      	mov.n	a10, a5
42005603:	541787        	beq	a7, a8, 4200565b <core::fmt::Formatter::pad+0x22b>
42005606:	3488      	l32i.n	a8, a4, 12
42005608:	06ad      	mov.n	a10, a6
4200560a:	11b8      	l32i.n	a11, a1, 4
4200560c:	21c8      	l32i.n	a12, a1, 8
4200560e:	0008e0        	callx8	a8
42005611:	0a8d      	mov.n	a8, a10
42005613:	05ad      	mov.n	a10, a5
42005615:	042856        	bnez	a8, 4200565b <core::fmt::Formatter::pad+0x22b>
42005618:	080c      	movi.n	a8, 0
4200561a:	0138      	l32i.n	a3, a1, 0
4200561c:	085d      	mov.n	a5, a8
4200561e:	2b1537        	beq	a5, a3, 4200564d <core::fmt::Formatter::pad+0x21d>
42005621:	4488      	l32i.n	a8, a4, 16
42005623:	06ad      	mov.n	a10, a6
42005625:	07bd      	mov.n	a11, a7
42005627:	0008e0        	callx8	a8
4200562a:	851b      	addi.n	a8, a5, 1
4200562c:	feca16        	beqz	a10, 4200561c <core::fmt::Formatter::pad+0x1ec>
4200562f:	000706        	j	4200564f <core::fmt::Formatter::pad+0x21f>
42005632:	979947        	bne	a9, a4, 420055cd <core::fmt::Formatter::pad+0x19d>
42005635:	03ad      	mov.n	a10, a3
42005637:	3158      	l32i.n	a5, a1, 12
42005639:	0188      	l32i.n	a8, a1, 0
4200563b:	0b0c      	movi.n	a11, 0
4200563d:	011ab7        	beq	a10, a11, 42005642 <core::fmt::Formatter::pad+0x212>
42005640:	094d      	mov.n	a4, a9
42005642:	029ab7        	bne	a10, a11, 42005648 <core::fmt::Formatter::pad+0x218>
42005645:	ffbec6        	j	42005544 <core::fmt::Formatter::pad+0x114>
42005648:	0a3d      	mov.n	a3, a10
4200564a:	ffbd86        	j	42005544 <core::fmt::Formatter::pad+0x114>
4200564d:	035d      	mov.n	a5, a3
4200564f:	043537        	bltu	a5, a3, 42005657 <core::fmt::Formatter::pad+0x227>
42005652:	0a0c      	movi.n	a10, 0
42005654:	000046        	j	42005659 <core::fmt::Formatter::pad+0x229>
42005657:	1a0c      	movi.n	a10, 1
42005659:	3158      	l32i.n	a5, a1, 12
4200565b:	102a50        	and	a2, a10, a5
4200565e:	f01d      	retw.n

42005660 <core::fmt::Formatter::write_str>:
42005660:	004136        	entry	a1, 32
42005663:	52a8      	l32i.n	a10, a2, 20
42005665:	6288      	l32i.n	a8, a2, 24
42005667:	3888      	l32i.n	a8, a8, 12
42005669:	03bd      	mov.n	a11, a3
4200566b:	04cd      	mov.n	a12, a4
4200566d:	0008e0        	callx8	a8
42005670:	0a2d      	mov.n	a2, a10
42005672:	f01d      	retw.n
42005674:	50a8      	l32i.n	a10, a0, 20
42005676:	        	ee.ldf.64.xp	f4, f3, a0, a2

42005678 <core::fmt::Formatter::write_fmt>:
42005678:	008136        	entry	a1, 64
4200567b:	62b8      	l32i.n	a11, a2, 24
4200567d:	52a8      	l32i.n	a10, a2, 20
4200567f:	5388      	l32i.n	a8, a3, 20
42005681:	5189      	s32i.n	a8, a1, 20
42005683:	4388      	l32i.n	a8, a3, 16
42005685:	4189      	s32i.n	a8, a1, 16
42005687:	3388      	l32i.n	a8, a3, 12
42005689:	3189      	s32i.n	a8, a1, 12
4200568b:	2388      	l32i.n	a8, a3, 8
4200568d:	2189      	s32i.n	a8, a1, 8
4200568f:	1388      	l32i.n	a8, a3, 4
42005691:	1189      	s32i.n	a8, a1, 4
42005693:	0388      	l32i.n	a8, a3, 0
42005695:	0189      	s32i.n	a8, a1, 0
42005697:	00c1c2        	addi	a12, a1, 0
4200569a:	fff681        	l32r	a8, 42005674 <core::fmt::Formatter::write_str+0x14>
4200569d:	0008e0        	callx8	a8
420056a0:	0a2d      	mov.n	a2, a10
420056a2:	f01d      	retw.n

420056a4 <core::fmt::Formatter::debug_lower_hex>:
420056a4:	004136        	entry	a1, 32
420056a7:	7288      	l32i.n	a8, a2, 28
420056a9:	091c      	movi.n	a9, 16
420056ab:	108890        	and	a8, a8, a9
420056ae:	412480        	srli	a2, a8, 4
420056b1:	f01d      	retw.n
	...

420056b4 <core::fmt::Formatter::debug_upper_hex>:
420056b4:	004136        	entry	a1, 32
420056b7:	7288      	l32i.n	a8, a2, 28
420056b9:	092c      	movi.n	a9, 32
420056bb:	108890        	and	a8, a8, a9
420056be:	412580        	srli	a2, a8, 5
420056c1:	f01d      	retw.n
420056c3:	435400        	min	a5, a4, a0
420056c6:	2a4200        	mul.s	f4, f2, f0
420056c9:	3c0123        	lsi	f2, a1, 240
420056cc:	232b      	addi.n	a2, a3, 2
420056ce:	        	l32r	a0, 41fd2fc0 <__user_exception+0x1c59d98>

420056d0 <core::fmt::Formatter::debug_struct_field3_finish>:
420056d0:	006136        	entry	a1, 48
420056d3:	0179      	s32i.n	a7, a1, 0
420056d5:	52a8      	l32i.n	a10, a2, 20
420056d7:	6288      	l32i.n	a8, a2, 24
420056d9:	3888      	l32i.n	a8, a8, 12
420056db:	03bd      	mov.n	a11, a3
420056dd:	04cd      	mov.n	a12, a4
420056df:	0008e0        	callx8	a8
420056e2:	070c      	movi.n	a7, 0
420056e4:	094172        	s8i	a7, a1, 9
420056e7:	0841a2        	s8i	a10, a1, 8
420056ea:	1129      	s32i.n	a2, a1, 4
420056ec:	04c142        	addi	a4, a1, 4
420056ef:	c1e8      	l32i.n	a14, a1, 48
420056f1:	fff431        	l32r	a3, 420056c4 <core::fmt::Formatter::debug_upper_hex+0x10>
420056f4:	04ad      	mov.n	a10, a4
420056f6:	05bd      	mov.n	a11, a5
420056f8:	06cd      	mov.n	a12, a6
420056fa:	01d8      	l32i.n	a13, a1, 0
420056fc:	0003e0        	callx8	a3
420056ff:	d1b8      	l32i.n	a11, a1, 52
42005701:	e1c8      	l32i.n	a12, a1, 56
42005703:	f1d8      	l32i.n	a13, a1, 60
42005705:	1021e2        	l32i	a14, a1, 64
42005708:	04ad      	mov.n	a10, a4
4200570a:	0003e0        	callx8	a3
4200570d:	1121b2        	l32i	a11, a1, 68
42005710:	1221c2        	l32i	a12, a1, 72
42005713:	1321d2        	l32i	a13, a1, 76
42005716:	1421e2        	l32i	a14, a1, 80
42005719:	04ad      	mov.n	a10, a4
4200571b:	0003e0        	callx8	a3
4200571e:	080182        	l8ui	a8, a1, 8
42005721:	090192        	l8ui	a9, a1, 9
42005724:	160c      	movi.n	a6, 1
42005726:	00f916        	beqz	a9, 42005739 <core::fmt::Formatter::debug_struct_field3_finish+0x69>
42005729:	ffa092        	movi	a9, 255
4200572c:	108890        	and	a8, a8, a9
4200572f:	067d      	mov.n	a7, a6
42005731:	014816        	beqz	a8, 42005749 <core::fmt::Formatter::debug_struct_field3_finish+0x79>
42005734:	102760        	and	a2, a7, a6
42005737:	f01d      	retw.n
42005739:	ffa092        	movi	a9, 255
4200573c:	108890        	and	a8, a8, a9
4200573f:	f11877        	beq	a8, a7, 42005734 <core::fmt::Formatter::debug_struct_field3_finish+0x64>
42005742:	170c      	movi.n	a7, 1
42005744:	102760        	and	a2, a7, a6
42005747:	f01d      	retw.n
42005749:	1188      	l32i.n	a8, a1, 4
4200574b:	7898      	l32i.n	a9, a8, 28
4200574d:	4a0c      	movi.n	a10, 4
4200574f:	1099a0        	and	a9, a9, a10
42005752:	014956        	bnez	a9, 4200576a <core::fmt::Formatter::debug_struct_field3_finish+0x9a>
42005755:	58a8      	l32i.n	a10, a8, 20
42005757:	6888      	l32i.n	a8, a8, 24
42005759:	3888      	l32i.n	a8, a8, 12
4200575b:	ffdcb1        	l32r	a11, 420056cc <core::fmt::Formatter::debug_upper_hex+0x18>
4200575e:	2c0c      	movi.n	a12, 2
42005760:	0008e0        	callx8	a8
42005763:	0a7d      	mov.n	a7, a10
42005765:	102760        	and	a2, a7, a6
42005768:	f01d      	retw.n
4200576a:	58a8      	l32i.n	a10, a8, 20
4200576c:	6888      	l32i.n	a8, a8, 24
4200576e:	3888      	l32i.n	a8, a8, 12
42005770:	ffd6b1        	l32r	a11, 420056c8 <core::fmt::Formatter::debug_upper_hex+0x14>
42005773:	1c0c      	movi.n	a12, 1
42005775:	0008e0        	callx8	a8
42005778:	0a7d      	mov.n	a7, a10
4200577a:	102760        	and	a2, a7, a6
4200577d:	f01d      	retw.n
4200577f:	435400        	min	a5, a4, a0
42005782:	2a4200        	mul.s	f4, f2, f0
42005785:	3c0123        	lsi	f2, a1, 240
42005788:	232b      	addi.n	a2, a3, 2
4200578a:	        	l32r	a0, 41fd307c <__user_exception+0x1c59e54>

4200578c <core::fmt::Formatter::debug_struct_field4_finish>:
4200578c:	006136        	entry	a1, 48
4200578f:	1179      	s32i.n	a7, a1, 4
42005791:	0169      	s32i.n	a6, a1, 0
42005793:	52a8      	l32i.n	a10, a2, 20
42005795:	6288      	l32i.n	a8, a2, 24
42005797:	3888      	l32i.n	a8, a8, 12
42005799:	03bd      	mov.n	a11, a3
4200579b:	04cd      	mov.n	a12, a4
4200579d:	0008e0        	callx8	a8
420057a0:	070c      	movi.n	a7, 0
420057a2:	0d4172        	s8i	a7, a1, 13
420057a5:	0c41a2        	s8i	a10, a1, 12
420057a8:	2129      	s32i.n	a2, a1, 8
420057aa:	08c162        	addi	a6, a1, 8
420057ad:	c1e8      	l32i.n	a14, a1, 48
420057af:	fff441        	l32r	a4, 42005780 <core::fmt::Formatter::debug_struct_field3_finish+0xb0>
420057b2:	06ad      	mov.n	a10, a6
420057b4:	05bd      	mov.n	a11, a5
420057b6:	01c8      	l32i.n	a12, a1, 0
420057b8:	11d8      	l32i.n	a13, a1, 4
420057ba:	0004e0        	callx8	a4
420057bd:	d1b8      	l32i.n	a11, a1, 52
420057bf:	e1c8      	l32i.n	a12, a1, 56
420057c1:	f1d8      	l32i.n	a13, a1, 60
420057c3:	1021e2        	l32i	a14, a1, 64
420057c6:	06ad      	mov.n	a10, a6
420057c8:	0004e0        	callx8	a4
420057cb:	1121b2        	l32i	a11, a1, 68
420057ce:	1221c2        	l32i	a12, a1, 72
420057d1:	1321d2        	l32i	a13, a1, 76
420057d4:	1421e2        	l32i	a14, a1, 80
420057d7:	06ad      	mov.n	a10, a6
420057d9:	0004e0        	callx8	a4
420057dc:	1521b2        	l32i	a11, a1, 84
420057df:	1621c2        	l32i	a12, a1, 88
420057e2:	1721d2        	l32i	a13, a1, 92
420057e5:	1821e2        	l32i	a14, a1, 96
420057e8:	06ad      	mov.n	a10, a6
420057ea:	0004e0        	callx8	a4
420057ed:	0c0182        	l8ui	a8, a1, 12
420057f0:	0d0192        	l8ui	a9, a1, 13
420057f3:	160c      	movi.n	a6, 1
420057f5:	00f916        	beqz	a9, 42005808 <core::fmt::Formatter::debug_struct_field4_finish+0x7c>
420057f8:	ffa092        	movi	a9, 255
420057fb:	108890        	and	a8, a8, a9
420057fe:	067d      	mov.n	a7, a6
42005800:	014816        	beqz	a8, 42005818 <core::fmt::Formatter::debug_struct_field4_finish+0x8c>
42005803:	102760        	and	a2, a7, a6
42005806:	f01d      	retw.n
42005808:	ffa092        	movi	a9, 255
4200580b:	108890        	and	a8, a8, a9
4200580e:	f11877        	beq	a8, a7, 42005803 <core::fmt::Formatter::debug_struct_field4_finish+0x77>
42005811:	170c      	movi.n	a7, 1
42005813:	102760        	and	a2, a7, a6
42005816:	f01d      	retw.n
42005818:	2188      	l32i.n	a8, a1, 8
4200581a:	7898      	l32i.n	a9, a8, 28
4200581c:	4a0c      	movi.n	a10, 4
4200581e:	1099a0        	and	a9, a9, a10
42005821:	014956        	bnez	a9, 42005839 <core::fmt::Formatter::debug_struct_field4_finish+0xad>
42005824:	58a8      	l32i.n	a10, a8, 20
42005826:	6888      	l32i.n	a8, a8, 24
42005828:	3888      	l32i.n	a8, a8, 12
4200582a:	ffd7b1        	l32r	a11, 42005788 <core::fmt::Formatter::debug_struct_field3_finish+0xb8>
4200582d:	2c0c      	movi.n	a12, 2
4200582f:	0008e0        	callx8	a8
42005832:	0a7d      	mov.n	a7, a10
42005834:	102760        	and	a2, a7, a6
42005837:	f01d      	retw.n
42005839:	58a8      	l32i.n	a10, a8, 20
4200583b:	6888      	l32i.n	a8, a8, 24
4200583d:	3888      	l32i.n	a8, a8, 12
4200583f:	ffd1b1        	l32r	a11, 42005784 <core::fmt::Formatter::debug_struct_field3_finish+0xb4>
42005842:	1c0c      	movi.n	a12, 1
42005844:	0008e0        	callx8	a8
42005847:	0a7d      	mov.n	a7, a10
42005849:	102760        	and	a2, a7, a6
4200584c:	f01d      	retw.n
4200584e:	00          	.byte 00
4200584f:	2b2800        	oeq.s	b2, f8, f0
42005852:	443c01        	l32r	a0, 41fd6944 <__user_exception+0x1c5d71c>
42005855:	420062        	l8ui	a6, a0, 66
42005858:	2b18      	l32i.n	a1, a11, 8
4200585a:	543c01        	l32r	a0, 41fda94c <__user_exception+0x1c61724>
4200585d:	420043        	lsi	f4, a0, 0x108
42005860:	232a      	add.n	a2, a3, a2
42005862:	2b3c01        	l32r	a0, 41fd0554 <__user_exception+0x1c5732c>
42005865:	3c0123        	lsi	f2, a1, 240

42005868 <core::fmt::Formatter::debug_struct_fields_finish>:
42005868:	00a136        	entry	a1, 80
4200586b:	1169      	s32i.n	a6, a1, 4
4200586d:	142182        	l32i	a8, a1, 80
42005870:	2189      	s32i.n	a8, a1, 8
42005872:	021687        	beq	a6, a8, 42005878 <core::fmt::Formatter::debug_struct_fields_finish+0x10>
42005875:	0026c6        	j	42005914 <core::fmt::Formatter::debug_struct_fields_finish+0xac>
42005878:	52a8      	l32i.n	a10, a2, 20
4200587a:	6288      	l32i.n	a8, a2, 24
4200587c:	3888      	l32i.n	a8, a8, 12
4200587e:	03bd      	mov.n	a11, a3
42005880:	04cd      	mov.n	a12, a4
42005882:	0008e0        	callx8	a8
42005885:	030c      	movi.n	a3, 0
42005887:	114132        	s8i	a3, a1, 17
4200588a:	1041a2        	s8i	a10, a1, 16
4200588d:	3129      	s32i.n	a2, a1, 12
4200588f:	140c      	movi.n	a4, 1
42005891:	03b616        	beqz	a6, 420058d0 <core::fmt::Formatter::debug_struct_fields_finish+0x68>
42005894:	0149      	s32i.n	a4, a1, 0
42005896:	fff041        	l32r	a4, 42005858 <core::fmt::Formatter::debug_struct_field4_finish+0xcc>
42005899:	fff021        	l32r	a2, 4200585c <core::fmt::Formatter::debug_struct_field4_finish+0xd0>
4200589c:	b0d370        	addx8	a13, a3, a7
4200589f:	b08350        	addx8	a8, a3, a5
420058a2:	18c8      	l32i.n	a12, a8, 4
420058a4:	08b8      	l32i.n	a11, a8, 0
420058a6:	0cc1a2        	addi	a10, a1, 12
420058a9:	04ed      	mov.n	a14, a4
420058ab:	0002e0        	callx8	a2
420058ae:	331b      	addi.n	a3, a3, 1
420058b0:	e89367        	bne	a3, a6, 4200589c <core::fmt::Formatter::debug_struct_fields_finish+0x34>
420058b3:	1001a2        	l8ui	a10, a1, 16
420058b6:	110182        	l8ui	a8, a1, 17
420058b9:	011816        	beqz	a8, 420058ce <core::fmt::Formatter::debug_struct_fields_finish+0x66>
420058bc:	ffa082        	movi	a8, 255
420058bf:	108a80        	and	a8, a10, a8
420058c2:	0148      	l32i.n	a4, a1, 0
420058c4:	04ad      	mov.n	a10, a4
420058c6:	018816        	beqz	a8, 420058e2 <core::fmt::Formatter::debug_struct_fields_finish+0x7a>
420058c9:	102a40        	and	a2, a10, a4
420058cc:	f01d      	retw.n
420058ce:	0148      	l32i.n	a4, a1, 0
420058d0:	ffa082        	movi	a8, 255
420058d3:	108a80        	and	a8, a10, a8
420058d6:	0a0c      	movi.n	a10, 0
420058d8:	ed18a7        	beq	a8, a10, 420058c9 <core::fmt::Formatter::debug_struct_fields_finish+0x61>
420058db:	1a0c      	movi.n	a10, 1
420058dd:	102a40        	and	a2, a10, a4
420058e0:	f01d      	retw.n
420058e2:	3188      	l32i.n	a8, a1, 12
420058e4:	7898      	l32i.n	a9, a8, 28
420058e6:	4a0c      	movi.n	a10, 4
420058e8:	1099a0        	and	a9, a9, a10
420058eb:	012956        	bnez	a9, 42005901 <core::fmt::Formatter::debug_struct_fields_finish+0x99>
420058ee:	58a8      	l32i.n	a10, a8, 20
420058f0:	6888      	l32i.n	a8, a8, 24
420058f2:	3888      	l32i.n	a8, a8, 12
420058f4:	ffdcb1        	l32r	a11, 42005864 <core::fmt::Formatter::debug_struct_field4_finish+0xd8>
420058f7:	2c0c      	movi.n	a12, 2
420058f9:	0008e0        	callx8	a8
420058fc:	102a40        	and	a2, a10, a4
420058ff:	f01d      	retw.n
42005901:	58a8      	l32i.n	a10, a8, 20
42005903:	6888      	l32i.n	a8, a8, 24
42005905:	3888      	l32i.n	a8, a8, 12
42005907:	ffd6b1        	l32r	a11, 42005860 <core::fmt::Formatter::debug_struct_field4_finish+0xd4>
4200590a:	1c0c      	movi.n	a12, 1
4200590c:	0008e0        	callx8	a8
4200590f:	102a40        	and	a2, a10, a4
42005912:	f01d      	retw.n
42005914:	0a0c      	movi.n	a10, 0
42005916:	31a9      	s32i.n	a10, a1, 12
42005918:	04c1b2        	addi	a11, a1, 4
4200591b:	08c1c2        	addi	a12, a1, 8
4200591e:	0cc1d2        	addi	a13, a1, 12
42005921:	ffcbe1        	l32r	a14, 42005850 <core::fmt::Formatter::debug_struct_field4_finish+0xc4>
42005924:	ffcc81        	l32r	a8, 42005854 <core::fmt::Formatter::debug_struct_field4_finish+0xc8>
42005927:	0008e0        	callx8	a8
4200592a:	0041f0        	break	1, 15
4200592d:	000000        	ill
42005930:	0044b4        	ee.ld.qacc_l.l.128.ip	a11, 0x440
42005933:	42          	.byte 0x42
42005934:	012330        	slli	a2, a3, 29
42005937:	313c      	movi.n	a1, 51
42005939:	3c0123        	lsi	f2, a1, 240

4200593c <core::fmt::Formatter::debug_tuple_field1_finish>:
4200593c:	006136        	entry	a1, 48
4200593f:	52a8      	l32i.n	a10, a2, 20
42005941:	6288      	l32i.n	a8, a2, 24
42005943:	3888      	l32i.n	a8, a8, 12
42005945:	03bd      	mov.n	a11, a3
42005947:	04cd      	mov.n	a12, a4
42005949:	0008e0        	callx8	a8
4200594c:	0841a2        	s8i	a10, a1, 8
4200594f:	1129      	s32i.n	a2, a1, 4
42005951:	080c      	movi.n	a8, 0
42005953:	0189      	s32i.n	a8, a1, 0
42005955:	019487        	bne	a4, a8, 4200595a <core::fmt::Formatter::debug_tuple_field1_finish+0x1e>
42005958:	180c      	movi.n	a8, 1
4200595a:	094182        	s8i	a8, a1, 9
4200595d:	00c1a2        	addi	a10, a1, 0
42005960:	fff481        	l32r	a8, 42005930 <core::fmt::Formatter::debug_struct_fields_finish+0xc8>
42005963:	05bd      	mov.n	a11, a5
42005965:	06cd      	mov.n	a12, a6
42005967:	0008e0        	callx8	a8
4200596a:	0801a2        	l8ui	a10, a1, 8
4200596d:	0188      	l32i.n	a8, a1, 0
4200596f:	011816        	beqz	a8, 42005984 <core::fmt::Formatter::debug_tuple_field1_finish+0x48>
42005972:	ffa092        	movi	a9, 255
42005975:	10aa90        	and	a10, a10, a9
42005978:	01ca16        	beqz	a10, 42005998 <core::fmt::Formatter::debug_tuple_field1_finish+0x5c>
4200597b:	170c      	movi.n	a7, 1
4200597d:	180c      	movi.n	a8, 1
4200597f:	102780        	and	a2, a7, a8
42005982:	f01d      	retw.n
42005984:	ffa082        	movi	a8, 255
42005987:	108a80        	and	a8, a10, a8
4200598a:	070c      	movi.n	a7, 0
4200598c:	ed1877        	beq	a8, a7, 4200597d <core::fmt::Formatter::debug_tuple_field1_finish+0x41>
4200598f:	170c      	movi.n	a7, 1
42005991:	180c      	movi.n	a8, 1
42005993:	102780        	and	a2, a7, a8
42005996:	f01d      	retw.n
42005998:	1168      	l32i.n	a6, a1, 4
4200599a:	251866        	bnei	a8, 1, 420059c3 <core::fmt::Formatter::debug_tuple_field1_finish+0x87>
4200599d:	090182        	l8ui	a8, a1, 9
420059a0:	108890        	and	a8, a8, a9
420059a3:	01c816        	beqz	a8, 420059c3 <core::fmt::Formatter::debug_tuple_field1_finish+0x87>
420059a6:	7688      	l32i.n	a8, a6, 28
420059a8:	490c      	movi.n	a9, 4
420059aa:	108890        	and	a8, a8, a9
420059ad:	012856        	bnez	a8, 420059c3 <core::fmt::Formatter::debug_tuple_field1_finish+0x87>
420059b0:	56a8      	l32i.n	a10, a6, 20
420059b2:	6688      	l32i.n	a8, a6, 24
420059b4:	3888      	l32i.n	a8, a8, 12
420059b6:	ffdfb1        	l32r	a11, 42005934 <core::fmt::Formatter::debug_struct_fields_finish+0xcc>
420059b9:	170c      	movi.n	a7, 1
420059bb:	07cd      	mov.n	a12, a7
420059bd:	0008e0        	callx8	a8
420059c0:	fb9a56        	bnez	a10, 4200597d <core::fmt::Formatter::debug_tuple_field1_finish+0x41>
420059c3:	56a8      	l32i.n	a10, a6, 20
420059c5:	6688      	l32i.n	a8, a6, 24
420059c7:	3888      	l32i.n	a8, a8, 12
420059c9:	ffdbb1        	l32r	a11, 42005938 <core::fmt::Formatter::debug_struct_fields_finish+0xd0>
420059cc:	1c0c      	movi.n	a12, 1
420059ce:	0008e0        	callx8	a8
420059d1:	0a7d      	mov.n	a7, a10
420059d3:	180c      	movi.n	a8, 1
420059d5:	102780        	and	a2, a7, a8
420059d8:	f01d      	retw.n
420059da:	000000        	ill
420059dd:	001c00        	movsp	a0, a12
420059e0:	110000        	slli	a0, a0, 16
420059e3:	00          	.byte 00
420059e4:	010001        	l32r	a0, 41fc5de4 <__user_exception+0x1c4cbbc>
420059e7:	00          	.byte 00
420059e8:	4e5c      	movi.n	a14, 84
420059ea:	004200        	break	2, 0
420059ed:	0008      	l32i.n	a0, a0, 0
420059ef:	000000        	ill
420059f2:	180001        	l32r	a0, 41fcb9f4 <__user_exception+0x1c527cc>
420059f5:	003c012e 	ee.vmulas.s16.accx.ld.ip.qup	q1, a2, 16, q0, q0, q3, q4
420059f9:	420062        	l8ui	a6, a0, 66
420059fc:	012b50        	slli	a2, a11, 27
420059ff:	7c3c      	movi.n	a12, 55
42005a01:	003d      	mov.n	a3, a0
42005a03:	2b4042        	s8i	a4, a0, 43
42005a06:	        	l32r	a0, 41fd32f8 <__user_exception+0x1c5a0d0>

42005a08 <<str as core::fmt::Debug>::fmt>:
42005a08:	00e136        	entry	a1, 112
42005a0b:	a129      	s32i.n	a2, a1, 40
42005a0d:	5478      	l32i.n	a7, a4, 20
42005a0f:	6468      	l32i.n	a6, a4, 24
42005a11:	4648      	l32i.n	a4, a6, 16
42005a13:	2b2c      	movi.n	a11, 34
42005a15:	07ad      	mov.n	a10, a7
42005a17:	0004e0        	callx8	a4
42005a1a:	120c      	movi.n	a2, 1
42005a1c:	224a56        	bnez	a10, 42005c44 <<str as core::fmt::Debug>::fmt+0x23c>
42005a1f:	3169      	s32i.n	a6, a1, 12
42005a21:	209316        	beqz	a3, 42005c2e <<str as core::fmt::Debug>::fmt+0x226>
42005a24:	1129      	s32i.n	a2, a1, 4
42005a26:	a188      	l32i.n	a8, a1, 40
42005a28:	983a      	add.n	a9, a8, a3
42005a2a:	2199      	s32i.n	a9, a1, 8
42005a2c:	060c      	movi.n	a6, 0
42005a2e:	ffa022        	movi	a2, 255
42005a31:	f97c      	movi.n	a9, -1
42005a33:	7199      	s32i.n	a9, a1, 28
42005a35:	ffeb91        	l32r	a9, 420059e4 <core::fmt::Formatter::debug_tuple_field1_finish+0xa8>
42005a38:	6199      	s32i.n	a9, a1, 24
42005a3a:	ffeb91        	l32r	a9, 420059e8 <core::fmt::Formatter::debug_tuple_field1_finish+0xac>
42005a3d:	5199      	s32i.n	a9, a1, 20
42005a3f:	08ad      	mov.n	a10, a8
42005a41:	069d      	mov.n	a9, a6
42005a43:	0139      	s32i.n	a3, a1, 0
42005a45:	b199      	s32i.n	a9, a1, 44
42005a47:	0add      	mov.n	a13, a10
42005a49:	000d82        	l8ui	a8, a13, 0
42005a4c:	239800        	sext	a9, a8, 7
42005a4f:	7188      	l32i.n	a8, a1, 28
42005a51:	91d9      	s32i.n	a13, a1, 36
42005a53:	07a897        	bge	a8, a9, 42005a5e <<str as core::fmt::Debug>::fmt+0x56>
42005a56:	10b920        	and	a11, a9, a2
42005a59:	8d1b      	addi.n	a8, a13, 1
42005a5b:	001586        	j	42005ab5 <<str as core::fmt::Debug>::fmt+0xad>
42005a5e:	010da2        	l8ui	a10, a13, 1
42005a61:	f83c      	movi.n	a8, 63
42005a63:	10ba80        	and	a11, a10, a8
42005a66:	fa1c      	movi.n	a10, 31
42005a68:	10a9a0        	and	a10, a9, a10
42005a6b:	dfafc2        	movi	a12, -33
42005a6e:	3bbc97        	bgeu	a12, a9, 42005aad <<str as core::fmt::Debug>::fmt+0xa5>
42005a71:	020dc2        	l8ui	a12, a13, 2
42005a74:	10cc80        	and	a12, a12, a8
42005a77:	11bba0        	slli	a11, a11, 6
42005a7a:	20bbc0        	or	a11, a11, a12
42005a7d:	ed3b      	addi.n	a14, a13, 3
42005a7f:	0c7c      	movi.n	a12, -16
42005a81:	02b9c7        	bgeu	a9, a12, 42005a87 <<str as core::fmt::Debug>::fmt+0x7f>
42005a84:	005686        	j	42005be2 <<str as core::fmt::Debug>::fmt+0x1da>
42005a87:	019ae0        	slli	a9, a10, 18
42005a8a:	ffd4a1        	l32r	a10, 420059dc <core::fmt::Formatter::debug_tuple_field1_finish+0xa0>
42005a8d:	1099a0        	and	a9, a9, a10
42005a90:	000ea2        	l8ui	a10, a14, 0
42005a93:	108a80        	and	a8, a10, a8
42005a96:	11aba0        	slli	a10, a11, 6
42005a99:	208a80        	or	a8, a10, a8
42005a9c:	20b890        	or	a11, a8, a9
42005a9f:	ffd081        	l32r	a8, 420059e0 <core::fmt::Formatter::debug_tuple_field1_finish+0xa4>
42005aa2:	029b87        	bne	a11, a8, 42005aa8 <<str as core::fmt::Debug>::fmt+0xa0>
42005aa5:	005886        	j	42005c0b <<str as core::fmt::Debug>::fmt+0x203>
42005aa8:	8d4b      	addi.n	a8, a13, 4
42005aaa:	0001c6        	j	42005ab5 <<str as core::fmt::Debug>::fmt+0xad>
42005aad:	118aa0        	slli	a8, a10, 6
42005ab0:	20b8b0        	or	a11, a8, a11
42005ab3:	8d2b      	addi.n	a8, a13, 2
42005ab5:	8189      	s32i.n	a8, a1, 32
42005ab7:	30c1a2        	addi	a10, a1, 48
42005aba:	41b9      	s32i.n	a11, a1, 16
42005abc:	61c8      	l32i.n	a12, a1, 24
42005abe:	5188      	l32i.n	a8, a1, 20
42005ac0:	0008e0        	callx8	a8
42005ac3:	300182        	l8ui	a8, a1, 48
42005ac6:	2fe826        	beqi	a8, 128, 42005af9 <<str as core::fmt::Debug>::fmt+0xf1>
42005ac9:	3a0182        	l8ui	a8, a1, 58
42005acc:	3b0192        	l8ui	a9, a1, 59
42005acf:	c08980        	sub	a8, a9, a8
42005ad2:	108820        	and	a8, a8, a2
42005ad5:	b1d8      	l32i.n	a13, a1, 44
42005ad7:	201826        	beqi	a8, 1, 42005afb <<str as core::fmt::Debug>::fmt+0xf3>
42005ada:	02bd67        	bgeu	a13, a6, 42005ae0 <<str as core::fmt::Debug>::fmt+0xd8>
42005add:	006586        	j	42005c77 <<str as core::fmt::Debug>::fmt+0x26f>
42005ae0:	a188      	l32i.n	a8, a1, 40
42005ae2:	b86a      	add.n	a11, a8, a6
42005ae4:	01e616        	beqz	a6, 42005b06 <<str as core::fmt::Debug>::fmt+0xfe>
42005ae7:	15b637        	bgeu	a6, a3, 42005b00 <<str as core::fmt::Debug>::fmt+0xf8>
42005aea:	000b82        	l8ui	a8, a11, 0
42005aed:	238800        	sext	a8, a8, 7
42005af0:	c0af92        	movi	a9, -64
42005af3:	0fa897        	bge	a8, a9, 42005b06 <<str as core::fmt::Debug>::fmt+0xfe>
42005af6:	005f46        	j	42005c77 <<str as core::fmt::Debug>::fmt+0x26f>
42005af9:	b1d8      	l32i.n	a13, a1, 44
42005afb:	81a8      	l32i.n	a10, a1, 32
42005afd:	003ec6        	j	42005bfc <<str as core::fmt::Debug>::fmt+0x1f4>
42005b00:	021637        	beq	a6, a3, 42005b06 <<str as core::fmt::Debug>::fmt+0xfe>
42005b03:	005c06        	j	42005c77 <<str as core::fmt::Debug>::fmt+0x26f>
42005b06:	01bd16        	beqz	a13, 42005b25 <<str as core::fmt::Debug>::fmt+0x11d>
42005b09:	12bd37        	bgeu	a13, a3, 42005b1f <<str as core::fmt::Debug>::fmt+0x117>
42005b0c:	a188      	l32i.n	a8, a1, 40
42005b0e:	88da      	add.n	a8, a8, a13
42005b10:	000882        	l8ui	a8, a8, 0
42005b13:	238800        	sext	a8, a8, 7
42005b16:	bfaf92        	movi	a9, -65
42005b19:	082987        	blt	a9, a8, 42005b25 <<str as core::fmt::Debug>::fmt+0x11d>
42005b1c:	0055c6        	j	42005c77 <<str as core::fmt::Debug>::fmt+0x26f>
42005b1f:	021d37        	beq	a13, a3, 42005b25 <<str as core::fmt::Debug>::fmt+0x11d>
42005b22:	005446        	j	42005c77 <<str as core::fmt::Debug>::fmt+0x26f>
42005b25:	c0cd60        	sub	a12, a13, a6
42005b28:	3188      	l32i.n	a8, a1, 12
42005b2a:	3888      	l32i.n	a8, a8, 12
42005b2c:	07ad      	mov.n	a10, a7
42005b2e:	0008e0        	callx8	a8
42005b31:	0f4a56        	bnez	a10, 42005c29 <<str as core::fmt::Debug>::fmt+0x221>
42005b34:	e188      	l32i.n	a8, a1, 56
42005b36:	116182        	s32i	a8, a1, 68
42005b39:	d188      	l32i.n	a8, a1, 52
42005b3b:	106182        	s32i	a8, a1, 64
42005b3e:	c188      	l32i.n	a8, a1, 48
42005b40:	f189      	s32i.n	a8, a1, 60
42005b42:	108820        	and	a8, a8, a2
42005b45:	47e866        	bnei	a8, 128, 42005b90 <<str as core::fmt::Debug>::fmt+0x188>
42005b48:	80a062        	movi	a6, 128
42005b4b:	000506        	j	42005b63 <<str as core::fmt::Debug>::fmt+0x15b>
42005b4e:	060c      	movi.n	a6, 0
42005b50:	f169      	s32i.n	a6, a1, 60
42005b52:	116162        	s32i	a6, a1, 68
42005b55:	1021b2        	l32i	a11, a1, 64
42005b58:	106162        	s32i	a6, a1, 64
42005b5b:	07ad      	mov.n	a10, a7
42005b5d:	0004e0        	callx8	a4
42005b60:	0c5a56        	bnez	a10, 42005c29 <<str as core::fmt::Debug>::fmt+0x221>
42005b63:	108620        	and	a8, a6, a2
42005b66:	e4e826        	beqi	a8, 128, 42005b4e <<str as core::fmt::Debug>::fmt+0x146>
42005b69:	460132        	l8ui	a3, a1, 70
42005b6c:	470182        	l8ui	a8, a1, 71
42005b6f:	4eb387        	bgeu	a3, a8, 42005bc1 <<str as core::fmt::Debug>::fmt+0x1b9>
42005b72:	831b      	addi.n	a8, a3, 1
42005b74:	464182        	s8i	a8, a1, 70
42005b77:	0293b6        	bltui	a3, 10, 42005b7d <<str as core::fmt::Debug>::fmt+0x175>
42005b7a:	003a46        	j	42005c67 <<str as core::fmt::Debug>::fmt+0x25f>
42005b7d:	3cc182        	addi	a8, a1, 60
42005b80:	883a      	add.n	a8, a8, a3
42005b82:	0008b2        	l8ui	a11, a8, 0
42005b85:	07ad      	mov.n	a10, a7
42005b87:	0004e0        	callx8	a4
42005b8a:	fd5a16        	beqz	a10, 42005b63 <<str as core::fmt::Debug>::fmt+0x15b>
42005b8d:	002606        	j	42005c29 <<str as core::fmt::Debug>::fmt+0x221>
42005b90:	a90c      	movi.n	a9, 10
42005b92:	460182        	l8ui	a8, a1, 70
42005b95:	733890        	maxu	a3, a8, a9
42005b98:	470192        	l8ui	a9, a1, 71
42005b9b:	736980        	maxu	a6, a9, a8
42005b9e:	1f1867        	beq	a8, a6, 42005bc1 <<str as core::fmt::Debug>::fmt+0x1b9>
42005ba1:	581b      	addi.n	a5, a8, 1
42005ba3:	464152        	s8i	a5, a1, 70
42005ba6:	029837        	bne	a8, a3, 42005bac <<str as core::fmt::Debug>::fmt+0x1a4>
42005ba9:	002e86        	j	42005c67 <<str as core::fmt::Debug>::fmt+0x25f>
42005bac:	3cc192        	addi	a9, a1, 60
42005baf:	898a      	add.n	a8, a9, a8
42005bb1:	0008b2        	l8ui	a11, a8, 0
42005bb4:	07ad      	mov.n	a10, a7
42005bb6:	0004e0        	callx8	a4
42005bb9:	058d      	mov.n	a8, a5
42005bbb:	fdfa16        	beqz	a10, 42005b9e <<str as core::fmt::Debug>::fmt+0x196>
42005bbe:	0019c6        	j	42005c29 <<str as core::fmt::Debug>::fmt+0x221>
42005bc1:	4198      	l32i.n	a9, a1, 16
42005bc3:	0ae9f6        	bgeui	a9, 128, 42005bd1 <<str as core::fmt::Debug>::fmt+0x1c9>
42005bc6:	180c      	movi.n	a8, 1
42005bc8:	0138      	l32i.n	a3, a1, 0
42005bca:	b1d8      	l32i.n	a13, a1, 44
42005bcc:	81a8      	l32i.n	a10, a1, 32
42005bce:	000a06        	j	42005bfa <<str as core::fmt::Debug>::fmt+0x1f2>
42005bd1:	ff8681        	l32r	a8, 420059ec <core::fmt::Formatter::debug_tuple_field1_finish+0xb0>
42005bd4:	0138      	l32i.n	a3, a1, 0
42005bd6:	b1d8      	l32i.n	a13, a1, 44
42005bd8:	81a8      	l32i.n	a10, a1, 32
42005bda:	0fb987        	bgeu	a9, a8, 42005bed <<str as core::fmt::Debug>::fmt+0x1e5>
42005bdd:	280c      	movi.n	a8, 2
42005bdf:	0005c6        	j	42005bfa <<str as core::fmt::Debug>::fmt+0x1f2>
42005be2:	81e9      	s32i.n	a14, a1, 32
42005be4:	118a40        	slli	a8, a10, 12
42005be7:	20bb80        	or	a11, a11, a8
42005bea:	ffb246        	j	42005ab7 <<str as core::fmt::Debug>::fmt+0xaf>
42005bed:	ff8081        	l32r	a8, 420059f0 <core::fmt::Formatter::debug_tuple_field1_finish+0xb4>
42005bf0:	043987        	bltu	a9, a8, 42005bf8 <<str as core::fmt::Debug>::fmt+0x1f0>
42005bf3:	480c      	movi.n	a8, 4
42005bf5:	000046        	j	42005bfa <<str as core::fmt::Debug>::fmt+0x1f2>
42005bf8:	380c      	movi.n	a8, 3
42005bfa:	68da      	add.n	a6, a8, a13
42005bfc:	9188      	l32i.n	a8, a1, 36
42005bfe:	c08d80        	sub	a8, a13, a8
42005c01:	98aa      	add.n	a9, a8, a10
42005c03:	2188      	l32i.n	a8, a1, 8
42005c05:	021a87        	beq	a10, a8, 42005c0b <<str as core::fmt::Debug>::fmt+0x203>
42005c08:	ff8e46        	j	42005a45 <<str as core::fmt::Debug>::fmt+0x3d>
42005c0b:	042616        	beqz	a6, 42005c51 <<str as core::fmt::Debug>::fmt+0x249>
42005c0e:	46b637        	bgeu	a6, a3, 42005c58 <<str as core::fmt::Debug>::fmt+0x250>
42005c11:	a188      	l32i.n	a8, a1, 40
42005c13:	886a      	add.n	a8, a8, a6
42005c15:	000882        	l8ui	a8, a8, 0
42005c18:	238800        	sext	a8, a8, 7
42005c1b:	bfaf92        	movi	a9, -65
42005c1e:	1128      	l32i.n	a2, a1, 4
42005c20:	65a987        	bge	a9, a8, 42005c89 <<str as core::fmt::Debug>::fmt+0x281>
42005c23:	c03360        	sub	a3, a3, a6
42005c26:	000206        	j	42005c32 <<str as core::fmt::Debug>::fmt+0x22a>
42005c29:	1128      	l32i.n	a2, a1, 4
42005c2b:	000546        	j	42005c44 <<str as core::fmt::Debug>::fmt+0x23c>
42005c2e:	060c      	movi.n	a6, 0
42005c30:	063d      	mov.n	a3, a6
42005c32:	a188      	l32i.n	a8, a1, 40
42005c34:	b86a      	add.n	a11, a8, a6
42005c36:	3188      	l32i.n	a8, a1, 12
42005c38:	3888      	l32i.n	a8, a8, 12
42005c3a:	07ad      	mov.n	a10, a7
42005c3c:	03cd      	mov.n	a12, a3
42005c3e:	0008e0        	callx8	a8
42005c41:	001a16        	beqz	a10, 42005c46 <<str as core::fmt::Debug>::fmt+0x23e>
42005c44:	f01d      	retw.n
42005c46:	2b2c      	movi.n	a11, 34
42005c48:	07ad      	mov.n	a10, a7
42005c4a:	0004e0        	callx8	a4
42005c4d:	0a2d      	mov.n	a2, a10
42005c4f:	f01d      	retw.n
42005c51:	060c      	movi.n	a6, 0
42005c53:	1128      	l32i.n	a2, a1, 4
42005c55:	fff646        	j	42005c32 <<str as core::fmt::Debug>::fmt+0x22a>
42005c58:	1128      	l32i.n	a2, a1, 4
42005c5a:	2b9367        	bne	a3, a6, 42005c89 <<str as core::fmt::Debug>::fmt+0x281>
42005c5d:	c08360        	sub	a8, a3, a6
42005c60:	036d      	mov.n	a6, a3
42005c62:	083d      	mov.n	a3, a8
42005c64:	fff286        	j	42005c32 <<str as core::fmt::Debug>::fmt+0x22a>
42005c67:	ab0c      	movi.n	a11, 10
42005c69:	ff62c1        	l32r	a12, 420059f4 <core::fmt::Formatter::debug_tuple_field1_finish+0xb8>
42005c6c:	ff6381        	l32r	a8, 420059f8 <core::fmt::Formatter::debug_tuple_field1_finish+0xbc>
42005c6f:	03ad      	mov.n	a10, a3
42005c71:	0008e0        	callx8	a8
42005c74:	0041f0        	break	1, 15
42005c77:	ff61e1        	l32r	a14, 420059fc <core::fmt::Formatter::debug_tuple_field1_finish+0xc0>
42005c7a:	ff6181        	l32r	a8, 42005a00 <core::fmt::Formatter::debug_tuple_field1_finish+0xc4>
42005c7d:	a1a8      	l32i.n	a10, a1, 40
42005c7f:	03bd      	mov.n	a11, a3
42005c81:	06cd      	mov.n	a12, a6
42005c83:	0008e0        	callx8	a8
42005c86:	0041f0        	break	1, 15
42005c89:	ff5ee1        	l32r	a14, 42005a04 <core::fmt::Formatter::debug_tuple_field1_finish+0xc8>
42005c8c:	ff5d81        	l32r	a8, 42005a00 <core::fmt::Formatter::debug_tuple_field1_finish+0xc4>
42005c8f:	a1a8      	l32i.n	a10, a1, 40
42005c91:	03bd      	mov.n	a11, a3
42005c93:	06cd      	mov.n	a12, a6
42005c95:	03dd      	mov.n	a13, a3
42005c97:	0008e0        	callx8	a8
42005c9a:	0041f0        	break	1, 15
42005c9d:	000000        	ill
42005ca0:	30          	.byte 0x30
42005ca1:	420054        	ee.st.accx.ip	a5, 0xfffffc00

42005ca4 <<str as core::fmt::Display>::fmt>:
42005ca4:	004136        	entry	a1, 32
42005ca7:	fffe81        	l32r	a8, 42005ca0 <<str as core::fmt::Debug>::fmt+0x298>
42005caa:	04ad      	mov.n	a10, a4
42005cac:	02bd      	mov.n	a11, a2
42005cae:	03cd      	mov.n	a12, a3
42005cb0:	0008e0        	callx8	a8
42005cb3:	0a2d      	mov.n	a2, a10
42005cb5:	f01d      	retw.n
42005cb7:	00          	.byte 00
42005cb8:	4e5c      	movi.n	a14, 84
42005cba:	184200        	lsxp	f4, a2, a0
42005cbd:	003c012e 	ee.vmulas.s16.accx.ld.ip.qup	q1, a2, 16, q0, q0, q3, q4
42005cc1:	420062        	l8ui	a6, a0, 66

42005cc4 <<char as core::fmt::Debug>::fmt>:
42005cc4:	006136        	entry	a1, 48
42005cc7:	026d      	mov.n	a6, a2
42005cc9:	5378      	l32i.n	a7, a3, 20
42005ccb:	6388      	l32i.n	a8, a3, 24
42005ccd:	4858      	l32i.n	a5, a8, 16
42005ccf:	7b2c      	movi.n	a11, 39
42005cd1:	07ad      	mov.n	a10, a7
42005cd3:	0005e0        	callx8	a5
42005cd6:	120c      	movi.n	a2, 1
42005cd8:	094a56        	bnez	a10, 42005d70 <<char as core::fmt::Debug>::fmt+0xac>
42005cdb:	06b8      	l32i.n	a11, a6, 0
42005cdd:	04c1a2        	addi	a10, a1, 4
42005ce0:	01a1c2        	movi	a12, 0x101
42005ce3:	fff581        	l32r	a8, 42005cb8 <<str as core::fmt::Display>::fmt+0x14>
42005ce6:	0008e0        	callx8	a8
42005ce9:	040182        	l8ui	a8, a1, 4
42005cec:	0129      	s32i.n	a2, a1, 0
42005cee:	46e866        	bnei	a8, 128, 42005d38 <<char as core::fmt::Debug>::fmt+0x74>
42005cf1:	80a032        	movi	a3, 128
42005cf4:	ffa022        	movi	a2, 255
42005cf7:	040c      	movi.n	a4, 0
42005cf9:	000446        	j	42005d0e <<char as core::fmt::Debug>::fmt+0x4a>
42005cfc:	1149      	s32i.n	a4, a1, 4
42005cfe:	3149      	s32i.n	a4, a1, 12
42005d00:	21b8      	l32i.n	a11, a1, 8
42005d02:	2149      	s32i.n	a4, a1, 8
42005d04:	043d      	mov.n	a3, a4
42005d06:	07ad      	mov.n	a10, a7
42005d08:	0005e0        	callx8	a5
42005d0b:	054a56        	bnez	a10, 42005d63 <<char as core::fmt::Debug>::fmt+0x9f>
42005d0e:	108320        	and	a8, a3, a2
42005d11:	e7e826        	beqi	a8, 128, 42005cfc <<char as core::fmt::Debug>::fmt+0x38>
42005d14:	0e0162        	l8ui	a6, a1, 14
42005d17:	0f0182        	l8ui	a8, a1, 15
42005d1a:	49b687        	bgeu	a6, a8, 42005d67 <<char as core::fmt::Debug>::fmt+0xa3>
42005d1d:	861b      	addi.n	a8, a6, 1
42005d1f:	0e4182        	s8i	a8, a1, 14
42005d22:	4c96f6        	bgeui	a6, 10, 42005d72 <<char as core::fmt::Debug>::fmt+0xae>
42005d25:	04c182        	addi	a8, a1, 4
42005d28:	886a      	add.n	a8, a8, a6
42005d2a:	0008b2        	l8ui	a11, a8, 0
42005d2d:	07ad      	mov.n	a10, a7
42005d2f:	0005e0        	callx8	a5
42005d32:	fd8a16        	beqz	a10, 42005d0e <<char as core::fmt::Debug>::fmt+0x4a>
42005d35:	000a86        	j	42005d63 <<char as core::fmt::Debug>::fmt+0x9f>
42005d38:	a90c      	movi.n	a9, 10
42005d3a:	0e0182        	l8ui	a8, a1, 14
42005d3d:	736890        	maxu	a6, a8, a9
42005d40:	0f0192        	l8ui	a9, a1, 15
42005d43:	734980        	maxu	a4, a9, a8
42005d46:	1d1847        	beq	a8, a4, 42005d67 <<char as core::fmt::Debug>::fmt+0xa3>
42005d49:	381b      	addi.n	a3, a8, 1
42005d4b:	0e4132        	s8i	a3, a1, 14
42005d4e:	201867        	beq	a8, a6, 42005d72 <<char as core::fmt::Debug>::fmt+0xae>
42005d51:	04c192        	addi	a9, a1, 4
42005d54:	898a      	add.n	a8, a9, a8
42005d56:	0008b2        	l8ui	a11, a8, 0
42005d59:	07ad      	mov.n	a10, a7
42005d5b:	0005e0        	callx8	a5
42005d5e:	038d      	mov.n	a8, a3
42005d60:	fe2a16        	beqz	a10, 42005d46 <<char as core::fmt::Debug>::fmt+0x82>
42005d63:	0128      	l32i.n	a2, a1, 0
42005d65:	f01d      	retw.n
42005d67:	7b2c      	movi.n	a11, 39
42005d69:	07ad      	mov.n	a10, a7
42005d6b:	0005e0        	callx8	a5
42005d6e:	0a2d      	mov.n	a2, a10
42005d70:	f01d      	retw.n
42005d72:	ab0c      	movi.n	a11, 10
42005d74:	ffd2c1        	l32r	a12, 42005cbc <<str as core::fmt::Display>::fmt+0x18>
42005d77:	ffd281        	l32r	a8, 42005cc0 <<str as core::fmt::Display>::fmt+0x1c>
42005d7a:	06ad      	mov.n	a10, a6
42005d7c:	0008e0        	callx8	a8
42005d7f:	0041f0        	break	1, 15
42005d82:	00          	.byte 00
42005d83:	00          	.byte 00
42005d84:	1c98      	l32i.n	a9, a12, 4
42005d86:	ec3c01        	l32r	a0, 42000e78 <esp_hal_common::critical_section_impl::xtensa::<impl critical_section::Impl for esp_hal_common::critical_section_impl::CriticalSection>::acquire+0x4c>
42005d89:	420051        	l32r	a5, 41fd658c <__user_exception+0x1c5d364>
42005d8c:	1c88      	l32i.n	a8, a12, 4
42005d8e:	543c01        	l32r	a0, 41fdae80 <__user_exception+0x1c61c58>
42005d91:	420064        	ee.st.accx.ip	a6, 0xfffffc00
42005d94:	0000270f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 112, q4, q4, q0, q0
42005d98:	1759      	s32i.n	a5, a7, 4
42005d9a:	10d1b7        	bbs	a1, a11, 42005dae <<char as core::fmt::Debug>::fmt+0xea>
42005d9d:	000027        	bnone	a0, a2, 42005da1 <<char as core::fmt::Debug>::fmt+0xdd>
42005da0:	fffc      	bnez.n	a15, 42005de3 <<&T as core::fmt::Debug>::fmt+0x2b>
42005da2:	7b0000        	ule.s	b0, f0, f0
42005da5:	000014        	ee.ld.qacc_l.l.128.ip	a1, 0
42005da8:	1c9a      	add.n	a1, a12, a9
42005daa:	ff3c01        	l32r	a0, 42005a9c <<str as core::fmt::Debug>::fmt+0x94>
42005dad:	ff0000ff 	ee.vmulas.s16.accx.ld.ip	q6, a15, 0xffffff00, q4, q0
42005db1:	05f5e0        	extui	a15, a14, 21, 1
42005db4:	2ca8      	l32i.n	a10, a12, 8
42005db6:	        	l32r	a0, 41fd36a8 <__user_exception+0x1c5a480>

42005db8 <<&T as core::fmt::Debug>::fmt>:
42005db8:	018136        	entry	a1, 192
42005dbb:	7388      	l32i.n	a8, a3, 28
42005dbd:	091c      	movi.n	a9, 16
42005dbf:	10a890        	and	a10, a8, a9
42005dc2:	0298      	l32i.n	a9, a2, 0
42005dc4:	107a56        	bnez	a10, 42005ecf <<&T as core::fmt::Debug>::fmt+0x117>
42005dc7:	0a2c      	movi.n	a10, 32
42005dc9:	1088a0        	and	a8, a8, a10
42005dcc:	134856        	bnez	a8, 42005f04 <<&T as core::fmt::Debug>::fmt+0x14c>
42005dcf:	1139      	s32i.n	a3, a1, 4
42005dd1:	0998      	l32i.n	a9, a9, 0
42005dd3:	7e2c      	movi.n	a14, 39
42005dd5:	ffef81        	l32r	a8, 42005d94 <<char as core::fmt::Debug>::fmt+0xd0>
42005dd8:	023897        	bltu	a8, a9, 42005dde <<&T as core::fmt::Debug>::fmt+0x26>
42005ddb:	005ec6        	j	42005f5a <<&T as core::fmt::Debug>::fmt+0x1a2>
42005dde:	ffee81        	l32r	a8, 42005d98 <<char as core::fmt::Debug>::fmt+0xd4>
42005de1:	6189      	s32i.n	a8, a1, 24
42005de3:	ffee81        	l32r	a8, 42005d9c <<char as core::fmt::Debug>::fmt+0xd8>
42005de6:	5189      	s32i.n	a8, a1, 20
42005de8:	ffee81        	l32r	a8, 42005da0 <<char as core::fmt::Debug>::fmt+0xdc>
42005deb:	4189      	s32i.n	a8, a1, 16
42005ded:	ffed81        	l32r	a8, 42005da4 <<char as core::fmt::Debug>::fmt+0xe0>
42005df0:	3189      	s32i.n	a8, a1, 12
42005df2:	181c      	movi.n	a8, 17
42005df4:	2189      	s32i.n	a8, a1, 8
42005df6:	ffec71        	l32r	a7, 42005da8 <<char as core::fmt::Debug>::fmt+0xe4>
42005df9:	64a062        	movi	a6, 100
42005dfc:	ffec51        	l32r	a5, 42005dac <<char as core::fmt::Debug>::fmt+0xe8>
42005dff:	ffec41        	l32r	a4, 42005db0 <<char as core::fmt::Debug>::fmt+0xec>
42005e02:	092d      	mov.n	a2, a9
42005e04:	fcce82        	addi	a8, a14, -4
42005e07:	1cc1a2        	addi	a10, a1, 28
42005e0a:	3a8a      	add.n	a3, a10, a8
42005e0c:	6198      	l32i.n	a9, a1, 24
42005e0e:	a29290        	muluh	a9, a2, a9
42005e11:	419d90        	srli	a9, a9, 13
42005e14:	51b8      	l32i.n	a11, a1, 20
42005e16:	82b9b0        	mull	a11, a9, a11
42005e19:	c0b2b0        	sub	a11, a2, a11
42005e1c:	41c8      	l32i.n	a12, a1, 16
42005e1e:	10cbc0        	and	a12, a11, a12
42005e21:	41c2c0        	srli	a12, a12, 2
42005e24:	31d8      	l32i.n	a13, a1, 12
42005e26:	82ccd0        	mull	a12, a12, a13
42005e29:	21d8      	l32i.n	a13, a1, 8
42005e2b:	400d00        	ssr	a13
42005e2e:	91c0c0        	srl	a12, a12
42005e31:	90dc70        	addx2	a13, a12, a7
42005e34:	010df2        	l8ui	a15, a13, 1
42005e37:	0143f2        	s8i	a15, a3, 1
42005e3a:	000dd2        	l8ui	a13, a13, 0
42005e3d:	0043d2        	s8i	a13, a3, 0
42005e40:	82cc60        	mull	a12, a12, a6
42005e43:	c0bbc0        	sub	a11, a11, a12
42005e46:	10bb50        	and	a11, a11, a5
42005e49:	90bb70        	addx2	a11, a11, a7
42005e4c:	010bc2        	l8ui	a12, a11, 1
42005e4f:	aeaa      	add.n	a10, a14, a10
42005e51:	da0b      	addi.n	a13, a10, -1
42005e53:	004dc2        	s8i	a12, a13, 0
42005e56:	000bb2        	l8ui	a11, a11, 0
42005e59:	fecaa2        	addi	a10, a10, -2
42005e5c:	004ab2        	s8i	a11, a10, 0
42005e5f:	08ed      	mov.n	a14, a8
42005e61:	9d3427        	bltu	a4, a2, 42005e02 <<&T as core::fmt::Debug>::fmt+0x4a>
42005e64:	63a0a2        	movi	a10, 99
42005e67:	023a97        	bltu	a10, a9, 42005e6d <<&T as core::fmt::Debug>::fmt+0xb5>
42005e6a:	003dc6        	j	42005f65 <<&T as core::fmt::Debug>::fmt+0x1ad>
42005e6d:	fec882        	addi	a8, a8, -2
42005e70:	1cc1a2        	addi	a10, a1, 28
42005e73:	ba8a      	add.n	a11, a10, a8
42005e75:	ffcaa1        	l32r	a10, 42005da0 <<char as core::fmt::Debug>::fmt+0xdc>
42005e78:	10a9a0        	and	a10, a9, a10
42005e7b:	41a2a0        	srli	a10, a10, 2
42005e7e:	ffc9c1        	l32r	a12, 42005da4 <<char as core::fmt::Debug>::fmt+0xe0>
42005e81:	82aac0        	mull	a10, a10, a12
42005e84:	1c1c      	movi.n	a12, 17
42005e86:	400c00        	ssr	a12
42005e89:	91d0a0        	srl	a13, a10
42005e8c:	64a0c2        	movi	a12, 100
42005e8f:	82cdc0        	mull	a12, a13, a12
42005e92:	c099c0        	sub	a9, a9, a12
42005e95:	ffc5c1        	l32r	a12, 42005dac <<char as core::fmt::Debug>::fmt+0xe8>
42005e98:	1099c0        	and	a9, a9, a12
42005e9b:	ffc3c1        	l32r	a12, 42005da8 <<char as core::fmt::Debug>::fmt+0xe4>
42005e9e:	9099c0        	addx2	a9, a9, a12
42005ea1:	0109c2        	l8ui	a12, a9, 1
42005ea4:	014bc2        	s8i	a12, a11, 1
42005ea7:	000992        	l8ui	a9, a9, 0
42005eaa:	004b92        	s8i	a9, a11, 0
42005ead:	11a8      	l32i.n	a10, a1, 4
42005eaf:	029df6        	bgeui	a13, 10, 42005eb5 <<&T as core::fmt::Debug>::fmt+0xfd>
42005eb2:	002e46        	j	42005f6f <<&T as core::fmt::Debug>::fmt+0x1b7>
42005eb5:	fec882        	addi	a8, a8, -2
42005eb8:	1cc192        	addi	a9, a1, 28
42005ebb:	998a      	add.n	a9, a9, a8
42005ebd:	ffbab1        	l32r	a11, 42005da8 <<char as core::fmt::Debug>::fmt+0xe4>
42005ec0:	90cdb0        	addx2	a12, a13, a11
42005ec3:	010cb2        	l8ui	a11, a12, 1
42005ec6:	0149b2        	s8i	a11, a9, 1
42005ec9:	000cb2        	l8ui	a11, a12, 0
42005ecc:	002a46        	j	42005f79 <<&T as core::fmt::Debug>::fmt+0x1c1>
42005ecf:	80a0a2        	movi	a10, 128
42005ed2:	1cc182        	addi	a8, a1, 28
42005ed5:	88aa      	add.n	a8, a8, a10
42005ed7:	0978      	l32i.n	a7, a9, 0
42005ed9:	f90c      	movi.n	a9, 15
42005edb:	7b5c      	movi.n	a11, 87
42005edd:	0d3c      	movi.n	a13, 48
42005edf:	ae0c      	movi.n	a14, 10
42005ee1:	000386        	j	42005ef3 <<&T as core::fmt::Debug>::fmt+0x13b>
42005ee4:	a7aa      	add.n	a10, a7, a10
42005ee6:	880b      	addi.n	a8, a8, -1
42005ee8:	0048a2        	s8i	a10, a8, 0
42005eeb:	ac0b      	addi.n	a10, a12, -1
42005eed:	4174f0        	srli	a7, a15, 4
42005ef0:	45bfb6        	bltui	a15, 16, 42005f39 <<&T as core::fmt::Debug>::fmt+0x181>
42005ef3:	0acd      	mov.n	a12, a10
42005ef5:	07fd      	mov.n	a15, a7
42005ef7:	10af90        	and	a10, a15, a9
42005efa:	0d7d      	mov.n	a7, a13
42005efc:	e43ae7        	bltu	a10, a14, 42005ee4 <<&T as core::fmt::Debug>::fmt+0x12c>
42005eff:	0b7d      	mov.n	a7, a11
42005f01:	fff7c6        	j	42005ee4 <<&T as core::fmt::Debug>::fmt+0x12c>
42005f04:	80a0a2        	movi	a10, 128
42005f07:	1cc182        	addi	a8, a1, 28
42005f0a:	88aa      	add.n	a8, a8, a10
42005f0c:	0978      	l32i.n	a7, a9, 0
42005f0e:	f90c      	movi.n	a9, 15
42005f10:	7b3c      	movi.n	a11, 55
42005f12:	0d3c      	movi.n	a13, 48
42005f14:	ae0c      	movi.n	a14, 10
42005f16:	000386        	j	42005f28 <<&T as core::fmt::Debug>::fmt+0x170>
42005f19:	a7aa      	add.n	a10, a7, a10
42005f1b:	880b      	addi.n	a8, a8, -1
42005f1d:	0048a2        	s8i	a10, a8, 0
42005f20:	ac0b      	addi.n	a10, a12, -1
42005f22:	4174f0        	srli	a7, a15, 4
42005f25:	10bfb6        	bltui	a15, 16, 42005f39 <<&T as core::fmt::Debug>::fmt+0x181>
42005f28:	0acd      	mov.n	a12, a10
42005f2a:	07fd      	mov.n	a15, a7
42005f2c:	10af90        	and	a10, a15, a9
42005f2f:	0d7d      	mov.n	a7, a13
42005f31:	e43ae7        	bltu	a10, a14, 42005f19 <<&T as core::fmt::Debug>::fmt+0x161>
42005f34:	0b7d      	mov.n	a7, a11
42005f36:	fff7c6        	j	42005f19 <<&T as core::fmt::Debug>::fmt+0x161>
42005f39:	81a082        	movi	a8, 129
42005f3c:	57ba87        	bgeu	a10, a8, 42005f97 <<&T as core::fmt::Debug>::fmt+0x1df>
42005f3f:	1cc192        	addi	a9, a1, 28
42005f42:	e9aa      	add.n	a14, a9, a10
42005f44:	c0f8c0        	sub	a15, a8, a12
42005f47:	1b0c      	movi.n	a11, 1
42005f49:	ff8ec1        	l32r	a12, 42005d84 <<char as core::fmt::Debug>::fmt+0xc0>
42005f4c:	2d0c      	movi.n	a13, 2
42005f4e:	ff8e81        	l32r	a8, 42005d88 <<char as core::fmt::Debug>::fmt+0xc4>
42005f51:	03ad      	mov.n	a10, a3
42005f53:	0008e0        	callx8	a8
42005f56:	0a2d      	mov.n	a2, a10
42005f58:	f01d      	retw.n
42005f5a:	0e8d      	mov.n	a8, a14
42005f5c:	63a0a2        	movi	a10, 99
42005f5f:	02ba97        	bgeu	a10, a9, 42005f65 <<&T as core::fmt::Debug>::fmt+0x1ad>
42005f62:	ffc1c6        	j	42005e6d <<&T as core::fmt::Debug>::fmt+0xb5>
42005f65:	09dd      	mov.n	a13, a9
42005f67:	11a8      	l32i.n	a10, a1, 4
42005f69:	029db6        	bltui	a13, 10, 42005f6f <<&T as core::fmt::Debug>::fmt+0x1b7>
42005f6c:	ffd146        	j	42005eb5 <<&T as core::fmt::Debug>::fmt+0xfd>
42005f6f:	880b      	addi.n	a8, a8, -1
42005f71:	1cc192        	addi	a9, a1, 28
42005f74:	998a      	add.n	a9, a9, a8
42005f76:	30cdb2        	addi	a11, a13, 48
42005f79:	0049b2        	s8i	a11, a9, 0
42005f7c:	1cc192        	addi	a9, a1, 28
42005f7f:	e98a      	add.n	a14, a9, a8
42005f81:	792c      	movi.n	a9, 39
42005f83:	c0f980        	sub	a15, a9, a8
42005f86:	1b0c      	movi.n	a11, 1
42005f88:	ff8bc1        	l32r	a12, 42005db4 <<char as core::fmt::Debug>::fmt+0xf0>
42005f8b:	0d0c      	movi.n	a13, 0
42005f8d:	ff7e81        	l32r	a8, 42005d88 <<char as core::fmt::Debug>::fmt+0xc4>
42005f90:	0008e0        	callx8	a8
42005f93:	0a2d      	mov.n	a2, a10
42005f95:	f01d      	retw.n
42005f97:	80a0b2        	movi	a11, 128
42005f9a:	ff7cc1        	l32r	a12, 42005d8c <<char as core::fmt::Debug>::fmt+0xc8>
42005f9d:	ff7c81        	l32r	a8, 42005d90 <<char as core::fmt::Debug>::fmt+0xcc>
42005fa0:	0008e0        	callx8	a8
42005fa3:	0041f0        	break	1, 15
42005fa6:	00          	.byte 00
42005fa7:	00          	.byte 00
42005fa8:	50a8      	l32i.n	a10, a0, 20
42005faa:	        	ee.ldf.64.xp	f4, f3, a0, a2

42005fac <<&T as core::fmt::Debug>::fmt>:
42005fac:	004136        	entry	a1, 32
42005faf:	63b8      	l32i.n	a11, a3, 24
42005fb1:	53a8      	l32i.n	a10, a3, 20
42005fb3:	0288      	l32i.n	a8, a2, 0
42005fb5:	08c8      	l32i.n	a12, a8, 0
42005fb7:	fffc81        	l32r	a8, 42005fa8 <<&T as core::fmt::Debug>::fmt+0x1f0>
42005fba:	0008e0        	callx8	a8
42005fbd:	0a2d      	mov.n	a2, a10
42005fbf:	f01d      	retw.n
42005fc1:	000000        	ill

42005fc4 <<&T as core::fmt::Debug>::fmt>:
42005fc4:	004136        	entry	a1, 32
42005fc7:	02a8      	l32i.n	a10, a2, 0
42005fc9:	1288      	l32i.n	a8, a2, 4
42005fcb:	3888      	l32i.n	a8, a8, 12
42005fcd:	03bd      	mov.n	a11, a3
42005fcf:	0008e0        	callx8	a8
42005fd2:	0a2d      	mov.n	a2, a10
42005fd4:	f01d      	retw.n
42005fd6:	00          	.byte 00
42005fd7:	0ab900        	add.s	f11, f9, f0
42005fda:	303c01        	l32r	a0, 41fd20cc <__user_exception+0x1c58ea4>
42005fdd:	420054        	ee.st.accx.ip	a5, 0xfffffc00
42005fe0:	2b38      	l32i.n	a3, a11, 8
42005fe2:	        	l32r	a0, 41fd38d4 <__user_exception+0x1c5a6ac>

42005fe4 <<&T as core::fmt::Debug>::fmt>:
42005fe4:	004136        	entry	a1, 32
42005fe7:	0288      	l32i.n	a8, a2, 0
42005fe9:	000882        	l8ui	a8, a8, 0
42005fec:	007816        	beqz	a8, 42005ff7 <<&T as core::fmt::Debug>::fmt+0x13>
42005fef:	fffab1        	l32r	a11, 42005fd8 <<&T as core::fmt::Debug>::fmt+0x14>
42005ff2:	4c0c      	movi.n	a12, 4
42005ff4:	000106        	j	42005ffc <<&T as core::fmt::Debug>::fmt+0x18>
42005ff7:	fffab1        	l32r	a11, 42005fe0 <<&T as core::fmt::Debug>::fmt+0x1c>
42005ffa:	5c0c      	movi.n	a12, 5
42005ffc:	fff881        	l32r	a8, 42005fdc <<&T as core::fmt::Debug>::fmt+0x18>
42005fff:	03ad      	mov.n	a10, a3
42006001:	0008e0        	callx8	a8
42006004:	0a2d      	mov.n	a2, a10
42006006:	f01d      	retw.n
42006008:	5a08      	l32i.n	a0, a10, 20
4200600a:	        	ee.ldf.64.xp	f4, f3, a0, a2

4200600c <<&T as core::fmt::Debug>::fmt>:
4200600c:	004136        	entry	a1, 32
4200600f:	12b8      	l32i.n	a11, a2, 4
42006011:	02a8      	l32i.n	a10, a2, 0
42006013:	fffd81        	l32r	a8, 42006008 <<&T as core::fmt::Debug>::fmt+0x24>
42006016:	03cd      	mov.n	a12, a3
42006018:	0008e0        	callx8	a8
4200601b:	0a2d      	mov.n	a2, a10
4200601d:	f01d      	retw.n
4200601f:	543000        	extui	a3, a0, 0, 6
42006022:	        	ee.ldf.64.xp	f4, f3, a0, a2

42006024 <<&T as core::fmt::Display>::fmt>:
42006024:	004136        	entry	a1, 32
42006027:	12c8      	l32i.n	a12, a2, 4
42006029:	02b8      	l32i.n	a11, a2, 0
4200602b:	fffd81        	l32r	a8, 42006020 <<&T as core::fmt::Debug>::fmt+0x14>
4200602e:	03ad      	mov.n	a10, a3
42006030:	0008e0        	callx8	a8
42006033:	0a2d      	mov.n	a2, a10
42006035:	f01d      	retw.n
	...

42006038 <core::ptr::drop_in_place<&core::iter::adapters::map::Map<core::str::iter::Chars,core::str::CharEscapeDefault>>>:
42006038:	004136        	entry	a1, 32
4200603b:	f01d      	retw.n
4200603d:	000000        	ill
42006040:	012b60        	slli	a2, a11, 26
42006043:	243c      	movi.n	a4, 50
42006045:	420060        	xorb	b0, b0, b6
42006048:	619c      	beqz.n	a1, 42006062 <core::option::expect_failed+0x16>
4200604a:	        	ee.ldf.64.xp	f4, f3, a0, a2

4200604c <core::option::expect_failed>:
4200604c:	00a136        	entry	a1, 80
4200604f:	1139      	s32i.n	a3, a1, 4
42006051:	0129      	s32i.n	a2, a1, 0
42006053:	080c      	movi.n	a8, 0
42006055:	6189      	s32i.n	a8, a1, 24
42006057:	180c      	movi.n	a8, 1
42006059:	3189      	s32i.n	a8, a1, 12
4200605b:	fff991        	l32r	a9, 42006040 <core::ptr::drop_in_place<&core::iter::adapters::map::Map<core::str::iter::Chars,core::str::CharEscapeDefault>>+0x8>
4200605e:	2199      	s32i.n	a9, a1, 8
42006060:	5189      	s32i.n	a8, a1, 20
42006062:	20c182        	addi	a8, a1, 32
42006065:	4189      	s32i.n	a8, a1, 16
42006067:	fff781        	l32r	a8, 42006044 <core::ptr::drop_in_place<&core::iter::adapters::map::Map<core::str::iter::Chars,core::str::CharEscapeDefault>>+0xc>
4200606a:	9189      	s32i.n	a8, a1, 36
4200606c:	00c182        	addi	a8, a1, 0
4200606f:	8189      	s32i.n	a8, a1, 32
42006071:	08c1a2        	addi	a10, a1, 8
42006074:	fff581        	l32r	a8, 42006048 <core::ptr::drop_in_place<&core::iter::adapters::map::Map<core::str::iter::Chars,core::str::CharEscapeDefault>>+0x10>
42006077:	04bd      	mov.n	a11, a4
42006079:	0008e0        	callx8	a8
4200607c:	0041f0        	break	1, 15
4200607f:	0aad00        	add.s	f10, f13, f0
42006082:	683c01        	l32r	a0, 41fe0174 <__user_exception+0x1c66f4c>
42006085:	012b      	addi.n	a0, a1, 2
42006087:	b43c      	movi.n	a4, 59
42006089:	420044        	ee.st.accx.ip	a4, 0xfffffc00
4200608c:	012330        	slli	a2, a3, 29
4200608f:	313c      	movi.n	a1, 51
42006091:	3c0123        	lsi	f2, a1, 240
42006094:	010ad1        	l32r	a13, 41fc64bc <__user_exception+0x1c4d294>
42006097:	      	movi.n	a6, 51

42006098 <<core::option::Option<T> as core::fmt::Debug>::fmt>:
42006098:	006136        	entry	a1, 48
4200609b:	0288      	l32i.n	a8, a2, 0
4200609d:	046816        	beqz	a8, 420060e7 <<core::option::Option<T> as core::fmt::Debug>::fmt+0x4f>
420060a0:	0129      	s32i.n	a2, a1, 0
420060a2:	53a8      	l32i.n	a10, a3, 20
420060a4:	6388      	l32i.n	a8, a3, 24
420060a6:	3888      	l32i.n	a8, a8, 12
420060a8:	fff6b1        	l32r	a11, 42006080 <core::option::expect_failed+0x34>
420060ab:	460c      	movi.n	a6, 4
420060ad:	06cd      	mov.n	a12, a6
420060af:	0008e0        	callx8	a8
420060b2:	0c41a2        	s8i	a10, a1, 12
420060b5:	2139      	s32i.n	a3, a1, 8
420060b7:	070c      	movi.n	a7, 0
420060b9:	0d4172        	s8i	a7, a1, 13
420060bc:	1179      	s32i.n	a7, a1, 4
420060be:	04c1a2        	addi	a10, a1, 4
420060c1:	00c1b2        	addi	a11, a1, 0
420060c4:	fff0c1        	l32r	a12, 42006084 <core::option::expect_failed+0x38>
420060c7:	fff081        	l32r	a8, 42006088 <core::option::expect_failed+0x3c>
420060ca:	0008e0        	callx8	a8
420060cd:	0c01a2        	l8ui	a10, a1, 12
420060d0:	1188      	l32i.n	a8, a1, 4
420060d2:	01f816        	beqz	a8, 420060f5 <<core::option::Option<T> as core::fmt::Debug>::fmt+0x5d>
420060d5:	ffa092        	movi	a9, 255
420060d8:	10aa90        	and	a10, a10, a9
420060db:	028a16        	beqz	a10, 42006107 <<core::option::Option<T> as core::fmt::Debug>::fmt+0x6f>
420060de:	170c      	movi.n	a7, 1
420060e0:	180c      	movi.n	a8, 1
420060e2:	102780        	and	a2, a7, a8
420060e5:	f01d      	retw.n
420060e7:	53a8      	l32i.n	a10, a3, 20
420060e9:	6388      	l32i.n	a8, a3, 24
420060eb:	3888      	l32i.n	a8, a8, 12
420060ed:	ffe9b1        	l32r	a11, 42006094 <core::option::expect_failed+0x48>
420060f0:	4c0c      	movi.n	a12, 4
420060f2:	001146        	j	4200613b <<core::option::Option<T> as core::fmt::Debug>::fmt+0xa3>
420060f5:	ffa082        	movi	a8, 255
420060f8:	108a80        	and	a8, a10, a8
420060fb:	e11877        	beq	a8, a7, 420060e0 <<core::option::Option<T> as core::fmt::Debug>::fmt+0x48>
420060fe:	170c      	movi.n	a7, 1
42006100:	180c      	movi.n	a8, 1
42006102:	102780        	and	a2, a7, a8
42006105:	f01d      	retw.n
42006107:	2158      	l32i.n	a5, a1, 8
42006109:	231866        	bnei	a8, 1, 42006130 <<core::option::Option<T> as core::fmt::Debug>::fmt+0x98>
4200610c:	0d0182        	l8ui	a8, a1, 13
4200610f:	108890        	and	a8, a8, a9
42006112:	01a816        	beqz	a8, 42006130 <<core::option::Option<T> as core::fmt::Debug>::fmt+0x98>
42006115:	7588      	l32i.n	a8, a5, 28
42006117:	108860        	and	a8, a8, a6
4200611a:	012856        	bnez	a8, 42006130 <<core::option::Option<T> as core::fmt::Debug>::fmt+0x98>
4200611d:	55a8      	l32i.n	a10, a5, 20
4200611f:	6588      	l32i.n	a8, a5, 24
42006121:	3888      	l32i.n	a8, a8, 12
42006123:	ffdab1        	l32r	a11, 4200608c <core::option::expect_failed+0x40>
42006126:	170c      	movi.n	a7, 1
42006128:	07cd      	mov.n	a12, a7
4200612a:	0008e0        	callx8	a8
4200612d:	fafa56        	bnez	a10, 420060e0 <<core::option::Option<T> as core::fmt::Debug>::fmt+0x48>
42006130:	55a8      	l32i.n	a10, a5, 20
42006132:	6588      	l32i.n	a8, a5, 24
42006134:	3888      	l32i.n	a8, a8, 12
42006136:	ffd6b1        	l32r	a11, 42006090 <core::option::expect_failed+0x44>
42006139:	1c0c      	movi.n	a12, 1
4200613b:	0008e0        	callx8	a8
4200613e:	0a7d      	mov.n	a7, a10
42006140:	180c      	movi.n	a8, 1
42006142:	102780        	and	a2, a7, a8
42006145:	f01d      	retw.n
	...

42006148 <_ZN4core3ops8function6FnOnce9call_once17h7856a41ec4047e17E.llvm.13269919338510179974>:
42006148:	004136        	entry	a1, 32
4200614b:	0020c0        	memw
4200614e:	0288      	l32i.n	a8, a2, 0
42006150:	ffff06        	j	42006150 <_ZN4core3ops8function6FnOnce9call_once17h7856a41ec4047e17E.llvm.13269919338510179974+0x8>
	...

42006154 <core::ptr::drop_in_place<&core::iter::adapters::copied::Copied<core::slice::iter::Iter<u8>>>>:
42006154:	004136        	entry	a1, 32
42006157:	f01d      	retw.n
42006159:	000000        	ill

4200615c <core::ptr::drop_in_place<core::panic::panic_info::PanicInfo::internal_constructor::NoPayload>>:
4200615c:	004136        	entry	a1, 32
4200615f:	f01d      	retw.n
42006161:	000000        	ill
42006164:	2d          	.byte 0x2d
42006165:	9f4db2        	s8i	a11, a13, 159
42006168:	8d          	.byte 0x8d
42006169:	af34f33f 	ee.fft.cmul.s16.st.xp	q7, q3, q4, a3, a3, 6, 2, 3
4200616d:	65fe0d0e 	ee.vmulas.u8.accx.ld.ip.qup	q3, a0, 0x1d0, q0, q1, q7, q6
42006171:	a4ba      	add.n	a10, a4, a11
42006173:	        	ee.ldqa.s16.128.ip	a14, 0xfffffb60

42006174 <<T as core::any::Any>::type_id>:
42006174:	004136        	entry	a1, 32
42006177:	fffb21        	l32r	a2, 42006164 <core::ptr::drop_in_place<core::panic::panic_info::PanicInfo::internal_constructor::NoPayload>+0x8>
4200617a:	fffb31        	l32r	a3, 42006168 <core::ptr::drop_in_place<core::panic::panic_info::PanicInfo::internal_constructor::NoPayload>+0xc>
4200617d:	fffb41        	l32r	a4, 4200616c <core::ptr::drop_in_place<core::panic::panic_info::PanicInfo::internal_constructor::NoPayload>+0x10>
42006180:	fffc51        	l32r	a5, 42006170 <core::ptr::drop_in_place<core::panic::panic_info::PanicInfo::internal_constructor::NoPayload>+0x14>
42006183:	f01d      	retw.n
42006185:	000000        	ill

42006188 <core::panic::panic_info::PanicInfo::location>:
42006188:	004136        	entry	a1, 32
4200618b:	2228      	l32i.n	a2, a2, 8
4200618d:	f01d      	retw.n
4200618f:	2b7800        	oeq.s	b7, f8, f0
42006192:	783c01        	l32r	a0, 41fe4284 <__user_exception+0x1c6b05c>
42006195:	012b      	addi.n	a0, a1, 2
42006197:	e03c      	movi.n	a0, 62
42006199:	002d      	mov.n	a2, a0
4200619b:	42          	.byte 0x42

4200619c <core::panicking::panic_fmt>:
4200619c:	008136        	entry	a1, 64
4200619f:	3129      	s32i.n	a2, a1, 12
420061a1:	fffb81        	l32r	a8, 42006190 <core::panic::panic_info::PanicInfo::location+0x8>
420061a4:	1189      	s32i.n	a8, a1, 4
420061a6:	fffb81        	l32r	a8, 42006194 <core::panic::panic_info::PanicInfo::location+0xc>
420061a9:	0189      	s32i.n	a8, a1, 0
420061ab:	180c      	movi.n	a8, 1
420061ad:	104182        	s8i	a8, a1, 16
420061b0:	2139      	s32i.n	a3, a1, 8
420061b2:	00c1a2        	addi	a10, a1, 0
420061b5:	fff881        	l32r	a8, 42006198 <core::panic::panic_info::PanicInfo::location+0x10>
420061b8:	0008e0        	callx8	a8
420061bb:	0041f0        	break	1, 15
420061be:	00          	.byte 00
420061bf:	2b7800        	oeq.s	b7, f8, f0
420061c2:	9c3c01        	l32r	a0, 41fed2b4 <__user_exception+0x1c7408c>
420061c5:	420061        	l32r	a6, 41fd69c8 <__user_exception+0x1c5d7a0>

420061c8 <core::panicking::panic>:
420061c8:	008136        	entry	a1, 64
420061cb:	080c      	movi.n	a8, 0
420061cd:	4189      	s32i.n	a8, a1, 16
420061cf:	190c      	movi.n	a9, 1
420061d1:	1199      	s32i.n	a9, a1, 4
420061d3:	18c192        	addi	a9, a1, 24
420061d6:	0199      	s32i.n	a9, a1, 0
420061d8:	3189      	s32i.n	a8, a1, 12
420061da:	fff981        	l32r	a8, 420061c0 <core::panicking::panic_fmt+0x24>
420061dd:	2189      	s32i.n	a8, a1, 8
420061df:	7139      	s32i.n	a3, a1, 28
420061e1:	6129      	s32i.n	a2, a1, 24
420061e3:	00c1a2        	addi	a10, a1, 0
420061e6:	fff781        	l32r	a8, 420061c4 <core::panicking::panic_fmt+0x28>
420061e9:	04bd      	mov.n	a11, a4
420061eb:	0008e0        	callx8	a8
420061ee:	0041f0        	break	1, 15
420061f1:	000000        	ill
420061f4:	2b9c      	beqz.n	a11, 4200620a <core::panicking::panic_bounds_check+0xa>
420061f6:	d43c01        	l32r	a0, 41ffb2e8 <__user_exception+0x1c820c0>
420061f9:	0068      	l32i.n	a6, a0, 0
420061fb:	619c42        	l16si	a4, a12, 194
420061fe:	        	ee.ldf.64.xp	f4, f3, a0, a2

42006200 <core::panicking::panic_bounds_check>:
42006200:	00a136        	entry	a1, 80
42006203:	1139      	s32i.n	a3, a1, 4
42006205:	0129      	s32i.n	a2, a1, 0
42006207:	080c      	movi.n	a8, 0
42006209:	6189      	s32i.n	a8, a1, 24
4200620b:	280c      	movi.n	a8, 2
4200620d:	3189      	s32i.n	a8, a1, 12
4200620f:	fff991        	l32r	a9, 420061f4 <core::panicking::panic+0x2c>
42006212:	2199      	s32i.n	a9, a1, 8
42006214:	5189      	s32i.n	a8, a1, 20
42006216:	20c182        	addi	a8, a1, 32
42006219:	4189      	s32i.n	a8, a1, 16
4200621b:	fff781        	l32r	a8, 420061f8 <core::panicking::panic+0x30>
4200621e:	b189      	s32i.n	a8, a1, 44
42006220:	00c192        	addi	a9, a1, 0
42006223:	a199      	s32i.n	a9, a1, 40
42006225:	9189      	s32i.n	a8, a1, 36
42006227:	04c182        	addi	a8, a1, 4
4200622a:	8189      	s32i.n	a8, a1, 32
4200622c:	08c1a2        	addi	a10, a1, 8
4200622f:	fff381        	l32r	a8, 420061fc <core::panicking::panic+0x34>
42006232:	04bd      	mov.n	a11, a4
42006234:	0008e0        	callx8	a8
42006237:	0041f0        	break	1, 15
4200623a:	00          	.byte 00
4200623b:	2bac00        	oeq.s	b10, f12, f0
4200623e:	a43c01        	l32r	a0, 41fef330 <__user_exception+0x1c76108>
42006241:	420062        	l8ui	a6, a0, 66

42006244 <core::panicking::assert_failed>:
42006244:	00a136        	entry	a1, 80
42006247:	2149      	s32i.n	a4, a1, 8
42006249:	1139      	s32i.n	a3, a1, 4
4200624b:	5588      	l32i.n	a8, a5, 20
4200624d:	8189      	s32i.n	a8, a1, 32
4200624f:	4588      	l32i.n	a8, a5, 16
42006251:	7189      	s32i.n	a8, a1, 28
42006253:	3588      	l32i.n	a8, a5, 12
42006255:	6189      	s32i.n	a8, a1, 24
42006257:	2588      	l32i.n	a8, a5, 8
42006259:	5189      	s32i.n	a8, a1, 20
4200625b:	1588      	l32i.n	a8, a5, 4
4200625d:	4189      	s32i.n	a8, a1, 16
4200625f:	0588      	l32i.n	a8, a5, 0
42006261:	3189      	s32i.n	a8, a1, 12
42006263:	0169      	s32i.n	a6, a1, 0
42006265:	04c1b2        	addi	a11, a1, 4
42006268:	08c1d2        	addi	a13, a1, 8
4200626b:	fff4c1        	l32r	a12, 4200623c <core::panicking::panic_bounds_check+0x3c>
4200626e:	0cc1f2        	addi	a15, a1, 12
42006271:	fff381        	l32r	a8, 42006240 <core::panicking::panic_bounds_check+0x40>
42006274:	02ad      	mov.n	a10, a2
42006276:	0ced      	mov.n	a14, a12
42006278:	0008e0        	callx8	a8
4200627b:	0041f0        	break	1, 15
4200627e:	c00000        	sub	a0, a0, a0
42006281:	012b      	addi.n	a0, a1, 2
42006283:	be3c      	movi.n	a14, 59
42006285:	012b      	addi.n	a0, a1, 2
42006287:	bc3c      	movi.n	a12, 59
42006289:	012b      	addi.n	a0, a1, 2
4200628b:	243c      	movi.n	a4, 50
4200628d:	012c      	movi.n	a1, 32
4200628f:	883c      	movi.n	a8, 56
42006291:	420050        	xorb	b0, b0, b5
42006294:	005fc4        	ee.ld.qacc_l.l.128.ip	a12, 0x5f0
42006297:	602442        	l32i	a4, a4, 0x180
4200629a:	00          	.byte 00
4200629b:	619c42        	l16si	a4, a12, 194
4200629e:	004200        	break	2, 0
420062a1:	012c      	movi.n	a1, 32
420062a3:	      	movi.n	a6, 51

420062a4 <core::panicking::assert_failed_inner>:
420062a4:	012136        	entry	a1, 144
420062a7:	2149      	s32i.n	a4, a1, 8
420062a9:	1139      	s32i.n	a3, a1, 4
420062ab:	4169      	s32i.n	a6, a1, 16
420062ad:	3159      	s32i.n	a5, a1, 12
420062af:	ffa082        	movi	a8, 255
420062b2:	108280        	and	a8, a2, a8
420062b5:	008816        	beqz	a8, 420062c1 <core::panicking::assert_failed_inner+0x1d>
420062b8:	341866        	bnei	a8, 1, 420062f0 <core::panicking::assert_failed_inner+0x4c>
420062bb:	fff281        	l32r	a8, 42006284 <core::panicking::assert_failed+0x40>
420062be:	000086        	j	420062c4 <core::panicking::assert_failed_inner+0x20>
420062c1:	fff181        	l32r	a8, 42006288 <core::panicking::assert_failed+0x44>
420062c4:	5189      	s32i.n	a8, a1, 20
420062c6:	280c      	movi.n	a8, 2
420062c8:	2421b2        	l32i	a11, a1, 144
420062cb:	6189      	s32i.n	a8, a1, 24
420062cd:	0788      	l32i.n	a8, a7, 0
420062cf:	02e856        	bnez	a8, 42006301 <core::panicking::assert_failed_inner+0x5d>
420062d2:	080c      	movi.n	a8, 0
420062d4:	196182        	s32i	a8, a1, 100
420062d7:	480c      	movi.n	a8, 4
420062d9:	166182        	s32i	a8, a1, 88
420062dc:	fff181        	l32r	a8, 420062a0 <core::panicking::assert_failed+0x5c>
420062df:	156182        	s32i	a8, a1, 84
420062e2:	380c      	movi.n	a8, 3
420062e4:	186182        	s32i	a8, a1, 96
420062e7:	34c182        	addi	a8, a1, 52
420062ea:	176182        	s32i	a8, a1, 92
420062ed:	001346        	j	4200633e <core::panicking::assert_failed_inner+0x9a>
420062f0:	ffe481        	l32r	a8, 42006280 <core::panicking::assert_failed+0x3c>
420062f3:	5189      	s32i.n	a8, a1, 20
420062f5:	780c      	movi.n	a8, 7
420062f7:	2421b2        	l32i	a11, a1, 144
420062fa:	6189      	s32i.n	a8, a1, 24
420062fc:	0788      	l32i.n	a8, a7, 0
420062fe:	fd0816        	beqz	a8, 420062d2 <core::panicking::assert_failed_inner+0x2e>
42006301:	5788      	l32i.n	a8, a7, 20
42006303:	c189      	s32i.n	a8, a1, 48
42006305:	4788      	l32i.n	a8, a7, 16
42006307:	b189      	s32i.n	a8, a1, 44
42006309:	3788      	l32i.n	a8, a7, 12
4200630b:	a189      	s32i.n	a8, a1, 40
4200630d:	2788      	l32i.n	a8, a7, 8
4200630f:	9189      	s32i.n	a8, a1, 36
42006311:	1788      	l32i.n	a8, a7, 4
42006313:	8189      	s32i.n	a8, a1, 32
42006315:	0788      	l32i.n	a8, a7, 0
42006317:	7189      	s32i.n	a8, a1, 28
42006319:	080c      	movi.n	a8, 0
4200631b:	196182        	s32i	a8, a1, 100
4200631e:	480c      	movi.n	a8, 4
42006320:	166182        	s32i	a8, a1, 88
42006323:	ffda91        	l32r	a9, 4200628c <core::panicking::assert_failed+0x48>
42006326:	156192        	s32i	a9, a1, 84
42006329:	186182        	s32i	a8, a1, 96
4200632c:	34c182        	addi	a8, a1, 52
4200632f:	176182        	s32i	a8, a1, 92
42006332:	ffd781        	l32r	a8, 42006290 <core::panicking::assert_failed+0x4c>
42006335:	146182        	s32i	a8, a1, 80
42006338:	1cc182        	addi	a8, a1, 28
4200633b:	136182        	s32i	a8, a1, 76
4200633e:	ffd581        	l32r	a8, 42006294 <core::panicking::assert_failed+0x50>
42006341:	126182        	s32i	a8, a1, 72
42006344:	0cc192        	addi	a9, a1, 12
42006347:	116192        	s32i	a9, a1, 68
4200634a:	106182        	s32i	a8, a1, 64
4200634d:	04c182        	addi	a8, a1, 4
42006350:	f189      	s32i.n	a8, a1, 60
42006352:	ffd181        	l32r	a8, 42006298 <core::panicking::assert_failed+0x54>
42006355:	e189      	s32i.n	a8, a1, 56
42006357:	14c182        	addi	a8, a1, 20
4200635a:	d189      	s32i.n	a8, a1, 52
4200635c:	54c1a2        	addi	a10, a1, 84
4200635f:	ffcf81        	l32r	a8, 4200629c <core::panicking::assert_failed+0x58>
42006362:	0008e0        	callx8	a8
42006365:	0041f0        	break	1, 15
42006368:	2c98      	l32i.n	a9, a12, 8
4200636a:	8c3c01        	l32r	a0, 41fe945c <__user_exception+0x1c70234>
4200636d:	012c      	movi.n	a1, 32
4200636f:	7c3c      	movi.n	a12, 55
42006371:	012c      	movi.n	a1, 32
42006373:	713c      	movi.n	a1, 55
42006375:	010a      	add.n	a0, a1, a0
42006377:	6c3c      	movi.n	a12, 54
42006379:	012c      	movi.n	a1, 32
4200637b:	643c      	movi.n	a4, 54
4200637d:	012c      	movi.n	a1, 32
4200637f:	543c      	movi.n	a4, 53
42006381:	012c      	movi.n	a1, 32
42006383:	443c      	movi.n	a4, 52
42006385:	012c      	movi.n	a1, 32
42006387:	4d3c      	movi.n	a13, 52
42006389:	012c      	movi.n	a1, 32
4200638b:	8c3c      	movi.n	a12, 56
4200638d:	420057        	bnone	a0, a5, 420063d3 <<core::panic::panic_info::PanicInfo as core::fmt::Debug>::fmt+0x43>

42006390 <<core::panic::panic_info::PanicInfo as core::fmt::Debug>::fmt>:
42006390:	00c136        	entry	a1, 96
42006393:	10c282        	addi	a8, a2, 16
42006396:	d189      	s32i.n	a8, a1, 52
42006398:	fff481        	l32r	a8, 42006368 <core::panicking::assert_failed_inner+0xc4>
4200639b:	c189      	s32i.n	a8, a1, 48
4200639d:	34c182        	addi	a8, a1, 52
420063a0:	b189      	s32i.n	a8, a1, 44
420063a2:	a80c      	movi.n	a8, 10
420063a4:	a189      	s32i.n	a8, a1, 40
420063a6:	fff181        	l32r	a8, 4200636c <core::panicking::assert_failed_inner+0xc8>
420063a9:	9189      	s32i.n	a8, a1, 36
420063ab:	fff181        	l32r	a8, 42006370 <core::panicking::assert_failed_inner+0xcc>
420063ae:	8189      	s32i.n	a8, a1, 32
420063b0:	828b      	addi.n	a8, a2, 8
420063b2:	7189      	s32i.n	a8, a1, 28
420063b4:	880c      	movi.n	a8, 8
420063b6:	6189      	s32i.n	a8, a1, 24
420063b8:	ffef81        	l32r	a8, 42006374 <core::panicking::assert_failed_inner+0xd0>
420063bb:	5189      	s32i.n	a8, a1, 20
420063bd:	ffee81        	l32r	a8, 42006378 <core::panicking::assert_failed_inner+0xd4>
420063c0:	4189      	s32i.n	a8, a1, 16
420063c2:	82cb      	addi.n	a8, a2, 12
420063c4:	3189      	s32i.n	a8, a1, 12
420063c6:	7e0c      	movi.n	a14, 7
420063c8:	21e9      	s32i.n	a14, a1, 8
420063ca:	ffec81        	l32r	a8, 4200637c <core::panicking::assert_failed_inner+0xd8>
420063cd:	1189      	s32i.n	a8, a1, 4
420063cf:	ffec81        	l32r	a8, 42006380 <core::panicking::assert_failed_inner+0xdc>
420063d2:	0189      	s32i.n	a8, a1, 0
420063d4:	ffecb1        	l32r	a11, 42006384 <core::panicking::assert_failed_inner+0xe0>
420063d7:	9c0c      	movi.n	a12, 9
420063d9:	ffebd1        	l32r	a13, 42006388 <core::panicking::assert_failed_inner+0xe4>
420063dc:	ffec81        	l32r	a8, 4200638c <core::panicking::assert_failed_inner+0xe8>
420063df:	03ad      	mov.n	a10, a3
420063e1:	02fd      	mov.n	a15, a2
420063e3:	0008e0        	callx8	a8
420063e6:	0a2d      	mov.n	a2, a10
420063e8:	f01d      	retw.n
	...

420063ec <core::ptr::drop_in_place<u32>>:
420063ec:	004136        	entry	a1, 32
420063ef:	f01d      	retw.n
420063f1:	000000        	ill
420063f4:	2cac      	beqz.n	a12, 4200641a <core::result::unwrap_failed+0x16>
420063f6:	c43c01        	l32r	a0, 41ff74e8 <__user_exception+0x1c7e2c0>
420063f9:	2442005f 	ee.vmulas.s8.accx.ld.ip.qup	q0, a5, 0x100, q4, q0, q4, q2
420063fd:	420060        	xorb	b0, b0, b6
42006400:	619c      	beqz.n	a1, 4200641a <core::result::unwrap_failed+0x16>
42006402:	        	ee.ldf.64.xp	f4, f3, a0, a2

42006404 <core::result::unwrap_failed>:
42006404:	00c136        	entry	a1, 96
42006407:	1139      	s32i.n	a3, a1, 4
42006409:	0129      	s32i.n	a2, a1, 0
4200640b:	3159      	s32i.n	a5, a1, 12
4200640d:	2149      	s32i.n	a4, a1, 8
4200640f:	080c      	movi.n	a8, 0
42006411:	8189      	s32i.n	a8, a1, 32
42006413:	280c      	movi.n	a8, 2
42006415:	5189      	s32i.n	a8, a1, 20
42006417:	fff791        	l32r	a9, 420063f4 <core::ptr::drop_in_place<u32>+0x8>
4200641a:	4199      	s32i.n	a9, a1, 16
4200641c:	7189      	s32i.n	a8, a1, 28
4200641e:	28c182        	addi	a8, a1, 40
42006421:	6189      	s32i.n	a8, a1, 24
42006423:	fff581        	l32r	a8, 420063f8 <core::ptr::drop_in_place<u32>+0xc>
42006426:	d189      	s32i.n	a8, a1, 52
42006428:	08c182        	addi	a8, a1, 8
4200642b:	c189      	s32i.n	a8, a1, 48
4200642d:	fff381        	l32r	a8, 420063fc <core::ptr::drop_in_place<u32>+0x10>
42006430:	b189      	s32i.n	a8, a1, 44
42006432:	00c182        	addi	a8, a1, 0
42006435:	a189      	s32i.n	a8, a1, 40
42006437:	10c1a2        	addi	a10, a1, 16
4200643a:	fff181        	l32r	a8, 42006400 <core::ptr::drop_in_place<u32>+0x14>
4200643d:	06bd      	mov.n	a11, a6
4200643f:	0008e0        	callx8	a8
42006442:	0041f0        	break	1, 15
42006445:	000000        	ill
42006448:	012cf0        	slli	a2, a12, 17
4200644b:	d43c      	movi.n	a4, 61
4200644d:	0068      	l32i.n	a6, a0, 0
4200644f:	619c42        	l16si	a4, a12, 194
42006452:	        	ee.ldf.64.xp	f4, f3, a0, a2

42006454 <core::slice::index::slice_start_index_len_fail>:
42006454:	00a136        	entry	a1, 80
42006457:	0129      	s32i.n	a2, a1, 0
42006459:	1139      	s32i.n	a3, a1, 4
4200645b:	080c      	movi.n	a8, 0
4200645d:	6189      	s32i.n	a8, a1, 24
4200645f:	280c      	movi.n	a8, 2
42006461:	3189      	s32i.n	a8, a1, 12
42006463:	fff991        	l32r	a9, 42006448 <core::result::unwrap_failed+0x44>
42006466:	2199      	s32i.n	a9, a1, 8
42006468:	5189      	s32i.n	a8, a1, 20
4200646a:	20c182        	addi	a8, a1, 32
4200646d:	4189      	s32i.n	a8, a1, 16
4200646f:	fff781        	l32r	a8, 4200644c <core::result::unwrap_failed+0x48>
42006472:	b189      	s32i.n	a8, a1, 44
42006474:	04c192        	addi	a9, a1, 4
42006477:	a199      	s32i.n	a9, a1, 40
42006479:	9189      	s32i.n	a8, a1, 36
4200647b:	00c182        	addi	a8, a1, 0
4200647e:	8189      	s32i.n	a8, a1, 32
42006480:	08c1a2        	addi	a10, a1, 8
42006483:	fff381        	l32r	a8, 42006450 <core::result::unwrap_failed+0x4c>
42006486:	04bd      	mov.n	a11, a4
42006488:	0008e0        	callx8	a8
4200648b:	0041f0        	break	1, 15
4200648e:	000000        	ill
42006491:	012d      	mov.n	a2, a1
42006493:	d43c      	movi.n	a4, 61
42006495:	0068      	l32i.n	a6, a0, 0
42006497:	619c42        	l16si	a4, a12, 194
4200649a:	        	ee.ldf.64.xp	f4, f3, a0, a2

4200649c <core::slice::index::slice_end_index_len_fail>:
4200649c:	00a136        	entry	a1, 80
4200649f:	0129      	s32i.n	a2, a1, 0
420064a1:	1139      	s32i.n	a3, a1, 4
420064a3:	080c      	movi.n	a8, 0
420064a5:	6189      	s32i.n	a8, a1, 24
420064a7:	280c      	movi.n	a8, 2
420064a9:	3189      	s32i.n	a8, a1, 12
420064ab:	fff991        	l32r	a9, 42006490 <core::slice::index::slice_start_index_len_fail+0x3c>
420064ae:	2199      	s32i.n	a9, a1, 8
420064b0:	5189      	s32i.n	a8, a1, 20
420064b2:	20c182        	addi	a8, a1, 32
420064b5:	4189      	s32i.n	a8, a1, 16
420064b7:	fff781        	l32r	a8, 42006494 <core::slice::index::slice_start_index_len_fail+0x40>
420064ba:	b189      	s32i.n	a8, a1, 44
420064bc:	04c192        	addi	a9, a1, 4
420064bf:	a199      	s32i.n	a9, a1, 40
420064c1:	9189      	s32i.n	a8, a1, 36
420064c3:	00c182        	addi	a8, a1, 0
420064c6:	8189      	s32i.n	a8, a1, 32
420064c8:	08c1a2        	addi	a10, a1, 8
420064cb:	fff381        	l32r	a8, 42006498 <core::slice::index::slice_start_index_len_fail+0x44>
420064ce:	04bd      	mov.n	a11, a4
420064d0:	0008e0        	callx8	a8
420064d3:	0041f0        	break	1, 15
420064d6:	340000        	extui	a0, a0, 0, 4
420064d9:	012d      	mov.n	a2, a1
420064db:	d43c      	movi.n	a4, 61
420064dd:	0068      	l32i.n	a6, a0, 0
420064df:	619c42        	l16si	a4, a12, 194
420064e2:	        	ee.ldf.64.xp	f4, f3, a0, a2

420064e4 <core::slice::index::slice_index_order_fail>:
420064e4:	00a136        	entry	a1, 80
420064e7:	0129      	s32i.n	a2, a1, 0
420064e9:	1139      	s32i.n	a3, a1, 4
420064eb:	080c      	movi.n	a8, 0
420064ed:	6189      	s32i.n	a8, a1, 24
420064ef:	280c      	movi.n	a8, 2
420064f1:	3189      	s32i.n	a8, a1, 12
420064f3:	fff991        	l32r	a9, 420064d8 <core::slice::index::slice_end_index_len_fail+0x3c>
420064f6:	2199      	s32i.n	a9, a1, 8
420064f8:	5189      	s32i.n	a8, a1, 20
420064fa:	20c182        	addi	a8, a1, 32
420064fd:	4189      	s32i.n	a8, a1, 16
420064ff:	fff781        	l32r	a8, 420064dc <core::slice::index::slice_end_index_len_fail+0x40>
42006502:	b189      	s32i.n	a8, a1, 44
42006504:	04c192        	addi	a9, a1, 4
42006507:	a199      	s32i.n	a9, a1, 40
42006509:	9189      	s32i.n	a8, a1, 36
4200650b:	00c182        	addi	a8, a1, 0
4200650e:	8189      	s32i.n	a8, a1, 32
42006510:	08c1a2        	addi	a10, a1, 8
42006513:	fff381        	l32r	a8, 420064e0 <core::slice::index::slice_end_index_len_fail+0x44>
42006516:	04bd      	mov.n	a11, a4
42006518:	0008e0        	callx8	a8
4200651b:	0041f0        	break	1, 15
4200651e:	00          	.byte 00
4200651f:	00          	.byte 00
42006520:	1c98      	l32i.n	a9, a12, 4
42006522:	ec3c01        	l32r	a0, 42001614 <<esp_backtrace::arch::Context as core::fmt::Debug>::fmt+0x1c8>
42006525:	420051        	l32r	a5, 41fd6d28 <__user_exception+0x1c5db00>
42006528:	1c88      	l32i.n	a8, a12, 4
4200652a:	543c01        	l32r	a0, 41fdb61c <__user_exception+0x1c623f4>
4200652d:	420064        	ee.st.accx.ip	a6, 0xfffffc00
42006530:	0000270f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 112, q4, q4, q0, q0
42006534:	1759      	s32i.n	a5, a7, 4
42006536:	10d1b7        	bbs	a1, a11, 4200654a <core::slice::index::slice_index_order_fail+0x66>
42006539:	000027        	bnone	a0, a2, 4200653d <core::slice::index::slice_index_order_fail+0x59>
4200653c:	fffc      	bnez.n	a15, 4200657f <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x2b>
4200653e:	7b0000        	ule.s	b0, f0, f0
42006541:	000014        	ee.ld.qacc_l.l.128.ip	a1, 0
42006544:	1c9a      	add.n	a1, a12, a9
42006546:	ff3c01        	l32r	a0, 42006238 <core::panicking::panic_bounds_check+0x38>
42006549:	ff0000ff 	ee.vmulas.s16.accx.ld.ip	q6, a15, 0xffffff00, q4, q0
4200654d:	05f5e0        	extui	a15, a14, 21, 1
42006550:	2ca8      	l32i.n	a10, a12, 8
42006552:	        	l32r	a0, 41fd3e44 <__user_exception+0x1c5ac1c>

42006554 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt>:
42006554:	018136        	entry	a1, 192
42006557:	7388      	l32i.n	a8, a3, 28
42006559:	091c      	movi.n	a9, 16
4200655b:	109890        	and	a9, a8, a9
4200655e:	107956        	bnez	a9, 42006669 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x115>
42006561:	092c      	movi.n	a9, 32
42006563:	108890        	and	a8, a8, a9
42006566:	134856        	bnez	a8, 4200669e <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x14a>
42006569:	1139      	s32i.n	a3, a1, 4
4200656b:	0298      	l32i.n	a9, a2, 0
4200656d:	7e2c      	movi.n	a14, 39
4200656f:	fff081        	l32r	a8, 42006530 <core::slice::index::slice_index_order_fail+0x4c>
42006572:	023897        	bltu	a8, a9, 42006578 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x24>
42006575:	005ec6        	j	420066f4 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1a0>
42006578:	ffef81        	l32r	a8, 42006534 <core::slice::index::slice_index_order_fail+0x50>
4200657b:	6189      	s32i.n	a8, a1, 24
4200657d:	ffee81        	l32r	a8, 42006538 <core::slice::index::slice_index_order_fail+0x54>
42006580:	5189      	s32i.n	a8, a1, 20
42006582:	ffee81        	l32r	a8, 4200653c <core::slice::index::slice_index_order_fail+0x58>
42006585:	4189      	s32i.n	a8, a1, 16
42006587:	ffee81        	l32r	a8, 42006540 <core::slice::index::slice_index_order_fail+0x5c>
4200658a:	3189      	s32i.n	a8, a1, 12
4200658c:	181c      	movi.n	a8, 17
4200658e:	2189      	s32i.n	a8, a1, 8
42006590:	ffed71        	l32r	a7, 42006544 <core::slice::index::slice_index_order_fail+0x60>
42006593:	64a062        	movi	a6, 100
42006596:	ffec51        	l32r	a5, 42006548 <core::slice::index::slice_index_order_fail+0x64>
42006599:	ffec41        	l32r	a4, 4200654c <core::slice::index::slice_index_order_fail+0x68>
4200659c:	092d      	mov.n	a2, a9
4200659e:	fcce82        	addi	a8, a14, -4
420065a1:	1cc1a2        	addi	a10, a1, 28
420065a4:	3a8a      	add.n	a3, a10, a8
420065a6:	6198      	l32i.n	a9, a1, 24
420065a8:	a29290        	muluh	a9, a2, a9
420065ab:	419d90        	srli	a9, a9, 13
420065ae:	51b8      	l32i.n	a11, a1, 20
420065b0:	82b9b0        	mull	a11, a9, a11
420065b3:	c0b2b0        	sub	a11, a2, a11
420065b6:	41c8      	l32i.n	a12, a1, 16
420065b8:	10cbc0        	and	a12, a11, a12
420065bb:	41c2c0        	srli	a12, a12, 2
420065be:	31d8      	l32i.n	a13, a1, 12
420065c0:	82ccd0        	mull	a12, a12, a13
420065c3:	21d8      	l32i.n	a13, a1, 8
420065c5:	400d00        	ssr	a13
420065c8:	91c0c0        	srl	a12, a12
420065cb:	90dc70        	addx2	a13, a12, a7
420065ce:	010df2        	l8ui	a15, a13, 1
420065d1:	0143f2        	s8i	a15, a3, 1
420065d4:	000dd2        	l8ui	a13, a13, 0
420065d7:	0043d2        	s8i	a13, a3, 0
420065da:	82cc60        	mull	a12, a12, a6
420065dd:	c0bbc0        	sub	a11, a11, a12
420065e0:	10bb50        	and	a11, a11, a5
420065e3:	90bb70        	addx2	a11, a11, a7
420065e6:	010bc2        	l8ui	a12, a11, 1
420065e9:	aeaa      	add.n	a10, a14, a10
420065eb:	da0b      	addi.n	a13, a10, -1
420065ed:	004dc2        	s8i	a12, a13, 0
420065f0:	000bb2        	l8ui	a11, a11, 0
420065f3:	fecaa2        	addi	a10, a10, -2
420065f6:	004ab2        	s8i	a11, a10, 0
420065f9:	08ed      	mov.n	a14, a8
420065fb:	9d3427        	bltu	a4, a2, 4200659c <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x48>
420065fe:	63a0a2        	movi	a10, 99
42006601:	023a97        	bltu	a10, a9, 42006607 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0xb3>
42006604:	003dc6        	j	420066ff <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1ab>
42006607:	fec882        	addi	a8, a8, -2
4200660a:	1cc1a2        	addi	a10, a1, 28
4200660d:	ba8a      	add.n	a11, a10, a8
4200660f:	ffcba1        	l32r	a10, 4200653c <core::slice::index::slice_index_order_fail+0x58>
42006612:	10a9a0        	and	a10, a9, a10
42006615:	41a2a0        	srli	a10, a10, 2
42006618:	ffcac1        	l32r	a12, 42006540 <core::slice::index::slice_index_order_fail+0x5c>
4200661b:	82aac0        	mull	a10, a10, a12
4200661e:	1c1c      	movi.n	a12, 17
42006620:	400c00        	ssr	a12
42006623:	91d0a0        	srl	a13, a10
42006626:	64a0c2        	movi	a12, 100
42006629:	82cdc0        	mull	a12, a13, a12
4200662c:	c099c0        	sub	a9, a9, a12
4200662f:	ffc6c1        	l32r	a12, 42006548 <core::slice::index::slice_index_order_fail+0x64>
42006632:	1099c0        	and	a9, a9, a12
42006635:	ffc3c1        	l32r	a12, 42006544 <core::slice::index::slice_index_order_fail+0x60>
42006638:	9099c0        	addx2	a9, a9, a12
4200663b:	0109c2        	l8ui	a12, a9, 1
4200663e:	014bc2        	s8i	a12, a11, 1
42006641:	000992        	l8ui	a9, a9, 0
42006644:	004b92        	s8i	a9, a11, 0
42006647:	11a8      	l32i.n	a10, a1, 4
42006649:	029df6        	bgeui	a13, 10, 4200664f <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0xfb>
4200664c:	002e46        	j	42006709 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1b5>
4200664f:	fec882        	addi	a8, a8, -2
42006652:	1cc192        	addi	a9, a1, 28
42006655:	998a      	add.n	a9, a9, a8
42006657:	ffbbb1        	l32r	a11, 42006544 <core::slice::index::slice_index_order_fail+0x60>
4200665a:	90cdb0        	addx2	a12, a13, a11
4200665d:	010cb2        	l8ui	a11, a12, 1
42006660:	0149b2        	s8i	a11, a9, 1
42006663:	000cb2        	l8ui	a11, a12, 0
42006666:	002a46        	j	42006713 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1bf>
42006669:	80a0a2        	movi	a10, 128
4200666c:	1cc182        	addi	a8, a1, 28
4200666f:	88aa      	add.n	a8, a8, a10
42006671:	0278      	l32i.n	a7, a2, 0
42006673:	f90c      	movi.n	a9, 15
42006675:	7b5c      	movi.n	a11, 87
42006677:	0d3c      	movi.n	a13, 48
42006679:	ae0c      	movi.n	a14, 10
4200667b:	000386        	j	4200668d <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x139>
4200667e:	a7aa      	add.n	a10, a7, a10
42006680:	880b      	addi.n	a8, a8, -1
42006682:	0048a2        	s8i	a10, a8, 0
42006685:	ac0b      	addi.n	a10, a12, -1
42006687:	4174f0        	srli	a7, a15, 4
4200668a:	45bfb6        	bltui	a15, 16, 420066d3 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x17f>
4200668d:	0acd      	mov.n	a12, a10
4200668f:	07fd      	mov.n	a15, a7
42006691:	10af90        	and	a10, a15, a9
42006694:	0d7d      	mov.n	a7, a13
42006696:	e43ae7        	bltu	a10, a14, 4200667e <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x12a>
42006699:	0b7d      	mov.n	a7, a11
4200669b:	fff7c6        	j	4200667e <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x12a>
4200669e:	80a0a2        	movi	a10, 128
420066a1:	1cc182        	addi	a8, a1, 28
420066a4:	88aa      	add.n	a8, a8, a10
420066a6:	0278      	l32i.n	a7, a2, 0
420066a8:	f90c      	movi.n	a9, 15
420066aa:	7b3c      	movi.n	a11, 55
420066ac:	0d3c      	movi.n	a13, 48
420066ae:	ae0c      	movi.n	a14, 10
420066b0:	000386        	j	420066c2 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x16e>
420066b3:	a7aa      	add.n	a10, a7, a10
420066b5:	880b      	addi.n	a8, a8, -1
420066b7:	0048a2        	s8i	a10, a8, 0
420066ba:	ac0b      	addi.n	a10, a12, -1
420066bc:	4174f0        	srli	a7, a15, 4
420066bf:	10bfb6        	bltui	a15, 16, 420066d3 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x17f>
420066c2:	0acd      	mov.n	a12, a10
420066c4:	07fd      	mov.n	a15, a7
420066c6:	10af90        	and	a10, a15, a9
420066c9:	0d7d      	mov.n	a7, a13
420066cb:	e43ae7        	bltu	a10, a14, 420066b3 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x15f>
420066ce:	0b7d      	mov.n	a7, a11
420066d0:	fff7c6        	j	420066b3 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x15f>
420066d3:	81a082        	movi	a8, 129
420066d6:	57ba87        	bgeu	a10, a8, 42006731 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1dd>
420066d9:	1cc192        	addi	a9, a1, 28
420066dc:	e9aa      	add.n	a14, a9, a10
420066de:	c0f8c0        	sub	a15, a8, a12
420066e1:	1b0c      	movi.n	a11, 1
420066e3:	ff8fc1        	l32r	a12, 42006520 <core::slice::index::slice_index_order_fail+0x3c>
420066e6:	2d0c      	movi.n	a13, 2
420066e8:	ff8f81        	l32r	a8, 42006524 <core::slice::index::slice_index_order_fail+0x40>
420066eb:	03ad      	mov.n	a10, a3
420066ed:	0008e0        	callx8	a8
420066f0:	0a2d      	mov.n	a2, a10
420066f2:	f01d      	retw.n
420066f4:	0e8d      	mov.n	a8, a14
420066f6:	63a0a2        	movi	a10, 99
420066f9:	02ba97        	bgeu	a10, a9, 420066ff <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1ab>
420066fc:	ffc1c6        	j	42006607 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0xb3>
420066ff:	09dd      	mov.n	a13, a9
42006701:	11a8      	l32i.n	a10, a1, 4
42006703:	029db6        	bltui	a13, 10, 42006709 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1b5>
42006706:	ffd146        	j	4200664f <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0xfb>
42006709:	880b      	addi.n	a8, a8, -1
4200670b:	1cc192        	addi	a9, a1, 28
4200670e:	998a      	add.n	a9, a9, a8
42006710:	30cdb2        	addi	a11, a13, 48
42006713:	0049b2        	s8i	a11, a9, 0
42006716:	1cc192        	addi	a9, a1, 28
42006719:	e98a      	add.n	a14, a9, a8
4200671b:	792c      	movi.n	a9, 39
4200671d:	c0f980        	sub	a15, a9, a8
42006720:	1b0c      	movi.n	a11, 1
42006722:	ff8bc1        	l32r	a12, 42006550 <core::slice::index::slice_index_order_fail+0x6c>
42006725:	0d0c      	movi.n	a13, 0
42006727:	ff7f81        	l32r	a8, 42006524 <core::slice::index::slice_index_order_fail+0x40>
4200672a:	0008e0        	callx8	a8
4200672d:	0a2d      	mov.n	a2, a10
4200672f:	f01d      	retw.n
42006731:	80a0b2        	movi	a11, 128
42006734:	ff7dc1        	l32r	a12, 42006528 <core::slice::index::slice_index_order_fail+0x44>
42006737:	ff7d81        	l32r	a8, 4200652c <core::slice::index::slice_index_order_fail+0x48>
4200673a:	0008e0        	callx8	a8
4200673d:	0041f0        	break	1, 15
42006740:	0000270f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 112, q4, q4, q0, q0
42006744:	1759      	s32i.n	a5, a7, 4
42006746:	10d1b7        	bbs	a1, a11, 4200675a <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x206>
42006749:	000027        	bnone	a0, a2, 4200674d <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1f9>
4200674c:	fffc      	bnez.n	a15, 4200678f <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x27>
4200674e:	7b0000        	ule.s	b0, f0, f0
42006751:	000014        	ee.ld.qacc_l.l.128.ip	a1, 0
42006754:	1c9a      	add.n	a1, a12, a9
42006756:	ff3c01        	l32r	a0, 42006448 <core::result::unwrap_failed+0x44>
42006759:	ff0000ff 	ee.vmulas.s16.accx.ld.ip	q6, a15, 0xffffff00, q4, q0
4200675d:	05f5e0        	extui	a15, a14, 21, 1
42006760:	2ca8      	l32i.n	a10, a12, 8
42006762:	ec3c01        	l32r	a0, 42001854 <<esp_backtrace::arch::Context as core::fmt::Debug>::fmt+0x408>
42006765:	420051        	l32r	a5, 41fd6f68 <__user_exception+0x1c5dd40>

42006768 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt>:
42006768:	00e136        	entry	a1, 112
4200676b:	1139      	s32i.n	a3, a1, 4
4200676d:	0288      	l32i.n	a8, a2, 0
4200676f:	0189      	s32i.n	a8, a1, 0
42006771:	608180        	abs	a8, a8
42006774:	7f2c      	movi.n	a15, 39
42006776:	fff291        	l32r	a9, 42006740 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1ec>
42006779:	023987        	bltu	a9, a8, 4200677f <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x17>
4200677c:	003946        	j	42006865 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0xfd>
4200677f:	fff191        	l32r	a9, 42006744 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1f0>
42006782:	6199      	s32i.n	a9, a1, 24
42006784:	fff191        	l32r	a9, 42006748 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1f4>
42006787:	5199      	s32i.n	a9, a1, 20
42006789:	fff091        	l32r	a9, 4200674c <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1f8>
4200678c:	4199      	s32i.n	a9, a1, 16
4200678e:	fff091        	l32r	a9, 42006750 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1fc>
42006791:	3199      	s32i.n	a9, a1, 12
42006793:	191c      	movi.n	a9, 17
42006795:	2199      	s32i.n	a9, a1, 8
42006797:	ffef61        	l32r	a6, 42006754 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x200>
4200679a:	64a052        	movi	a5, 100
4200679d:	ffee41        	l32r	a4, 42006758 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x204>
420067a0:	ffef21        	l32r	a2, 4200675c <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x208>
420067a3:	08ad      	mov.n	a10, a8
420067a5:	fccf92        	addi	a9, a15, -4
420067a8:	1dc132        	addi	a3, a1, 29
420067ab:	b39a      	add.n	a11, a3, a9
420067ad:	6188      	l32i.n	a8, a1, 24
420067af:	a28a80        	muluh	a8, a10, a8
420067b2:	418d80        	srli	a8, a8, 13
420067b5:	51c8      	l32i.n	a12, a1, 20
420067b7:	82c8c0        	mull	a12, a8, a12
420067ba:	c0cac0        	sub	a12, a10, a12
420067bd:	41d8      	l32i.n	a13, a1, 16
420067bf:	10dcd0        	and	a13, a12, a13
420067c2:	41d2d0        	srli	a13, a13, 2
420067c5:	31e8      	l32i.n	a14, a1, 12
420067c7:	82dde0        	mull	a13, a13, a14
420067ca:	21e8      	l32i.n	a14, a1, 8
420067cc:	400e00        	ssr	a14
420067cf:	91d0d0        	srl	a13, a13
420067d2:	90ed60        	addx2	a14, a13, a6
420067d5:	010e72        	l8ui	a7, a14, 1
420067d8:	014b72        	s8i	a7, a11, 1
420067db:	000ee2        	l8ui	a14, a14, 0
420067de:	004be2        	s8i	a14, a11, 0
420067e1:	82bd50        	mull	a11, a13, a5
420067e4:	c0bcb0        	sub	a11, a12, a11
420067e7:	10bb40        	and	a11, a11, a4
420067ea:	90bb60        	addx2	a11, a11, a6
420067ed:	010bc2        	l8ui	a12, a11, 1
420067f0:	df3a      	add.n	a13, a15, a3
420067f2:	ed0b      	addi.n	a14, a13, -1
420067f4:	004ec2        	s8i	a12, a14, 0
420067f7:	000bb2        	l8ui	a11, a11, 0
420067fa:	fecdc2        	addi	a12, a13, -2
420067fd:	004cb2        	s8i	a11, a12, 0
42006800:	09fd      	mov.n	a15, a9
42006802:	9d32a7        	bltu	a2, a10, 420067a3 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x3b>
42006805:	63a0a2        	movi	a10, 99
42006808:	ffd3b1        	l32r	a11, 42006754 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x200>
4200680b:	61ba87        	bgeu	a10, a8, 42006870 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x108>
4200680e:	fec992        	addi	a9, a9, -2
42006811:	1dc1a2        	addi	a10, a1, 29
42006814:	ca9a      	add.n	a12, a10, a9
42006816:	ffcda1        	l32r	a10, 4200674c <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1f8>
42006819:	10a8a0        	and	a10, a8, a10
4200681c:	41a2a0        	srli	a10, a10, 2
4200681f:	ffccd1        	l32r	a13, 42006750 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x1fc>
42006822:	82aad0        	mull	a10, a10, a13
42006825:	1d1c      	movi.n	a13, 17
42006827:	400d00        	ssr	a13
4200682a:	91a0a0        	srl	a10, a10
4200682d:	64a0d2        	movi	a13, 100
42006830:	82dad0        	mull	a13, a10, a13
42006833:	c088d0        	sub	a8, a8, a13
42006836:	ffc8d1        	l32r	a13, 42006758 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x204>
42006839:	1088d0        	and	a8, a8, a13
4200683c:	9088b0        	addx2	a8, a8, a11
4200683f:	0108d2        	l8ui	a13, a8, 1
42006842:	014cd2        	s8i	a13, a12, 1
42006845:	000882        	l8ui	a8, a8, 0
42006848:	004c82        	s8i	a8, a12, 0
4200684b:	269ab6        	bltui	a10, 10, 42006875 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x10d>
4200684e:	fec982        	addi	a8, a9, -2
42006851:	1dc192        	addi	a9, a1, 29
42006854:	998a      	add.n	a9, a9, a8
42006856:	90aab0        	addx2	a10, a10, a11
42006859:	010ab2        	l8ui	a11, a10, 1
4200685c:	0149b2        	s8i	a11, a9, 1
4200685f:	000aa2        	l8ui	a10, a10, 0
42006862:	000646        	j	4200687f <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x117>
42006865:	0f9d      	mov.n	a9, a15
42006867:	63a0a2        	movi	a10, 99
4200686a:	ffbab1        	l32r	a11, 42006754 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x200>
4200686d:	9d3a87        	bltu	a10, a8, 4200680e <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0xa6>
42006870:	08ad      	mov.n	a10, a8
42006872:	d89af6        	bgeui	a10, 10, 4200684e <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0xe6>
42006875:	890b      	addi.n	a8, a9, -1
42006877:	1dc192        	addi	a9, a1, 29
4200687a:	998a      	add.n	a9, a9, a8
4200687c:	30caa2        	addi	a10, a10, 48
4200687f:	0049a2        	s8i	a10, a9, 0
42006882:	1dc192        	addi	a9, a1, 29
42006885:	e98a      	add.n	a14, a9, a8
42006887:	792c      	movi.n	a9, 39
42006889:	c0f980        	sub	a15, a9, a8
4200688c:	f87c      	movi.n	a8, -1
4200688e:	0198      	l32i.n	a9, a1, 0
42006890:	308980        	xor	a8, a9, a8
42006893:	f91c      	movi.n	a9, 31
42006895:	400900        	ssr	a9
42006898:	91b080        	srl	a11, a8
4200689b:	ffb1c1        	l32r	a12, 42006760 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x20c>
4200689e:	0d0c      	movi.n	a13, 0
420068a0:	ffb181        	l32r	a8, 42006764 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x210>
420068a3:	11a8      	l32i.n	a10, a1, 4
420068a5:	0008e0        	callx8	a8
420068a8:	0a2d      	mov.n	a2, a10
420068aa:	f01d      	retw.n
420068ac:	0000270f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 112, q4, q4, q0, q0
420068b0:	1759      	s32i.n	a5, a7, 4
420068b2:	10d1b7        	bbs	a1, a11, 420068c6 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x15e>
420068b5:	000027        	bnone	a0, a2, 420068b9 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x151>
420068b8:	fffc      	bnez.n	a15, 420068fb <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x27>
420068ba:	7b0000        	ule.s	b0, f0, f0
420068bd:	000014        	ee.ld.qacc_l.l.128.ip	a1, 0
420068c0:	1c9a      	add.n	a1, a12, a9
420068c2:	ff3c01        	l32r	a0, 420065b4 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x60>
420068c5:	ff0000ff 	ee.vmulas.s16.accx.ld.ip	q6, a15, 0xffffff00, q4, q0
420068c9:	05f5e0        	extui	a15, a14, 21, 1
420068cc:	2ca8      	l32i.n	a10, a12, 8
420068ce:	ec3c01        	l32r	a0, 420019c0 <<esp_backtrace::arch::Context as core::fmt::Debug>::fmt+0x574>
420068d1:	420051        	l32r	a5, 41fd70d4 <__user_exception+0x1c5deac>

420068d4 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>:
420068d4:	00c136        	entry	a1, 96
420068d7:	0139      	s32i.n	a3, a1, 0
420068d9:	0298      	l32i.n	a9, a2, 0
420068db:	7e2c      	movi.n	a14, 39
420068dd:	fff381        	l32r	a8, 420068ac <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x144>
420068e0:	023897        	bltu	a8, a9, 420068e6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x12>
420068e3:	003946        	j	420069cc <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0xf8>
420068e6:	fff281        	l32r	a8, 420068b0 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x148>
420068e9:	5189      	s32i.n	a8, a1, 20
420068eb:	fff281        	l32r	a8, 420068b4 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x14c>
420068ee:	4189      	s32i.n	a8, a1, 16
420068f0:	fff281        	l32r	a8, 420068b8 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x150>
420068f3:	3189      	s32i.n	a8, a1, 12
420068f5:	fff181        	l32r	a8, 420068bc <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x154>
420068f8:	2189      	s32i.n	a8, a1, 8
420068fa:	181c      	movi.n	a8, 17
420068fc:	1189      	s32i.n	a8, a1, 4
420068fe:	fff071        	l32r	a7, 420068c0 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x158>
42006901:	64a062        	movi	a6, 100
42006904:	fff051        	l32r	a5, 420068c4 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x15c>
42006907:	fff041        	l32r	a4, 420068c8 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x160>
4200690a:	092d      	mov.n	a2, a9
4200690c:	fcce82        	addi	a8, a14, -4
4200690f:	19c1a2        	addi	a10, a1, 25
42006912:	3a8a      	add.n	a3, a10, a8
42006914:	5198      	l32i.n	a9, a1, 20
42006916:	a29290        	muluh	a9, a2, a9
42006919:	419d90        	srli	a9, a9, 13
4200691c:	41b8      	l32i.n	a11, a1, 16
4200691e:	82b9b0        	mull	a11, a9, a11
42006921:	c0b2b0        	sub	a11, a2, a11
42006924:	31c8      	l32i.n	a12, a1, 12
42006926:	10cbc0        	and	a12, a11, a12
42006929:	41c2c0        	srli	a12, a12, 2
4200692c:	21d8      	l32i.n	a13, a1, 8
4200692e:	82ccd0        	mull	a12, a12, a13
42006931:	11d8      	l32i.n	a13, a1, 4
42006933:	400d00        	ssr	a13
42006936:	91c0c0        	srl	a12, a12
42006939:	90dc70        	addx2	a13, a12, a7
4200693c:	010df2        	l8ui	a15, a13, 1
4200693f:	0143f2        	s8i	a15, a3, 1
42006942:	000dd2        	l8ui	a13, a13, 0
42006945:	0043d2        	s8i	a13, a3, 0
42006948:	82cc60        	mull	a12, a12, a6
4200694b:	c0bbc0        	sub	a11, a11, a12
4200694e:	10bb50        	and	a11, a11, a5
42006951:	90bb70        	addx2	a11, a11, a7
42006954:	010bc2        	l8ui	a12, a11, 1
42006957:	aeaa      	add.n	a10, a14, a10
42006959:	da0b      	addi.n	a13, a10, -1
4200695b:	004dc2        	s8i	a12, a13, 0
4200695e:	000bb2        	l8ui	a11, a11, 0
42006961:	fecaa2        	addi	a10, a10, -2
42006964:	004ab2        	s8i	a11, a10, 0
42006967:	08ed      	mov.n	a14, a8
42006969:	9d3427        	bltu	a4, a2, 4200690a <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x36>
4200696c:	63a0b2        	movi	a11, 99
4200696f:	ffd4a1        	l32r	a10, 420068c0 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x158>
42006972:	61bb97        	bgeu	a11, a9, 420069d7 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x103>
42006975:	fec882        	addi	a8, a8, -2
42006978:	19c1b2        	addi	a11, a1, 25
4200697b:	cb8a      	add.n	a12, a11, a8
4200697d:	ffceb1        	l32r	a11, 420068b8 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x150>
42006980:	10b9b0        	and	a11, a9, a11
42006983:	41b2b0        	srli	a11, a11, 2
42006986:	ffcdd1        	l32r	a13, 420068bc <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x154>
42006989:	82bbd0        	mull	a11, a11, a13
4200698c:	1d1c      	movi.n	a13, 17
4200698e:	400d00        	ssr	a13
42006991:	91b0b0        	srl	a11, a11
42006994:	64a0d2        	movi	a13, 100
42006997:	82dbd0        	mull	a13, a11, a13
4200699a:	c099d0        	sub	a9, a9, a13
4200699d:	ffc9d1        	l32r	a13, 420068c4 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x15c>
420069a0:	1099d0        	and	a9, a9, a13
420069a3:	9099a0        	addx2	a9, a9, a10
420069a6:	0109d2        	l8ui	a13, a9, 1
420069a9:	014cd2        	s8i	a13, a12, 1
420069ac:	000992        	l8ui	a9, a9, 0
420069af:	004c92        	s8i	a9, a12, 0
420069b2:	269bb6        	bltui	a11, 10, 420069dc <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x108>
420069b5:	fec882        	addi	a8, a8, -2
420069b8:	19c192        	addi	a9, a1, 25
420069bb:	998a      	add.n	a9, a9, a8
420069bd:	90aba0        	addx2	a10, a11, a10
420069c0:	010ab2        	l8ui	a11, a10, 1
420069c3:	0149b2        	s8i	a11, a9, 1
420069c6:	000aa2        	l8ui	a10, a10, 0
420069c9:	000646        	j	420069e6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x112>
420069cc:	0e8d      	mov.n	a8, a14
420069ce:	63a0b2        	movi	a11, 99
420069d1:	ffbba1        	l32r	a10, 420068c0 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x158>
420069d4:	9d3b97        	bltu	a11, a9, 42006975 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0xa1>
420069d7:	09bd      	mov.n	a11, a9
420069d9:	d89bf6        	bgeui	a11, 10, 420069b5 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0xe1>
420069dc:	880b      	addi.n	a8, a8, -1
420069de:	19c192        	addi	a9, a1, 25
420069e1:	998a      	add.n	a9, a9, a8
420069e3:	30cba2        	addi	a10, a11, 48
420069e6:	0049a2        	s8i	a10, a9, 0
420069e9:	19c192        	addi	a9, a1, 25
420069ec:	e98a      	add.n	a14, a9, a8
420069ee:	792c      	movi.n	a9, 39
420069f0:	c0f980        	sub	a15, a9, a8
420069f3:	1b0c      	movi.n	a11, 1
420069f5:	ffb5c1        	l32r	a12, 420068cc <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x164>
420069f8:	0d0c      	movi.n	a13, 0
420069fa:	ffb581        	l32r	a8, 420068d0 <core::fmt::num::imp::<impl core::fmt::Display for i32>::fmt+0x168>
420069fd:	01a8      	l32i.n	a10, a1, 0
420069ff:	0008e0        	callx8	a8
42006a02:	0a2d      	mov.n	a2, a10
42006a04:	f01d      	retw.n
42006a06:	580000        	ssxp	f0, a0, a0
42006a09:	012d      	mov.n	a2, a1
42006a0b:	543c      	movi.n	a4, 53
42006a0d:	012d      	mov.n	a2, a1
42006a0f:	683c      	movi.n	a8, 54
42006a11:	012d      	mov.n	a2, a1
42006a13:	c93c      	movi.n	a9, 60
42006a15:	010a      	add.n	a0, a1, a0
42006a17:	443c      	movi.n	a4, 52
42006a19:	012d      	mov.n	a2, a1
42006a1b:	893c      	movi.n	a9, 56
42006a1d:	010a      	add.n	a0, a1, a0
42006a1f:	bd3c      	movi.n	a13, 59
42006a21:	010a      	add.n	a0, a1, a0
42006a23:	d03c      	movi.n	a0, 61
42006a25:	420056        	bnez	a0, 42006e49 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x121>

42006a28 <<&T as core::fmt::Debug>::fmt>:
42006a28:	00a136        	entry	a1, 80
42006a2b:	02f8      	l32i.n	a15, a2, 0
42006a2d:	8fcb      	addi.n	a8, a15, 12
42006a2f:	9189      	s32i.n	a8, a1, 36
42006a31:	fff581        	l32r	a8, 42006a08 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x134>
42006a34:	8189      	s32i.n	a8, a1, 32
42006a36:	24c182        	addi	a8, a1, 36
42006a39:	7189      	s32i.n	a8, a1, 28
42006a3b:	380c      	movi.n	a8, 3
42006a3d:	6189      	s32i.n	a8, a1, 24
42006a3f:	fff381        	l32r	a8, 42006a0c <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x138>
42006a42:	5189      	s32i.n	a8, a1, 20
42006a44:	fff381        	l32r	a8, 42006a10 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x13c>
42006a47:	4189      	s32i.n	a8, a1, 16
42006a49:	8f8b      	addi.n	a8, a15, 8
42006a4b:	3189      	s32i.n	a8, a1, 12
42006a4d:	4e0c      	movi.n	a14, 4
42006a4f:	21e9      	s32i.n	a14, a1, 8
42006a51:	fff081        	l32r	a8, 42006a14 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x140>
42006a54:	1189      	s32i.n	a8, a1, 4
42006a56:	fff081        	l32r	a8, 42006a18 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x144>
42006a59:	0189      	s32i.n	a8, a1, 0
42006a5b:	fff0b1        	l32r	a11, 42006a1c <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x148>
42006a5e:	8c0c      	movi.n	a12, 8
42006a60:	fff0d1        	l32r	a13, 42006a20 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x14c>
42006a63:	fff081        	l32r	a8, 42006a24 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x150>
42006a66:	03ad      	mov.n	a10, a3
42006a68:	0008e0        	callx8	a8
42006a6b:	0a2d      	mov.n	a2, a10
42006a6d:	f01d      	retw.n
42006a6f:	010100        	slli	a0, a1, 32
42006a72:	ff0101        	l32r	a0, 42006678 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x124>
42006a75:	00          	.byte 00
42006a76:	000100ff 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 0, q4, q0, q0, q1
42006a7a:	        	l32r	a0, 41fd427c <__user_exception+0x1c5b054>

42006a7c <core::str::count::do_count_chars>:
42006a7c:	008136        	entry	a1, 64
42006a7f:	028d      	mov.n	a8, a2
42006a81:	983b      	addi.n	a9, a8, 3
42006a83:	ce7c      	movi.n	a14, -4
42006a85:	1099e0        	and	a9, a9, a14
42006a88:	c0f980        	sub	a15, a9, a8
42006a8b:	0533f7        	bltu	a3, a15, 42006a94 <core::str::count::do_count_chars+0x18>
42006a8e:	c0b3f0        	sub	a11, a3, a15
42006a91:	2c4bf6        	bgeui	a11, 4, 42006ac1 <core::str::count::do_count_chars+0x45>
42006a94:	020c      	movi.n	a2, 0
42006a96:	17f316        	beqz	a3, 42006c19 <core::str::count::do_count_chars+0x19d>
42006a99:	090c      	movi.n	a9, 0
42006a9b:	1a0c      	movi.n	a10, 1
42006a9d:	bfafb2        	movi	a11, -65
42006aa0:	02cd      	mov.n	a12, a2
42006aa2:	000246        	j	42006aaf <core::str::count::do_count_chars+0x33>
42006aa5:	22da      	add.n	a2, a2, a13
42006aa7:	cc1b      	addi.n	a12, a12, 1
42006aa9:	029c37        	bne	a12, a3, 42006aaf <core::str::count::do_count_chars+0x33>
42006aac:	005a46        	j	42006c19 <core::str::count::do_count_chars+0x19d>
42006aaf:	d8ca      	add.n	a13, a8, a12
42006ab1:	000dd2        	l8ui	a13, a13, 0
42006ab4:	23ed00        	sext	a14, a13, 7
42006ab7:	0add      	mov.n	a13, a10
42006ab9:	e82be7        	blt	a11, a14, 42006aa5 <core::str::count::do_count_chars+0x29>
42006abc:	09dd      	mov.n	a13, a9
42006abe:	fff8c6        	j	42006aa5 <core::str::count::do_count_chars+0x29>
42006ac1:	3a0c      	movi.n	a10, 3
42006ac3:	11a9      	s32i.n	a10, a1, 4
42006ac5:	10cba0        	and	a12, a11, a10
42006ac8:	0d0c      	movi.n	a13, 0
42006aca:	41d9      	s32i.n	a13, a1, 16
42006acc:	021987        	beq	a9, a8, 42006ad2 <core::str::count::do_count_chars+0x56>
42006acf:	003946        	j	42006bb8 <core::str::count::do_count_chars+0x13c>
42006ad2:	98fa      	add.n	a9, a8, a15
42006ad4:	4188      	l32i.n	a8, a1, 16
42006ad6:	02bc16        	beqz	a12, 42006b05 <core::str::count::do_count_chars+0x89>
42006ad9:	108be0        	and	a8, a11, a14
42006adc:	a98a      	add.n	a10, a9, a8
42006ade:	0e0c      	movi.n	a14, 0
42006ae0:	1f0c      	movi.n	a15, 1
42006ae2:	bfaf72        	movi	a7, -65
42006ae5:	4168      	l32i.n	a6, a1, 16
42006ae7:	068d      	mov.n	a8, a6
42006ae9:	000186        	j	42006af3 <core::str::count::do_count_chars+0x77>
42006aec:	885a      	add.n	a8, a8, a5
42006aee:	661b      	addi.n	a6, a6, 1
42006af0:	1116c7        	beq	a6, a12, 42006b05 <core::str::count::do_count_chars+0x89>
42006af3:	5a6a      	add.n	a5, a10, a6
42006af5:	000552        	l8ui	a5, a5, 0
42006af8:	234500        	sext	a4, a5, 7
42006afb:	0f5d      	mov.n	a5, a15
42006afd:	eb2747        	blt	a7, a4, 42006aec <core::str::count::do_count_chars+0x70>
42006b00:	0e5d      	mov.n	a5, a14
42006b02:	fff986        	j	42006aec <core::str::count::do_count_chars+0x70>
42006b05:	4172b0        	srli	a7, a11, 2
42006b08:	28da      	add.n	a2, a8, a13
42006b0a:	c0a082        	movi	a8, 192
42006b0d:	0189      	s32i.n	a8, a1, 0
42006b0f:	fca042        	movi	a4, 252
42006b12:	ffd8d1        	l32r	a13, 42006a74 <<&T as core::fmt::Debug>::fmt+0x4c>
42006b15:	ffd881        	l32r	a8, 42006a78 <<&T as core::fmt::Debug>::fmt+0x50>
42006b18:	3189      	s32i.n	a8, a1, 12
42006b1a:	081c      	movi.n	a8, 16
42006b1c:	2189      	s32i.n	a8, a1, 8
42006b1e:	fe7c      	movi.n	a14, -1
42006b20:	ffd4f1        	l32r	a15, 42006a70 <<&T as core::fmt::Debug>::fmt+0x48>
42006b23:	0009c6        	j	42006b4e <core::str::count::do_count_chars+0xd2>
42006b26:	1188      	l32i.n	a8, a1, 4
42006b28:	108380        	and	a8, a3, a8
42006b2b:	c07730        	sub	a7, a7, a3
42006b2e:	a09390        	addx4	a9, a3, a9
42006b31:	10bad0        	and	a11, a10, a13
42006b34:	41a8a0        	srli	a10, a10, 8
42006b37:	10aad0        	and	a10, a10, a13
42006b3a:	aaba      	add.n	a10, a10, a11
42006b3c:	31b8      	l32i.n	a11, a1, 12
42006b3e:	82aab0        	mull	a10, a10, a11
42006b41:	21b8      	l32i.n	a11, a1, 8
42006b43:	400b00        	ssr	a11
42006b46:	91a0a0        	srl	a10, a10
42006b49:	2a2a      	add.n	a2, a10, a2
42006b4b:	093856        	bnez	a8, 42006be2 <core::str::count::do_count_chars+0x166>
42006b4e:	0c7716        	beqz	a7, 42006c19 <core::str::count::do_count_chars+0x19d>
42006b51:	0188      	l32i.n	a8, a1, 0
42006b53:	633780        	minu	a3, a7, a8
42006b56:	10b340        	and	a11, a3, a4
42006b59:	a06b90        	addx4	a6, a11, a9
42006b5c:	41a8      	l32i.n	a10, a1, 16
42006b5e:	098d      	mov.n	a8, a9
42006b60:	fc2b16        	beqz	a11, 42006b26 <core::str::count::do_count_chars+0xaa>
42006b63:	18b8      	l32i.n	a11, a8, 4
42006b65:	30cbe0        	xor	a12, a11, a14
42006b68:	41c7c0        	srli	a12, a12, 7
42006b6b:	41b6b0        	srli	a11, a11, 6
42006b6e:	20bcb0        	or	a11, a12, a11
42006b71:	10bbf0        	and	a11, a11, a15
42006b74:	08c8      	l32i.n	a12, a8, 0
42006b76:	305ce0        	xor	a5, a12, a14
42006b79:	415750        	srli	a5, a5, 7
42006b7c:	41c6c0        	srli	a12, a12, 6
42006b7f:	20c5c0        	or	a12, a5, a12
42006b82:	10ccf0        	and	a12, a12, a15
42006b85:	acaa      	add.n	a10, a12, a10
42006b87:	abaa      	add.n	a10, a11, a10
42006b89:	28b8      	l32i.n	a11, a8, 8
42006b8b:	30cbe0        	xor	a12, a11, a14
42006b8e:	41c7c0        	srli	a12, a12, 7
42006b91:	41b6b0        	srli	a11, a11, 6
42006b94:	20bcb0        	or	a11, a12, a11
42006b97:	10bbf0        	and	a11, a11, a15
42006b9a:	abaa      	add.n	a10, a11, a10
42006b9c:	38b8      	l32i.n	a11, a8, 12
42006b9e:	30cbe0        	xor	a12, a11, a14
42006ba1:	41c7c0        	srli	a12, a12, 7
42006ba4:	41b6b0        	srli	a11, a11, 6
42006ba7:	20bcb0        	or	a11, a12, a11
42006baa:	10bbf0        	and	a11, a11, a15
42006bad:	abaa      	add.n	a10, a11, a10
42006baf:	10c882        	addi	a8, a8, 16
42006bb2:	ad9867        	bne	a8, a6, 42006b63 <core::str::count::do_count_chars+0xe7>
42006bb5:	ffdb46        	j	42006b26 <core::str::count::do_count_chars+0xaa>
42006bb8:	090c      	movi.n	a9, 0
42006bba:	1a0c      	movi.n	a10, 1
42006bbc:	bfaf72        	movi	a7, -65
42006bbf:	4168      	l32i.n	a6, a1, 16
42006bc1:	06dd      	mov.n	a13, a6
42006bc3:	000246        	j	42006bd0 <core::str::count::do_count_chars+0x154>
42006bc6:	dd5a      	add.n	a13, a13, a5
42006bc8:	661b      	addi.n	a6, a6, 1
42006bca:	0296f7        	bne	a6, a15, 42006bd0 <core::str::count::do_count_chars+0x154>
42006bcd:	ffc046        	j	42006ad2 <core::str::count::do_count_chars+0x56>
42006bd0:	586a      	add.n	a5, a8, a6
42006bd2:	000552        	l8ui	a5, a5, 0
42006bd5:	234500        	sext	a4, a5, 7
42006bd8:	0a5d      	mov.n	a5, a10
42006bda:	e82747        	blt	a7, a4, 42006bc6 <core::str::count::do_count_chars+0x14a>
42006bdd:	095d      	mov.n	a5, a9
42006bdf:	fff8c6        	j	42006bc6 <core::str::count::do_count_chars+0x14a>
42006be2:	a09860        	addx4	a9, a8, a6
42006be5:	080c      	movi.n	a8, 0
42006be7:	06a8      	l32i.n	a10, a6, 0
42006be9:	30bae0        	xor	a11, a10, a14
42006bec:	41b7b0        	srli	a11, a11, 7
42006bef:	41a6a0        	srli	a10, a10, 6
42006bf2:	20aba0        	or	a10, a11, a10
42006bf5:	10aaf0        	and	a10, a10, a15
42006bf8:	8a8a      	add.n	a8, a10, a8
42006bfa:	664b      	addi.n	a6, a6, 4
42006bfc:	e79697        	bne	a6, a9, 42006be7 <core::str::count::do_count_chars+0x16b>
42006bff:	1098d0        	and	a9, a8, a13
42006c02:	418880        	srli	a8, a8, 8
42006c05:	1088d0        	and	a8, a8, a13
42006c08:	889a      	add.n	a8, a8, a9
42006c0a:	3198      	l32i.n	a9, a1, 12
42006c0c:	828890        	mull	a8, a8, a9
42006c0f:	2198      	l32i.n	a9, a1, 8
42006c11:	400900        	ssr	a9
42006c14:	918080        	srl	a8, a8
42006c17:	282a      	add.n	a2, a8, a2
42006c19:	f01d      	retw.n
	...

42006c1c <compiler_builtins::mem::memcpy>:
42006c1c:	004136        	entry	a1, 32
42006c1f:	f80c      	movi.n	a8, 15
42006c21:	62b847        	bgeu	a8, a4, 42006c87 <compiler_builtins::mem::memcpy+0x6b>
42006c24:	608020        	neg	a8, a2
42006c27:	390c      	movi.n	a9, 3
42006c29:	10d890        	and	a13, a8, a9
42006c2c:	a2da      	add.n	a10, a2, a13
42006c2e:	010d16        	beqz	a13, 42006c42 <compiler_builtins::mem::memcpy+0x26>
42006c31:	028d      	mov.n	a8, a2
42006c33:	03bd      	mov.n	a11, a3
42006c35:	000bc2        	l8ui	a12, a11, 0
42006c38:	0048c2        	s8i	a12, a8, 0
42006c3b:	bb1b      	addi.n	a11, a11, 1
42006c3d:	881b      	addi.n	a8, a8, 1
42006c3f:	f238a7        	bltu	a8, a10, 42006c35 <compiler_builtins::mem::memcpy+0x19>
42006c42:	c0b4d0        	sub	a11, a4, a13
42006c45:	c77c      	movi.n	a7, -4
42006c47:	10cb70        	and	a12, a11, a7
42006c4a:	8aca      	add.n	a8, a10, a12
42006c4c:	d3da      	add.n	a13, a3, a13
42006c4e:	10ed90        	and	a14, a13, a9
42006c51:	03ae16        	beqz	a14, 42006c8f <compiler_builtins::mem::memcpy+0x73>
42006c54:	491ca6        	blti	a12, 1, 42006ca1 <compiler_builtins::mem::memcpy+0x85>
42006c57:	11fdd0        	slli	a15, a13, 3
42006c5a:	861c      	movi.n	a6, 24
42006c5c:	10ef60        	and	a14, a15, a6
42006c5f:	60f0f0        	neg	a15, a15
42006c62:	10ff60        	and	a15, a15, a6
42006c65:	107d70        	and	a7, a13, a7
42006c68:	0768      	l32i.n	a6, a7, 0
42006c6a:	400e00        	ssr	a14
42006c6d:	915060        	srl	a5, a6
42006c70:	1768      	l32i.n	a6, a7, 4
42006c72:	401f00        	ssl	a15
42006c75:	a14600        	sll	a4, a6
42006c78:	205450        	or	a5, a4, a5
42006c7b:	0a59      	s32i.n	a5, a10, 0
42006c7d:	aa4b      	addi.n	a10, a10, 4
42006c7f:	774b      	addi.n	a7, a7, 4
42006c81:	e53a87        	bltu	a10, a8, 42006c6a <compiler_builtins::mem::memcpy+0x4e>
42006c84:	000646        	j	42006ca1 <compiler_builtins::mem::memcpy+0x85>
42006c87:	028d      	mov.n	a8, a2
42006c89:	01c456        	bnez	a4, 42006ca9 <compiler_builtins::mem::memcpy+0x8d>
42006c8c:	000a06        	j	42006cb8 <compiler_builtins::mem::memcpy+0x9c>
42006c8f:	0e0c      	movi.n	a14, 0
42006c91:	0caec7        	bge	a14, a12, 42006ca1 <compiler_builtins::mem::memcpy+0x85>
42006c94:	0ded      	mov.n	a14, a13
42006c96:	0ef8      	l32i.n	a15, a14, 0
42006c98:	0af9      	s32i.n	a15, a10, 0
42006c9a:	ee4b      	addi.n	a14, a14, 4
42006c9c:	aa4b      	addi.n	a10, a10, 4
42006c9e:	f43a87        	bltu	a10, a8, 42006c96 <compiler_builtins::mem::memcpy+0x7a>
42006ca1:	104b90        	and	a4, a11, a9
42006ca4:	3dca      	add.n	a3, a13, a12
42006ca6:	00e416        	beqz	a4, 42006cb8 <compiler_builtins::mem::memcpy+0x9c>
42006ca9:	984a      	add.n	a9, a8, a4
42006cab:	0003a2        	l8ui	a10, a3, 0
42006cae:	0048a2        	s8i	a10, a8, 0
42006cb1:	331b      	addi.n	a3, a3, 1
42006cb3:	881b      	addi.n	a8, a8, 1
42006cb5:	f23897        	bltu	a8, a9, 42006cab <compiler_builtins::mem::memcpy+0x8f>
42006cb8:	f01d      	retw.n
42006cba:	010000        	slli	a0, a0, 32
42006cbd:	010101        	l32r	a0, 41fc70c4 <__user_exception+0x1c4de9c>

42006cc0 <compiler_builtins::mem::memset>:
42006cc0:	004136        	entry	a1, 32
42006cc3:	f80c      	movi.n	a8, 15
42006cc5:	3fb847        	bgeu	a8, a4, 42006d08 <compiler_builtins::mem::memset+0x48>
42006cc8:	608020        	neg	a8, a2
42006ccb:	390c      	movi.n	a9, 3
42006ccd:	108890        	and	a8, a8, a9
42006cd0:	a28a      	add.n	a10, a2, a8
42006cd2:	009816        	beqz	a8, 42006cdf <compiler_builtins::mem::memset+0x1f>
42006cd5:	02bd      	mov.n	a11, a2
42006cd7:	004b32        	s8i	a3, a11, 0
42006cda:	bb1b      	addi.n	a11, a11, 1
42006cdc:	f73ba7        	bltu	a11, a10, 42006cd7 <compiler_builtins::mem::memset+0x17>
42006cdf:	c0b480        	sub	a11, a4, a8
42006ce2:	c87c      	movi.n	a8, -4
42006ce4:	10cb80        	and	a12, a11, a8
42006ce7:	8aca      	add.n	a8, a10, a12
42006ce9:	121ca6        	blti	a12, 1, 42006cff <compiler_builtins::mem::memset+0x3f>
42006cec:	ffa0c2        	movi	a12, 255
42006cef:	10c3c0        	and	a12, a3, a12
42006cf2:	fff2d1        	l32r	a13, 42006cbc <compiler_builtins::mem::memcpy+0xa0>
42006cf5:	82ccd0        	mull	a12, a12, a13
42006cf8:	0ac9      	s32i.n	a12, a10, 0
42006cfa:	aa4b      	addi.n	a10, a10, 4
42006cfc:	f83a87        	bltu	a10, a8, 42006cf8 <compiler_builtins::mem::memset+0x38>
42006cff:	104b90        	and	a4, a11, a9
42006d02:	007456        	bnez	a4, 42006d0d <compiler_builtins::mem::memset+0x4d>
42006d05:	000386        	j	42006d17 <compiler_builtins::mem::memset+0x57>
42006d08:	028d      	mov.n	a8, a2
42006d0a:	009416        	beqz	a4, 42006d17 <compiler_builtins::mem::memset+0x57>
42006d0d:	984a      	add.n	a9, a8, a4
42006d0f:	004832        	s8i	a3, a8, 0
42006d12:	881b      	addi.n	a8, a8, 1
42006d14:	f73897        	bltu	a8, a9, 42006d0f <compiler_builtins::mem::memset+0x4f>
42006d17:	f01d      	retw.n
42006d19:	000000        	ill
42006d1c:	010000        	slli	a0, a0, 32
42006d1f:	000000        	ill
42006d22:	00          	.byte 00
42006d23:	80          	.byte 0x80
42006d24:	0000ffff 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q7, q6, q0, q0

42006d28 <compiler_builtins::int::specialized_div_rem::u64_div_rem>:
42006d28:	004136        	entry	a1, 32
42006d2b:	028d      	mov.n	a8, a2
42006d2d:	089416        	beqz	a4, 42006dba <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x92>
42006d30:	086556        	bnez	a5, 42006dba <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x92>
42006d33:	154316        	beqz	a3, 42006e8b <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x163>
42006d36:	023347        	bltu	a3, a4, 42006d3c <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x14>
42006d39:	0055c6        	j	42006e94 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x16c>
42006d3c:	40f3a0        	nsau	a10, a3
42006d3f:	40f4b0        	nsau	a11, a4
42006d42:	f91c      	movi.n	a9, 31
42006d44:	09dd      	mov.n	a13, a9
42006d46:	051ba7        	beq	a11, a10, 42006d4f <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x27>
42006d49:	c0aba0        	sub	a10, a11, a10
42006d4c:	20cad2        	addi	a13, a10, 32
42006d4f:	fa3c      	movi.n	a10, 63
42006d51:	10ada0        	and	a10, a13, a10
42006d54:	401a00        	ssl	a10
42006d57:	81c540        	src	a12, a5, a4
42006d5a:	0a2c      	movi.n	a10, 32
42006d5c:	10fda0        	and	a15, a13, a10
42006d5f:	a1e400        	sll	a14, a4
42006d62:	0a0c      	movi.n	a10, 0
42006d64:	0ebd      	mov.n	a11, a14
42006d66:	019fa7        	bne	a15, a10, 42006d6b <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x43>
42006d69:	0cbd      	mov.n	a11, a12
42006d6b:	0acd      	mov.n	a12, a10
42006d6d:	019fa7        	bne	a15, a10, 42006d72 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x4a>
42006d70:	0ecd      	mov.n	a12, a14
42006d72:	10ed90        	and	a14, a13, a9
42006d75:	1d0c      	movi.n	a13, 1
42006d77:	401e00        	ssl	a14
42006d7a:	a1ed00        	sll	a14, a13
42006d7d:	ff7c      	movi.n	a15, -1
42006d7f:	0a7d      	mov.n	a7, a10
42006d81:	0002c6        	j	42006d90 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x68>
42006d84:	401900        	ssl	a9
42006d87:	81cbc0        	src	a12, a11, a12
42006d8a:	41e1e0        	srli	a14, a14, 1
42006d8d:	41b1b0        	srli	a11, a11, 1
42006d90:	0d6d      	mov.n	a6, a13
42006d92:	0d38c7        	bltu	a8, a12, 42006da3 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x7b>
42006d95:	0a6d      	mov.n	a6, a10
42006d97:	c053b0        	sub	a5, a3, a11
42006d9a:	c06560        	sub	a6, a5, a6
42006d9d:	0b2f67        	blt	a15, a6, 42006dac <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x84>
42006da0:	fff806        	j	42006d84 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x5c>
42006da3:	c053b0        	sub	a5, a3, a11
42006da6:	c06560        	sub	a6, a5, a6
42006da9:	d7af67        	bge	a15, a6, 42006d84 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x5c>
42006dac:	c088c0        	sub	a8, a8, a12
42006daf:	207e70        	or	a7, a14, a7
42006db2:	0f6616        	beqz	a6, 42006eac <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x184>
42006db5:	063d      	mov.n	a3, a6
42006db7:	fff246        	j	42006d84 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x5c>
42006dba:	020c      	movi.n	a2, 0
42006dbc:	1a0c      	movi.n	a10, 1
42006dbe:	0a9d      	mov.n	a9, a10
42006dc0:	0f3847        	bltu	a8, a4, 42006dd3 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0xab>
42006dc3:	029d      	mov.n	a9, a2
42006dc5:	0db357        	bgeu	a3, a5, 42006dd6 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0xae>
42006dc8:	0f1357        	beq	a3, a5, 42006ddb <compiler_builtins::int::specialized_div_rem::u64_div_rem+0xb3>
42006dcb:	0a9d      	mov.n	a9, a10
42006dcd:	00d916        	beqz	a9, 42006dde <compiler_builtins::int::specialized_div_rem::u64_div_rem+0xb6>
42006dd0:	002846        	j	42006e75 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x14d>
42006dd3:	f13357        	bltu	a3, a5, 42006dc8 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0xa0>
42006dd6:	02ad      	mov.n	a10, a2
42006dd8:	ef9357        	bne	a3, a5, 42006dcb <compiler_builtins::int::specialized_div_rem::u64_div_rem+0xa3>
42006ddb:	096956        	bnez	a9, 42006e75 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x14d>
42006dde:	093316        	beqz	a3, 42006e75 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x14d>
42006de1:	40f390        	nsau	a9, a3
42006de4:	40f5a0        	nsau	a10, a5
42006de7:	c09a90        	sub	a9, a10, a9
42006dea:	fa3c      	movi.n	a10, 63
42006dec:	10a9a0        	and	a10, a9, a10
42006def:	401a00        	ssl	a10
42006df2:	81c540        	src	a12, a5, a4
42006df5:	0a2c      	movi.n	a10, 32
42006df7:	10e9a0        	and	a14, a9, a10
42006dfa:	a1d400        	sll	a13, a4
42006dfd:	0a0c      	movi.n	a10, 0
42006dff:	0dbd      	mov.n	a11, a13
42006e01:	019ea7        	bne	a14, a10, 42006e06 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0xde>
42006e04:	0cbd      	mov.n	a11, a12
42006e06:	0acd      	mov.n	a12, a10
42006e08:	019ea7        	bne	a14, a10, 42006e0d <compiler_builtins::int::specialized_div_rem::u64_div_rem+0xe5>
42006e0b:	0dcd      	mov.n	a12, a13
42006e0d:	fd1c      	movi.n	a13, 31
42006e0f:	1099d0        	and	a9, a9, a13
42006e12:	1e0c      	movi.n	a14, 1
42006e14:	401900        	ssl	a9
42006e17:	a1fe00        	sll	a15, a14
42006e1a:	f77c      	movi.n	a7, -1
42006e1c:	0a2d      	mov.n	a2, a10
42006e1e:	0004c6        	j	42006e35 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x10d>
42006e21:	2022f0        	or	a2, a2, a15
42006e24:	059616        	beqz	a6, 42006e81 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x159>
42006e27:	093d      	mov.n	a3, a9
42006e29:	401d00        	ssl	a13
42006e2c:	81cbc0        	src	a12, a11, a12
42006e2f:	41f1f0        	srli	a15, a15, 1
42006e32:	41b1b0        	srli	a11, a11, 1
42006e35:	0e9d      	mov.n	a9, a14
42006e37:	0d38c7        	bltu	a8, a12, 42006e48 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x120>
42006e3a:	0a9d      	mov.n	a9, a10
42006e3c:	c063b0        	sub	a6, a3, a11
42006e3f:	c09690        	sub	a9, a6, a9
42006e42:	0b2797        	blt	a7, a9, 42006e51 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x129>
42006e45:	fff806        	j	42006e29 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x101>
42006e48:	c063b0        	sub	a6, a3, a11
42006e4b:	c09690        	sub	a9, a6, a9
42006e4e:	d7a797        	bge	a7, a9, 42006e29 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x101>
42006e51:	c088c0        	sub	a8, a8, a12
42006e54:	0e6d      	mov.n	a6, a14
42006e56:	0cb847        	bgeu	a8, a4, 42006e66 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x13e>
42006e59:	0a6d      	mov.n	a6, a10
42006e5b:	0e3d      	mov.n	a3, a14
42006e5d:	0a3957        	bltu	a9, a5, 42006e6b <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x143>
42006e60:	bd1957        	beq	a9, a5, 42006e21 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0xf9>
42006e63:	000246        	j	42006e70 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x148>
42006e66:	0e3d      	mov.n	a3, a14
42006e68:	f4b957        	bgeu	a9, a5, 42006e60 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x138>
42006e6b:	0a3d      	mov.n	a3, a10
42006e6d:	b01957        	beq	a9, a5, 42006e21 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0xf9>
42006e70:	036d      	mov.n	a6, a3
42006e72:	ffeac6        	j	42006e21 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0xf9>
42006e75:	039d      	mov.n	a9, a3
42006e77:	02ad      	mov.n	a10, a2
42006e79:	0a3d      	mov.n	a3, a10
42006e7b:	084d      	mov.n	a4, a8
42006e7d:	095d      	mov.n	a5, a9
42006e7f:	f01d      	retw.n
42006e81:	0a0c      	movi.n	a10, 0
42006e83:	0a3d      	mov.n	a3, a10
42006e85:	084d      	mov.n	a4, a8
42006e87:	095d      	mov.n	a5, a9
42006e89:	f01d      	retw.n
42006e8b:	c22840        	quou	a2, a8, a4
42006e8e:	829240        	mull	a9, a2, a4
42006e91:	000806        	j	42006eb5 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x18d>
42006e94:	2c9347        	bne	a3, a4, 42006ec4 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x19c>
42006e97:	c22830        	quou	a2, a8, a3
42006e9a:	829230        	mull	a9, a2, a3
42006e9d:	c08890        	sub	a8, a8, a9
42006ea0:	090c      	movi.n	a9, 0
42006ea2:	1a0c      	movi.n	a10, 1
42006ea4:	0a3d      	mov.n	a3, a10
42006ea6:	084d      	mov.n	a4, a8
42006ea8:	095d      	mov.n	a5, a9
42006eaa:	f01d      	retw.n
42006eac:	c29840        	quou	a9, a8, a4
42006eaf:	202970        	or	a2, a9, a7
42006eb2:	829940        	mull	a9, a9, a4
42006eb5:	c08890        	sub	a8, a8, a9
42006eb8:	090c      	movi.n	a9, 0
42006eba:	09ad      	mov.n	a10, a9
42006ebc:	0a3d      	mov.n	a3, a10
42006ebe:	084d      	mov.n	a4, a8
42006ec0:	095d      	mov.n	a5, a9
42006ec2:	f01d      	retw.n
42006ec4:	c2a340        	quou	a10, a3, a4
42006ec7:	829a40        	mull	a9, a10, a4
42006eca:	c09390        	sub	a9, a3, a9
42006ecd:	ff93b1        	l32r	a11, 42006d1c <compiler_builtins::mem::memset+0x5c>
42006ed0:	37b4b7        	bgeu	a4, a11, 42006f0b <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x1e3>
42006ed3:	0b1c      	movi.n	a11, 16
42006ed5:	401b00        	ssl	a11
42006ed8:	819980        	src	a9, a9, a8
42006edb:	c2c940        	quou	a12, a9, a4
42006ede:	82dc40        	mull	a13, a12, a4
42006ee1:	c099d0        	sub	a9, a9, a13
42006ee4:	119900        	slli	a9, a9, 16
42006ee7:	ff8fd1        	l32r	a13, 42006d24 <compiler_builtins::mem::memset+0x64>
42006eea:	1088d0        	and	a8, a8, a13
42006eed:	208980        	or	a8, a9, a8
42006ef0:	c29840        	quou	a9, a8, a4
42006ef3:	82d940        	mull	a13, a9, a4
42006ef6:	c088d0        	sub	a8, a8, a13
42006ef9:	11dc00        	slli	a13, a12, 16
42006efc:	202d90        	or	a2, a13, a9
42006eff:	400b00        	ssr	a11
42006f02:	9190c0        	srl	a9, a12
42006f05:	20a9a0        	or	a10, a9, a10
42006f08:	0021c6        	j	42006f93 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x26b>
42006f0b:	0d0c      	movi.n	a13, 0
42006f0d:	1c0c      	movi.n	a12, 1
42006f0f:	0cbd      	mov.n	a11, a12
42006f11:	5d3847        	bltu	a8, a4, 42006f72 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x24a>
42006f14:	0dbd      	mov.n	a11, a13
42006f16:	5bb957        	bgeu	a9, a5, 42006f75 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x24d>
42006f19:	5d1957        	beq	a9, a5, 42006f7a <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x252>
42006f1c:	0cbd      	mov.n	a11, a12
42006f1e:	05bb56        	bnez	a11, 42006f7d <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x255>
42006f21:	fb1c      	movi.n	a11, 31
42006f23:	401b00        	ssl	a11
42006f26:	81c540        	src	a12, a5, a4
42006f29:	01d410        	slli	a13, a4, 31
42006f2c:	ff7de1        	l32r	a14, 42006d20 <compiler_builtins::mem::memset+0x60>
42006f2f:	070c      	movi.n	a7, 0
42006f31:	160c      	movi.n	a6, 1
42006f33:	07fd      	mov.n	a15, a7
42006f35:	0002c6        	j	42006f44 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x21c>
42006f38:	401b00        	ssl	a11
42006f3b:	81dcd0        	src	a13, a12, a13
42006f3e:	41e1e0        	srli	a14, a14, 1
42006f41:	41c1c0        	srli	a12, a12, 1
42006f44:	065d      	mov.n	a5, a6
42006f46:	0f38d7        	bltu	a8, a13, 42006f59 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x231>
42006f49:	075d      	mov.n	a5, a7
42006f4b:	c039c0        	sub	a3, a9, a12
42006f4e:	c05350        	sub	a5, a3, a5
42006f51:	f37c      	movi.n	a3, -1
42006f53:	0d2357        	blt	a3, a5, 42006f64 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x23c>
42006f56:	fff786        	j	42006f38 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x210>
42006f59:	c039c0        	sub	a3, a9, a12
42006f5c:	c05350        	sub	a5, a3, a5
42006f5f:	f37c      	movi.n	a3, -1
42006f61:	d3a357        	bge	a3, a5, 42006f38 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x210>
42006f64:	c088d0        	sub	a8, a8, a13
42006f67:	20fef0        	or	a15, a14, a15
42006f6a:	019516        	beqz	a5, 42006f87 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x25f>
42006f6d:	059d      	mov.n	a9, a5
42006f6f:	fff146        	j	42006f38 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x210>
42006f72:	a33957        	bltu	a9, a5, 42006f19 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x1f1>
42006f75:	0dcd      	mov.n	a12, a13
42006f77:	a19957        	bne	a9, a5, 42006f1c <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x1f4>
42006f7a:	fa3b16        	beqz	a11, 42006f21 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x1f9>
42006f7d:	020c      	movi.n	a2, 0
42006f7f:	0a3d      	mov.n	a3, a10
42006f81:	084d      	mov.n	a4, a8
42006f83:	095d      	mov.n	a5, a9
42006f85:	f01d      	retw.n
42006f87:	c29840        	quou	a9, a8, a4
42006f8a:	2029f0        	or	a2, a9, a15
42006f8d:	829940        	mull	a9, a9, a4
42006f90:	c08890        	sub	a8, a8, a9
42006f93:	090c      	movi.n	a9, 0
42006f95:	0a3d      	mov.n	a3, a10
42006f97:	084d      	mov.n	a4, a8
42006f99:	095d      	mov.n	a5, a9
42006f9b:	f01d      	retw.n
42006f9d:	000000        	ill
42006fa0:	6d28      	l32i.n	a2, a13, 24
42006fa2:	        	ee.ldf.64.xp	f4, f3, a0, a2

42006fa4 <__udivdi3>:
42006fa4:	004136        	entry	a1, 32
42006fa7:	fffe81        	l32r	a8, 42006fa0 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x278>
42006faa:	02ad      	mov.n	a10, a2
42006fac:	03bd      	mov.n	a11, a3
42006fae:	04cd      	mov.n	a12, a4
42006fb0:	05dd      	mov.n	a13, a5
42006fb2:	0008e0        	callx8	a8
42006fb5:	0a2d      	mov.n	a2, a10
42006fb7:	0b3d      	mov.n	a3, a11
42006fb9:	f01d      	retw.n
42006fbb:	00          	.byte 00
42006fbc:	6c1c      	movi.n	a12, 22
42006fbe:	        	ee.ldf.64.xp	f4, f3, a0, a2

42006fc0 <memcpy>:
42006fc0:	004136        	entry	a1, 32
42006fc3:	fffe81        	l32r	a8, 42006fbc <__udivdi3+0x18>
42006fc6:	02ad      	mov.n	a10, a2
42006fc8:	03bd      	mov.n	a11, a3
42006fca:	04cd      	mov.n	a12, a4
42006fcc:	0008e0        	callx8	a8
42006fcf:	0a2d      	mov.n	a2, a10
42006fd1:	f01d      	retw.n
42006fd3:	00          	.byte 00
42006fd4:	006cc0        	rsil	a12, 12
42006fd7:	42          	.byte 0x42

42006fd8 <memset>:
42006fd8:	004136        	entry	a1, 32
42006fdb:	fffe81        	l32r	a8, 42006fd4 <memcpy+0x14>
42006fde:	02ad      	mov.n	a10, a2
42006fe0:	03bd      	mov.n	a11, a3
42006fe2:	04cd      	mov.n	a12, a4
42006fe4:	0008e0        	callx8	a8
42006fe7:	0a2d      	mov.n	a2, a10
42006fe9:	f01d      	retw.n

Disassembly of section .rodata_dummy:

3c000020 <_rodata_reserved_start-0x10000>:
	...

Disassembly of section .rodata:

3c010020 <anon.8a84a47ca5c5b935e2c2118fc1422494.31.llvm.14364309025287346892-0xa4>:
3c010020:	6e69      	s32i.n	a6, a14, 24
3c010022:	7469      	s32i.n	a6, a4, 28
3c010024:	616320        	xsr.atomctl	a2
3c010027:	6c6c      	movi.n	a12, -26
3c010029:	206465        	call8	3c030670 <_rodata_end+0x1d848>
3c01002c:	6d          	.byte 0x6d
3c01002d:	2065726f 	ee.vmulas.s8.accx.ld.ip.qup	q0, a6, 32, q5, q6, q6, q5
3c010031:	74          	.byte 0x74
3c010032:	6168      	l32i.n	a6, a1, 24
3c010034:	6e6f206e 	ee.vmulas.u8.accx.ld.ip.qup	q5, a6, 0xffffff00, q0, q4, q6, q7
3c010038:	63          	.byte 0x63
3c010039:	002165        	call8	3c010250 <anon.45b1b42304d490f0b1f1ca948409a2a5.0.llvm.4339270341237252025+0x4>
3c01003c:	010020        	slli	a0, a0, 30
3c01003f:	1b3c      	movi.n	a11, 49
3c010041:	000000        	ill
3c010044:	6d6f682f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, -128, q5, q4, q6, q7
3c010048:	6d2f65        	call8	3c07d340 <_rodata_end+0x6a518>
3c01004b:	656261        	l32r	a6, 3bfe95d4 <PS_WOE+0x3bfa95d4>
3c01004e:	2f7a      	add.n	a2, a15, a7
3c010050:	7261632e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a2, 48, q1, q4, q6, q1
3c010054:	2f6f67        	bbci	a15, 6, 3c010087 <_rodata_reserved_start+0x67>
3c010057:	746967        	bbci	a9, 6, 3c0100cf <anon.8a84a47ca5c5b935e2c2118fc1422494.31.llvm.14364309025287346892+0xb>
3c01005a:	6568632f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, 0x130, q5, q4, q6, q0
3c01005e:	63          	.byte 0x63
3c01005f:	6f6b      	addi.n	a6, a15, 6
3c010061:	737475        	call12	3c0837a8 <_rodata_end+0x70980>
3c010064:	7073652f 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a2, 80, q5, q4, q7, q3
3c010068:	2d          	.byte 0x2d
3c010069:	6168      	l32i.n	a6, a1, 24
3c01006b:	2d6c      	movi.n	a13, -30
3c01006d:	63          	.byte 0x63
3c01006e:	326630        	orbc	b6, b6, b3
3c010071:	323066        	bnei	a0, 3, 3c0100a7 <_rodata_reserved_start+0x87>
3c010074:	33          	.byte 0x33
3c010075:	653165        	call8	3c07538c <_rodata_end+0x62564>
3c010078:	623035        	call12	3c07237c <_rodata_end+0x5f554>
3c01007b:	2f6532        	s32i	a3, a5, 188
3c01007e:	33          	.byte 0x33
3c01007f:	64          	.byte 0x64
3c010080:	64          	.byte 0x64
3c010081:	653161        	l32r	a6, 3bfe9548 <PS_WOE+0x3bfa9548>
3c010084:	652f32        	l32i	a3, a15, 0x194
3c010087:	73          	.byte 0x73
3c010088:	70          	.byte 0x70
3c010089:	2d          	.byte 0x2d
3c01008a:	6168      	l32i.n	a6, a1, 24
3c01008c:	2d6c      	movi.n	a13, -30
3c01008e:	63          	.byte 0x63
3c01008f:	6f6d6d6f 	ee.vmulas.u8.accx.ld.ip.qup	q7, a6, -48, q5, q4, q6, q5
3c010093:	72732f6e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a6, 240, q0, q4, q7, q3
3c010097:	63          	.byte 0x63
3c010098:	636f732f 	ee.vmulas.u8.accx.ld.ip.qup	q7, a2, 48, q5, q6, q6, q7
3c01009c:	7073652f 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a2, 80, q5, q4, q7, q3
3c0100a0:	33          	.byte 0x33
3c0100a1:	32          	.byte 0x32
3c0100a2:	73          	.byte 0x73
3c0100a3:	33          	.byte 0x33
3c0100a4:	7265702f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a2, 0, q5, q6, q6, q5
3c0100a8:	7069      	s32i.n	a6, a0, 28
3c0100aa:	6568      	l32i.n	a6, a5, 24
3c0100ac:	6c6172        	s32i	a7, a1, 0x1b0
3c0100af:	73          	.byte 0x73
3c0100b0:	0073722e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a2, 32, q1, q6, q7, q3
3c0100b4:	010044        	ee.ldqa.s16.128.ip	a4, 0
3c0100b7:	6f3c      	movi.n	a15, 54
3c0100b9:	000000        	ill
3c0100bc:	0000001f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a1, 0, q4, q0, q0, q0
3c0100c0:	000001        	l32r	a0, 3bfd00c0 <PS_WOE+0x3bf900c0>
	...

3c0100c4 <anon.8a84a47ca5c5b935e2c2118fc1422494.31.llvm.14364309025287346892>:
3c0100c4:	323130        	orbc	b3, b1, b3
3c0100c7:	33          	.byte 0x33
3c0100c8:	34          	.byte 0x34
3c0100c9:	373635        	call12	3c04742c <_rodata_end+0x34604>
3c0100cc:	3938      	l32i.n	a3, a9, 12
3c0100ce:	636261        	l32r	a6, 3bfe8e58 <PS_WOE+0x3bfa8e58>
3c0100d1:	64          	.byte 0x64
3c0100d2:	456665        	call8	3c055738 <_rodata_end+0x42910>
3c0100d5:	6c62616e 	ee.vmulas.u8.accx.ld.ip.qup	q0, a6, -240, q1, q4, q6, q2
3c0100d9:	6e69      	s32i.n	a6, a14, 24
3c0100db:	412067        	blt	a0, a6, 3c010120 <anon.8a84a47ca5c5b935e2c2118fc1422494.31.llvm.14364309025287346892+0x5c>
3c0100de:	414c      	movi.n	a1, 68
3c0100e0:	204d52        	s8i	a5, a13, 32
3c0100e3:	202930        	or	a2, a9, a3
3c0100e6:	656877        	bbci	a8, 7, 3c01014f <anon.8a84a47ca5c5b935e2c2118fc1422494.31.llvm.14364309025287346892+0x8b>
3c0100e9:	6c73206e 	ee.vmulas.u8.accx.ld.ip.qup	q0, a6, 0xffffff00, q0, q4, q7, q3
3c0100ed:	6369      	s32i.n	a6, a3, 24
3c0100ef:	6e69      	s32i.n	a6, a14, 24
3c0100f1:	602067        	blt	a0, a6, 3c010155 <anon.8a84a47ca5c5b935e2c2118fc1422494.31.llvm.14364309025287346892+0x91>
3c0100f4:	6e49      	s32i.n	a4, a14, 24
3c0100f6:	76          	.byte 0x76
3c0100f7:	696c61        	l32r	a6, 3bfea6a8 <PS_WOE+0x3bfaa6a8>
3c0100fa:	64          	.byte 0x64
3c0100fb:	6e49      	s32i.n	a4, a14, 24
3c0100fd:	74          	.byte 0x74
3c0100fe:	727265        	call8	3c082824 <_rodata_end+0x6f9fc>
3c010101:	747075        	call12	3c084808 <_rodata_end+0x719e0>
3c010104:	726c61        	l32r	a6, 3bfecab4 <PS_WOE+0x3bfacab4>
3c010107:	646165        	call8	3c07471c <_rodata_end+0x618f4>
3c01010a:	2079      	s32i.n	a7, a0, 8
3c01010c:	726f62        	s32i	a6, a15, 0x1c8
3c01010f:	776f72        	s32i	a7, a15, 0x1dc
3c010112:	726465        	call8	3c082758 <_rodata_end+0x6f930>
3c010115:	676e61        	l32r	a6, 3bfe9ed0 <PS_WOE+0x3bfa9ed0>
3c010118:	652065        	call8	3c075320 <_rodata_end+0x624f8>
3c01011b:	6920646e 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 0xfffffe40, q1, q4, q2, q0
3c01011f:	7865646e 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a6, 0xfffffe40, q1, q4, q6, q5
3c010123:	002020        	esync
3c010126:	004200        	break	2, 0
3c010129:	000000        	ill
3c01012c:	000001        	l32r	a0, 3bfd012c <PS_WOE+0x3bf9012c>
3c01012f:	00          	.byte 00
3c010130:	60          	.byte 0x60
3c010131:	003d      	mov.n	a3, a0
3c010133:	654842        	s8i	a4, a8, 101
3c010136:	6c6c      	movi.n	a12, -26
3c010138:	6f77206f 	ee.vmulas.u8.accx.ld.ip.qup	q6, a6, 0xffffff00, q4, q4, q7, q7
3c01013c:	646c72        	s32i	a7, a12, 0x190
3c01013f:	002021        	l32r	a2, 3bfd01c0 <PS_WOE+0x3bf901c0>
3c010142:	340000        	extui	a0, a0, 0, 4
3c010145:	3c0101        	l32r	a0, 3bfdf14c <PS_WOE+0x3bf9f14c>
3c010148:	000d      	mov.n	a0, a0
3c01014a:	620000        	saltu	a0, a0, a0
3c01014d:	6b6f72        	s32i	a7, a15, 0x1ac
3c010150:	736e65        	call8	3c083838 <_rodata_end+0x70a10>
3c010153:	2f6372        	s32i	a7, a3, 188
3c010156:	6e6962        	s32i	a6, a9, 0x1b8
3c010159:	6f72622f 	ee.vmulas.u8.accx.ld.ip.qup	q6, a2, -224, q5, q4, q7, q2
3c01015d:	656b      	addi.n	a6, a5, 6
3c01015f:	73722e6e 	ee.vmulas.u8.qacc.ld.ip.qup	q6, a6, 224, q0, q4, q7, q2
3c010163:	014c00        	slli	a4, a12, 32
3c010166:	063c01        	l32r	a0, 3bfd1a58 <PS_WOE+0x3bf91a58>
3c010169:	000000        	ill
3c01016c:	014c      	movi.n	a1, 64
3c01016e:	063c01        	l32r	a0, 3bfd1a60 <PS_WOE+0x3bf91a60>
3c010171:	000000        	ill
3c010174:	010152        	l8ui	a5, a1, 1
3c010177:	113c      	movi.n	a1, 49
3c010179:	000000        	ill
3c01017c:	0100d4        	ee.ldqa.s16.128.ip	a13, 0
3c01017f:	103c      	movi.n	a0, 49
3c010181:	000000        	ill
3c010184:	63          	.byte 0x63
3c010185:	6c6c61        	l32r	a6, 3bfeb338 <PS_WOE+0x3bfab338>
3c010188:	206465        	call8	3c0307d0 <_rodata_end+0x1d9a8>
3c01018b:	655260        	extui	a5, a6, 18, 7
3c01018e:	73          	.byte 0x73
3c01018f:	746c75        	call12	3c084854 <_rodata_end+0x71a2c>
3c010192:	3a3a      	add.n	a3, a10, a3
3c010194:	776e75        	call12	3c08787c <_rodata_end+0x74a54>
3c010197:	706172        	s32i	a7, a1, 0x1c0
3c01019a:	2928      	l32i.n	a2, a9, 8
3c01019c:	60          	.byte 0x60
3c01019d:	20          	.byte 0x20
3c01019e:	61206e6f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 224, q5, q4, q2, q0
3c0101a2:	4560206e 	ee.vmulas.u16.accx.ld.ip.qup	q2, a6, 0x100, q0, q4, q6, q0
3c0101a6:	72          	.byte 0x72
3c0101a7:	206072        	s32i	a7, a0, 128
3c0101aa:	76          	.byte 0x76
3c0101ab:	756c61        	l32r	a6, 3bfed75c <PS_WOE+0x3bfad75c>
3c0101ae:	200065        	call8	3c0301b4 <_rodata_end+0x1d38c>
3c0101b1:	420000        	xorb	b0, b0, b0
3c0101b4:	000000        	ill
3c0101b7:	00          	.byte 00
3c0101b8:	000001        	l32r	a0, 3bfd01b8 <PS_WOE+0x3bf901b8>
3c0101bb:	00          	.byte 00
3c0101bc:	0bf8      	l32i.n	a15, a11, 0
3c0101be:	00          	.byte 00
3c0101bf:	015242        	s16i	a4, a2, 2
3c0101c2:	113c01        	l32r	a0, 3bfd46b4 <PS_WOE+0x3bf946b4>
3c0101c5:	000000        	ill
3c0101c8:	0000002f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a2, 0, q4, q0, q0, q0
3c0101cc:	0000000e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q0, q0, q0, q0
3c0101d0:	010152        	l8ui	a5, a1, 1
3c0101d3:	113c      	movi.n	a1, 49
3c0101d5:	000000        	ill
3c0101d8:	000022        	l8ui	a2, a0, 0
3c0101db:	001000        	movsp	a0, a0
3c0101de:	490000        	s32e	a0, a0, -64
3c0101e1:	7265746e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a6, 64, q1, q6, q6, q5
3c0101e5:	72          	.byte 0x72
3c0101e6:	747075        	call12	3c0848ec <_rodata_end+0x71ac4>
3c0101e9:	766c20        	ee.ldf.64.xp	f6, f7, a2, a12
3c0101ec:	316c      	movi.n	a1, -29
3c0101ee:	20          	.byte 0x20
3c0101ef:	6128      	l32i.n	a2, a1, 24
3c0101f1:	616c      	movi.n	a1, -26
3c0101f3:	306d72        	s32i	a7, a13, 192
3c0101f6:	0029      	s32i.n	a2, a0, 0
3c0101f8:	0101e0        	slli	a0, a1, 18
3c0101fb:	173c      	movi.n	a7, 49
3c0101fd:	000000        	ill
3c010200:	010152        	l8ui	a5, a1, 1
3c010203:	113c      	movi.n	a1, 49
3c010205:	000000        	ill
3c010208:	003a      	add.n	a0, a0, a3
3c01020a:	00          	.byte 00
3c01020b:	00          	.byte 00
3c01020c:	0000000e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q0, q0, q0, q0
3c010210:	63          	.byte 0x63
3c010211:	6c6c61        	l32r	a6, 3bfeb3c4 <PS_WOE+0x3bfab3c4>
3c010214:	206465        	call8	3c03085c <_rodata_end+0x1da34>
3c010217:	60          	.byte 0x60
3c010218:	6974704f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a4, 0xfffffe00, q5, q6, q7, q4
3c01021c:	3a3a6e6f 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a6, 0xfffffee0, q5, q4, q3, q2
3c010220:	776e75        	call12	3c087908 <_rodata_end+0x74ae0>
3c010223:	706172        	s32i	a7, a1, 0x1c0
3c010226:	2928      	l32i.n	a2, a9, 8
3c010228:	60          	.byte 0x60
3c010229:	20          	.byte 0x20
3c01022a:	61206e6f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 224, q5, q4, q2, q0
3c01022e:	20          	.byte 0x20
3c01022f:	60          	.byte 0x60
3c010230:	656e6f4e 	ee.vmulas.u8.accx.ld.ip.qup	q3, a4, 0x1f0, q1, q4, q6, q6
3c010234:	762060        	ee.ldf.64.xp	f2, f7, a6, a0
3c010237:	756c61        	l32r	a6, 3bfed7e8 <PS_WOE+0x3bfad7e8>
3c01023a:	520065        	call8	3c062240 <_rodata_end+0x4f418>
3c01023d:	3c0101        	l32r	a0, 3bfdf244 <PS_WOE+0x3bf9f244>
3c010240:	000011        	l32r	a1, 3bfd0240 <PS_WOE+0x3bf90240>
3c010243:	00          	.byte 00
3c010244:	003c      	movi.n	a0, 48
3c010246:	00          	.byte 00
3c010247:	00          	.byte 00
3c010248:	0000000e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q0, q0, q0, q0

3c01024c <anon.45b1b42304d490f0b1f1ca948409a2a5.0.llvm.4339270341237252025>:
3c01024c:	6d6f682f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, -128, q5, q4, q6, q7
3c010250:	6d2f65        	call8	3c07d548 <_rodata_end+0x6a720>
3c010253:	656261        	l32r	a6, 3bfe97dc <PS_WOE+0x3bfa97dc>
3c010256:	2f7a      	add.n	a2, a15, a7
3c010258:	7261632e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a2, 48, q1, q4, q6, q1
3c01025c:	2f6f67        	bbci	a15, 6, 3c01028f <anon.45b1b42304d490f0b1f1ca948409a2a5.0.llvm.4339270341237252025+0x43>
3c01025f:	746967        	bbci	a9, 6, 3c0102d7 <anon.45b1b42304d490f0b1f1ca948409a2a5.1.llvm.4339270341237252025+0xe>
3c010262:	6568632f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, 0x130, q5, q4, q6, q0
3c010266:	63          	.byte 0x63
3c010267:	6f6b      	addi.n	a6, a15, 6
3c010269:	737475        	call12	3c0839b0 <_rodata_end+0x70b88>
3c01026c:	7073652f 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a2, 80, q5, q4, q7, q3
3c010270:	2d          	.byte 0x2d
3c010271:	6168      	l32i.n	a6, a1, 24
3c010273:	2d6c      	movi.n	a13, -30
3c010275:	63          	.byte 0x63
3c010276:	326630        	orbc	b6, b6, b3
3c010279:	323066        	bnei	a0, 3, 3c0102af <anon.45b1b42304d490f0b1f1ca948409a2a5.0.llvm.4339270341237252025+0x63>
3c01027c:	33          	.byte 0x33
3c01027d:	653165        	call8	3c075594 <_rodata_end+0x6276c>
3c010280:	623035        	call12	3c072584 <_rodata_end+0x5f75c>
3c010283:	2f6532        	s32i	a3, a5, 188
3c010286:	33          	.byte 0x33
3c010287:	64          	.byte 0x64
3c010288:	64          	.byte 0x64
3c010289:	653161        	l32r	a6, 3bfe9750 <PS_WOE+0x3bfa9750>
3c01028c:	652f32        	l32i	a3, a15, 0x194
3c01028f:	73          	.byte 0x73
3c010290:	70          	.byte 0x70
3c010291:	2d          	.byte 0x2d
3c010292:	6168      	l32i.n	a6, a1, 24
3c010294:	2d6c      	movi.n	a13, -30
3c010296:	63          	.byte 0x63
3c010297:	6f6d6d6f 	ee.vmulas.u8.accx.ld.ip.qup	q7, a6, -48, q5, q4, q6, q5
3c01029b:	72732f6e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a6, 240, q0, q4, q7, q3
3c01029f:	63          	.byte 0x63
3c0102a0:	6374722f 	ee.vmulas.u8.accx.ld.ip.qup	q6, a2, 32, q5, q6, q7, q4
3c0102a4:	746e635f 	ee.vmulas.u8.qacc.ld.ip.qup	q1, a5, 0x130, q5, q4, q6, q6
3c0102a8:	2f6c      	movi.n	a15, -30
3c0102aa:	6d          	.byte 0x6d
3c0102ab:	722e646f 	ee.vmulas.u8.qacc.ld.ip.qup	q5, a6, 64, q5, q4, q2, q6
3c0102af:	73          	.byte 0x73

3c0102b0 <str.0.llvm.4339270341237252025>:
3c0102b0:	747461        	l32r	a6, 3bfed480 <PS_WOE+0x3bfad480>
3c0102b3:	706d65        	call8	3c080988 <_rodata_end+0x6db60>
3c0102b6:	74          	.byte 0x74
3c0102b7:	20          	.byte 0x20
3c0102b8:	74          	.byte 0x74
3c0102b9:	6964206f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 0xfffffe00, q4, q4, q6, q4
3c0102bd:	76          	.byte 0x76
3c0102be:	6469      	s32i.n	a6, a4, 24
3c0102c0:	622065        	call8	3c0724c8 <_rodata_end+0x5f6a0>
3c0102c3:	2079      	s32i.n	a7, a0, 8
3c0102c5:	657a      	add.n	a6, a5, a7
3c0102c7:	        	s32i	a7, a15, 0x1a4

3c0102c9 <anon.45b1b42304d490f0b1f1ca948409a2a5.1.llvm.4339270341237252025>:
3c0102c9:	6e69      	s32i.n	a6, a14, 24
3c0102cb:	74          	.byte 0x74
3c0102cc:	6e7265        	call8	3c07e9f4 <_rodata_end+0x6bbcc>
3c0102cf:	206c61        	l32r	a6, 3bfd8480 <PS_WOE+0x3bf98480>
3c0102d2:	727265        	call8	3c0829f8 <_rodata_end+0x6fbd0>
3c0102d5:	203a726f 	ee.vmulas.s8.accx.ld.ip.qup	q1, a6, 32, q5, q6, q3, q2
3c0102d9:	746e65        	call8	3c0849c0 <_rodata_end+0x71b98>
3c0102dc:	657265        	call8	3c075a04 <_rodata_end+0x62bdc>
3c0102df:	64          	.byte 0x64
3c0102e0:	20          	.byte 0x20
3c0102e1:	726e75        	call12	3c0829c8 <_rodata_end+0x6fba0>
3c0102e4:	636165        	call8	3c0738fc <_rodata_end+0x60ad4>
3c0102e7:	6168      	l32i.n	a6, a1, 24
3c0102e9:	656c62        	s32i	a6, a12, 0x194
3c0102ec:	20          	.byte 0x20
3c0102ed:	63          	.byte 0x63
3c0102ee:	0065646f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a6, 64, q5, q4, q6, q5
	...

3c0102f4 <anon.45b1b42304d490f0b1f1ca948409a2a5.3.llvm.4339270341237252025>:
3c0102f4:	024c      	movi.n	a2, 64
3c0102f6:	643c01        	l32r	a0, 3bfe93e8 <PS_WOE+0x3bfa93e8>
3c0102f9:	000000        	ill
3c0102fc:	0198      	l32i.n	a9, a1, 0
3c0102fe:	120000        	andbc	b0, b0, b0
3c010301:	000000        	ill

3c010304 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025>:
3c010304:	024c      	movi.n	a2, 64
3c010306:	643c01        	l32r	a0, 3bfe93f8 <PS_WOE+0x3bfa93f8>
3c010309:	000000        	ill
3c01030c:	70          	.byte 0x70
3c01030d:	000002        	l8ui	a0, a0, 0
3c010310:	0019      	s32i.n	a1, a0, 0
3c010312:	00          	.byte 00
3c010313:	00          	.byte 00
3c010314:	0beb      	addi.n	a0, a11, 14
3c010316:	a74200        	ee.stf.64.xp	f4, f10, a0, a2
3c010319:	000b      	addi.n	a0, a0, -1
3c01031b:	0ba042        	movi	a4, 11
3c01031e:	a54200        	extui	a4, a0, 18, 11
3c010321:	000b      	addi.n	a0, a0, -1
3c010323:	860742        	l8ui	a4, a7, 134
3c010326:	8c4037        	ball	a0, a3, 3c0102b6 <str.0.llvm.4339270341237252025+0x6>
3c010329:	403785        	call0	3c0506a4 <_rodata_end+0x3d87c>
3c01032c:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c010330:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c010334:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c010338:	85ec      	bnez.n	a5, 3c010364 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x60>
3c01033a:	0e4037        	ball	a0, a3, 3c01034c <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x48>
3c01033d:	378b      	addi.n	a3, a7, 8
3c01033f:	8b0e40        	moveqz.s	f0, f14, a4
3c010342:	f24037        	ball	a0, a3, 3c010338 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x34>
3c010345:	403785        	call0	3c0506c0 <_rodata_end+0x3d898>
3c010348:	85f8      	l32i.n	a15, a5, 32
3c01034a:	fe4037        	ball	a0, a3, 3c01034c <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x48>
3c01034d:	403785        	call0	3c0506c8 <_rodata_end+0x3d8a0>
3c010350:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c010354:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c010358:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c01035c:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c010360:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c010364:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c010368:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c01036c:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c010370:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c010374:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c010378:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c01037c:	40378b0e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a0, 176, q2, q0, q3, q7
3c010380:	04          	.byte 0x4
3c010381:	403786        	j	3c020463 <_rodata_end+0xd63b>
3c010384:	04          	.byte 0x4
3c010385:	378b      	addi.n	a3, a7, 8
3c010387:	40          	.byte 0x40
3c010388:	34          	.byte 0x34
3c010389:	3789      	s32i.n	a8, a7, 12
3c01038b:	40          	.byte 0x40
3c01038c:	8939      	s32i.n	a3, a9, 32
3c01038e:	3e4037        	ball	a0, a3, 3c0103d0 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0xcc>
3c010391:	3789      	s32i.n	a8, a7, 12
3c010393:	40          	.byte 0x40
3c010394:	378943        	lsip	f4, a9, 220
3c010397:	40          	.byte 0x40
3c010398:	8948      	l32i.n	a4, a9, 32
3c01039a:	4d4037        	ball	a0, a3, 3c0103eb <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0xe7>
3c01039d:	3789      	s32i.n	a8, a7, 12
3c01039f:	40          	.byte 0x40
3c0103a0:	52          	.byte 0x52
3c0103a1:	3789      	s32i.n	a8, a7, 12
3c0103a3:	40          	.byte 0x40
3c0103a4:	378957        	bany	a9, a5, 3c0103df <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0xdb>
3c0103a7:	40          	.byte 0x40
3c0103a8:	895c      	movi.n	a9, 88
3c0103aa:	614037        	ball	a0, a3, 3c01040f <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x10b>
3c0103ad:	3789      	s32i.n	a8, a7, 12
3c0103af:	40          	.byte 0x40
3c0103b0:	378966        	bnei	a9, 8, 3c0103eb <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0xe7>
3c0103b3:	40          	.byte 0x40
3c0103b4:	896b      	addi.n	a8, a9, 6
3c0103b6:	704037        	ball	a0, a3, 3c01042a <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x126>
3c0103b9:	3789      	s32i.n	a8, a7, 12
3c0103bb:	40          	.byte 0x40
3c0103bc:	378975        	call12	3c047c54 <_rodata_end+0x34e2c>
3c0103bf:	40          	.byte 0x40
3c0103c0:	897a      	add.n	a8, a9, a7
3c0103c2:	7f4037        	ball	a0, a3, 3c010445 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x141>
3c0103c5:	3789      	s32i.n	a8, a7, 12
3c0103c7:	40          	.byte 0x40
3c0103c8:	84          	.byte 0x84
3c0103c9:	3789      	s32i.n	a8, a7, 12
3c0103cb:	40          	.byte 0x40
3c0103cc:	8989      	s32i.n	a8, a9, 32
3c0103ce:	8e4037        	ball	a0, a3, 3c010360 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x5c>
3c0103d1:	3789      	s32i.n	a8, a7, 12
3c0103d3:	40          	.byte 0x40
3c0103d4:	378993        	lsip	f9, a9, 220
3c0103d7:	40          	.byte 0x40
3c0103d8:	8998      	l32i.n	a9, a9, 32
3c0103da:	9d4037        	ball	a0, a3, 3c01037b <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x77>
3c0103dd:	3789      	s32i.n	a8, a7, 12
3c0103df:	8b0e40        	moveqz.s	f0, f14, a4
3c0103e2:	a24037        	ball	a0, a3, 3c010388 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x84>
3c0103e5:	3789      	s32i.n	a8, a7, 12
3c0103e7:	40          	.byte 0x40
3c0103e8:	3789a7        	bany	a9, a10, 3c010423 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x11f>
3c0103eb:	40          	.byte 0x40
3c0103ec:	89ac      	beqz.n	a9, 3c010418 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x114>
3c0103ee:	b14037        	ball	a0, a3, 3c0103a3 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x9f>
3c0103f1:	3789      	s32i.n	a8, a7, 12
3c0103f3:	40          	.byte 0x40
3c0103f4:	3789b6        	bltui	a9, 8, 3c01042f <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x12b>
3c0103f7:	40          	.byte 0x40
3c0103f8:	89bb      	addi.n	a8, a9, 11
3c0103fa:	c04037        	ball	a0, a3, 3c0103be <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0xba>
3c0103fd:	3789      	s32i.n	a8, a7, 12
3c0103ff:	40          	.byte 0x40
3c010400:	3789c5        	call0	3c047ca0 <_rodata_end+0x34e78>
3c010403:	40          	.byte 0x40
3c010404:	89ca      	add.n	a8, a9, a12
3c010406:	0e4037        	ball	a0, a3, 3c010418 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x114>
3c010409:	378b      	addi.n	a3, a7, 8
3c01040b:	8b0e40        	moveqz.s	f0, f14, a4
3c01040e:	cf4037        	ball	a0, a3, 3c0103e1 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0xdd>
3c010411:	3789      	s32i.n	a8, a7, 12
3c010413:	40          	.byte 0x40
3c010414:	d4          	.byte 0xd4
3c010415:	3789      	s32i.n	a8, a7, 12
3c010417:	40          	.byte 0x40
3c010418:	89d9      	s32i.n	a13, a9, 32
3c01041a:	de4037        	ball	a0, a3, 3c0103fc <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0xf8>
3c01041d:	3789      	s32i.n	a8, a7, 12
3c01041f:	40          	.byte 0x40
3c010420:	3789e3        	lsip	f14, a9, 220
3c010423:	40          	.byte 0x40
3c010424:	89e8      	l32i.n	a14, a9, 32
3c010426:	ed4037        	ball	a0, a3, 3c010417 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x113>
3c010429:	3789      	s32i.n	a8, a7, 12
3c01042b:	40          	.byte 0x40
3c01042c:	f2          	.byte 0xf2
3c01042d:	3789      	s32i.n	a8, a7, 12
3c01042f:	40          	.byte 0x40
3c010430:	3789f7        	bany	a9, a15, 3c01046b <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x167>
3c010433:	40          	.byte 0x40
3c010434:	89fc      	bnez.n	a9, 3c010470 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x16c>
3c010436:	014037        	ball	a0, a3, 3c01043b <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x137>
3c010439:	378a      	add.n	a3, a7, a8
3c01043b:	8b0e40        	moveqz.s	f0, f14, a4
3c01043e:	064037        	ball	a0, a3, 3c010448 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x144>
3c010441:	378a      	add.n	a3, a7, a8
3c010443:	8a0b40        	round.s	a0, f11, 4
3c010446:	104037        	ball	a0, a3, 3c01045a <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x156>
3c010449:	378a      	add.n	a3, a7, a8
3c01044b:	8a1540        	round.s	a1, f5, 4
3c01044e:	1a4037        	ball	a0, a3, 3c01046c <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x168>
3c010451:	378a      	add.n	a3, a7, a8
3c010453:	8a1f40        	round.s	a1, f15, 4
3c010456:	244037        	ball	a0, a3, 3c01047e <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x17a>
3c010459:	378a      	add.n	a3, a7, a8
3c01045b:	8a2940        	round.s	a2, f9, 4
3c01045e:	2e4037        	ball	a0, a3, 3c010490 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x18c>
3c010461:	378a      	add.n	a3, a7, a8
3c010463:	8a3340        	round.s	a3, f3, 4
3c010466:	384037        	ball	a0, a3, 3c0104a2 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x19e>
3c010469:	378a      	add.n	a3, a7, a8
3c01046b:	8a3d40        	round.s	a3, f13, 4
3c01046e:	424037        	ball	a0, a3, 3c0104b4 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x1b0>
3c010471:	378a      	add.n	a3, a7, a8
3c010473:	8a4740        	round.s	a4, f7, 4
3c010476:	4c4037        	ball	a0, a3, 3c0104c6 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x1c2>
3c010479:	378a      	add.n	a3, a7, a8
3c01047b:	8a5140        	round.s	a5, f1, 4
3c01047e:	564037        	ball	a0, a3, 3c0104d8 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x1d4>
3c010481:	378a      	add.n	a3, a7, a8
3c010483:	8a5b40        	round.s	a5, f11, 4
3c010486:	604037        	ball	a0, a3, 3c0104ea <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x1e6>
3c010489:	378a      	add.n	a3, a7, a8
3c01048b:	8a6540        	round.s	a6, f5, 4
3c01048e:	6a4037        	ball	a0, a3, 3c0104fc <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x1f8>
3c010491:	378a      	add.n	a3, a7, a8
3c010493:	8a6f40        	round.s	a6, f15, 4
3c010496:	744037        	ball	a0, a3, 3c01050e <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x20a>
3c010499:	378a      	add.n	a3, a7, a8
3c01049b:	8a7940        	round.s	a7, f9, 4
3c01049e:	7e4037        	ball	a0, a3, 3c010520 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x21c>
3c0104a1:	378a      	add.n	a3, a7, a8
3c0104a3:	8a8340        	round.s	a8, f3, 4
3c0104a6:	884037        	ball	a0, a3, 3c010432 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x12e>
3c0104a9:	378a      	add.n	a3, a7, a8
3c0104ab:	8a8d40        	round.s	a8, f13, 4
3c0104ae:	924037        	ball	a0, a3, 3c010444 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x140>
3c0104b1:	378a      	add.n	a3, a7, a8
3c0104b3:	8a9740        	round.s	a9, f7, 4
3c0104b6:	9c4037        	ball	a0, a3, 3c010456 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x152>
3c0104b9:	378a      	add.n	a3, a7, a8
3c0104bb:	8b0e40        	moveqz.s	f0, f14, a4
3c0104be:	a14037        	ball	a0, a3, 3c010463 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x15f>
3c0104c1:	378a      	add.n	a3, a7, a8
3c0104c3:	8aa640        	round.s	a10, f6, 4
3c0104c6:	ab4037        	ball	a0, a3, 3c010475 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x171>
3c0104c9:	378a      	add.n	a3, a7, a8
3c0104cb:	8ab040        	round.s	a11, f0, 4
3c0104ce:	b54037        	ball	a0, a3, 3c010487 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x183>
3c0104d1:	378a      	add.n	a3, a7, a8
3c0104d3:	8aba40        	round.s	a11, f10, 4
3c0104d6:	bf4037        	ball	a0, a3, 3c010499 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x195>
3c0104d9:	378a      	add.n	a3, a7, a8
3c0104db:	8ac440        	round.s	a12, f4, 4
3c0104de:	c94037        	ball	a0, a3, 3c0104ab <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x1a7>
3c0104e1:	378a      	add.n	a3, a7, a8
3c0104e3:	8ace40        	round.s	a12, f14, 4
3c0104e6:	d34037        	ball	a0, a3, 3c0104bd <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x1b9>
3c0104e9:	378a      	add.n	a3, a7, a8
3c0104eb:	8ad840        	round.s	a13, f8, 4
3c0104ee:	dd4037        	ball	a0, a3, 3c0104cf <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x1cb>
3c0104f1:	378a      	add.n	a3, a7, a8
3c0104f3:	8ae240        	round.s	a14, f2, 4
3c0104f6:	e74037        	ball	a0, a3, 3c0104e1 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x1dd>
3c0104f9:	378a      	add.n	a3, a7, a8
3c0104fb:	8aec40        	round.s	a14, f12, 4
3c0104fe:	f14037        	ball	a0, a3, 3c0104f3 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x1ef>
3c010501:	378a      	add.n	a3, a7, a8
3c010503:	8af640        	round.s	a15, f6, 4
3c010506:	fc4037        	ball	a0, a3, 3c010506 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x202>
3c010509:	378a      	add.n	a3, a7, a8
3c01050b:	8b0240        	moveqz.s	f0, f2, a4
3c01050e:	2f4037        	ball	a0, a3, 3c010541 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x23d>
3c010511:	6f68      	l32i.n	a6, a15, 24
3c010513:	6d          	.byte 0x6d
3c010514:	6d2f65        	call8	3c07d80c <_rodata_end+0x6a9e4>
3c010517:	656261        	l32r	a6, 3bfe9aa0 <PS_WOE+0x3bfa9aa0>
3c01051a:	2f7a      	add.n	a2, a15, a7
3c01051c:	7261632e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a2, 48, q1, q4, q6, q1
3c010520:	2f6f67        	bbci	a15, 6, 3c010553 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x24f>
3c010523:	746967        	bbci	a9, 6, 3c01059b <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x297>
3c010526:	6568632f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, 0x130, q5, q4, q6, q0
3c01052a:	63          	.byte 0x63
3c01052b:	6f6b      	addi.n	a6, a15, 6
3c01052d:	737475        	call12	3c083c74 <_rodata_end+0x70e4c>
3c010530:	7073652f 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a2, 80, q5, q4, q7, q3
3c010534:	2d          	.byte 0x2d
3c010535:	6168      	l32i.n	a6, a1, 24
3c010537:	2d6c      	movi.n	a13, -30
3c010539:	63          	.byte 0x63
3c01053a:	326630        	orbc	b6, b6, b3
3c01053d:	323066        	bnei	a0, 3, 3c010573 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x26f>
3c010540:	33          	.byte 0x33
3c010541:	653165        	call8	3c075858 <_rodata_end+0x62a30>
3c010544:	623035        	call12	3c072848 <_rodata_end+0x5fa20>
3c010547:	2f6532        	s32i	a3, a5, 188
3c01054a:	33          	.byte 0x33
3c01054b:	64          	.byte 0x64
3c01054c:	64          	.byte 0x64
3c01054d:	653161        	l32r	a6, 3bfe9a14 <PS_WOE+0x3bfa9a14>
3c010550:	652f32        	l32i	a3, a15, 0x194
3c010553:	73          	.byte 0x73
3c010554:	70          	.byte 0x70
3c010555:	2d          	.byte 0x2d
3c010556:	6168      	l32i.n	a6, a1, 24
3c010558:	2d6c      	movi.n	a13, -30
3c01055a:	63          	.byte 0x63
3c01055b:	6f6d6d6f 	ee.vmulas.u8.accx.ld.ip.qup	q7, a6, -48, q5, q4, q6, q5
3c01055f:	72732f6e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a6, 240, q0, q4, q7, q3
3c010563:	63          	.byte 0x63
3c010564:	746e692f 	ee.vmulas.u8.qacc.ld.ip.qup	q1, a2, 0x190, q5, q4, q6, q6
3c010568:	727265        	call8	3c082c90 <_rodata_end+0x6fe68>
3c01056b:	747075        	call12	3c084c70 <_rodata_end+0x71e48>
3c01056e:	6574782f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, 0x180, q5, q6, q7, q4
3c010572:	2e61736e 	ee.vmulas.s8.accx.ld.ip.qup	q4, a6, -208, q1, q6, q6, q1
3c010576:	72          	.byte 0x72
3c010577:	000073        	lsi	f7, a0, 0
3c01057a:	00          	.byte 00
3c01057b:	37ff00        	ee.stf.64.xp	f15, f3, a0, a15
3c01057e:	000006        	j	3c010582 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x27e>
3c010581:	00          	.byte 00
3c010582:	0038      	l32i.n	a3, a0, 0
3c010584:	c08800        	sub	a8, a8, a0
3c010587:	0028      	l32i.n	a2, a0, 0
3c010589:	530000        	max	a0, a0, a0
3c01058c:	010000        	slli	a0, a0, 32
3c01058f:	000084        	ee.ld.qacc_l.l.128.ip	a8, 0
3c010592:	000000        	ill
3c010595:	40          	.byte 0x40
3c010596:	00          	.byte 00
3c010597:	00          	.byte 00
3c010598:	6e69      	s32i.n	a6, a14, 24
3c01059a:	64          	.byte 0x64
3c01059b:	207865        	call8	3c030d20 <_rodata_end+0x1def8>
3c01059e:	2074756f 	ee.vmulas.s8.accx.ld.ip.qup	q0, a6, 80, q5, q6, q7, q4
3c0105a2:	6220666f 	ee.vmulas.u8.accx.ld.ip.qup	q4, a6, 96, q5, q4, q2, q0
3c0105a6:	646e756f 	ee.vmulas.u8.accx.ld.ip.qup	q1, a6, 0x150, q5, q6, q6, q6
3c0105aa:	73          	.byte 0x73
3c0105ab:	203a      	add.n	a2, a0, a3
3c0105ad:	74          	.byte 0x74
3c0105ae:	6568      	l32i.n	a6, a5, 24
3c0105b0:	656c20        	extui	a6, a2, 28, 7
3c0105b3:	7369206e 	ee.vmulas.u8.qacc.ld.ip.qup	q7, a6, 0, q0, q4, q6, q1
3c0105b7:	051020        	extui	a1, a2, 16, 1
3c0105ba:	683c01        	l32r	a0, 3bfea6ac <PS_WOE+0x3bfaa6ac>
3c0105bd:	000000        	ill
3c0105c0:	000181        	l32r	a8, 3bfd05c4 <PS_WOE+0x3bf905c4>
3c0105c3:	00          	.byte 00
3c0105c4:	0038      	l32i.n	a3, a0, 0
3c0105c6:	010000        	slli	a0, a0, 32
3c0105c9:	000000        	ill
3c0105cc:	000001        	l32r	a0, 3bfd05cc <PS_WOE+0x3bf905cc>
3c0105cf:	00          	.byte 00
3c0105d0:	000001        	l32r	a0, 3bfd05d0 <PS_WOE+0x3bf905d0>
3c0105d3:	00          	.byte 00
3c0105d4:	000001        	l32r	a0, 3bfd05d4 <PS_WOE+0x3bf905d4>
3c0105d7:	00          	.byte 00
3c0105d8:	000001        	l32r	a0, 3bfd05d8 <PS_WOE+0x3bf905d8>
3c0105db:	00          	.byte 00
3c0105dc:	000001        	l32r	a0, 3bfd05dc <PS_WOE+0x3bf905dc>
3c0105df:	00          	.byte 00
3c0105e0:	000001        	l32r	a0, 3bfd05e0 <PS_WOE+0x3bf905e0>
3c0105e3:	00          	.byte 00
3c0105e4:	000001        	l32r	a0, 3bfd05e4 <PS_WOE+0x3bf905e4>
3c0105e7:	00          	.byte 00
3c0105e8:	000001        	l32r	a0, 3bfd05e8 <PS_WOE+0x3bf905e8>
3c0105eb:	00          	.byte 00
3c0105ec:	000001        	l32r	a0, 3bfd05ec <PS_WOE+0x3bf905ec>
3c0105ef:	00          	.byte 00
3c0105f0:	000001        	l32r	a0, 3bfd05f0 <PS_WOE+0x3bf905f0>
3c0105f3:	00          	.byte 00
3c0105f4:	000003        	lsi	f0, a0, 0
3c0105f7:	00          	.byte 00
3c0105f8:	000001        	l32r	a0, 3bfd05f8 <PS_WOE+0x3bf905f8>
3c0105fb:	00          	.byte 00
3c0105fc:	000001        	l32r	a0, 3bfd05fc <PS_WOE+0x3bf905fc>
3c0105ff:	000000        	ill
3c010602:	030000        	rsr.lbeg	a0
3c010605:	000000        	ill
3c010608:	000000        	ill
3c01060b:	00          	.byte 00
3c01060c:	000001        	l32r	a0, 3bfd060c <PS_WOE+0x3bf9060c>
3c01060f:	00          	.byte 00
3c010610:	000001        	l32r	a0, 3bfd0610 <PS_WOE+0x3bf90610>
3c010613:	00          	.byte 00
3c010614:	000002        	l8ui	a0, a0, 0
3c010617:	00          	.byte 00
3c010618:	000002        	l8ui	a0, a0, 0
3c01061b:	00          	.byte 00
3c01061c:	000002        	l8ui	a0, a0, 0
3c01061f:	00          	.byte 00
3c010620:	000003        	lsi	f0, a0, 0
3c010623:	00          	.byte 00
3c010624:	000003        	lsi	f0, a0, 0
	...
3c010633:	00          	.byte 00
3c010634:	000003        	lsi	f0, a0, 0
3c010637:	000000        	ill
3c01063a:	030000        	rsr.lbeg	a0
	...
3c010645:	000000        	ill
3c010648:	737361        	l32r	a6, 3bfed414 <PS_WOE+0x3bfad414>
3c01064b:	747265        	call8	3c084d70 <_rodata_end+0x71f48>
3c01064e:	6f69      	s32i.n	a6, a15, 24
3c010650:	6166206e 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 0, q0, q4, q6, q6
3c010654:	6c69      	s32i.n	a6, a12, 24
3c010656:	3a6465        	call8	3c04ac9c <_rodata_end+0x37e74>
3c010659:	20          	.byte 0x20
3c01065a:	6d          	.byte 0x6d
3c01065b:	637461        	l32r	a6, 3bfe942c <PS_WOE+0x3bfa942c>
3c01065e:	6568      	l32i.n	a6, a5, 24
3c010660:	73          	.byte 0x73
3c010661:	522821        	l32r	a2, 3bfe4f04 <PS_WOE+0x3bfa4f04>
3c010664:	74          	.byte 0x74
3c010665:	6c4363        	ssi	f6, a3, 0x1b0
3c010668:	206b636f 	ee.vmulas.s8.accx.ld.ip.qup	q1, a6, 48, q5, q4, q6, q3
3c01066c:	3a3a      	add.n	a3, a10, a3
3c01066e:	656720        	extui	a6, a2, 23, 7
3c010671:	74          	.byte 0x74
3c010672:	6174785f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a5, 128, q5, q6, q7, q4
3c010676:	5f6c      	movi.n	a15, -27
3c010678:	657266        	bnei	a2, 7, 3c0106e1 <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x3dd>
3c01067b:	292871        	l32r	a7, 3bfdab1c <PS_WOE+0x3bf9ab1c>
3c01067e:	202c      	movi.n	a0, 34
3c010680:	7458      	l32i.n	a5, a4, 28
3c010682:	436c61        	l32r	a6, 3bfe1434 <PS_WOE+0x3bfa1434>
3c010685:	6f6c      	movi.n	a15, -26
3c010687:	63          	.byte 0x63
3c010688:	206b      	addi.n	a2, a0, 6
3c01068a:	3a3a      	add.n	a3, a10, a3
3c01068c:	745220        	extui	a5, a2, 2, 8
3c01068f:	63          	.byte 0x63
3c010690:	7458      	l32i.n	a5, a4, 28
3c010692:	466c61        	l32r	a6, 3bfe2044 <PS_WOE+0x3bfa2044>
3c010695:	716572        	s32i	a7, a5, 0x1c4
3c010698:	4d3034        	ee.st.qacc_h.l.128.ip	a3, 0xfffffb00
3c01069b:	2f29      	s32i.n	a2, a15, 8
3c01069d:	6f68      	l32i.n	a6, a15, 24
3c01069f:	6d          	.byte 0x6d
3c0106a0:	6d2f65        	call8	3c07d998 <_rodata_end+0x6ab70>
3c0106a3:	656261        	l32r	a6, 3bfe9c2c <PS_WOE+0x3bfa9c2c>
3c0106a6:	2f7a      	add.n	a2, a15, a7
3c0106a8:	7261632e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a2, 48, q1, q4, q6, q1
3c0106ac:	2f6f67        	bbci	a15, 6, 3c0106df <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x3db>
3c0106af:	746967        	bbci	a9, 6, 3c010727 <anon.660c5c6e1bd9f84cc0be5db1ff1d9e80.2.llvm.18302925101488859803+0xf>
3c0106b2:	6568632f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, 0x130, q5, q4, q6, q0
3c0106b6:	63          	.byte 0x63
3c0106b7:	6f6b      	addi.n	a6, a15, 6
3c0106b9:	737475        	call12	3c083e00 <_rodata_end+0x70fd8>
3c0106bc:	7073652f 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a2, 80, q5, q4, q7, q3
3c0106c0:	2d          	.byte 0x2d
3c0106c1:	6168      	l32i.n	a6, a1, 24
3c0106c3:	2d6c      	movi.n	a13, -30
3c0106c5:	63          	.byte 0x63
3c0106c6:	326630        	orbc	b6, b6, b3
3c0106c9:	323066        	bnei	a0, 3, 3c0106ff <anon.45b1b42304d490f0b1f1ca948409a2a5.4.llvm.4339270341237252025+0x3fb>
3c0106cc:	33          	.byte 0x33
3c0106cd:	653165        	call8	3c0759e4 <_rodata_end+0x62bbc>
3c0106d0:	623035        	call12	3c0729d4 <_rodata_end+0x5fbac>
3c0106d3:	2f6532        	s32i	a3, a5, 188
3c0106d6:	33          	.byte 0x33
3c0106d7:	64          	.byte 0x64
3c0106d8:	64          	.byte 0x64
3c0106d9:	653161        	l32r	a6, 3bfe9ba0 <PS_WOE+0x3bfa9ba0>
3c0106dc:	652f32        	l32i	a3, a15, 0x194
3c0106df:	73          	.byte 0x73
3c0106e0:	70          	.byte 0x70
3c0106e1:	2d          	.byte 0x2d
3c0106e2:	6168      	l32i.n	a6, a1, 24
3c0106e4:	2d6c      	movi.n	a13, -30
3c0106e6:	63          	.byte 0x63
3c0106e7:	6f6d6d6f 	ee.vmulas.u8.accx.ld.ip.qup	q7, a6, -48, q5, q4, q6, q5
3c0106eb:	72732f6e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a6, 240, q0, q4, q7, q3
3c0106ef:	63          	.byte 0x63
3c0106f0:	6374722f 	ee.vmulas.u8.accx.ld.ip.qup	q6, a2, 32, q5, q6, q7, q4
3c0106f4:	746e635f 	ee.vmulas.u8.qacc.ld.ip.qup	q1, a5, 0x130, q5, q4, q6, q6
3c0106f8:	2f6c      	movi.n	a15, -30
3c0106fa:	72          	.byte 0x72
3c0106fb:	74          	.byte 0x74
3c0106fc:	63          	.byte 0x63
3c0106fd:	7073652f 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a2, 80, q5, q4, q7, q3
3c010701:	33          	.byte 0x33
3c010702:	32          	.byte 0x32
3c010703:	73          	.byte 0x73
3c010704:	33          	.byte 0x33
3c010705:	9c73722e 	ee.stf.128.xp	f8, f6, f7, f7, a2, a2
3c010709:	3c0106        	j	3c01f711 <_rodata_end+0xc8e9>
3c01070c:	006c      	movi.n	a0, -32
3c01070e:	00          	.byte 00
3c01070f:	00          	.byte 00
3c010710:	000c      	movi.n	a0, 0
3c010712:	050000        	extui	a0, a0, 16, 1
3c010715:	000000        	ill

3c010718 <anon.660c5c6e1bd9f84cc0be5db1ff1d9e80.2.llvm.18302925101488859803>:
3c010718:	656552        	s32i	a5, a5, 0x194
3c01071b:	6172746e 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 64, q1, q6, q7, q2
3c01071f:	754d746e 	ee.vmulas.u8.qacc.ld.ip.qup	q3, a6, 0x140, q1, q6, q4, q5
3c010723:	74          	.byte 0x74
3c010724:	207865        	call8	3c030eac <_rodata_end+0x1e084>
3c010727:	6f6c      	movi.n	a15, -26
3c010729:	63          	.byte 0x63
3c01072a:	206b      	addi.n	a2, a0, 6
3c01072c:	63          	.byte 0x63
3c01072d:	746e756f 	ee.vmulas.u8.qacc.ld.ip.qup	q1, a6, 0x150, q5, q6, q6, q6
3c010731:	766f20        	ee.ldf.64.xp	f6, f7, a2, a15
3c010734:	667265        	call8	3c076e5c <_rodata_end+0x64034>
3c010737:	6f6c      	movi.n	a15, -26
3c010739:	        	blt	a15, a7, 3c0107a5 <anon.660c5c6e1bd9f84cc0be5db1ff1d9e80.4.llvm.18302925101488859803+0x9>

3c01073a <anon.660c5c6e1bd9f84cc0be5db1ff1d9e80.3.llvm.18302925101488859803>:
3c01073a:	6d6f682f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, -128, q5, q4, q6, q7
3c01073e:	6d2f65        	call8	3c07da34 <_rodata_end+0x6ac0c>
3c010741:	656261        	l32r	a6, 3bfe9ccc <PS_WOE+0x3bfa9ccc>
3c010744:	2f7a      	add.n	a2, a15, a7
3c010746:	7261632e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a2, 48, q1, q4, q6, q1
3c01074a:	2f6f67        	bbci	a15, 6, 3c01077d <anon.660c5c6e1bd9f84cc0be5db1ff1d9e80.3.llvm.18302925101488859803+0x43>
3c01074d:	676572        	s32i	a7, a5, 0x19c
3c010750:	7369      	s32i.n	a6, a3, 28
3c010752:	74          	.byte 0x74
3c010753:	72          	.byte 0x72
3c010754:	2f79      	s32i.n	a7, a15, 8
3c010756:	73          	.byte 0x73
3c010757:	2f6372        	s32i	a7, a3, 188
3c01075a:	6e69      	s32i.n	a6, a14, 24
3c01075c:	64          	.byte 0x64
3c01075d:	2e7865        	call8	3c03eee4 <_rodata_end+0x2c0bc>
3c010760:	63          	.byte 0x63
3c010761:	746172        	s32i	a7, a1, 0x1d0
3c010764:	2e7365        	call8	3c03ee9c <_rodata_end+0x2c074>
3c010767:	6f69      	s32i.n	a6, a15, 24
3c010769:	2d          	.byte 0x2d
3c01076a:	316636        	entry	a6, 0x18b0
3c01076d:	326437        	bbci	a4, 3, 3c0107a3 <anon.660c5c6e1bd9f84cc0be5db1ff1d9e80.4.llvm.18302925101488859803+0x7>
3c010770:	626232        	s32i	a3, a2, 0x188
3c010773:	353161        	l32r	a6, 3bfddc38 <PS_WOE+0x3bf9dc38>
3c010776:	313030        	srai	a3, a3, 16
3c010779:	6c2f66        	bnei	a15, 2, 3c0107e9 <esp32s3::__INTERRUPTS+0x3d>
3c01077c:	5f6b636f 	ee.vmulas.u16.qacc.ld.ip.qup	q7, a6, -208, q5, q4, q6, q3
3c010780:	697061        	l32r	a6, 3bfead40 <PS_WOE+0x3bfaad40>
3c010783:	2d          	.byte 0x2d
3c010784:	342e30        	extui	a2, a3, 14, 4
3c010787:	2f30312e 	ee.vmulas.s8.accx.ld.ip.qup	q6, a2, -240, q0, q6, q3, q0
3c01078b:	73          	.byte 0x73
3c01078c:	2f6372        	s32i	a7, a3, 188
3c01078f:	6d6572        	s32i	a7, a5, 0x1b4
3c010792:	657475        	call12	3c075ed8 <_rodata_end+0x630b0>
3c010795:	2e78      	l32i.n	a7, a14, 8
3c010797:	72          	.byte 0x72
3c010798:	000073        	lsi	f7, a0, 0
	...

3c01079c <anon.660c5c6e1bd9f84cc0be5db1ff1d9e80.4.llvm.18302925101488859803>:
3c01079c:	073a      	add.n	a0, a7, a3
3c01079e:	5f3c01        	l32r	a0, 3bfe8490 <PS_WOE+0x3bfa8490>
3c0107a1:	000000        	ill
3c0107a4:	0000005f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a5, 0, q4, q0, q0, q0
3c0107a8:	000016        	beqz	a0, 3c0107ac <esp32s3::__INTERRUPTS>
	...

3c0107ac <esp32s3::__INTERRUPTS>:
3c0107ac:	0dd8      	l32i.n	a13, a13, 0
3c0107ae:	00          	.byte 00
3c0107af:	0dd842        	addmi	a4, a8, 0xd00
3c0107b2:	00          	.byte 00
3c0107b3:	0dd842        	addmi	a4, a8, 0xd00
3c0107b6:	00          	.byte 00
3c0107b7:	0dd842        	addmi	a4, a8, 0xd00
3c0107ba:	00          	.byte 00
3c0107bb:	0dd842        	addmi	a4, a8, 0xd00
3c0107be:	00          	.byte 00
3c0107bf:	0dd842        	addmi	a4, a8, 0xd00
3c0107c2:	00          	.byte 00
3c0107c3:	0dd842        	addmi	a4, a8, 0xd00
3c0107c6:	00          	.byte 00
3c0107c7:	0dd842        	addmi	a4, a8, 0xd00
3c0107ca:	00          	.byte 00
3c0107cb:	0dd842        	addmi	a4, a8, 0xd00
3c0107ce:	00          	.byte 00
3c0107cf:	0dd842        	addmi	a4, a8, 0xd00
3c0107d2:	00          	.byte 00
3c0107d3:	0dd842        	addmi	a4, a8, 0xd00
3c0107d6:	00          	.byte 00
3c0107d7:	0dd842        	addmi	a4, a8, 0xd00
3c0107da:	00          	.byte 00
3c0107db:	0dd842        	addmi	a4, a8, 0xd00
3c0107de:	00          	.byte 00
3c0107df:	0dd842        	addmi	a4, a8, 0xd00
3c0107e2:	00          	.byte 00
3c0107e3:	0dd842        	addmi	a4, a8, 0xd00
3c0107e6:	00          	.byte 00
3c0107e7:	0dd842        	addmi	a4, a8, 0xd00
3c0107ea:	00          	.byte 00
3c0107eb:	0dd842        	addmi	a4, a8, 0xd00
3c0107ee:	00          	.byte 00
3c0107ef:	0dd842        	addmi	a4, a8, 0xd00
3c0107f2:	00          	.byte 00
3c0107f3:	0dd842        	addmi	a4, a8, 0xd00
3c0107f6:	00          	.byte 00
3c0107f7:	0dd842        	addmi	a4, a8, 0xd00
3c0107fa:	00          	.byte 00
3c0107fb:	0dd842        	addmi	a4, a8, 0xd00
3c0107fe:	00          	.byte 00
3c0107ff:	0dd842        	addmi	a4, a8, 0xd00
3c010802:	00          	.byte 00
3c010803:	0dd842        	addmi	a4, a8, 0xd00
3c010806:	004200        	break	2, 0
3c010809:	000000        	ill
3c01080c:	0dd8      	l32i.n	a13, a13, 0
3c01080e:	00          	.byte 00
3c01080f:	0dd842        	addmi	a4, a8, 0xd00
3c010812:	00          	.byte 00
3c010813:	0dd842        	addmi	a4, a8, 0xd00
3c010816:	00          	.byte 00
3c010817:	0dd842        	addmi	a4, a8, 0xd00
3c01081a:	00          	.byte 00
3c01081b:	0dd842        	addmi	a4, a8, 0xd00
3c01081e:	00          	.byte 00
3c01081f:	0dd842        	addmi	a4, a8, 0xd00
3c010822:	00          	.byte 00
3c010823:	0dd842        	addmi	a4, a8, 0xd00
3c010826:	00          	.byte 00
3c010827:	0dd842        	addmi	a4, a8, 0xd00
3c01082a:	00          	.byte 00
3c01082b:	0dd842        	addmi	a4, a8, 0xd00
3c01082e:	004200        	break	2, 0
3c010831:	000000        	ill
3c010834:	000000        	ill
3c010837:	00          	.byte 00
3c010838:	0dd8      	l32i.n	a13, a13, 0
3c01083a:	00          	.byte 00
3c01083b:	0dd842        	addmi	a4, a8, 0xd00
3c01083e:	00          	.byte 00
3c01083f:	0dd842        	addmi	a4, a8, 0xd00
3c010842:	00          	.byte 00
3c010843:	0dd842        	addmi	a4, a8, 0xd00
3c010846:	00          	.byte 00
3c010847:	0dd842        	addmi	a4, a8, 0xd00
3c01084a:	00          	.byte 00
3c01084b:	0dd842        	addmi	a4, a8, 0xd00
3c01084e:	00          	.byte 00
3c01084f:	0dd842        	addmi	a4, a8, 0xd00
3c010852:	00          	.byte 00
3c010853:	0dd842        	addmi	a4, a8, 0xd00
3c010856:	00          	.byte 00
3c010857:	0dd842        	addmi	a4, a8, 0xd00
3c01085a:	00          	.byte 00
3c01085b:	0dd842        	addmi	a4, a8, 0xd00
3c01085e:	00          	.byte 00
3c01085f:	0dd842        	addmi	a4, a8, 0xd00
3c010862:	004200        	break	2, 0
3c010865:	000000        	ill
3c010868:	0dd8      	l32i.n	a13, a13, 0
3c01086a:	00          	.byte 00
3c01086b:	0dd842        	addmi	a4, a8, 0xd00
3c01086e:	00          	.byte 00
3c01086f:	0dd842        	addmi	a4, a8, 0xd00
3c010872:	00          	.byte 00
3c010873:	0dd842        	addmi	a4, a8, 0xd00
3c010876:	00          	.byte 00
3c010877:	0dd842        	addmi	a4, a8, 0xd00
3c01087a:	00          	.byte 00
3c01087b:	0dd842        	addmi	a4, a8, 0xd00
3c01087e:	00          	.byte 00
3c01087f:	0dd842        	addmi	a4, a8, 0xd00
3c010882:	00          	.byte 00
3c010883:	0dd842        	addmi	a4, a8, 0xd00
3c010886:	00          	.byte 00
3c010887:	0dd842        	addmi	a4, a8, 0xd00
3c01088a:	00          	.byte 00
3c01088b:	0dd842        	addmi	a4, a8, 0xd00
3c01088e:	184200        	lsxp	f4, a2, a0
3c010891:	420003        	lsi	f0, a0, 0x108
3c010894:	0dd8      	l32i.n	a13, a13, 0
3c010896:	00          	.byte 00
3c010897:	0dd842        	addmi	a4, a8, 0xd00
3c01089a:	00          	.byte 00
3c01089b:	0dd842        	addmi	a4, a8, 0xd00
3c01089e:	00          	.byte 00
3c01089f:	0dd842        	addmi	a4, a8, 0xd00
3c0108a2:	00          	.byte 00
3c0108a3:	0dd842        	addmi	a4, a8, 0xd00
3c0108a6:	00          	.byte 00
3c0108a7:	0dd842        	addmi	a4, a8, 0xd00
3c0108aa:	00          	.byte 00
3c0108ab:	0dd842        	addmi	a4, a8, 0xd00
3c0108ae:	00          	.byte 00
3c0108af:	0dd842        	addmi	a4, a8, 0xd00
3c0108b2:	00          	.byte 00
3c0108b3:	0dd842        	addmi	a4, a8, 0xd00
3c0108b6:	00          	.byte 00
3c0108b7:	0dd842        	addmi	a4, a8, 0xd00
3c0108ba:	00          	.byte 00
3c0108bb:	0dd842        	addmi	a4, a8, 0xd00
3c0108be:	00          	.byte 00
3c0108bf:	0dd842        	addmi	a4, a8, 0xd00
3c0108c2:	00          	.byte 00
3c0108c3:	0dd842        	addmi	a4, a8, 0xd00
3c0108c6:	00          	.byte 00
3c0108c7:	0dd842        	addmi	a4, a8, 0xd00
3c0108ca:	00          	.byte 00
3c0108cb:	0dd842        	addmi	a4, a8, 0xd00
3c0108ce:	00          	.byte 00
3c0108cf:	0dd842        	addmi	a4, a8, 0xd00
3c0108d2:	00          	.byte 00
3c0108d3:	0dd842        	addmi	a4, a8, 0xd00
3c0108d6:	00          	.byte 00
3c0108d7:	0dd842        	addmi	a4, a8, 0xd00
3c0108da:	00          	.byte 00
3c0108db:	0dd842        	addmi	a4, a8, 0xd00
3c0108de:	00          	.byte 00
3c0108df:	0dd842        	addmi	a4, a8, 0xd00
3c0108e2:	004200        	break	2, 0
3c0108e5:	000000        	ill
3c0108e8:	0dd8      	l32i.n	a13, a13, 0
3c0108ea:	00          	.byte 00
3c0108eb:	0dd842        	addmi	a4, a8, 0xd00
3c0108ee:	00          	.byte 00
3c0108ef:	0dd842        	addmi	a4, a8, 0xd00
3c0108f2:	00          	.byte 00
3c0108f3:	0dd842        	addmi	a4, a8, 0xd00
3c0108f6:	00          	.byte 00
3c0108f7:	0dd842        	addmi	a4, a8, 0xd00
3c0108fa:	00          	.byte 00
3c0108fb:	0dd842        	addmi	a4, a8, 0xd00
3c0108fe:	00          	.byte 00
3c0108ff:	0dd842        	addmi	a4, a8, 0xd00
3c010902:	00          	.byte 00
3c010903:	0dd842        	addmi	a4, a8, 0xd00
3c010906:	00          	.byte 00
3c010907:	0dd842        	addmi	a4, a8, 0xd00
3c01090a:	00          	.byte 00
3c01090b:	0dd842        	addmi	a4, a8, 0xd00
3c01090e:	00          	.byte 00
3c01090f:	0dd842        	addmi	a4, a8, 0xd00
3c010912:	00          	.byte 00
3c010913:	0dd842        	addmi	a4, a8, 0xd00
3c010916:	00          	.byte 00
3c010917:	0dd842        	addmi	a4, a8, 0xd00
3c01091a:	00          	.byte 00
3c01091b:	0dd842        	addmi	a4, a8, 0xd00
3c01091e:	00          	.byte 00
3c01091f:	0dd842        	addmi	a4, a8, 0xd00
3c010922:	00          	.byte 00
3c010923:	0dd842        	addmi	a4, a8, 0xd00
3c010926:	00          	.byte 00
3c010927:	0dd842        	addmi	a4, a8, 0xd00
3c01092a:	00          	.byte 00
3c01092b:	0dd842        	addmi	a4, a8, 0xd00
3c01092e:	00          	.byte 00
3c01092f:	0dd842        	addmi	a4, a8, 0xd00
3c010932:	00          	.byte 00
3c010933:	0dd842        	addmi	a4, a8, 0xd00
3c010936:	454200        	extui	a4, a0, 18, 5
3c010939:	6378      	l32i.n	a7, a3, 24
3c01093b:	747065        	call8	3c085040 <_rodata_end+0x72218>
3c01093e:	6f69      	s32i.n	a6, a15, 24
3c010940:	2c203a6e 	ee.vmulas.s8.accx.ld.ip.qup	q0, a6, -96, q0, q6, q2, q0
3c010944:	20          	.byte 0x20
3c010945:	000000        	ill
3c010948:	0938      	l32i.n	a3, a9, 0
3c01094a:	0b3c01        	l32r	a0, 3bfd363c <PS_WOE+0x3bf9363c>
3c01094d:	000000        	ill
3c010950:	010943        	lsi	f4, a9, 4
3c010953:	023c      	movi.n	a2, 48
3c010955:	000000        	ill
3c010958:	6d6f682f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, -128, q5, q4, q6, q7
3c01095c:	6d2f65        	call8	3c07dc54 <_rodata_end+0x6ae2c>
3c01095f:	656261        	l32r	a6, 3bfe9ee8 <PS_WOE+0x3bfa9ee8>
3c010962:	2f7a      	add.n	a2, a15, a7
3c010964:	7261632e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a2, 48, q1, q4, q6, q1
3c010968:	2f6f67        	bbci	a15, 6, 3c01099b <esp32s3::__INTERRUPTS+0x1ef>
3c01096b:	676572        	s32i	a7, a5, 0x19c
3c01096e:	7369      	s32i.n	a6, a3, 28
3c010970:	74          	.byte 0x74
3c010971:	72          	.byte 0x72
3c010972:	2f79      	s32i.n	a7, a15, 8
3c010974:	73          	.byte 0x73
3c010975:	2f6372        	s32i	a7, a3, 188
3c010978:	6e69      	s32i.n	a6, a14, 24
3c01097a:	64          	.byte 0x64
3c01097b:	2e7865        	call8	3c03f100 <_rodata_end+0x2c2d8>
3c01097e:	63          	.byte 0x63
3c01097f:	746172        	s32i	a7, a1, 0x1d0
3c010982:	2e7365        	call8	3c03f0b8 <_rodata_end+0x2c290>
3c010985:	6f69      	s32i.n	a6, a15, 24
3c010987:	2d          	.byte 0x2d
3c010988:	316636        	entry	a6, 0x18b0
3c01098b:	326437        	bbci	a4, 3, 3c0109c1 <esp32s3::__INTERRUPTS+0x215>
3c01098e:	626232        	s32i	a3, a2, 0x188
3c010991:	353161        	l32r	a6, 3bfdde58 <PS_WOE+0x3bf9de58>
3c010994:	313030        	srai	a3, a3, 16
3c010997:	782f66        	bnei	a15, 2, 3c010a13 <esp32s3::__INTERRUPTS+0x267>
3c01099a:	74          	.byte 0x74
3c01099b:	736e65        	call8	3c084080 <_rodata_end+0x71258>
3c01099e:	6c2d61        	l32r	a6, 3bfeba54 <PS_WOE+0x3bfaba54>
3c0109a1:	2d78      	l32i.n	a7, a13, 8
3c0109a3:	72          	.byte 0x72
3c0109a4:	74          	.byte 0x74
3c0109a5:	2d          	.byte 0x2d
3c0109a6:	312e30        	srai	a2, a3, 30
3c0109a9:	302e36        	entry	a14, 0x1810
3c0109ac:	6372732f 	ee.vmulas.u8.accx.ld.ip.qup	q6, a2, 48, q5, q6, q7, q2
3c0109b0:	6378652f 	ee.vmulas.u8.accx.ld.ip.qup	q7, a2, 80, q5, q4, q7, q0
3c0109b4:	747065        	call8	3c0850bc <_rodata_end+0x72294>
3c0109b7:	6f69      	s32i.n	a6, a15, 24
3c0109b9:	73652f6e 	ee.vmulas.u8.qacc.ld.ip.qup	q6, a6, 240, q0, q4, q6, q5
3c0109bd:	323370        	orbc	b3, b3, b7
3c0109c0:	0073722e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a2, 32, q1, q6, q7, q3
3c0109c4:	0958      	l32i.n	a5, a9, 0
3c0109c6:	6b3c01        	l32r	a0, 3bfeb6b8 <PS_WOE+0x3bfab6b8>
3c0109c9:	000000        	ill
3c0109cc:	000066        	bnei	a0, -1, 3c0109d0 <esp32s3::__INTERRUPTS+0x224>
3c0109cf:	00          	.byte 00
3c0109d0:	000005        	call0	3c0109d4 <esp32s3::__INTERRUPTS+0x228>
3c0109d3:	00          	.byte 00
3c0109d4:	6e49      	s32i.n	a4, a14, 24
3c0109d6:	74          	.byte 0x74
3c0109d7:	727265        	call8	3c0830fc <_rodata_end+0x702d4>
3c0109da:	747075        	call12	3c0850e0 <_rodata_end+0x722b8>
3c0109dd:	203a      	add.n	a2, a0, a3
3c0109df:	09d400        	l32e	a0, a4, -12
3c0109e2:	0b3c01        	l32r	a0, 3bfd36d4 <PS_WOE+0x3bf936d4>
3c0109e5:	000000        	ill
3c0109e8:	010943        	lsi	f4, a9, 4
3c0109eb:	023c      	movi.n	a2, 48
3c0109ed:	000000        	ill
3c0109f0:	0958      	l32i.n	a5, a9, 0
3c0109f2:	6b3c01        	l32r	a0, 3bfeb6e4 <PS_WOE+0x3bfab6e4>
3c0109f5:	000000        	ill
3c0109f8:	006c      	movi.n	a0, -32
3c0109fa:	050000        	extui	a0, a0, 16, 1
3c0109fd:	000000        	ill
3c010a00:	44          	.byte 0x44
3c010a01:	6c62756f 	ee.vmulas.u8.accx.ld.ip.qup	q0, a6, -176, q5, q6, q6, q2
3c010a05:	452065        	call8	3c055c0c <_rodata_end+0x42de4>
3c010a08:	6378      	l32i.n	a7, a3, 24
3c010a0a:	747065        	call8	3c085110 <_rodata_end+0x722e8>
3c010a0d:	6f69      	s32i.n	a6, a15, 24
3c010a0f:	00203a6e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a6, 160, q0, q6, q2, q0
3c010a13:	0a0000        	add.s	f0, f0, f0
3c010a16:	123c01        	l32r	a0, 3bfd5308 <PS_WOE+0x3bf95308>
3c010a19:	000000        	ill
3c010a1c:	010943        	lsi	f4, a9, 4
3c010a1f:	023c      	movi.n	a2, 48
3c010a21:	000000        	ill
3c010a24:	0958      	l32i.n	a5, a9, 0
3c010a26:	6b3c01        	l32r	a0, 3bfeb718 <PS_WOE+0x3bfab718>
3c010a29:	000000        	ill
3c010a2c:	000072        	l8ui	a7, a0, 0
3c010a2f:	00          	.byte 00
3c010a30:	000005        	call0	3c010a34 <esp32s3::__INTERRUPTS+0x288>
3c010a33:	435000        	min	a5, a0, a0
3c010a36:	415350        	srli	a5, a5, 3
3c010a39:	314130        	srai	a4, a3, 17
3c010a3c:	413241        	l32r	a4, 3bfe0f04 <PS_WOE+0x3bfa0f04>
3c010a3f:	344133        	ssi	f3, a1, 208
3c010a42:	413541        	l32r	a4, 3bfe0f18 <PS_WOE+0x3bfa0f18>
3c010a45:	374136        	entry	a1, 0x1ba0
3c010a48:	413841        	l32r	a4, 3bfe0f28 <PS_WOE+0x3bfa0f28>
3c010a4b:	4139      	s32i.n	a3, a1, 16
3c010a4d:	413031        	l32r	a3, 3bfe0f10 <PS_WOE+0x3bfa0f10>
3c010a50:	413131        	l32r	a3, 3bfe0f14 <PS_WOE+0x3bfa0f14>
3c010a53:	413231        	l32r	a3, 3bfe0f1c <PS_WOE+0x3bfa0f1c>
3c010a56:	413331        	l32r	a3, 3bfe0f24 <PS_WOE+0x3bfa0f24>
3c010a59:	413431        	l32r	a3, 3bfe0f2c <PS_WOE+0x3bfa0f2c>
3c010a5c:	533531        	l32r	a3, 3bfe5730 <PS_WOE+0x3bfa5730>
3c010a5f:	205241        	l32r	a4, 3bfd8ba8 <PS_WOE+0x3bf98ba8>
3c010a62:	6228      	l32i.n	a2, a2, 24
3c010a64:	7479      	s32i.n	a7, a4, 28
3c010a66:	207365        	call8	3c03119c <_rodata_end+0x1e374>
3c010a69:	7449      	s32i.n	a4, a4, 28
3c010a6b:	626c      	movi.n	a2, -26
3c010a6d:	4d          	.byte 0x4d
3c010a6e:	7369      	s32i.n	a6, a3, 28
3c010a70:	73          	.byte 0x73
3c010a71:	6f6c      	movi.n	a15, -26
3c010a73:	63          	.byte 0x63
3c010a74:	697461        	l32r	a6, 3bfeb044 <PS_WOE+0x3bfab044>
3c010a77:	58456e6f 	ee.vmulas.u16.qacc.ld.ip.qup	q0, a6, 0xfffffee0, q5, q4, q4, q5
3c010a7b:	414343        	ssi	f4, a3, 0x104
3c010a7e:	455355        	call4	3c055fb4 <_rodata_end+0x4318c>
3c010a81:	4c0a      	add.n	a4, a12, a0
3c010a83:	474542        	s8i	a4, a5, 71
3c010a86:	3d          	.byte 0x3d
3c010a87:	30          	.byte 0x30
3c010a88:	4c78      	l32i.n	a7, a12, 16
3c010a8a:	7461636f 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a6, 0x130, q5, q4, q6, q1
3c010a8e:	6f69      	s32i.n	a6, a15, 24
3c010a90:	6c74446e 	ee.vmulas.u8.accx.ld.ip.qup	q0, a6, -192, q1, q0, q7, q4
3c010a94:	694d62        	s8i	a6, a13, 105
3c010a97:	73          	.byte 0x73
3c010a98:	584573        	ssi	f7, a5, 0x160
3c010a9b:	43          	.byte 0x43
3c010a9c:	444156        	bnez	a1, 3c010ee4 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x42b>
3c010a9f:	465244        	ee.ld.qacc_h.l.128.ip	a4, 0xfffffd20
3c010aa2:	533436        	entry	a4, 0x2998
3c010aa5:	202020        	or	a2, a0, a2
3c010aa8:	20          	.byte 0x20
3c010aa9:	4e49      	s32i.n	a4, a14, 16
3c010aab:	534f46        	j	3c0257ec <_rodata_end+0x129c4>
3c010aae:	4c656d6f 	ee.vmulas.u16.accx.ld.ip.qup	q0, a6, -48, q5, q4, q6, q5
3c010ab2:	444e45        	call0	3c054f98 <_rodata_end+0x42170>
3c010ab5:	20          	.byte 0x20
3c010ab6:	3d3c      	movi.n	a13, 51
3c010ab8:	        	salt	a7, a4, a2

3c010ab9 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560>:
3c010ab9:	74          	.byte 0x74
3c010aba:	72          	.byte 0x72
3c010abb:	666575        	call12	3c077110 <_rodata_end+0x642e8>
3c010abe:	6c69      	s32i.n	a6, a12, 24
3c010ac0:	5b1b65        	call8	3c06bc78 <_rodata_end+0x58e50>
3c010ac3:	576d30        	ee.stf.64.xp	f6, f5, a3, a13
3c010ac6:	4e5241        	l32r	a4, 3bfe4410 <PS_WOE+0x3bfa4410>
3c010ac9:	696c      	movi.n	a9, -26
3c010acb:	424c656e 	ee.vmulas.u16.accx.ld.ip.qup	q5, a6, 80, q1, q4, q4, q4
3c010acf:	4e4745        	call0	3c05ef44 <_rodata_end+0x4c11c>
3c010ad2:	4c656e6f 	ee.vmulas.u16.accx.ld.ip.qup	q0, a6, -32, q5, q4, q6, q5
3c010ad6:	554f43        	ssi	f4, a15, 0x154
3c010ad9:	4854544e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a4, 0xfffffe40, q1, q2, q5, q4
3c010add:	414552        	s8i	a5, a5, 65
3c010ae0:	44          	.byte 0x44
3c010ae1:	50          	.byte 0x50
3c010ae2:	54          	.byte 0x54
3c010ae3:	435352        	s16i	a5, a3, 134
3c010ae6:	41504d4f 	ee.vmulas.u16.accx.ld.ip.qup	q2, a4, 208, q5, q0, q5, q0
3c010aea:	314552        	s8i	a5, a5, 49
3c010aed:	415242        	s16i	a4, a2, 130
3c010af0:	4c4343        	ssi	f4, a3, 0x130
3c010af3:	4343414f 	ee.vmulas.u16.accx.ld.ip.qup	q6, a4, 16, q5, q0, q4, q3
3c010af7:	4948      	l32i.n	a4, a9, 16
3c010af9:	4d          	.byte 0x4d
3c010afa:	314d30        	srai	a4, a3, 29
3c010afd:	4d          	.byte 0x4d
3c010afe:	334d32        	s8i	a3, a13, 51
3c010b01:	343646        	j	3c01dbde <_rodata_end+0xadb6>
3c010b04:	4c5f52        	s16i	a5, a15, 152
3c010b07:	3436464f 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a4, 0x160, q5, q0, q3, q6
3c010b0b:	485f52        	s16i	a5, a15, 144
3c010b0e:	4649      	s32i.n	a4, a6, 16
3c010b10:	43          	.byte 0x43
3c010b11:	534652        	s8i	a5, a6, 83
3c010b14:	304652        	s8i	a5, a6, 48
3c010b17:	463146        	j	3c0223e0 <_rodata_end+0xf5b8>
3c010b1a:	334632        	s8i	a3, a6, 51
3c010b1d:	463446        	j	3c0223f2 <_rodata_end+0xf5ca>
3c010b20:	364635        	call12	3c046f84 <_rodata_end+0x3415c>
3c010b23:	463746        	j	3c022404 <_rodata_end+0xf5dc>
3c010b26:	4638      	l32i.n	a3, a6, 16
3c010b28:	4639      	s32i.n	a3, a6, 16
3c010b2a:	463031        	l32r	a3, 3bfe23ec <PS_WOE+0x3bfa23ec>
3c010b2d:	463131        	l32r	a3, 3bfe23f4 <PS_WOE+0x3bfa23f4>
3c010b30:	463231        	l32r	a3, 3bfe23f8 <PS_WOE+0x3bfa23f8>
3c010b33:	463331        	l32r	a3, 3bfe2400 <PS_WOE+0x3bfa2400>
3c010b36:	463431        	l32r	a3, 3bfe2408 <PS_WOE+0x3bfa2408>
3c010b39:	003531        	l32r	a3, 3bfd0c10 <PS_WOE+0x3bf90c10>
3c010b3c:	010a34        	ee.ldqa.s16.128.ip	a3, 160
3c010b3f:	023c      	movi.n	a2, 48
3c010b41:	000000        	ill
3c010b44:	010a36        	entry	a10, 128
3c010b47:	023c      	movi.n	a2, 48
3c010b49:	000000        	ill
3c010b4c:	0a38      	l32i.n	a3, a10, 0
3c010b4e:	023c01        	l32r	a0, 3bfd1440 <PS_WOE+0x3bf91440>
3c010b51:	000000        	ill
3c010b54:	0a3a      	add.n	a0, a10, a3
3c010b56:	023c01        	l32r	a0, 3bfd1448 <PS_WOE+0x3bf91448>
3c010b59:	000000        	ill
3c010b5c:	0a3c      	movi.n	a10, 48
3c010b5e:	023c01        	l32r	a0, 3bfd1450 <PS_WOE+0x3bf91450>
3c010b61:	000000        	ill
3c010b64:	3c010a3e 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a3, -96, q0, q0, q0, q1
3c010b68:	000002        	l8ui	a0, a0, 0
3c010b6b:	0a4000        	add.s	f4, f0, f0
3c010b6e:	023c01        	l32r	a0, 3bfd1460 <PS_WOE+0x3bf91460>
3c010b71:	000000        	ill
3c010b74:	010a42        	l8ui	a4, a10, 1
3c010b77:	023c      	movi.n	a2, 48
3c010b79:	000000        	ill
3c010b7c:	010a44        	ee.ldqa.s16.128.ip	a4, 160
3c010b7f:	023c      	movi.n	a2, 48
3c010b81:	000000        	ill
3c010b84:	010a46        	j	3c010fb1 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x4f8>
3c010b87:	023c      	movi.n	a2, 48
3c010b89:	000000        	ill
3c010b8c:	0a48      	l32i.n	a4, a10, 0
3c010b8e:	023c01        	l32r	a0, 3bfd1480 <PS_WOE+0x3bf91480>
3c010b91:	000000        	ill
3c010b94:	0a4a      	add.n	a0, a10, a4
3c010b96:	023c01        	l32r	a0, 3bfd1488 <PS_WOE+0x3bf91488>
3c010b99:	000000        	ill
3c010b9c:	0a4c      	movi.n	a10, 64
3c010b9e:	033c01        	l32r	a0, 3bfd1890 <PS_WOE+0x3bf91890>
3c010ba1:	000000        	ill
3c010ba4:	3c010a4f 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a4, -96, q4, q0, q0, q1
3c010ba8:	000003        	lsi	f0, a0, 0
3c010bab:	0a5200        	add.s	f5, f2, f0
3c010bae:	033c01        	l32r	a0, 3bfd18a0 <PS_WOE+0x3bf918a0>
3c010bb1:	000000        	ill
3c010bb4:	010a55        	call4	3c011c5c <anon.a2419419f6f361306492d28391e54aee.0.llvm.15124477990207687272+0x60>
3c010bb7:	033c      	movi.n	a3, 48
3c010bb9:	000000        	ill
3c010bbc:	0a58      	l32i.n	a5, a10, 0
3c010bbe:	033c01        	l32r	a0, 3bfd18b0 <PS_WOE+0x3bf918b0>
3c010bc1:	000000        	ill
3c010bc4:	0a5b      	addi.n	a0, a10, 5
3c010bc6:	033c01        	l32r	a0, 3bfd18b8 <PS_WOE+0x3bf918b8>
3c010bc9:	000000        	ill
3c010bcc:	3c010a5e 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a5, -96, q0, q0, q0, q1
3c010bd0:	000003        	lsi	f0, a0, 0
3c010bd3:	0a7900        	add.s	f7, f9, f0
3c010bd6:	083c01        	l32r	a0, 3bfd2cc8 <PS_WOE+0x3bf92cc8>
3c010bd9:	000000        	ill
3c010bdc:	0a99      	s32i.n	a9, a10, 0
3c010bde:	083c01        	l32r	a0, 3bfd2cd0 <PS_WOE+0x3bf92cd0>
3c010be1:	000000        	ill
3c010be4:	0acd      	mov.n	a12, a10
3c010be6:	043c01        	l32r	a0, 3bfd1cd8 <PS_WOE+0x3bf91cd8>
3c010be9:	000000        	ill
3c010bec:	010ab1        	l32r	a11, 3bfd1014 <PS_WOE+0x3bf91014>
3c010bef:	043c      	movi.n	a4, 48
3c010bf1:	000000        	ill
3c010bf4:	010ad5        	call4	3c011ca4 <anon.a2419419f6f361306492d28391e54aee.5.llvm.15124477990207687272+0xa>
3c010bf7:	063c      	movi.n	a6, 48
3c010bf9:	000000        	ill
3c010bfc:	0adb      	addi.n	a0, a10, 13
3c010bfe:	093c01        	l32r	a0, 3bfd30f0 <PS_WOE+0x3bf930f0>
3c010c01:	000000        	ill
3c010c04:	010ae4        	ee.ldqa.s16.128.ip	a14, 160
3c010c07:	093c      	movi.n	a9, 48
3c010c09:	000000        	ill
3c010c0c:	0aed      	mov.n	a14, a10
3c010c0e:	023c01        	l32r	a0, 3bfd1500 <PS_WOE+0x3bf91500>
3c010c11:	000000        	ill
3c010c14:	3c010aef 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a14, -96, q4, q0, q0, q1
3c010c18:	000005        	call0	3c010c1c <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x163>
3c010c1b:	0af400        	add.s	f15, f4, f0
3c010c1e:	053c01        	l32r	a0, 3bfd2110 <PS_WOE+0x3bf92110>
3c010c21:	000000        	ill
3c010c24:	0af9      	s32i.n	a15, a10, 0
3c010c26:	023c01        	l32r	a0, 3bfd1518 <PS_WOE+0x3bf91518>
3c010c29:	000000        	ill
3c010c2c:	0afb      	addi.n	a0, a10, 15
3c010c2e:	023c01        	l32r	a0, 3bfd1520 <PS_WOE+0x3bf91520>
3c010c31:	000000        	ill
3c010c34:	0afd      	mov.n	a15, a10
3c010c36:	023c01        	l32r	a0, 3bfd1528 <PS_WOE+0x3bf91528>
3c010c39:	000000        	ill
3c010c3c:	3c010aff 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a15, -96, q4, q0, q0, q1
3c010c40:	000002        	l8ui	a0, a0, 0
3c010c43:	00          	.byte 00
3c010c44:	010b01        	l32r	a0, 3bfd1070 <PS_WOE+0x3bf91070>
3c010c47:	073c      	movi.n	a7, 48
3c010c49:	000000        	ill
3c010c4c:	0b08      	l32i.n	a0, a11, 0
3c010c4e:	073c01        	l32r	a0, 3bfd2940 <PS_WOE+0x3bf92940>
3c010c51:	000000        	ill
3c010c54:	010aa1        	l32r	a10, 3bfd107c <PS_WOE+0x3bf9107c>
3c010c57:	043c      	movi.n	a4, 48
3c010c59:	000000        	ill
3c010c5c:	3c010b0f 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a0, -80, q4, q0, q0, q1
3c010c60:	000003        	lsi	f0, a0, 0
3c010c63:	00          	.byte 00
3c010c64:	010b12        	l8ui	a1, a11, 1
3c010c67:	033c      	movi.n	a3, 48
3c010c69:	000000        	ill
3c010c6c:	010b15        	call4	3c011d20 <anon.a2419419f6f361306492d28391e54aee.5.llvm.15124477990207687272+0x86>
3c010c6f:	023c      	movi.n	a2, 48
3c010c71:	000000        	ill
3c010c74:	010b17        	bnone	a11, a1, 3c010c79 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x1c0>
3c010c77:	023c      	movi.n	a2, 48
3c010c79:	000000        	ill
3c010c7c:	0b19      	s32i.n	a1, a11, 0
3c010c7e:	023c01        	l32r	a0, 3bfd1570 <PS_WOE+0x3bf91570>
3c010c81:	000000        	ill
3c010c84:	0b1b      	addi.n	a0, a11, 1
3c010c86:	023c01        	l32r	a0, 3bfd1578 <PS_WOE+0x3bf91578>
3c010c89:	000000        	ill
3c010c8c:	0b1d      	mov.n	a1, a11
3c010c8e:	023c01        	l32r	a0, 3bfd1580 <PS_WOE+0x3bf91580>
3c010c91:	000000        	ill
3c010c94:	3c010b1f 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a1, -80, q4, q0, q0, q1
3c010c98:	000002        	l8ui	a0, a0, 0
3c010c9b:	00          	.byte 00
3c010c9c:	010b21        	l32r	a2, 3bfd10c8 <PS_WOE+0x3bf910c8>
3c010c9f:	023c      	movi.n	a2, 48
3c010ca1:	000000        	ill
3c010ca4:	010b23        	lsi	f2, a11, 4
3c010ca7:	023c      	movi.n	a2, 48
3c010ca9:	000000        	ill
3c010cac:	010b25        	call8	3c011d60 <anon.a2419419f6f361306492d28391e54aee.5.llvm.15124477990207687272+0xc6>
3c010caf:	023c      	movi.n	a2, 48
3c010cb1:	000000        	ill
3c010cb4:	010b27        	bnone	a11, a2, 3c010cb9 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x200>
3c010cb7:	023c      	movi.n	a2, 48
3c010cb9:	000000        	ill
3c010cbc:	0b29      	s32i.n	a2, a11, 0
3c010cbe:	033c01        	l32r	a0, 3bfd19b0 <PS_WOE+0x3bf919b0>
3c010cc1:	000000        	ill
3c010cc4:	0b2c      	movi.n	a11, 32
3c010cc6:	033c01        	l32r	a0, 3bfd19b8 <PS_WOE+0x3bf919b8>
3c010cc9:	000000        	ill
3c010ccc:	3c010b2f 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a2, -80, q4, q0, q0, q1
3c010cd0:	000003        	lsi	f0, a0, 0
3c010cd3:	00          	.byte 00
3c010cd4:	010b32        	l8ui	a3, a11, 1
3c010cd7:	033c      	movi.n	a3, 48
3c010cd9:	000000        	ill
3c010cdc:	010b35        	call12	3c011d90 <anon.74cf5c4392ae7087c6811939ec90b90a.8.llvm.1665210306593330739+0x2c>
3c010cdf:	033c      	movi.n	a3, 48
3c010ce1:	000000        	ill
3c010ce4:	0b38      	l32i.n	a3, a11, 0
3c010ce6:	033c01        	l32r	a0, 3bfd19d8 <PS_WOE+0x3bf919d8>
3c010ce9:	000000        	ill
3c010cec:	b0          	.byte 0xb0
3c010ced:	0442000f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0x100, q4, q0, q4, q2
3c010cf1:	000000        	ill
3c010cf4:	000004        	ee.ld.qacc_l.l.128.ip	a0, 0
3c010cf7:	00          	.byte 00
3c010cf8:	0f7c      	movi.n	a15, -16
3c010cfa:	b04200        	addx8	a4, a2, a0
3c010cfd:	0442000f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0x100, q4, q0, q4, q2
3c010d01:	000000        	ill
3c010d04:	000004        	ee.ld.qacc_l.l.128.ip	a0, 0
3c010d07:	00          	.byte 00
3c010d08:	0f18      	l32i.n	a1, a15, 0
3c010d0a:	434200        	min	a4, a2, a0
3c010d0d:	65746e6f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 0x1e0, q5, q4, q7, q4
3c010d11:	7478      	l32i.n	a7, a4, 28
3c010d13:	6c49      	s32i.n	a4, a12, 24
3c010d15:	656c      	movi.n	a5, -26
3c010d17:	6c6167        	bbci	a1, 6, 3c010d87 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x2ce>
3c010d1a:	53          	.byte 0x53
3c010d1b:	7379      	s32i.n	a7, a3, 28
3c010d1d:	63          	.byte 0x63
3c010d1e:	6c6c61        	l32r	a6, 3bfebed0 <PS_WOE+0x3bfabed0>
3c010d21:	6e49      	s32i.n	a4, a14, 24
3c010d23:	73          	.byte 0x73
3c010d24:	457274        	ee.ldqa.u16.128.ip	a7, -224
3c010d27:	72          	.byte 0x72
3c010d28:	726f72        	s32i	a7, a15, 0x1c8
3c010d2b:	6f4c      	movi.n	a15, 70
3c010d2d:	536461        	l32r	a6, 3bfe5ac0 <PS_WOE+0x3bfa5ac0>
3c010d30:	74          	.byte 0x74
3c010d31:	4565726f 	ee.vmulas.u16.accx.ld.ip.qup	q2, a6, 0x120, q5, q6, q6, q5
3c010d35:	72          	.byte 0x72
3c010d36:	726f72        	s32i	a7, a15, 0x1c8
3c010d39:	654c      	movi.n	a5, 70
3c010d3b:	76          	.byte 0x76
3c010d3c:	4f6c65        	call8	3c060404 <_rodata_end+0x4d5dc>
3c010d3f:	6e49656e 	ee.vmulas.u8.accx.ld.ip.qup	q5, a6, -176, q1, q4, q4, q1
3c010d43:	74          	.byte 0x74
3c010d44:	727265        	call8	3c08346c <_rodata_end+0x70644>
3c010d47:	747075        	call12	3c08544c <_rodata_end+0x72624>
3c010d4a:	6c6c41        	l32r	a4, 3bfebefc <PS_WOE+0x3bfabefc>
3c010d4d:	4461636f 	ee.vmulas.u16.accx.ld.ip.qup	q0, a6, 0x130, q5, q4, q6, q1
3c010d51:	7669      	s32i.n	a6, a6, 28
3c010d53:	6469      	s32i.n	a6, a4, 24
3c010d55:	794265        	call8	3c08a17c <_rodata_end+0x77354>
3c010d58:	655a      	add.n	a6, a5, a5
3c010d5a:	4e6f72        	s32i	a7, a15, 0x138
3c010d5d:	747865        	call8	3c0854e4 <_rodata_end+0x726bc>
3c010d60:	564350        	ee.ldf.64.xp	f4, f5, a5, a3
3c010d63:	756c61        	l32r	a6, 3bfee314 <PS_WOE+0x3bfae314>
3c010d66:	6c4965        	call8	3c07d1fc <_rodata_end+0x6a3d4>
3c010d69:	656c      	movi.n	a5, -26
3c010d6b:	6c6167        	bbci	a1, 6, 3c010ddb <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x322>
3c010d6e:	50          	.byte 0x50
3c010d6f:	766972        	s32i	a7, a9, 0x1d8
3c010d72:	6c69      	s32i.n	a6, a12, 24
3c010d74:	656765        	call8	3c0763ec <_rodata_end+0x635c4>
3c010d77:	64          	.byte 0x64
3c010d78:	616e55        	call4	3c072460 <_rodata_end+0x5f638>
3c010d7b:	696c      	movi.n	a9, -26
3c010d7d:	656e67        	bbci	a14, 6, 3c010de6 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x32d>
3c010d80:	64          	.byte 0x64
3c010d81:	747845        	call0	3c085508 <_rodata_end+0x726e0>
3c010d84:	6e7265        	call8	3c07f4ac <_rodata_end+0x6c684>
3c010d87:	526c61        	l32r	a6, 3bfe5738 <PS_WOE+0x3bfa5738>
3c010d8a:	696765        	call8	3c07a400 <_rodata_end+0x675d8>
3c010d8d:	73          	.byte 0x73
3c010d8e:	74          	.byte 0x74
3c010d8f:	507265        	call8	3c0614b4 <_rodata_end+0x4e68c>
3c010d92:	766972        	s32i	a7, a9, 0x1d8
3c010d95:	6c69      	s32i.n	a6, a12, 24
3c010d97:	656765        	call8	3c07640c <_rodata_end+0x635e4>
3c010d9a:	727245        	call0	3c0834c0 <_rodata_end+0x70698>
3c010d9d:	7845726f 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a6, 0xfffffe20, q5, q6, q4, q5
3c010da1:	63          	.byte 0x63
3c010da2:	756c      	movi.n	a5, -25
3c010da4:	73          	.byte 0x73
3c010da5:	7669      	s32i.n	a6, a6, 28
3c010da7:	724565        	call8	3c0831fc <_rodata_end+0x703d4>
3c010daa:	726f72        	s32i	a7, a15, 0x1c8
3c010dad:	6e49      	s32i.n	a4, a14, 24
3c010daf:	73          	.byte 0x73
3c010db0:	74          	.byte 0x74
3c010db1:	614472        	s8i	a7, a4, 97
3c010db4:	456174        	ee.ldqa.u16.128.ip	a7, 0xfffffe10
3c010db7:	72          	.byte 0x72
3c010db8:	726f72        	s32i	a7, a15, 0x1c8
3c010dbb:	6f4c      	movi.n	a15, 70
3c010dbd:	536461        	l32r	a6, 3bfe5b50 <PS_WOE+0x3bfa5b50>
3c010dc0:	74          	.byte 0x74
3c010dc1:	4465726f 	ee.vmulas.u16.accx.ld.ip.qup	q0, a6, 0x120, q5, q6, q6, q5
3c010dc5:	617461        	l32r	a6, 3bfe9398 <PS_WOE+0x3bfa9398>
3c010dc8:	727245        	call0	3c0834f0 <_rodata_end+0x706c8>
3c010dcb:	6e49726f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a6, -224, q5, q6, q4, q1
3c010dcf:	73          	.byte 0x73
3c010dd0:	417274        	ee.ldqa.s16.128.ip	a7, -224
3c010dd3:	64          	.byte 0x64
3c010dd4:	457264        	ee.ldqa.u16.128.ip	a6, -224
3c010dd7:	72          	.byte 0x72
3c010dd8:	726f72        	s32i	a7, a15, 0x1c8
3c010ddb:	6f4c      	movi.n	a15, 70
3c010ddd:	536461        	l32r	a6, 3bfe5b70 <PS_WOE+0x3bfa5b70>
3c010de0:	74          	.byte 0x74
3c010de1:	4165726f 	ee.vmulas.u16.accx.ld.ip.qup	q2, a6, 32, q5, q6, q6, q5
3c010de5:	64          	.byte 0x64
3c010de6:	457264        	ee.ldqa.u16.128.ip	a6, -224
3c010de9:	72          	.byte 0x72
3c010dea:	726f72        	s32i	a7, a15, 0x1c8
3c010ded:	7449      	s32i.n	a4, a4, 28
3c010def:	626c      	movi.n	a2, -26
3c010df1:	4d          	.byte 0x4d
3c010df2:	746c75        	call12	3c0854b8 <_rodata_end+0x72690>
3c010df5:	4869      	s32i.n	a6, a8, 16
3c010df7:	7469      	s32i.n	a6, a4, 28
3c010df9:	6e49      	s32i.n	a4, a14, 24
3c010dfb:	73          	.byte 0x73
3c010dfc:	527274        	ee.st.qacc_h.h.32.ip	a7, -56
3c010dff:	6e69      	s32i.n	a6, a14, 24
3c010e01:	655267        	bbc	a2, a6, 3c010e6a <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x3b1>
3c010e04:	73          	.byte 0x73
3c010e05:	767265        	call8	3c08752c <_rodata_end+0x74704>
3c010e08:	316465        	call8	3c042450 <_rodata_end+0x2f628>
3c010e0b:	4939      	s32i.n	a3, a9, 16
3c010e0d:	7274736e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a6, 48, q1, q6, q7, q4
3c010e11:	50          	.byte 0x50
3c010e12:	686f72        	s32i	a7, a15, 0x1a0
3c010e15:	6269      	s32i.n	a6, a2, 24
3c010e17:	7469      	s32i.n	a6, a4, 28
3c010e19:	526465        	call8	3c063460 <_rodata_end+0x50638>
3c010e1c:	657365        	call8	3c076554 <_rodata_end+0x6372c>
3c010e1f:	72          	.byte 0x72
3c010e20:	76          	.byte 0x76
3c010e21:	326465        	call8	3c043468 <_rodata_end+0x30640>
3c010e24:	655231        	l32r	a3, 3bfea36c <PS_WOE+0x3bfaa36c>
3c010e27:	73          	.byte 0x73
3c010e28:	767265        	call8	3c087550 <_rodata_end+0x74728>
3c010e2b:	326465        	call8	3c043470 <_rodata_end+0x30648>
3c010e2e:	655232        	s16i	a3, a2, 202
3c010e31:	73          	.byte 0x73
3c010e32:	767265        	call8	3c087558 <_rodata_end+0x74730>
3c010e35:	326465        	call8	3c04347c <_rodata_end+0x30654>
3c010e38:	744433        	ssi	f3, a4, 0x1d0
3c010e3b:	626c      	movi.n	a2, -26
3c010e3d:	4d          	.byte 0x4d
3c010e3e:	746c75        	call12	3c085504 <_rodata_end+0x726dc>
3c010e41:	4869      	s32i.n	a6, a8, 16
3c010e43:	7469      	s32i.n	a6, a4, 28
3c010e45:	6f4c      	movi.n	a15, 70
3c010e47:	536461        	l32r	a6, 3bfe5bd8 <PS_WOE+0x3bfa5bd8>
3c010e4a:	74          	.byte 0x74
3c010e4b:	5265726f 	ee.vmulas.u16.qacc.ld.ip.qup	q4, a6, 32, q5, q6, q6, q5
3c010e4f:	6e69      	s32i.n	a6, a14, 24
3c010e51:	655267        	bbc	a2, a6, 3c010eba <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x401>
3c010e54:	73          	.byte 0x73
3c010e55:	767265        	call8	3c08757c <_rodata_end+0x74754>
3c010e58:	326465        	call8	3c0434a0 <_rodata_end+0x30678>
3c010e5b:	6f4c37        	ball	a12, a3, 3c010ece <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x415>
3c010e5e:	506461        	l32r	a6, 3bfe4ff0 <PS_WOE+0x3bfa4ff0>
3c010e61:	686f72        	s32i	a7, a15, 0x1a0
3c010e64:	6269      	s32i.n	a6, a2, 24
3c010e66:	7469      	s32i.n	a6, a4, 28
3c010e68:	536465        	call8	3c0644b0 <_rodata_end+0x51688>
3c010e6b:	74          	.byte 0x74
3c010e6c:	5065726f 	ee.vmulas.u16.qacc.ld.ip.qup	q0, a6, 32, q5, q6, q6, q5
3c010e70:	686f72        	s32i	a7, a15, 0x1a0
3c010e73:	6269      	s32i.n	a6, a2, 24
3c010e75:	7469      	s32i.n	a6, a4, 28
3c010e77:	526465        	call8	3c0634bc <_rodata_end+0x50694>
3c010e7a:	657365        	call8	3c0765b0 <_rodata_end+0x63788>
3c010e7d:	72          	.byte 0x72
3c010e7e:	76          	.byte 0x76
3c010e7f:	336465        	call8	3c0444c4 <_rodata_end+0x3169c>
3c010e82:	655230        	extui	a5, a3, 18, 7
3c010e85:	73          	.byte 0x73
3c010e86:	767265        	call8	3c0875ac <_rodata_end+0x74784>
3c010e89:	336465        	call8	3c0444d0 <_rodata_end+0x316a8>
3c010e8c:	704331        	l32r	a3, 3bfecf98 <PS_WOE+0x3bfacf98>
3c010e8f:	30          	.byte 0x30
3c010e90:	44          	.byte 0x44
3c010e91:	7369      	s32i.n	a6, a3, 28
3c010e93:	6c6261        	l32r	a6, 3bfec01c <PS_WOE+0x3bfac01c>
3c010e96:	436465        	call8	3c0544dc <_rodata_end+0x416b4>
3c010e99:	443170        	extui	a3, a7, 1, 5
3c010e9c:	7369      	s32i.n	a6, a3, 28
3c010e9e:	6c6261        	l32r	a6, 3bfec028 <PS_WOE+0x3bfac028>
3c010ea1:	436465        	call8	3c0544e8 <_rodata_end+0x416c0>
3c010ea4:	443270        	extui	a3, a7, 2, 5
3c010ea7:	7369      	s32i.n	a6, a3, 28
3c010ea9:	6c6261        	l32r	a6, 3bfec034 <PS_WOE+0x3bfac034>
3c010eac:	436465        	call8	3c0544f4 <_rodata_end+0x416cc>
3c010eaf:	443370        	extui	a3, a7, 3, 5
3c010eb2:	7369      	s32i.n	a6, a3, 28
3c010eb4:	6c6261        	l32r	a6, 3bfec03c <PS_WOE+0x3bfac03c>
3c010eb7:	436465        	call8	3c0544fc <_rodata_end+0x416d4>
3c010eba:	443470        	extui	a3, a7, 4, 5
3c010ebd:	7369      	s32i.n	a6, a3, 28
3c010ebf:	6c6261        	l32r	a6, 3bfec048 <PS_WOE+0x3bfac048>
3c010ec2:	436465        	call8	3c054508 <_rodata_end+0x416e0>
3c010ec5:	443570        	extui	a3, a7, 5, 5
3c010ec8:	7369      	s32i.n	a6, a3, 28
3c010eca:	6c6261        	l32r	a6, 3bfec054 <PS_WOE+0x3bfac054>
3c010ecd:	436465        	call8	3c054514 <_rodata_end+0x416ec>
3c010ed0:	443670        	extui	a3, a7, 6, 5
3c010ed3:	7369      	s32i.n	a6, a3, 28
3c010ed5:	6c6261        	l32r	a6, 3bfec060 <PS_WOE+0x3bfac060>
3c010ed8:	436465        	call8	3c054520 <_rodata_end+0x416f8>
3c010edb:	443770        	extui	a3, a7, 7, 5
3c010ede:	7369      	s32i.n	a6, a3, 28
3c010ee0:	6c6261        	l32r	a6, 3bfec068 <PS_WOE+0x3bfac068>
3c010ee3:	006465        	call8	3c011528 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xa6f>
3c010ee6:	040000        	extui	a0, a0, 0, 1
3c010ee9:	000000        	ill
3c010eec:	000007        	bnone	a0, a0, 3c010ef0 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x437>
3c010eef:	00          	.byte 00
3c010ef0:	000007        	bnone	a0, a0, 3c010ef4 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x43b>
3c010ef3:	00          	.byte 00
3c010ef4:	000a      	add.n	a0, a0, a0
3c010ef6:	00          	.byte 00
3c010ef7:	00          	.byte 00
3c010ef8:	0000000e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q0, q0, q0, q0
3c010efc:	000011        	l32r	a1, 3bfd0efc <PS_WOE+0x3bf90efc>
3c010eff:	00          	.byte 00
3c010f00:	000006        	j	3c010f04 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x44b>
3c010f03:	00          	.byte 00
3c010f04:	000c      	movi.n	a0, 0
3c010f06:	120000        	andbc	b0, b0, b0
3c010f09:	000000        	ill
3c010f0c:	000a      	add.n	a0, a0, a0
3c010f0e:	090000        	l32e	a0, a0, -64
3c010f11:	000000        	ill
3c010f14:	0000001e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a1, 0, q0, q0, q0, q0
3c010f18:	0000000e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q0, q0, q0, q0
3c010f1c:	0000000e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q0, q0, q0, q0
3c010f20:	000012        	l8ui	a1, a0, 0
3c010f23:	00          	.byte 00
3c010f24:	0000000e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q0, q0, q0, q0
3c010f28:	000012        	l8ui	a1, a0, 0
3c010f2b:	00          	.byte 00
3c010f2c:	0008      	l32i.n	a0, a0, 0
3c010f2e:	00          	.byte 00
3c010f2f:	00          	.byte 00
3c010f30:	000c      	movi.n	a0, 0
3c010f32:	090000        	l32e	a0, a0, -64
3c010f35:	000000        	ill
3c010f38:	000a      	add.n	a0, a0, a0
3c010f3a:	00          	.byte 00
3c010f3b:	00          	.byte 00
3c010f3c:	0000000f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q4, q0, q0, q0
3c010f40:	000a      	add.n	a0, a0, a0
3c010f42:	0a0000        	add.s	f0, f0, f0
3c010f45:	000000        	ill
3c010f48:	000a      	add.n	a0, a0, a0
3c010f4a:	080000        	lsx	f0, a0, a0
3c010f4d:	000000        	ill
3c010f50:	000c      	movi.n	a0, 0
3c010f52:	00          	.byte 00
3c010f53:	00          	.byte 00
3c010f54:	000d      	mov.n	a0, a0
3c010f56:	0a0000        	add.s	f0, f0, f0
3c010f59:	000000        	ill
3c010f5c:	0000000e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q0, q0, q0, q0
3c010f60:	0000000f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q4, q0, q0, q0
3c010f64:	000a      	add.n	a0, a0, a0
3c010f66:	0a0000        	add.s	f0, f0, f0
3c010f69:	000000        	ill
3c010f6c:	000b      	addi.n	a0, a0, -1
3c010f6e:	00          	.byte 00
3c010f6f:	00          	.byte 00
3c010f70:	000b      	addi.n	a0, a0, -1
3c010f72:	00          	.byte 00
3c010f73:	00          	.byte 00
3c010f74:	000b      	addi.n	a0, a0, -1
3c010f76:	00          	.byte 00
3c010f77:	00          	.byte 00
3c010f78:	000b      	addi.n	a0, a0, -1
3c010f7a:	00          	.byte 00
3c010f7b:	00          	.byte 00
3c010f7c:	000b      	addi.n	a0, a0, -1
3c010f7e:	00          	.byte 00
3c010f7f:	00          	.byte 00
3c010f80:	000b      	addi.n	a0, a0, -1
3c010f82:	00          	.byte 00
3c010f83:	00          	.byte 00
3c010f84:	000b      	addi.n	a0, a0, -1
3c010f86:	00          	.byte 00
3c010f87:	00          	.byte 00
3c010f88:	000b      	addi.n	a0, a0, -1
3c010f8a:	d10000        	mul16s	a0, a0, a0
3c010f8d:	010a      	add.n	a0, a1, a0
3c010f8f:	133c      	movi.n	a3, 49
3c010f91:	010d      	mov.n	a0, a1
3c010f93:	1a3c      	movi.n	a10, 49
3c010f95:	010d      	mov.n	a0, a1
3c010f97:	213c      	movi.n	a1, 50
3c010f99:	010d      	mov.n	a0, a1
3c010f9b:	2b3c      	movi.n	a11, 50
3c010f9d:	010d      	mov.n	a0, a1
3c010f9f:	393c      	movi.n	a9, 51
3c010fa1:	010d      	mov.n	a0, a1
3c010fa3:	4a3c      	movi.n	a10, 52
3c010fa5:	010d      	mov.n	a0, a1
3c010fa7:	503c      	movi.n	a0, 53
3c010fa9:	010d      	mov.n	a0, a1
3c010fab:	5c3c      	movi.n	a12, 53
3c010fad:	010d      	mov.n	a0, a1
3c010faf:	6e3c      	movi.n	a14, 54
3c010fb1:	010d      	mov.n	a0, a1
3c010fb3:	783c      	movi.n	a8, 55
3c010fb5:	010d      	mov.n	a0, a1
3c010fb7:	813c      	movi.n	a1, 56
3c010fb9:	010d      	mov.n	a0, a1
3c010fbb:	9f3c      	movi.n	a15, 57
3c010fbd:	010d      	mov.n	a0, a1
3c010fbf:	ad3c      	movi.n	a13, 58
3c010fc1:	010d      	mov.n	a0, a1
3c010fc3:	bb3c      	movi.n	a11, 59
3c010fc5:	010d      	mov.n	a0, a1
3c010fc7:	cd3c      	movi.n	a13, 60
3c010fc9:	010d      	mov.n	a0, a1
3c010fcb:	db3c      	movi.n	a11, 61
3c010fcd:	010d      	mov.n	a0, a1
3c010fcf:	693c      	movi.n	a9, 54
3c010fd1:	010a      	add.n	a0, a1, a0
3c010fd3:	ed3c      	movi.n	a13, 62
3c010fd5:	010d      	mov.n	a0, a1
3c010fd7:	f93c      	movi.n	a9, 63
3c010fd9:	010d      	mov.n	a0, a1
3c010fdb:	023c      	movi.n	a2, 48
3c010fdd:	0c3c010e 	ee.vmulas.s16.accx.ld.ip.qup	q1, a0, -240, q0, q0, q3, q4
3c010fe1:	1b3c010e 	ee.vmulas.s16.qacc.ld.ip.qup	q7, a0, 0xfffffe10, q0, q0, q3, q4
3c010fe5:	253c010e 	ee.vmulas.s8.accx.ld.ip.qup	q3, a0, 0x110, q0, q0, q3, q4
3c010fe9:	2f3c010e 	ee.vmulas.s8.accx.ld.ip.qup	q7, a0, -240, q0, q0, q3, q4
3c010fed:	913c010e 	ee.stf.128.ip	f3, f8, f0, f3, a0, 16
3c010ff1:	010a      	add.n	a0, a1, a0
3c010ff3:	393c      	movi.n	a9, 51
3c010ff5:	453c010e 	ee.vmulas.u16.accx.ld.ip.qup	q3, a0, 0x110, q0, q0, q3, q4
3c010ff9:	523c010e 	ee.vmulas.u16.qacc.ld.ip.qup	q5, a0, 16, q0, q0, q3, q4
3c010ffd:	5c3c010e 	ee.vmulas.u16.qacc.ld.ip.qup	q1, a0, -240, q0, q0, q3, q4
3c011001:	6a3c010e 	ee.vmulas.u8.accx.ld.ip.qup	q5, a0, 0xfffffe10, q0, q0, q3, q4
3c011005:	793c010e 	ee.vmulas.u8.qacc.ld.ip.qup	q3, a0, 0xfffffe10, q0, q0, q3, q4
3c011009:	833c010e 	ee.ldf.128.ip	f7, f8, f0, f3, a0, 16
3c01100d:	8d3c010e 	ee.ldf.128.xp	f11, f8, f0, f3, a0, a1
3c011011:	983c010e 	ee.stf.128.xp	f1, f8, f0, f3, a0, a1
3c011015:	a33c010e 	ee.fft.ams.s16.st.incp	q3, q7, a0, a1, q4, q0, q0, 0
3c011019:	ae3c010e 	ee.fft.cmul.s16.st.xp	q0, q3, q4, a0, a1, 0, 1, 3
3c01101d:	b93c010e 	ee.vmulas.s8.accx.ld.xp.qup	q3, a0, a1, q0, q0, q3, q4
3c011021:	c43c010e 	ee.vmulas.u16.qacc.ld.xp.qup	q1, a0, a1, q0, q0, q3, q4
3c011025:	cf3c010e 	ee.vmulas.u8.qacc.ld.xp.qup	q7, a0, a1, q0, q0, q3, q4
3c011029:	da3c010e 	ee.fft.ams.s16.ld.r32.decp	q1, a0, q0, q2, q0, q3, q4, 1
3c01102d:	203c010e 	ee.vmulas.s8.accx.ld.ip.qup	q1, a0, 16, q0, q0, q3, q4
3c011031:	420013        	lsi	f1, a0, 0x108
3c011034:	000004        	ee.ld.qacc_l.l.128.ip	a0, 0
3c011037:	00          	.byte 00
3c011038:	000004        	ee.ld.qacc_l.l.128.ip	a0, 0
3c01103b:	142c00        	extui	a2, a0, 12, 2
3c01103e:	344200        	extui	a4, a0, 2, 4
3c011041:	420013        	lsi	f1, a0, 0x108
3c011044:	0013f4        	ee.ld.qacc_l.l.128.ip	a15, 0x130
3c011047:	6f4342        	s8i	a4, a3, 111
3c01104a:	7865746e 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a6, 0xfffffe40, q1, q6, q6, q5
3c01104e:	500a74        	ee.ld.ua_state.ip	a7, 0xfffff8a0
3c011051:	43          	.byte 0x43
3c011052:	3d          	.byte 0x3d
3c011053:	207830        	or	a7, a8, a3
3c011056:	202020        	or	a2, a0, a2
3c011059:	202020        	or	a2, a0, a2
3c01105c:	50          	.byte 0x50
3c01105d:	53          	.byte 0x53
3c01105e:	3d          	.byte 0x3d
3c01105f:	0a7830        	add.s	f7, f8, f3
3c011062:	3d3041        	l32r	a4, 3bfe0524 <PS_WOE+0x3bfa0524>
3c011065:	207830        	or	a7, a8, a3
3c011068:	202020        	or	a2, a0, a2
3c01106b:	202020        	or	a2, a0, a2
3c01106e:	3d3141        	l32r	a4, 3bfe0534 <PS_WOE+0x3bfa0534>
3c011071:	207830        	or	a7, a8, a3
3c011074:	202020        	or	a2, a0, a2
3c011077:	202020        	or	a2, a0, a2
3c01107a:	3d3241        	l32r	a4, 3bfe0544 <PS_WOE+0x3bfa0544>
3c01107d:	207830        	or	a7, a8, a3
3c011080:	202020        	or	a2, a0, a2
3c011083:	202020        	or	a2, a0, a2
3c011086:	3d3341        	l32r	a4, 3bfe0554 <PS_WOE+0x3bfa0554>
3c011089:	207830        	or	a7, a8, a3
3c01108c:	202020        	or	a2, a0, a2
3c01108f:	202020        	or	a2, a0, a2
3c011092:	3d3441        	l32r	a4, 3bfe0564 <PS_WOE+0x3bfa0564>
3c011095:	0a7830        	add.s	f7, f8, f3
3c011098:	3d3541        	l32r	a4, 3bfe056c <PS_WOE+0x3bfa056c>
3c01109b:	207830        	or	a7, a8, a3
3c01109e:	202020        	or	a2, a0, a2
3c0110a1:	202020        	or	a2, a0, a2
3c0110a4:	3d3641        	l32r	a4, 3bfe057c <PS_WOE+0x3bfa057c>
3c0110a7:	207830        	or	a7, a8, a3
3c0110aa:	202020        	or	a2, a0, a2
3c0110ad:	202020        	or	a2, a0, a2
3c0110b0:	3d3741        	l32r	a4, 3bfe058c <PS_WOE+0x3bfa058c>
3c0110b3:	207830        	or	a7, a8, a3
3c0110b6:	202020        	or	a2, a0, a2
3c0110b9:	202020        	or	a2, a0, a2
3c0110bc:	3d3841        	l32r	a4, 3bfe059c <PS_WOE+0x3bfa059c>
3c0110bf:	207830        	or	a7, a8, a3
3c0110c2:	202020        	or	a2, a0, a2
3c0110c5:	202020        	or	a2, a0, a2
3c0110c8:	3d3941        	l32r	a4, 3bfe05ac <PS_WOE+0x3bfa05ac>
3c0110cb:	0a7830        	add.s	f7, f8, f3
3c0110ce:	303141        	l32r	a4, 3bfdd194 <PS_WOE+0x3bf9d194>
3c0110d1:	3d          	.byte 0x3d
3c0110d2:	207830        	or	a7, a8, a3
3c0110d5:	202020        	or	a2, a0, a2
3c0110d8:	412020        	srli	a2, a2, 0
3c0110db:	3d3131        	l32r	a3, 3bfe05a0 <PS_WOE+0x3bfa05a0>
3c0110de:	207830        	or	a7, a8, a3
3c0110e1:	202020        	or	a2, a0, a2
3c0110e4:	412020        	srli	a2, a2, 0
3c0110e7:	3d3231        	l32r	a3, 3bfe05b0 <PS_WOE+0x3bfa05b0>
3c0110ea:	207830        	or	a7, a8, a3
3c0110ed:	202020        	or	a2, a0, a2
3c0110f0:	412020        	srli	a2, a2, 0
3c0110f3:	3d3331        	l32r	a3, 3bfe05c0 <PS_WOE+0x3bfa05c0>
3c0110f6:	207830        	or	a7, a8, a3
3c0110f9:	202020        	or	a2, a0, a2
3c0110fc:	412020        	srli	a2, a2, 0
3c0110ff:	3d3431        	l32r	a3, 3bfe05d0 <PS_WOE+0x3bfa05d0>
3c011102:	0a7830        	add.s	f7, f8, f3
3c011105:	353141        	l32r	a4, 3bfde5cc <PS_WOE+0x3bf9e5cc>
3c011108:	3d          	.byte 0x3d
3c011109:	0a7830        	add.s	f7, f8, f3
3c01110c:	524153        	ssi	f5, a1, 0x148
3c01110f:	0a3d      	mov.n	a3, a10
3c011111:	435845        	call0	3c054698 <_rodata_end+0x41870>
3c011114:	554143        	ssi	f4, a1, 0x154
3c011117:	3d4553        	ssi	f5, a5, 244
3c01111a:	207830        	or	a7, a8, a3
3c01111d:	435845        	call0	3c0546a4 <_rodata_end+0x4187c>
3c011120:	444156        	bnez	a1, 3c011568 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xaaf>
3c011123:	44          	.byte 0x44
3c011124:	52          	.byte 0x52
3c011125:	3d          	.byte 0x3d
3c011126:	207830        	or	a7, a8, a3
3c011129:	202020        	or	a2, a0, a2
3c01112c:	454c20        	extui	a4, a2, 28, 5
3c01112f:	303d444e 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a4, 64, q1, q0, q3, q5
3c011133:	2078      	l32i.n	a7, a0, 8
3c011135:	202020        	or	a2, a0, a2
3c011138:	434c20        	min	a4, a12, a2
3c01113b:	544e554f 	ee.vmulas.u16.qacc.ld.ip.qup	q1, a4, 0x150, q5, q2, q4, q6
3c01113f:	3d          	.byte 0x3d
3c011140:	0a7830        	add.s	f7, f8, f3
3c011143:	524854        	ee.st.qacc_h.h.32.ip	a5, -224
3c011146:	444145        	call0	3c05555c <_rodata_end+0x42734>
3c011149:	50          	.byte 0x50
3c01114a:	54          	.byte 0x54
3c01114b:	52          	.byte 0x52
3c01114c:	3d          	.byte 0x3d
3c01114d:	0a7830        	add.s	f7, f8, f3
3c011150:	4f4353        	ssi	f5, a3, 0x13c
3c011153:	4d          	.byte 0x4d
3c011154:	50          	.byte 0x50
3c011155:	455241        	l32r	a4, 3bfe26a0 <PS_WOE+0x3bfa26a0>
3c011158:	303d31        	l32r	a3, 3bfdd24c <PS_WOE+0x3bf9d24c>
3c01115b:	0a78      	l32i.n	a7, a10, 0
3c01115d:	3d5242        	s16i	a4, a2, 122
3c011160:	0a7830        	add.s	f7, f8, f3
3c011163:	434341        	l32r	a4, 3bfe1e70 <PS_WOE+0x3bfa1e70>
3c011166:	4f4c      	movi.n	a15, 68
3c011168:	3d          	.byte 0x3d
3c011169:	207830        	or	a7, a8, a3
3c01116c:	202020        	or	a2, a0, a2
3c01116f:	434341        	l32r	a4, 3bfe1e7c <PS_WOE+0x3bfa1e7c>
3c011172:	4948      	l32i.n	a4, a9, 16
3c011174:	3d          	.byte 0x3d
3c011175:	0a7830        	add.s	f7, f8, f3
3c011178:	4d          	.byte 0x4d
3c011179:	303d30        	xor	a3, a13, a3
3c01117c:	2078      	l32i.n	a7, a0, 8
3c01117e:	202020        	or	a2, a0, a2
3c011181:	202020        	or	a2, a0, a2
3c011184:	4d          	.byte 0x4d
3c011185:	303d31        	l32r	a3, 3bfdd27c <PS_WOE+0x3bf9d27c>
3c011188:	2078      	l32i.n	a7, a0, 8
3c01118a:	202020        	or	a2, a0, a2
3c01118d:	202020        	or	a2, a0, a2
3c011190:	4d          	.byte 0x4d
3c011191:	32          	.byte 0x32
3c011192:	3d          	.byte 0x3d
3c011193:	207830        	or	a7, a8, a3
3c011196:	202020        	or	a2, a0, a2
3c011199:	202020        	or	a2, a0, a2
3c01119c:	4d          	.byte 0x4d
3c01119d:	33          	.byte 0x33
3c01119e:	3d          	.byte 0x3d
3c01119f:	0a7830        	add.s	f7, f8, f3
3c0111a2:	343646        	j	3c01e27f <_rodata_end+0xb457>
3c0111a5:	4c5f52        	s16i	a5, a15, 152
3c0111a8:	78303d4f 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a4, 0xfffffed0, q4, q6, q3, q0
3c0111ac:	462020        	ee.ldf.64.xp	f2, f4, a2, a0
3c0111af:	523436        	entry	a4, 0x2918
3c0111b2:	3d49485f 	ee.vmulas.s8.qacc.ld.ip.qup	q3, a5, -128, q5, q0, q4, q1
3c0111b6:	207830        	or	a7, a8, a3
3c0111b9:	364620        	ee.ldf.64.xp	f4, f3, a2, a6
3c0111bc:	34          	.byte 0x34
3c0111bd:	53          	.byte 0x53
3c0111be:	3d          	.byte 0x3d
3c0111bf:	0a7830        	add.s	f7, f8, f3
3c0111c2:	524346        	j	3c025ad3 <_rodata_end+0x12cab>
3c0111c5:	3d          	.byte 0x3d
3c0111c6:	207830        	or	a7, a8, a3
3c0111c9:	202020        	or	a2, a0, a2
3c0111cc:	462020        	ee.ldf.64.xp	f2, f4, a2, a0
3c0111cf:	53          	.byte 0x53
3c0111d0:	52          	.byte 0x52
3c0111d1:	3d          	.byte 0x3d
3c0111d2:	0a7830        	add.s	f7, f8, f3
3c0111d5:	3d3046        	j	3c02069a <_rodata_end+0xd872>
3c0111d8:	207830        	or	a7, a8, a3
3c0111db:	202020        	or	a2, a0, a2
3c0111de:	202020        	or	a2, a0, a2
3c0111e1:	3d3146        	j	3c0206aa <_rodata_end+0xd882>
3c0111e4:	207830        	or	a7, a8, a3
3c0111e7:	202020        	or	a2, a0, a2
3c0111ea:	202020        	or	a2, a0, a2
3c0111ed:	3d3246        	j	3c0206ba <_rodata_end+0xd892>
3c0111f0:	207830        	or	a7, a8, a3
3c0111f3:	202020        	or	a2, a0, a2
3c0111f6:	202020        	or	a2, a0, a2
3c0111f9:	3d3346        	j	3c0206ca <_rodata_end+0xd8a2>
3c0111fc:	207830        	or	a7, a8, a3
3c0111ff:	202020        	or	a2, a0, a2
3c011202:	202020        	or	a2, a0, a2
3c011205:	3d3446        	j	3c0206da <_rodata_end+0xd8b2>
3c011208:	0a7830        	add.s	f7, f8, f3
3c01120b:	3d3546        	j	3c0206e4 <_rodata_end+0xd8bc>
3c01120e:	207830        	or	a7, a8, a3
3c011211:	202020        	or	a2, a0, a2
3c011214:	202020        	or	a2, a0, a2
3c011217:	3d3646        	j	3c0206f4 <_rodata_end+0xd8cc>
3c01121a:	207830        	or	a7, a8, a3
3c01121d:	202020        	or	a2, a0, a2
3c011220:	202020        	or	a2, a0, a2
3c011223:	3d3746        	j	3c020704 <_rodata_end+0xd8dc>
3c011226:	207830        	or	a7, a8, a3
3c011229:	202020        	or	a2, a0, a2
3c01122c:	202020        	or	a2, a0, a2
3c01122f:	3d3846        	j	3c020714 <_rodata_end+0xd8ec>
3c011232:	207830        	or	a7, a8, a3
3c011235:	202020        	or	a2, a0, a2
3c011238:	202020        	or	a2, a0, a2
3c01123b:	3d3946        	j	3c020724 <_rodata_end+0xd8fc>
3c01123e:	0a7830        	add.s	f7, f8, f3
3c011241:	303146        	j	3c01d30a <_rodata_end+0xa4e2>
3c011244:	3d          	.byte 0x3d
3c011245:	207830        	or	a7, a8, a3
3c011248:	202020        	or	a2, a0, a2
3c01124b:	462020        	ee.ldf.64.xp	f2, f4, a2, a0
3c01124e:	3d3131        	l32r	a3, 3bfe0714 <PS_WOE+0x3bfa0714>
3c011251:	207830        	or	a7, a8, a3
3c011254:	202020        	or	a2, a0, a2
3c011257:	462020        	ee.ldf.64.xp	f2, f4, a2, a0
3c01125a:	3d3231        	l32r	a3, 3bfe0724 <PS_WOE+0x3bfa0724>
3c01125d:	207830        	or	a7, a8, a3
3c011260:	202020        	or	a2, a0, a2
3c011263:	462020        	ee.ldf.64.xp	f2, f4, a2, a0
3c011266:	3d3331        	l32r	a3, 3bfe0734 <PS_WOE+0x3bfa0734>
3c011269:	207830        	or	a7, a8, a3
3c01126c:	202020        	or	a2, a0, a2
3c01126f:	462020        	ee.ldf.64.xp	f2, f4, a2, a0
3c011272:	3d3431        	l32r	a3, 3bfe0744 <PS_WOE+0x3bfa0744>
3c011275:	0a7830        	add.s	f7, f8, f3
3c011278:	353146        	j	3c01e741 <_rodata_end+0xb919>
3c01127b:	3d          	.byte 0x3d
3c01127c:	0a7830        	add.s	f7, f8, f3
3c01127f:	104800        	and	a4, a8, a0
3c011282:	0d3c01        	l32r	a0, 3bfd4774 <PS_WOE+0x3bf94774>
3c011285:	000000        	ill
3c011288:	011055        	call4	3c012390 <anon.c1bbbf51cdc064267945a986967bba91.14.llvm.7723965441082667207+0x5f>
3c01128b:	0c3c      	movi.n	a12, 48
3c01128d:	000000        	ill
3c011290:	011061        	l32r	a6, 3bfd16d0 <PS_WOE+0x3bf916d0>
3c011293:	063c      	movi.n	a6, 48
3c011295:	000000        	ill
3c011298:	011067        	beq	a0, a6, 3c01129d <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x7e4>
3c01129b:	0c3c      	movi.n	a12, 48
3c01129d:	000000        	ill
3c0112a0:	73          	.byte 0x73
3c0112a1:	10          	.byte 0x10
3c0112a2:	0c3c01        	l32r	a0, 3bfd4394 <PS_WOE+0x3bf94394>
3c0112a5:	000000        	ill
3c0112a8:	3c01107f 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a7, 0xffffff00, q4, q2, q0, q1
3c0112ac:	000c      	movi.n	a0, 0
3c0112ae:	8b0000        	moveqz.s	f0, f0, a0
3c0112b1:	10          	.byte 0x10
3c0112b2:	0c3c01        	l32r	a0, 3bfd43a4 <PS_WOE+0x3bf943a4>
3c0112b5:	000000        	ill
3c0112b8:	011097        	beq	a0, a9, 3c0112bd <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x804>
3c0112bb:	063c      	movi.n	a6, 48
3c0112bd:	000000        	ill
3c0112c0:	9d          	.byte 0x9d
3c0112c1:	10          	.byte 0x10
3c0112c2:	0c3c01        	l32r	a0, 3bfd43b4 <PS_WOE+0x3bf943b4>
3c0112c5:	000000        	ill
3c0112c8:	10a9      	s32i.n	a10, a0, 4
3c0112ca:	0c3c01        	l32r	a0, 3bfd43bc <PS_WOE+0x3bf943bc>
3c0112cd:	000000        	ill
3c0112d0:	0110b5        	call12	3c0123dc <anon.c1bbbf51cdc064267945a986967bba91.14.llvm.7723965441082667207+0xab>
3c0112d3:	0c3c      	movi.n	a12, 48
3c0112d5:	000000        	ill
3c0112d8:	0110c1        	l32r	a12, 3bfd1718 <PS_WOE+0x3bf91718>
3c0112db:	0c3c      	movi.n	a12, 48
3c0112dd:	000000        	ill
3c0112e0:	cd          	.byte 0xcd
3c0112e1:	10          	.byte 0x10
3c0112e2:	073c01        	l32r	a0, 3bfd2fd4 <PS_WOE+0x3bf92fd4>
3c0112e5:	000000        	ill
3c0112e8:	0110d4        	ee.ldqa.s16.128.ip	a13, 0x100
3c0112eb:	0c3c      	movi.n	a12, 48
3c0112ed:	000000        	ill
3c0112f0:	0110e0        	slli	a1, a0, 18
3c0112f3:	0c3c      	movi.n	a12, 48
3c0112f5:	000000        	ill
3c0112f8:	10ec      	bnez.n	a0, 3c01131d <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x864>
3c0112fa:	0c3c01        	l32r	a0, 3bfd43ec <PS_WOE+0x3bf943ec>
3c0112fd:	000000        	ill
3c011300:	10f8      	l32i.n	a15, a0, 4
3c011302:	0c3c01        	l32r	a0, 3bfd43f4 <PS_WOE+0x3bf943f4>
3c011305:	000000        	ill
3c011308:	011104        	ee.ldqa.s16.128.ip	a0, 0x110
3c01130b:	073c      	movi.n	a7, 48
3c01130d:	000000        	ill
3c011310:	110b      	addi.n	a1, a1, -1
3c011312:	053c01        	l32r	a0, 3bfd2804 <PS_WOE+0x3bf92804>
3c011315:	000000        	ill
3c011318:	011110        	slli	a1, a1, 31
3c01131b:	0c3c      	movi.n	a12, 48
3c01131d:	000000        	ill
3c011320:	111c      	movi.n	a1, 17
3c011322:	0c3c01        	l32r	a0, 3bfd4414 <PS_WOE+0x3bf94414>
3c011325:	000000        	ill
3c011328:	010a81        	l32r	a8, 3bfd1750 <PS_WOE+0x3bf91750>
3c01132b:	083c      	movi.n	a8, 48
3c01132d:	000000        	ill
3c011330:	1128      	l32i.n	a2, a1, 4
3c011332:	0c3c01        	l32r	a0, 3bfd4424 <PS_WOE+0x3bf94424>
3c011335:	000000        	ill
3c011338:	011134        	ee.ldqa.s16.128.ip	a3, 0x110
3c01133b:	0e3c      	movi.n	a14, 48
3c01133d:	000000        	ill
3c011340:	011142        	l16ui	a4, a1, 2
3c011343:	0d3c      	movi.n	a13, 48
3c011345:	000000        	ill
3c011348:	3c01114f 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a4, -240, q4, q2, q0, q1
3c01134c:	000d      	mov.n	a0, a0
3c01134e:	00          	.byte 00
3c01134f:	115c00        	slli	a5, a12, 16
3c011352:	063c01        	l32r	a0, 3bfd2c44 <PS_WOE+0x3bf92c44>
3c011355:	000000        	ill
3c011358:	011162        	l16ui	a6, a1, 2
3c01135b:	093c      	movi.n	a9, 48
3c01135d:	000000        	ill
3c011360:	116b      	addi.n	a1, a1, 6
3c011362:	0c3c01        	l32r	a0, 3bfd4454 <PS_WOE+0x3bf94454>
3c011365:	000000        	ill
3c011368:	011177        	beq	a1, a7, 3c01136d <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x8b4>
3c01136b:	063c      	movi.n	a6, 48
3c01136d:	000000        	ill
3c011370:	7d          	.byte 0x7d
3c011371:	3c0111        	l32r	a1, 3bfe0378 <PS_WOE+0x3bfa0378>
3c011374:	000c      	movi.n	a0, 0
3c011376:	00          	.byte 00
3c011377:	118900        	slli	a8, a9, 16
3c01137a:	0c3c01        	l32r	a0, 3bfd446c <PS_WOE+0x3bf9446c>
3c01137d:	000000        	ill
3c011380:	011195        	call4	3c01249c <anon.7279222ba2c67945cf2b798d12ef55a0.35.llvm.17200090188990483032+0xc>
3c011383:	0c3c      	movi.n	a12, 48
3c011385:	000000        	ill
3c011388:	0111a1        	l32r	a10, 3bfd17cc <PS_WOE+0x3bf917cc>
3c01138b:	0b3c      	movi.n	a11, 48
3c01138d:	000000        	ill
3c011390:	11ac      	beqz.n	a1, 3c0113b5 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x8fc>
3c011392:	0c3c01        	l32r	a0, 3bfd4484 <PS_WOE+0x3bf94484>
3c011395:	000000        	ill
3c011398:	11b8      	l32i.n	a11, a1, 4
3c01139a:	093c01        	l32r	a0, 3bfd388c <PS_WOE+0x3bf9388c>
3c01139d:	000000        	ill
3c0113a0:	0111c1        	l32r	a12, 3bfd17e4 <PS_WOE+0x3bf917e4>
3c0113a3:	073c      	movi.n	a7, 48
3c0113a5:	000000        	ill
3c0113a8:	11c8      	l32i.n	a12, a1, 4
3c0113aa:	0c3c01        	l32r	a0, 3bfd449c <PS_WOE+0x3bf9449c>
3c0113ad:	000000        	ill
3c0113b0:	0111d4        	ee.ldqa.s16.128.ip	a13, 0x110
3c0113b3:	063c      	movi.n	a6, 48
3c0113b5:	000000        	ill
3c0113b8:	11da      	add.n	a1, a1, a13
3c0113ba:	0c3c01        	l32r	a0, 3bfd44ac <PS_WOE+0x3bf944ac>
3c0113bd:	000000        	ill
3c0113c0:	0111e6        	bgei	a1, 1, 3c0113c5 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x90c>
3c0113c3:	0c3c      	movi.n	a12, 48
3c0113c5:	000000        	ill
3c0113c8:	0111f2        	l16ui	a15, a1, 2
3c0113cb:	0c3c      	movi.n	a12, 48
3c0113cd:	000000        	ill
3c0113d0:	3c0111fe 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a15, -240, q0, q2, q0, q1
3c0113d4:	000c      	movi.n	a0, 0
3c0113d6:	0a0000        	add.s	f0, f0, f0
3c0113d9:	3c0112        	l8ui	a1, a1, 60
3c0113dc:	000006        	j	3c0113e0 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x927>
3c0113df:	121000        	andbc	b1, b0, b0
3c0113e2:	0c3c01        	l32r	a0, 3bfd44d4 <PS_WOE+0x3bf944d4>
3c0113e5:	000000        	ill
3c0113e8:	121c      	movi.n	a2, 17
3c0113ea:	0c3c01        	l32r	a0, 3bfd44dc <PS_WOE+0x3bf944dc>
3c0113ed:	000000        	ill
3c0113f0:	1228      	l32i.n	a2, a2, 4
3c0113f2:	0c3c01        	l32r	a0, 3bfd44e4 <PS_WOE+0x3bf944e4>
3c0113f5:	000000        	ill
3c0113f8:	011234        	ee.ldqa.s16.128.ip	a3, 0x120
3c0113fb:	0c3c      	movi.n	a12, 48
3c0113fd:	000000        	ill
3c011400:	011240        	slli	a1, a2, 28
3c011403:	073c      	movi.n	a7, 48
3c011405:	000000        	ill
3c011408:	011247        	beq	a2, a4, 3c01140d <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x954>
3c01140b:	0c3c      	movi.n	a12, 48
3c01140d:	000000        	ill
3c011410:	53          	.byte 0x53
3c011411:	3c0112        	l8ui	a1, a1, 60
3c011414:	000c      	movi.n	a0, 0
3c011416:	00          	.byte 00
3c011417:	125f00        	andbc	b5, b15, b0
3c01141a:	0c3c01        	l32r	a0, 3bfd450c <PS_WOE+0x3bf9450c>
3c01141d:	000000        	ill
3c011420:	126b      	addi.n	a1, a2, 6
3c011422:	0c3c01        	l32r	a0, 3bfd4514 <PS_WOE+0x3bf94514>
3c011425:	000000        	ill
3c011428:	011277        	beq	a2, a7, 3c01142d <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x974>
3c01142b:	073c      	movi.n	a7, 48
3c01142d:	000000        	ill
3c011430:	3c01127e 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a7, -224, q0, q2, q0, q1
3c011434:	000001        	l32r	a0, 3bfd1434 <PS_WOE+0x3bf91434>
3c011437:	0a2000        	add.s	f2, f0, f0
3c01143a:	00          	.byte 00
3c01143b:	143800        	extui	a3, a0, 8, 2
3c01143e:	023c01        	l32r	a0, 3bfd1d30 <PS_WOE+0x3bf91d30>
3c011441:	000000        	ill
3c011444:	202121        	l32r	a2, 3bfd94c8 <PS_WOE+0x3bf994c8>
3c011447:	702041        	l32r	a4, 3bfed4c8 <PS_WOE+0x3bfad4c8>
3c01144a:	696e61        	l32r	a6, 3bfeba04 <PS_WOE+0x3bfaba04>
3c01144d:	63          	.byte 0x63
3c01144e:	636f20        	minu	a6, a15, a2
3c011451:	63          	.byte 0x63
3c011452:	657275        	call12	3c076b78 <_rodata_end+0x63d50>
3c011455:	64          	.byte 0x64
3c011456:	20          	.byte 0x20
3c011457:	6e69      	s32i.n	a6, a14, 24
3c011459:	272720        	ee.stf.64.xp	f2, f2, a2, a7
3c01145c:	202c      	movi.n	a0, 34
3c01145e:	207461        	l32r	a6, 3bfd9630 <PS_WOE+0x3bf99630>
3c011461:	696c      	movi.n	a9, -26
3c011463:	2c20656e 	ee.vmulas.s8.accx.ld.ip.qup	q0, a6, -176, q1, q4, q2, q0
3c011467:	20          	.byte 0x20
3c011468:	63          	.byte 0x63
3c011469:	6d756c6f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, -64, q5, q4, q7, q5
3c01146d:	4400206e 	ee.vmulas.u16.accx.ld.ip.qup	q0, a6, 0x100, q0, q4, q0, q0
3c011471:	14          	.byte 0x14
3c011472:	173c01        	l32r	a0, 3bfd7164 <PS_WOE+0x3bf97164>
3c011475:	000000        	ill
3c011478:	145b      	addi.n	a1, a4, 5
3c01147a:	0b3c01        	l32r	a0, 3bfd416c <PS_WOE+0x3bf9416c>
3c01147d:	000000        	ill
3c011480:	011466        	bnei	a4, 1, 3c011485 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0x9cc>
3c011483:	093c      	movi.n	a9, 48
3c011485:	000000        	ill
3c011488:	3c01127e 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a7, -224, q0, q2, q0, q1
3c01148c:	000001        	l32r	a0, 3bfd148c <PS_WOE+0x3bf9148c>
3c01148f:	212100        	srai	a2, a0, 1
3c011492:	204120        	or	a4, a1, a2
3c011495:	70          	.byte 0x70
3c011496:	696e61        	l32r	a6, 3bfeba50 <PS_WOE+0x3bfaba50>
3c011499:	63          	.byte 0x63
3c01149a:	636f20        	minu	a6, a15, a2
3c01149d:	63          	.byte 0x63
3c01149e:	657275        	call12	3c076bc4 <_rodata_end+0x63d9c>
3c0114a1:	64          	.byte 0x64
3c0114a2:	746120        	extui	a6, a2, 1, 8
3c0114a5:	20          	.byte 0x20
3c0114a6:	206e61        	l32r	a6, 3bfd9660 <PS_WOE+0x3bf99660>
3c0114a9:	6b6e75        	call12	3c07cb90 <_rodata_end+0x69d68>
3c0114ac:	6e776f6e 	ee.vmulas.u8.accx.ld.ip.qup	q4, a6, -16, q1, q4, q7, q7
3c0114b0:	20          	.byte 0x20
3c0114b1:	6f6c      	movi.n	a15, -26
3c0114b3:	63          	.byte 0x63
3c0114b4:	697461        	l32r	a6, 3bfeba84 <PS_WOE+0x3bfaba84>
3c0114b7:	000a6e6f 	ee.vmulas.s16.accx.ld.ip.qup	q1, a6, 224, q5, q4, q0, q2
3c0114bb:	149000        	extui	a9, a0, 0, 2
3c0114be:	2a3c01        	l32r	a0, 3bfdbdb0 <PS_WOE+0x3bf9bdb0>
3c0114c1:	000000        	ill
3c0114c4:	1048      	l32i.n	a4, a0, 4
3c0114c6:	003c01        	l32r	a0, 3bfd15b8 <PS_WOE+0x3bf915b8>
3c0114c9:	000000        	ill
3c0114cc:	3c01127e 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a7, -224, q0, q2, q0, q1
3c0114d0:	000001        	l32r	a0, 3bfd14d0 <PS_WOE+0x3bf914d0>
3c0114d3:	00          	.byte 00
3c0114d4:	636142        	s32i	a4, a1, 0x18c
3c0114d7:	746b      	addi.n	a7, a4, 6
3c0114d9:	636172        	s32i	a7, a1, 0x18c
3c0114dc:	0a3a65        	call8	3c01b884 <_rodata_end+0x8a5c>
3c0114df:	14d400        	extui	a13, a0, 4, 2
3c0114e2:	0b3c01        	l32r	a0, 3bfd41d4 <PS_WOE+0x3bf941d4>
3c0114e5:	000000        	ill
3c0114e8:	30          	.byte 0x30
3c0114e9:	0078      	l32i.n	a7, a0, 0
3c0114eb:	14e800        	extui	a14, a0, 8, 2
3c0114ee:	023c01        	l32r	a0, 3bfd1de0 <PS_WOE+0x3bf91de0>
3c0114f1:	000000        	ill
3c0114f4:	3c01127e 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a7, -224, q0, q2, q0, q1
3c0114f8:	000001        	l32r	a0, 3bfd14f8 <PS_WOE+0x3bf914f8>
3c0114fb:	0a0a00        	add.s	f0, f10, f0
3c0114fe:	637845        	call0	3c074c84 <_rodata_end+0x61e5c>
3c011501:	747065        	call8	3c085c08 <_rodata_end+0x72de0>
3c011504:	6f69      	s32i.n	a6, a15, 24
3c011506:	636f206e 	ee.vmulas.u8.accx.ld.ip.qup	q7, a6, 0, q0, q4, q6, q7
3c01150a:	63          	.byte 0x63
3c01150b:	657275        	call12	3c076c30 <_rodata_end+0x63e08>
3c01150e:	64          	.byte 0x64
3c01150f:	272720        	ee.stf.64.xp	f2, f2, a2, a7
3c011512:	000a      	add.n	a0, a0, a0
3c011514:	14fc      	bnez.n	a4, 3c011549 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xa90>
3c011516:	153c01        	l32r	a0, 3bfd6a08 <PS_WOE+0x3bf96a08>
3c011519:	000000        	ill
3c01151c:	011511        	l32r	a1, 3bfd1970 <PS_WOE+0x3bf91970>
3c01151f:	023c      	movi.n	a2, 48
3c011521:	000000        	ill
3c011524:	3c01127e 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a7, -224, q0, q2, q0, q1
3c011528:	000001        	l32r	a0, 3bfd1528 <PS_WOE+0x3bf91528>
3c01152b:	00          	.byte 00
3c01152c:	6c49      	s32i.n	a4, a12, 24
3c01152e:	656c      	movi.n	a5, -26
3c011530:	6c6167        	bbci	a1, 6, 3c0115a0 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xae7>
3c011533:	6e49      	s32i.n	a4, a14, 24
3c011535:	73          	.byte 0x73
3c011536:	74          	.byte 0x74
3c011537:	72          	.byte 0x72
3c011538:	746375        	call12	3c085b70 <_rodata_end+0x72d48>
3c01153b:	6f69      	s32i.n	a6, a15, 24
3c01153d:	7379536e 	ee.vmulas.u8.qacc.ld.ip.qup	q7, a6, 48, q1, q2, q7, q1
3c011541:	63          	.byte 0x63
3c011542:	6c6c61        	l32r	a6, 3bfec6f4 <PS_WOE+0x3bfac6f4>
3c011545:	6e49      	s32i.n	a4, a14, 24
3c011547:	73          	.byte 0x73
3c011548:	467274        	ee.ld.qacc_h.l.128.ip	a7, -224
3c01154b:	637465        	call8	3c074c90 <_rodata_end+0x61e68>
3c01154e:	4568      	l32i.n	a6, a5, 16
3c011550:	72          	.byte 0x72
3c011551:	726f72        	s32i	a7, a15, 0x1c8
3c011554:	6f4c      	movi.n	a15, 70
3c011556:	536461        	l32r	a6, 3bfe62e8 <PS_WOE+0x3bfa62e8>
3c011559:	74          	.byte 0x74
3c01155a:	4565726f 	ee.vmulas.u16.accx.ld.ip.qup	q2, a6, 0x120, q5, q6, q6, q5
3c01155e:	72          	.byte 0x72
3c01155f:	726f72        	s32i	a7, a15, 0x1c8
3c011562:	654c      	movi.n	a5, 70
3c011564:	76          	.byte 0x76
3c011565:	4f6c65        	call8	3c060c2c <_rodata_end+0x4de04>
3c011568:	6e49656e 	ee.vmulas.u8.accx.ld.ip.qup	q5, a6, -176, q1, q4, q4, q1
3c01156c:	74          	.byte 0x74
3c01156d:	727265        	call8	3c083c94 <_rodata_end+0x70e6c>
3c011570:	747075        	call12	3c085c78 <_rodata_end+0x72e50>
3c011573:	6c6c41        	l32r	a4, 3bfec724 <PS_WOE+0x3bfac724>
3c011576:	4461636f 	ee.vmulas.u16.accx.ld.ip.qup	q0, a6, 0x130, q5, q4, q6, q1
3c01157a:	7669      	s32i.n	a6, a6, 28
3c01157c:	6469      	s32i.n	a6, a4, 24
3c01157e:	794265        	call8	3c08a9a4 <_rodata_end+0x77b7c>
3c011581:	655a      	add.n	a6, a5, a5
3c011583:	4e6f72        	s32i	a7, a15, 0x138
3c011586:	747865        	call8	3c085d0c <_rodata_end+0x72ee4>
3c011589:	564350        	ee.ldf.64.xp	f4, f5, a5, a3
3c01158c:	756c61        	l32r	a6, 3bfeeb3c <PS_WOE+0x3bfaeb3c>
3c01158f:	6c4965        	call8	3c07da24 <_rodata_end+0x6abfc>
3c011592:	656c      	movi.n	a5, -26
3c011594:	6c6167        	bbci	a1, 6, 3c011604 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xb4b>
3c011597:	50          	.byte 0x50
3c011598:	766972        	s32i	a7, a9, 0x1d8
3c01159b:	6c69      	s32i.n	a6, a12, 24
3c01159d:	656765        	call8	3c076c14 <_rodata_end+0x63dec>
3c0115a0:	64          	.byte 0x64
3c0115a1:	6e49      	s32i.n	a4, a14, 24
3c0115a3:	73          	.byte 0x73
3c0115a4:	74          	.byte 0x74
3c0115a5:	72          	.byte 0x72
3c0115a6:	746375        	call12	3c085bdc <_rodata_end+0x72db4>
3c0115a9:	6f69      	s32i.n	a6, a15, 24
3c0115ab:	616e556e 	ee.vmulas.u8.accx.ld.ip.qup	q3, a6, 80, q1, q2, q6, q6
3c0115af:	696c      	movi.n	a9, -26
3c0115b1:	656e67        	bbci	a14, 6, 3c01161a <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xb61>
3c0115b4:	64          	.byte 0x64
3c0115b5:	6f4c      	movi.n	a15, 70
3c0115b7:	4f6461        	l32r	a6, 3bfe5348 <PS_WOE+0x3bfa5348>
3c0115ba:	745372        	s16i	a7, a3, 232
3c0115bd:	4565726f 	ee.vmulas.u16.accx.ld.ip.qup	q2, a6, 0x120, q5, q6, q6, q5
3c0115c1:	7478      	l32i.n	a7, a4, 28
3c0115c3:	6e7265        	call8	3c07fce8 <_rodata_end+0x6cec0>
3c0115c6:	526c61        	l32r	a6, 3bfe5f78 <PS_WOE+0x3bfa5f78>
3c0115c9:	696765        	call8	3c07ac40 <_rodata_end+0x67e18>
3c0115cc:	73          	.byte 0x73
3c0115cd:	74          	.byte 0x74
3c0115ce:	507265        	call8	3c061cf4 <_rodata_end+0x4eecc>
3c0115d1:	766972        	s32i	a7, a9, 0x1d8
3c0115d4:	6c69      	s32i.n	a6, a12, 24
3c0115d6:	656765        	call8	3c076c4c <_rodata_end+0x63e24>
3c0115d9:	727245        	call0	3c083d00 <_rodata_end+0x70ed8>
3c0115dc:	7845726f 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a6, 0xfffffe20, q5, q6, q4, q5
3c0115e0:	63          	.byte 0x63
3c0115e1:	756c      	movi.n	a5, -25
3c0115e3:	73          	.byte 0x73
3c0115e4:	7669      	s32i.n	a6, a6, 28
3c0115e6:	724565        	call8	3c083a3c <_rodata_end+0x70c14>
3c0115e9:	726f72        	s32i	a7, a15, 0x1c8
3c0115ec:	6e49      	s32i.n	a4, a14, 24
3c0115ee:	73          	.byte 0x73
3c0115ef:	74          	.byte 0x74
3c0115f0:	614472        	s8i	a7, a4, 97
3c0115f3:	456174        	ee.ldqa.u16.128.ip	a7, 0xfffffe10
3c0115f6:	72          	.byte 0x72
3c0115f7:	726f72        	s32i	a7, a15, 0x1c8
3c0115fa:	6f4c      	movi.n	a15, 70
3c0115fc:	536461        	l32r	a6, 3bfe638c <PS_WOE+0x3bfa638c>
3c0115ff:	74          	.byte 0x74
3c011600:	4465726f 	ee.vmulas.u16.accx.ld.ip.qup	q0, a6, 0x120, q5, q6, q6, q5
3c011604:	617461        	l32r	a6, 3bfe9bd4 <PS_WOE+0x3bfa9bd4>
3c011607:	727245        	call0	3c083d2c <_rodata_end+0x70f04>
3c01160a:	6e49726f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a6, -224, q5, q6, q4, q1
3c01160e:	73          	.byte 0x73
3c01160f:	417274        	ee.ldqa.s16.128.ip	a7, -224
3c011612:	64          	.byte 0x64
3c011613:	457264        	ee.ldqa.u16.128.ip	a6, -224
3c011616:	72          	.byte 0x72
3c011617:	726f72        	s32i	a7, a15, 0x1c8
3c01161a:	6f4c      	movi.n	a15, 70
3c01161c:	536461        	l32r	a6, 3bfe63ac <PS_WOE+0x3bfa63ac>
3c01161f:	74          	.byte 0x74
3c011620:	4165726f 	ee.vmulas.u16.accx.ld.ip.qup	q2, a6, 32, q5, q6, q6, q5
3c011624:	64          	.byte 0x64
3c011625:	457264        	ee.ldqa.u16.128.ip	a6, -224
3c011628:	72          	.byte 0x72
3c011629:	726f72        	s32i	a7, a15, 0x1c8
3c01162c:	7449      	s32i.n	a4, a4, 28
3c01162e:	626c      	movi.n	a2, -26
3c011630:	4d          	.byte 0x4d
3c011631:	746c75        	call12	3c085cf8 <_rodata_end+0x72ed0>
3c011634:	4869      	s32i.n	a6, a8, 16
3c011636:	7469      	s32i.n	a6, a4, 28
3c011638:	6e49      	s32i.n	a4, a14, 24
3c01163a:	73          	.byte 0x73
3c01163b:	527274        	ee.st.qacc_h.h.32.ip	a7, -56
3c01163e:	6e69      	s32i.n	a6, a14, 24
3c011640:	655267        	bbc	a2, a6, 3c0116a9 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xbf0>
3c011643:	73          	.byte 0x73
3c011644:	767265        	call8	3c087d6c <_rodata_end+0x74f44>
3c011647:	316465        	call8	3c042c8c <_rodata_end+0x2fe64>
3c01164a:	4939      	s32i.n	a3, a9, 16
3c01164c:	7274736e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a6, 48, q1, q6, q7, q4
3c011650:	50          	.byte 0x50
3c011651:	686f72        	s32i	a7, a15, 0x1a0
3c011654:	6269      	s32i.n	a6, a2, 24
3c011656:	7469      	s32i.n	a6, a4, 28
3c011658:	526465        	call8	3c063ca0 <_rodata_end+0x50e78>
3c01165b:	657365        	call8	3c076d90 <_rodata_end+0x63f68>
3c01165e:	72          	.byte 0x72
3c01165f:	76          	.byte 0x76
3c011660:	326465        	call8	3c043ca8 <_rodata_end+0x30e80>
3c011663:	655231        	l32r	a3, 3bfeabac <PS_WOE+0x3bfaabac>
3c011666:	73          	.byte 0x73
3c011667:	767265        	call8	3c087d8c <_rodata_end+0x74f64>
3c01166a:	326465        	call8	3c043cb0 <_rodata_end+0x30e88>
3c01166d:	655232        	s16i	a3, a2, 202
3c011670:	73          	.byte 0x73
3c011671:	767265        	call8	3c087d98 <_rodata_end+0x74f70>
3c011674:	326465        	call8	3c043cbc <_rodata_end+0x30e94>
3c011677:	744433        	ssi	f3, a4, 0x1d0
3c01167a:	626c      	movi.n	a2, -26
3c01167c:	4d          	.byte 0x4d
3c01167d:	746c75        	call12	3c085d44 <_rodata_end+0x72f1c>
3c011680:	4869      	s32i.n	a6, a8, 16
3c011682:	7469      	s32i.n	a6, a4, 28
3c011684:	6f4c      	movi.n	a15, 70
3c011686:	536461        	l32r	a6, 3bfe6418 <PS_WOE+0x3bfa6418>
3c011689:	74          	.byte 0x74
3c01168a:	5265726f 	ee.vmulas.u16.qacc.ld.ip.qup	q4, a6, 32, q5, q6, q6, q5
3c01168e:	6e69      	s32i.n	a6, a14, 24
3c011690:	655267        	bbc	a2, a6, 3c0116f9 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xc40>
3c011693:	73          	.byte 0x73
3c011694:	767265        	call8	3c087dbc <_rodata_end+0x74f94>
3c011697:	326465        	call8	3c043cdc <_rodata_end+0x30eb4>
3c01169a:	6f4c37        	ball	a12, a3, 3c01170d <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xc54>
3c01169d:	506461        	l32r	a6, 3bfe5830 <PS_WOE+0x3bfa5830>
3c0116a0:	686f72        	s32i	a7, a15, 0x1a0
3c0116a3:	6269      	s32i.n	a6, a2, 24
3c0116a5:	7469      	s32i.n	a6, a4, 28
3c0116a7:	536465        	call8	3c064cec <_rodata_end+0x51ec4>
3c0116aa:	74          	.byte 0x74
3c0116ab:	5065726f 	ee.vmulas.u16.qacc.ld.ip.qup	q0, a6, 32, q5, q6, q6, q5
3c0116af:	686f72        	s32i	a7, a15, 0x1a0
3c0116b2:	6269      	s32i.n	a6, a2, 24
3c0116b4:	7469      	s32i.n	a6, a4, 28
3c0116b6:	526465        	call8	3c063cfc <_rodata_end+0x50ed4>
3c0116b9:	657365        	call8	3c076df0 <_rodata_end+0x63fc8>
3c0116bc:	72          	.byte 0x72
3c0116bd:	76          	.byte 0x76
3c0116be:	336465        	call8	3c044d04 <_rodata_end+0x31edc>
3c0116c1:	655230        	extui	a5, a3, 18, 7
3c0116c4:	73          	.byte 0x73
3c0116c5:	767265        	call8	3c087dec <_rodata_end+0x74fc4>
3c0116c8:	336465        	call8	3c044d10 <_rodata_end+0x31ee8>
3c0116cb:	704331        	l32r	a3, 3bfed7d8 <PS_WOE+0x3bfad7d8>
3c0116ce:	30          	.byte 0x30
3c0116cf:	44          	.byte 0x44
3c0116d0:	7369      	s32i.n	a6, a3, 28
3c0116d2:	6c6261        	l32r	a6, 3bfec85c <PS_WOE+0x3bfac85c>
3c0116d5:	436465        	call8	3c054d1c <_rodata_end+0x41ef4>
3c0116d8:	443170        	extui	a3, a7, 1, 5
3c0116db:	7369      	s32i.n	a6, a3, 28
3c0116dd:	6c6261        	l32r	a6, 3bfec868 <PS_WOE+0x3bfac868>
3c0116e0:	436465        	call8	3c054d28 <_rodata_end+0x41f00>
3c0116e3:	443270        	extui	a3, a7, 2, 5
3c0116e6:	7369      	s32i.n	a6, a3, 28
3c0116e8:	6c6261        	l32r	a6, 3bfec870 <PS_WOE+0x3bfac870>
3c0116eb:	436465        	call8	3c054d30 <_rodata_end+0x41f08>
3c0116ee:	443370        	extui	a3, a7, 3, 5
3c0116f1:	7369      	s32i.n	a6, a3, 28
3c0116f3:	6c6261        	l32r	a6, 3bfec87c <PS_WOE+0x3bfac87c>
3c0116f6:	436465        	call8	3c054d3c <_rodata_end+0x41f14>
3c0116f9:	443470        	extui	a3, a7, 4, 5
3c0116fc:	7369      	s32i.n	a6, a3, 28
3c0116fe:	6c6261        	l32r	a6, 3bfec888 <PS_WOE+0x3bfac888>
3c011701:	436465        	call8	3c054d48 <_rodata_end+0x41f20>
3c011704:	443570        	extui	a3, a7, 5, 5
3c011707:	7369      	s32i.n	a6, a3, 28
3c011709:	6c6261        	l32r	a6, 3bfec894 <PS_WOE+0x3bfac894>
3c01170c:	436465        	call8	3c054d54 <_rodata_end+0x41f2c>
3c01170f:	443670        	extui	a3, a7, 6, 5
3c011712:	7369      	s32i.n	a6, a3, 28
3c011714:	6c6261        	l32r	a6, 3bfec89c <PS_WOE+0x3bfac89c>
3c011717:	436465        	call8	3c054d5c <_rodata_end+0x41f34>
3c01171a:	443770        	extui	a3, a7, 7, 5
3c01171d:	7369      	s32i.n	a6, a3, 28
3c01171f:	6c6261        	l32r	a6, 3bfec8a8 <PS_WOE+0x3bfac8a8>
3c011722:	046465        	call8	3c015d68 <_rodata_end+0x2f40>
3c011725:	000000        	ill
3c011728:	000012        	l8ui	a1, a0, 0
3c01172b:	00          	.byte 00
3c01172c:	000007        	bnone	a0, a0, 3c011730 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xc77>
3c01172f:	00          	.byte 00
3c011730:	0000000f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q4, q0, q0, q0
3c011734:	0000000e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q0, q0, q0, q0
3c011738:	000011        	l32r	a1, 3bfd1738 <PS_WOE+0x3bf91738>
3c01173b:	00          	.byte 00
3c01173c:	000006        	j	3c011740 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xc87>
3c01173f:	00          	.byte 00
3c011740:	000c      	movi.n	a0, 0
3c011742:	120000        	andbc	b0, b0, b0
3c011745:	000000        	ill
3c011748:	000015        	call4	3c01174c <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xc93>
3c01174b:	001400        	movsp	a0, a4
3c01174e:	00          	.byte 00
3c01174f:	001e00        	movsp	a0, a14
3c011752:	00          	.byte 00
3c011753:	00          	.byte 00
3c011754:	0000000e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q0, q0, q0, q0
3c011758:	0000000e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q0, q0, q0, q0
3c01175c:	000012        	l8ui	a1, a0, 0
3c01175f:	00          	.byte 00
3c011760:	0000000e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q0, q0, q0, q0
3c011764:	000012        	l8ui	a1, a0, 0
3c011767:	00          	.byte 00
3c011768:	0008      	l32i.n	a0, a0, 0
3c01176a:	00          	.byte 00
3c01176b:	00          	.byte 00
3c01176c:	000c      	movi.n	a0, 0
3c01176e:	090000        	l32e	a0, a0, -64
3c011771:	000000        	ill
3c011774:	000a      	add.n	a0, a0, a0
3c011776:	00          	.byte 00
3c011777:	00          	.byte 00
3c011778:	0000000f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q4, q0, q0, q0
3c01177c:	000a      	add.n	a0, a0, a0
3c01177e:	0a0000        	add.s	f0, f0, f0
3c011781:	000000        	ill
3c011784:	000a      	add.n	a0, a0, a0
3c011786:	080000        	lsx	f0, a0, a0
3c011789:	000000        	ill
3c01178c:	000c      	movi.n	a0, 0
3c01178e:	00          	.byte 00
3c01178f:	00          	.byte 00
3c011790:	000d      	mov.n	a0, a0
3c011792:	0a0000        	add.s	f0, f0, f0
3c011795:	000000        	ill
3c011798:	0000000e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q0, q0, q0, q0
3c01179c:	0000000f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q4, q0, q0, q0
3c0117a0:	000a      	add.n	a0, a0, a0
3c0117a2:	0a0000        	add.s	f0, f0, f0
3c0117a5:	000000        	ill
3c0117a8:	000b      	addi.n	a0, a0, -1
3c0117aa:	00          	.byte 00
3c0117ab:	00          	.byte 00
3c0117ac:	000b      	addi.n	a0, a0, -1
3c0117ae:	00          	.byte 00
3c0117af:	00          	.byte 00
3c0117b0:	000b      	addi.n	a0, a0, -1
3c0117b2:	00          	.byte 00
3c0117b3:	00          	.byte 00
3c0117b4:	000b      	addi.n	a0, a0, -1
3c0117b6:	00          	.byte 00
3c0117b7:	00          	.byte 00
3c0117b8:	000b      	addi.n	a0, a0, -1
3c0117ba:	00          	.byte 00
3c0117bb:	00          	.byte 00
3c0117bc:	000b      	addi.n	a0, a0, -1
3c0117be:	00          	.byte 00
3c0117bf:	00          	.byte 00
3c0117c0:	000b      	addi.n	a0, a0, -1
3c0117c2:	00          	.byte 00
3c0117c3:	00          	.byte 00
3c0117c4:	000b      	addi.n	a0, a0, -1
3c0117c6:	d10000        	mul16s	a0, a0, a0
3c0117c9:	010a      	add.n	a0, a1, a0
3c0117cb:	2c3c      	movi.n	a12, 50
3c0117cd:	3c0115        	call4	3c04d7e0 <_rodata_end+0x3a9b8>
3c0117d0:	3c01153e 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a3, -176, q0, q2, q0, q1
3c0117d4:	011545        	call0	3c01292c <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0xa7>
3c0117d7:	543c      	movi.n	a4, 53
3c0117d9:	3c0115        	call4	3c04d7ec <_rodata_end+0x3a9c4>
3c0117dc:	011562        	l16ui	a6, a5, 2
3c0117df:	733c      	movi.n	a3, 55
3c0117e1:	3c0115        	call4	3c04d7f4 <_rodata_end+0x3a9cc>
3c0117e4:	1579      	s32i.n	a7, a5, 4
3c0117e6:	853c01        	l32r	a0, 3bff2cd8 <PS_WOE+0x3bfb2cd8>
3c0117e9:	3c0115        	call4	3c04d7fc <_rodata_end+0x3a9d4>
3c0117ec:	011597        	beq	a5, a9, 3c0117f1 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xd38>
3c0117ef:	ac3c      	movi.n	a12, 58
3c0117f1:	3c0115        	call4	3c04d804 <_rodata_end+0x3a9dc>
3c0117f4:	0115c0        	slli	a1, a5, 20
3c0117f7:	de3c      	movi.n	a14, 61
3c0117f9:	3c0115        	call4	3c04d80c <_rodata_end+0x3a9e4>
3c0117fc:	15ec      	bnez.n	a5, 3c011821 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xd68>
3c0117fe:	fa3c01        	l32r	a0, 3c0100f0 <anon.8a84a47ca5c5b935e2c2118fc1422494.31.llvm.14364309025287346892+0x2c>
3c011801:	3c0115        	call4	3c04d814 <_rodata_end+0x3a9ec>
3c011804:	160c      	movi.n	a6, 1
3c011806:	1a3c01        	l32r	a0, 3bfd80f8 <PS_WOE+0x3bf980f8>
3c011809:	3c0116        	beqz	a1, 3c011bcd <log::LOG_LEVEL_NAMES+0x1d1>
3c01180c:	0a69      	s32i.n	a6, a10, 0
3c01180e:	2c3c01        	l32r	a0, 3bfdc900 <PS_WOE+0x3bf9c900>
3c011811:	3c0116        	beqz	a1, 3c011bd5 <log::LOG_LEVEL_NAMES+0x1d9>
3c011814:	1638      	l32i.n	a3, a6, 4
3c011816:	413c01        	l32r	a0, 3bfe1d08 <PS_WOE+0x3bfa1d08>
3c011819:	3c0116        	beqz	a1, 3c011bdd <log::LOG_LEVEL_NAMES+0x1e1>
3c01181c:	164b      	addi.n	a1, a6, 4
3c01181e:	5a3c01        	l32r	a0, 3bfe8110 <PS_WOE+0x3bfa8110>
3c011821:	3c0116        	beqz	a1, 3c011be5 <log::LOG_LEVEL_NAMES+0x1e9>
3c011824:	011664        	ee.ldqa.s16.128.ip	a6, 0x160
3c011827:	6e3c      	movi.n	a14, 54
3c011829:	3c0116        	beqz	a1, 3c011bed <log::LOG_LEVEL_NAMES+0x1f1>
3c01182c:	010a91        	l32r	a9, 3bfd1c54 <PS_WOE+0x3bf91c54>
3c01182f:	783c      	movi.n	a8, 55
3c011831:	3c0116        	beqz	a1, 3c011bf5 <log::LOG_LEVEL_NAMES+0x1f9>
3c011834:	011684        	ee.ldqa.s16.128.ip	a8, 0x160
3c011837:	913c      	movi.n	a1, 57
3c011839:	3c0116        	beqz	a1, 3c011bfd <anon.a2419419f6f361306492d28391e54aee.0.llvm.15124477990207687272+0x1>
3c01183c:	169b      	addi.n	a1, a6, 9
3c01183e:	a93c01        	l32r	a0, 3bffbd30 <PS_WOE+0x3bfbbd30>
3c011841:	3c0116        	beqz	a1, 3c011c05 <anon.a2419419f6f361306492d28391e54aee.0.llvm.15124477990207687272+0x9>
3c011844:	16b8      	l32i.n	a11, a6, 4
3c011846:	c23c01        	l32r	a0, 3c002138 <PS_WOE+0x3bfc2138>
3c011849:	3c0116        	beqz	a1, 3c011c0d <anon.a2419419f6f361306492d28391e54aee.0.llvm.15124477990207687272+0x11>
3c01184c:	16cc      	bnez.n	a6, 3c011851 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xd98>
3c01184e:	d73c01        	l32r	a0, 3c007540 <PS_WOE+0x3bfc7540>
3c011851:	3c0116        	beqz	a1, 3c011c15 <anon.a2419419f6f361306492d28391e54aee.0.llvm.15124477990207687272+0x19>
3c011854:	0116e2        	l16ui	a14, a6, 2
3c011857:	ed3c      	movi.n	a13, 62
3c011859:	3c0116        	beqz	a1, 3c011c1d <anon.a2419419f6f361306492d28391e54aee.0.llvm.15124477990207687272+0x21>
3c01185c:	16f8      	l32i.n	a15, a6, 4
3c01185e:	033c01        	l32r	a0, 3bfd2550 <PS_WOE+0x3bf92550>
3c011861:	3c0117        	bnone	a1, a1, 3c0118a1 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xde8>
3c011864:	3c01170e 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a0, -144, q0, q2, q0, q1
3c011868:	1719      	s32i.n	a1, a7, 4
3c01186a:	063c01        	l32r	a0, 3bfd315c <PS_WOE+0x3bf9315c>
3c01186d:	420036        	entry	a0, 0x2100
3c011870:	360c      	movi.n	a6, 3
3c011872:	124200        	andbc	b4, b2, b0
3c011875:	420036        	entry	a0, 0x2100
3c011878:	3618      	l32i.n	a1, a6, 12
3c01187a:	00          	.byte 00
3c01187b:	361e42        	l16ui	a4, a14, 108
3c01187e:	00          	.byte 00
3c01187f:	33ec42        	s32c1i	a4, a12, 204
3c011882:	044200        	extui	a4, a0, 2, 1
3c011885:	000000        	ill
3c011888:	000004        	ee.ld.qacc_l.l.128.ip	a0, 0
3c01188b:	352000        	extui	a2, a0, 16, 4
3c01188e:	084200        	lsx	f4, a2, a0
3c011891:	420034        	ee.st.accx.ip	a3, 0xfffffc00
3c011894:	e0          	.byte 0xe0
3c011895:	420034        	ee.st.accx.ip	a3, 0xfffffc00
3c011898:	0033e4        	ee.ld.qacc_l.l.128.ip	a14, 0x330
3c01189b:	000042        	l8ui	a4, a0, 0
3c01189e:	010000        	slli	a0, a0, 32
3c0118a1:	000000        	ill
3c0118a4:	0033e4        	ee.ld.qacc_l.l.128.ip	a14, 0x330
3c0118a7:	000042        	l8ui	a4, a0, 0
3c0118aa:	010000        	slli	a0, a0, 32
3c0118ad:	000000        	ill
3c0118b0:	1898      	l32i.n	a9, a8, 4
3c0118b2:	b83c01        	l32r	a0, 3bfff9a4 <PS_WOE+0x3bfbf9a4>
3c0118b5:	420035        	call12	3c0538b8 <_rodata_end+0x40a90>
3c0118b8:	0035f4        	ee.ld.qacc_l.l.128.ip	a15, 0x350
3c0118bb:	42          	.byte 0x42
3c0118bc:	3688      	l32i.n	a8, a6, 12
3c0118be:	634200        	minu	a4, a2, a0
3c0118c1:	6c6c61        	l32r	a6, 3bfeca74 <PS_WOE+0x3bfaca74>
3c0118c4:	206465        	call8	3c031f0c <_rodata_end+0x1f0e4>
3c0118c7:	655260        	extui	a5, a6, 18, 7
3c0118ca:	73          	.byte 0x73
3c0118cb:	746c75        	call12	3c085f90 <_rodata_end+0x73168>
3c0118ce:	3a3a      	add.n	a3, a10, a3
3c0118d0:	776e75        	call12	3c088fb8 <_rodata_end+0x76190>
3c0118d3:	706172        	s32i	a7, a1, 0x1c0
3c0118d6:	2928      	l32i.n	a2, a9, 8
3c0118d8:	60          	.byte 0x60
3c0118d9:	20          	.byte 0x20
3c0118da:	61206e6f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 224, q5, q4, q2, q0
3c0118de:	4560206e 	ee.vmulas.u16.accx.ld.ip.qup	q2, a6, 0x100, q0, q4, q6, q0
3c0118e2:	72          	.byte 0x72
3c0118e3:	206072        	s32i	a7, a0, 128
3c0118e6:	76          	.byte 0x76
3c0118e7:	756c61        	l32r	a6, 3bfeee98 <PS_WOE+0x3bfaee98>
3c0118ea:	e40065        	call8	3bff58f0 <PS_WOE+0x3bfb58f0>
3c0118ed:	420033        	lsi	f3, a0, 0x108
3c0118f0:	000000        	ill
3c0118f3:	00          	.byte 00
3c0118f4:	000001        	l32r	a0, 3bfd18f4 <PS_WOE+0x3bf918f4>
3c0118f7:	00          	.byte 00
3c0118f8:	50          	.byte 0x50
3c0118f9:	003c      	movi.n	a0, 48
3c0118fb:	682f42        	l32i	a4, a15, 0x1a0
3c0118fe:	2f656d6f 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -48, q5, q4, q6, q5
3c011902:	6d          	.byte 0x6d
3c011903:	656261        	l32r	a6, 3bfeae8c <PS_WOE+0x3bfaae8c>
3c011906:	2f7a      	add.n	a2, a15, a7
3c011908:	7261632e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a2, 48, q1, q4, q6, q1
3c01190c:	2f6f67        	bbci	a15, 6, 3c01193f <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xe86>
3c01190f:	676572        	s32i	a7, a5, 0x19c
3c011912:	7369      	s32i.n	a6, a3, 28
3c011914:	74          	.byte 0x74
3c011915:	72          	.byte 0x72
3c011916:	2f79      	s32i.n	a7, a15, 8
3c011918:	73          	.byte 0x73
3c011919:	2f6372        	s32i	a7, a3, 188
3c01191c:	6e69      	s32i.n	a6, a14, 24
3c01191e:	64          	.byte 0x64
3c01191f:	2e7865        	call8	3c0400a4 <_rodata_end+0x2d27c>
3c011922:	63          	.byte 0x63
3c011923:	746172        	s32i	a7, a1, 0x1d0
3c011926:	2e7365        	call8	3c04005c <_rodata_end+0x2d234>
3c011929:	6f69      	s32i.n	a6, a15, 24
3c01192b:	2d          	.byte 0x2d
3c01192c:	316636        	entry	a6, 0x18b0
3c01192f:	326437        	bbci	a4, 3, 3c011965 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xeac>
3c011932:	626232        	s32i	a3, a2, 0x188
3c011935:	353161        	l32r	a6, 3bfdedfc <PS_WOE+0x3bf9edfc>
3c011938:	313030        	srai	a3, a3, 16
3c01193b:	652f66        	bnei	a15, 2, 3c0119a4 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xeeb>
3c01193e:	73          	.byte 0x73
3c01193f:	70          	.byte 0x70
3c011940:	2d          	.byte 0x2d
3c011941:	70          	.byte 0x70
3c011942:	6e6972        	s32i	a7, a9, 0x1b8
3c011945:	74          	.byte 0x74
3c011946:	6e6c      	movi.n	a14, -26
3c011948:	2d          	.byte 0x2d
3c011949:	362e30        	ee.ldf.64.xp	f2, f3, a3, a14
3c01194c:	732f302e 	ee.vmulas.u8.qacc.ld.ip.qup	q7, a2, 0, q0, q6, q2, q7
3c011950:	2f6372        	s32i	a7, a3, 188
3c011953:	6f6c      	movi.n	a15, -26
3c011955:	656767        	bbci	a7, 6, 3c0119be <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xf05>
3c011958:	722e72        	l32i	a7, a14, 0x1c8
3c01195b:	454473        	ssi	f7, a4, 0x114
3c01195e:	475542        	s16i	a4, a5, 142
3c011961:	000000        	ill
3c011964:	18fc      	bnez.n	a8, 3c011999 <anon.59f700a49bcec3240477e61a72c53d6e.10.llvm.267152541612474560+0xee0>
3c011966:	603c01        	l32r	a0, 3bfe9a58 <PS_WOE+0x3bfa9a58>
3c011969:	000000        	ill
3c01196c:	000013        	lsi	f1, a0, 0
3c01196f:	00          	.byte 00
3c011970:	002a      	add.n	a0, a0, a2
3c011972:	1b0000        	un.s	b0, f0, f0
3c011975:	335b      	addi.n	a3, a3, 5
3c011977:	1b6d31        	l32r	a3, 3bfd872c <PS_WOE+0x3bf9872c>
3c01197a:	335b      	addi.n	a3, a3, 5
3c01197c:	33          	.byte 0x33
3c01197d:	6d          	.byte 0x6d
3c01197e:	5b1b      	addi.n	a5, a11, 1
3c011980:	33          	.byte 0x33
3c011981:	1b6d32        	s32i	a3, a13, 108
3c011984:	335b      	addi.n	a3, a3, 5
3c011986:	34          	.byte 0x34
3c011987:	6d          	.byte 0x6d
3c011988:	5b1b      	addi.n	a5, a11, 1
3c01198a:	33          	.byte 0x33
3c01198b:	206d35        	call12	3c03205c <_rodata_end+0x1f234>
3c01198e:	2d          	.byte 0x2d
3c01198f:	20          	.byte 0x20
3c011990:	000a      	add.n	a0, a0, a0
3c011992:	00          	.byte 00
3c011993:	189800        	lsxp	f9, a8, a0
3c011996:	003c01        	l32r	a0, 3bfd1a88 <PS_WOE+0x3bf91a88>
3c011999:	000000        	ill
3c01199c:	1898      	l32i.n	a9, a8, 4
3c01199e:	003c01        	l32r	a0, 3bfd1a90 <PS_WOE+0x3bf91a90>
3c0119a1:	000000        	ill
3c0119a4:	8d          	.byte 0x8d
3c0119a5:	0119      	s32i.n	a1, a1, 0
3c0119a7:	033c      	movi.n	a3, 48
3c0119a9:	000000        	ill
3c0119ac:	1898      	l32i.n	a9, a8, 4
3c0119ae:	003c01        	l32r	a0, 3bfd1aa0 <PS_WOE+0x3bf91aa0>
3c0119b1:	000000        	ill
3c0119b4:	011990        	slli	a1, a9, 23
3c0119b7:	013c      	movi.n	a1, 48
3c0119b9:	000000        	ill
3c0119bc:	2928      	l32i.n	a2, a9, 8
3c0119be:	040000        	extui	a0, a0, 0, 1
3c0119c1:	420037        	bnone	a0, a3, 3c011a07 <log::LOG_LEVEL_NAMES+0xb>
3c0119c4:	000000        	ill
3c0119c7:	00          	.byte 00
3c0119c8:	000001        	l32r	a0, 3bfd19c8 <PS_WOE+0x3bf919c8>
3c0119cb:	370400        	ee.stf.64.xp	f0, f3, a0, a4
3c0119ce:	004200        	break	2, 0
3c0119d1:	000000        	ill
3c0119d4:	000001        	l32r	a0, 3bfd19d4 <PS_WOE+0x3bf919d4>
3c0119d7:	00          	.byte 00
3c0119d8:	0119c0        	slli	a1, a9, 20
3c0119db:	f03c      	movi.n	a0, 63
3c0119dd:	003a      	add.n	a0, a0, a3
3c0119df:	3af842        	s32ri	a4, a8, 232
3c0119e2:	004200        	break	2, 0
3c0119e5:	003b      	addi.n	a0, a0, 3
3c0119e7:	464f42        	s8i	a4, a15, 70
3c0119ea:	524546        	j	3c026303 <_rodata_end+0x134db>
3c0119ed:	524f52        	s8i	a5, a15, 82
3c0119f0:	424544        	ee.st.accx.ip	a4, 0xfffffe28
3c0119f3:	544755        	call4	3c065e68 <_rodata_end+0x53040>
3c0119f6:	434152        	s8i	a5, a1, 67
3c0119f9:	000045        	call0	3c011a00 <log::LOG_LEVEL_NAMES+0x4>

3c0119fc <log::LOG_LEVEL_NAMES>:
3c0119fc:	19e8      	l32i.n	a14, a9, 4
3c0119fe:	033c01        	l32r	a0, 3bfd26f0 <PS_WOE+0x3bf926f0>
3c011a01:	000000        	ill
3c011a04:	19eb      	addi.n	a1, a9, 14
3c011a06:	053c01        	l32r	a0, 3bfd2ef8 <PS_WOE+0x3bf92ef8>
3c011a09:	000000        	ill
3c011a0c:	010ac5        	call0	3c012abc <anon.59f700a49bcec3240477e61a72c53d6e.3.llvm.267152541612474560+0x30>
3c011a0f:	043c      	movi.n	a4, 48
3c011a11:	000000        	ill
3c011a14:	0aa9      	s32i.n	a10, a10, 0
3c011a16:	043c01        	l32r	a0, 3bfd2b08 <PS_WOE+0x3bf92b08>
3c011a19:	000000        	ill
3c011a1c:	0119f0        	slli	a1, a9, 17
3c011a1f:	053c      	movi.n	a5, 48
3c011a21:	000000        	ill
3c011a24:	0119f5        	call12	3c012bc4 <anon.6c49553720ac60af6143947e1304eaf6.2.llvm.2114311576004596468+0x64>
3c011a27:	053c      	movi.n	a5, 48
3c011a29:	000000        	ill
3c011a2c:	6d6f682f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, -128, q5, q4, q6, q7
3c011a30:	6d2f65        	call8	3c07ed28 <_rodata_end+0x6bf00>
3c011a33:	656261        	l32r	a6, 3bfeafbc <PS_WOE+0x3bfaafbc>
3c011a36:	2f7a      	add.n	a2, a15, a7
3c011a38:	7261632e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a2, 48, q1, q4, q6, q1
3c011a3c:	2f6f67        	bbci	a15, 6, 3c011a6f <log::LOG_LEVEL_NAMES+0x73>
3c011a3f:	676572        	s32i	a7, a5, 0x19c
3c011a42:	7369      	s32i.n	a6, a3, 28
3c011a44:	74          	.byte 0x74
3c011a45:	72          	.byte 0x72
3c011a46:	2f79      	s32i.n	a7, a15, 8
3c011a48:	73          	.byte 0x73
3c011a49:	2f6372        	s32i	a7, a3, 188
3c011a4c:	6e69      	s32i.n	a6, a14, 24
3c011a4e:	64          	.byte 0x64
3c011a4f:	2e7865        	call8	3c0401d4 <_rodata_end+0x2d3ac>
3c011a52:	63          	.byte 0x63
3c011a53:	746172        	s32i	a7, a1, 0x1d0
3c011a56:	2e7365        	call8	3c04018c <_rodata_end+0x2d364>
3c011a59:	6f69      	s32i.n	a6, a15, 24
3c011a5b:	2d          	.byte 0x2d
3c011a5c:	316636        	entry	a6, 0x18b0
3c011a5f:	326437        	bbci	a4, 3, 3c011a95 <log::LOG_LEVEL_NAMES+0x99>
3c011a62:	626232        	s32i	a3, a2, 0x188
3c011a65:	353161        	l32r	a6, 3bfdef2c <PS_WOE+0x3bf9ef2c>
3c011a68:	313030        	srai	a3, a3, 16
3c011a6b:	6c2f66        	bnei	a15, 2, 3c011adb <log::LOG_LEVEL_NAMES+0xdf>
3c011a6e:	302d676f 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a6, 112, q5, q4, q2, q5
3c011a72:	322e342e 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a2, 64, q0, q6, q2, q6
3c011a76:	732f30        	maxu	a2, a15, a3
3c011a79:	2f6372        	s32i	a7, a3, 188
3c011a7c:	696c      	movi.n	a9, -26
3c011a7e:	722e62        	l32i	a6, a14, 0x1c8
3c011a81:	73          	.byte 0x73
3c011a82:	73          	.byte 0x73
3c011a83:	5f7465        	call8	3c0711c8 <_rodata_end+0x5e3a0>
3c011a86:	6f6c      	movi.n	a15, -26
3c011a88:	656767        	bbci	a7, 6, 3c011af1 <log::LOG_LEVEL_NAMES+0xf5>
3c011a8b:	725f72        	s16i	a7, a15, 228
3c011a8e:	796361        	l32r	a6, 3bff001c <PS_WOE+0x3bfb001c>
3c011a91:	756d20        	extui	a6, a2, 29, 8
3c011a94:	73          	.byte 0x73
3c011a95:	74          	.byte 0x74
3c011a96:	20          	.byte 0x20
3c011a97:	20746f6e 	ee.vmulas.s8.accx.ld.ip.qup	q0, a6, 240, q1, q4, q7, q4
3c011a9b:	206562        	s32i	a6, a5, 128
3c011a9e:	657375        	call12	3c0771d4 <_rodata_end+0x643ac>
3c011aa1:	64          	.byte 0x64
3c011aa2:	20          	.byte 0x20
3c011aa3:	746977        	bbci	a9, 7, 3c011b1b <log::LOG_LEVEL_NAMES+0x11f>
3c011aa6:	2068      	l32i.n	a6, a0, 8
3c011aa8:	6568746f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a6, 0x140, q5, q6, q6, q0
3c011aac:	692072        	l32i	a7, a0, 0x1a4
3c011aaf:	6974696e 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 0xfffffe90, q1, q4, q7, q4
3c011ab3:	696c61        	l32r	a6, 3bfec064 <PS_WOE+0x3bfac064>
3c011ab6:	617a      	add.n	a6, a1, a7
3c011ab8:	74          	.byte 0x74
3c011ab9:	6f69      	s32i.n	a6, a15, 24
3c011abb:	7566206e 	ee.vmulas.u8.qacc.ld.ip.qup	q2, a6, 0x100, q0, q4, q6, q6
3c011abf:	6974636e 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 0xfffffe30, q1, q4, q7, q4
3c011ac3:	00736e6f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a6, 224, q5, q4, q7, q3
3c011ac7:	1a8200        	sub.s	f8, f2, f0
3c011aca:	443c01        	l32r	a0, 3bfe2bbc <PS_WOE+0x3bfa2bbc>
3c011acd:	000000        	ill
3c011ad0:	6e69      	s32i.n	a6, a14, 24
3c011ad2:	74          	.byte 0x74
3c011ad3:	6e7265        	call8	3c0801f8 <_rodata_end+0x6d3d0>
3c011ad6:	206c61        	l32r	a6, 3bfd9c88 <PS_WOE+0x3bf99c88>
3c011ad9:	727265        	call8	3c084200 <_rodata_end+0x713d8>
3c011adc:	203a726f 	ee.vmulas.s8.accx.ld.ip.qup	q1, a6, 32, q5, q6, q3, q2
3c011ae0:	746e65        	call8	3c0861c8 <_rodata_end+0x733a0>
3c011ae3:	657265        	call8	3c077208 <_rodata_end+0x643e0>
3c011ae6:	64          	.byte 0x64
3c011ae7:	20          	.byte 0x20
3c011ae8:	726e75        	call12	3c0841d0 <_rodata_end+0x713a8>
3c011aeb:	636165        	call8	3c075100 <_rodata_end+0x622d8>
3c011aee:	6168      	l32i.n	a6, a1, 24
3c011af0:	656c62        	s32i	a6, a12, 0x194
3c011af3:	20          	.byte 0x20
3c011af4:	63          	.byte 0x63
3c011af5:	3a65646f 	ee.vmulas.s8.qacc.ld.ip.qup	q4, a6, 0xfffffe40, q5, q4, q6, q5
3c011af9:	20          	.byte 0x20
3c011afa:	d00000        	subx2	a0, a0, a0
3c011afd:	011a      	add.n	a0, a1, a1
3c011aff:	2a3c      	movi.n	a10, 50
3c011b01:	000000        	ill
3c011b04:	1a2c      	movi.n	a10, 33
3c011b06:	563c01        	l32r	a0, 3bfe73f8 <PS_WOE+0x3bfa73f8>
3c011b09:	000000        	ill
3c011b0c:	0589      	s32i.n	a8, a5, 0
3c011b0e:	00          	.byte 00
3c011b0f:	00          	.byte 00
3c011b10:	000d      	mov.n	a0, a0
3c011b12:	6b0000        	ole.s	b0, f0, f0
3c011b15:	2d7965        	call8	3c03f2ac <_rodata_end+0x2c484>
3c011b18:	76          	.byte 0x76
3c011b19:	756c61        	l32r	a6, 3bfef0cc <PS_WOE+0x3bfaf0cc>
3c011b1c:	732065        	call8	3c084d24 <_rodata_end+0x71efc>
3c011b1f:	707075        	call12	3c082224 <_rodata_end+0x6f3fc>
3c011b22:	2074726f 	ee.vmulas.s8.accx.ld.ip.qup	q0, a6, 32, q5, q6, q7, q4
3c011b26:	7369      	s32i.n	a6, a3, 28
3c011b28:	20          	.byte 0x20
3c011b29:	707865        	call8	3c0822b0 <_rodata_end+0x6f488>
3c011b2c:	697265        	call8	3c07b254 <_rodata_end+0x6842c>
3c011b2f:	6d          	.byte 0x6d
3c011b30:	746e65        	call8	3c086218 <_rodata_end+0x733f0>
3c011b33:	206c61        	l32r	a6, 3bfd9ce4 <PS_WOE+0x3bf99ce4>
3c011b36:	646e61        	l32r	a6, 3bfeacf0 <PS_WOE+0x3bfaacf0>
3c011b39:	756d20        	extui	a6, a2, 29, 8
3c011b3c:	73          	.byte 0x73
3c011b3d:	74          	.byte 0x74
3c011b3e:	656220        	extui	a6, a2, 18, 7
3c011b41:	20          	.byte 0x20
3c011b42:	616e65        	call8	3c073228 <_rodata_end+0x60400>
3c011b45:	656c62        	s32i	a6, a12, 0x194
3c011b48:	64          	.byte 0x64
3c011b49:	737520        	maxu	a7, a5, a2
3c011b4c:	6e69      	s32i.n	a6, a14, 24
3c011b4e:	742067        	blt	a0, a6, 3c011bc6 <log::LOG_LEVEL_NAMES+0x1ca>
3c011b51:	6568      	l32i.n	a6, a5, 24
3c011b53:	6b6020        	ole.s	b6, f0, f2
3c011b56:	76          	.byte 0x76
3c011b57:	736e755f 	ee.vmulas.u8.qacc.ld.ip.qup	q7, a5, 80, q5, q6, q6, q6
3c011b5b:	74          	.byte 0x74
3c011b5c:	6c6261        	l32r	a6, 3bfecce4 <PS_WOE+0x3bfacce4>
3c011b5f:	206065        	call8	3c032164 <_rodata_end+0x1f33c>
3c011b62:	616566        	bnei	a5, 6, 3c011bc7 <log::LOG_LEVEL_NAMES+0x1cb>
3c011b65:	74          	.byte 0x74
3c011b66:	657275        	call12	3c07728c <_rodata_end+0x64464>
3c011b69:	6d6f682f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, -128, q5, q4, q6, q7
3c011b6d:	6d2f65        	call8	3c07ee64 <_rodata_end+0x6c03c>
3c011b70:	656261        	l32r	a6, 3bfeb0f8 <PS_WOE+0x3bfab0f8>
3c011b73:	2f7a      	add.n	a2, a15, a7
3c011b75:	7261632e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a2, 48, q1, q4, q6, q1
3c011b79:	2f6f67        	bbci	a15, 6, 3c011bac <log::LOG_LEVEL_NAMES+0x1b0>
3c011b7c:	676572        	s32i	a7, a5, 0x19c
3c011b7f:	7369      	s32i.n	a6, a3, 28
3c011b81:	74          	.byte 0x74
3c011b82:	72          	.byte 0x72
3c011b83:	2f79      	s32i.n	a7, a15, 8
3c011b85:	73          	.byte 0x73
3c011b86:	2f6372        	s32i	a7, a3, 188
3c011b89:	6e69      	s32i.n	a6, a14, 24
3c011b8b:	64          	.byte 0x64
3c011b8c:	2e7865        	call8	3c040314 <_rodata_end+0x2d4ec>
3c011b8f:	63          	.byte 0x63
3c011b90:	746172        	s32i	a7, a1, 0x1d0
3c011b93:	2e7365        	call8	3c0402c8 <_rodata_end+0x2d4a0>
3c011b96:	6f69      	s32i.n	a6, a15, 24
3c011b98:	2d          	.byte 0x2d
3c011b99:	316636        	entry	a6, 0x18b0
3c011b9c:	326437        	bbci	a4, 3, 3c011bd2 <log::LOG_LEVEL_NAMES+0x1d6>
3c011b9f:	626232        	s32i	a3, a2, 0x188
3c011ba2:	353161        	l32r	a6, 3bfdf068 <PS_WOE+0x3bf9f068>
3c011ba5:	313030        	srai	a3, a3, 16
3c011ba8:	6c2f66        	bnei	a15, 2, 3c011c18 <anon.a2419419f6f361306492d28391e54aee.0.llvm.15124477990207687272+0x1c>
3c011bab:	302d676f 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a6, 112, q5, q4, q2, q5
3c011baf:	322e342e 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a2, 64, q0, q6, q2, q6
3c011bb3:	732f30        	maxu	a2, a15, a3
3c011bb6:	2f6372        	s32i	a7, a3, 188
3c011bb9:	72705f5f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a5, 240, q5, q2, q7, q0
3c011bbd:	7669      	s32i.n	a6, a6, 28
3c011bbf:	657461        	l32r	a6, 3bfeb190 <PS_WOE+0x3bfab190>
3c011bc2:	6970615f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a5, 0xfffffe10, q5, q4, q7, q0
3c011bc6:	0073722e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a2, 32, q1, q6, q7, q3
3c011bca:	00          	.byte 00
3c011bcb:	1b6900        	un.s	b6, f9, f0
3c011bce:	603c01        	l32r	a0, 3bfe9cc0 <PS_WOE+0x3bfa9cc0>
3c011bd1:	000000        	ill
3c011bd4:	000011        	l32r	a1, 3bfd1bd4 <PS_WOE+0x3bf91bd4>
3c011bd7:	00          	.byte 00
3c011bd8:	0009      	s32i.n	a0, a0, 0
3c011bda:	530000        	max	a0, a0, a0
3c011bdd:	4c7465        	call8	3c05e324 <_rodata_end+0x4b4fc>
3c011be0:	6567676f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 0x170, q5, q4, q6, q7
3c011be4:	724572        	s8i	a7, a5, 114
3c011be7:	726f72        	s32i	a7, a15, 0x1c8
3c011bea:	00          	.byte 00
3c011beb:	36fc00        	ee.ldf.64.xp	f15, f3, a0, a12
3c011bee:	044200        	extui	a4, a0, 2, 1
3c011bf1:	000000        	ill
3c011bf4:	000004        	ee.ld.qacc_l.l.128.ip	a0, 0
3c011bf7:	36d000        	ee.ldf.64.xp	f13, f3, a0, a0
3c011bfa:	00          	.byte 00
3c011bfb:	        	l32i	a4, a15, 0x1a0

3c011bfc <anon.a2419419f6f361306492d28391e54aee.0.llvm.15124477990207687272>:
3c011bfc:	6d6f682f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, -128, q5, q4, q6, q7
3c011c00:	6d2f65        	call8	3c07eef8 <_rodata_end+0x6c0d0>
3c011c03:	656261        	l32r	a6, 3bfeb18c <PS_WOE+0x3bfab18c>
3c011c06:	2f7a      	add.n	a2, a15, a7
3c011c08:	64          	.byte 0x64
3c011c09:	657665        	call8	3c077370 <_rodata_end+0x64548>
3c011c0c:	6f6c      	movi.n	a15, -26
3c011c0e:	656d70        	extui	a6, a7, 29, 7
3c011c11:	722f746e 	ee.vmulas.u8.qacc.ld.ip.qup	q5, a6, 64, q1, q6, q2, q7
3c011c15:	747375        	call12	3c08634c <_rodata_end+0x73524>
3c011c18:	6574782f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, 0x180, q5, q6, q7, q4
3c011c1c:	2f61736e 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -208, q1, q6, q6, q1
3c011c20:	72          	.byte 0x72
3c011c21:	747375        	call12	3c086358 <_rodata_end+0x73530>
3c011c24:	2d          	.byte 0x2d
3c011c25:	7478      	l32i.n	a7, a4, 28
3c011c27:	736e65        	call8	3c08530c <_rodata_end+0x724e4>
3c011c2a:	642d61        	l32r	a6, 3bfeace0 <PS_WOE+0x3bfaace0>
3c011c2d:	2f7665        	call8	3c041394 <_rodata_end+0x2e56c>
3c011c30:	62          	.byte 0x62
3c011c31:	6c6975        	call12	3c07e2c8 <_rodata_end+0x6b4a0>
3c011c34:	64          	.byte 0x64
3c011c35:	3638782f 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a2, 0x180, q5, q6, q3, q0
3c011c39:	2d34365f 	ee.vmulas.s8.accx.ld.ip.qup	q2, a5, -160, q4, q6, q3, q4
3c011c3d:	6b6e75        	call12	3c07d324 <_rodata_end+0x6a4fc>
3c011c40:	6e776f6e 	ee.vmulas.u8.accx.ld.ip.qup	q4, a6, -16, q1, q4, q7, q7
3c011c44:	2d          	.byte 0x2d
3c011c45:	696c      	movi.n	a9, -26
3c011c47:	2d78756e 	ee.vmulas.s8.accx.ld.ip.qup	q3, a6, -176, q1, q6, q7, q0
3c011c4b:	756e67        	bbci	a14, 6, 3c011cc4 <anon.a2419419f6f361306492d28391e54aee.5.llvm.15124477990207687272+0x2a>
3c011c4e:	6174732f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, 48, q5, q6, q7, q4
3c011c52:	326567        	bbci	a5, 6, 3c011c88 <anon.a2419419f6f361306492d28391e54aee.1.llvm.15124477990207687272>
3c011c55:	62696c2f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a2, 192, q5, q4, q6, q1
3c011c59:	7375722f 	ee.vmulas.u8.qacc.ld.ip.qup	q6, a2, 32, q5, q6, q7, q5
3c011c5d:	74          	.byte 0x74
3c011c5e:	696c      	movi.n	a9, -26
3c011c60:	732f62        	l32i	a6, a15, 0x1cc
3c011c63:	2f6372        	s32i	a7, a3, 188
3c011c66:	72          	.byte 0x72
3c011c67:	747375        	call12	3c08639c <_rodata_end+0x73574>
3c011c6a:	62696c2f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a2, 192, q5, q4, q6, q1
3c011c6e:	726172        	s32i	a7, a1, 0x1c8
3c011c71:	2f79      	s32i.n	a7, a15, 8
3c011c73:	63          	.byte 0x63
3c011c74:	2f65726f 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -224, q5, q6, q6, q5
3c011c78:	73          	.byte 0x73
3c011c79:	2f6372        	s32i	a7, a3, 188
3c011c7c:	746d66        	bnei	a13, 6, 3c011cf4 <anon.a2419419f6f361306492d28391e54aee.5.llvm.15124477990207687272+0x5a>
3c011c7f:	6d756e2f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, -32, q5, q4, q7, q5
3c011c83:	0073722e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a2, 32, q1, q6, q7, q3
	...

3c011c88 <anon.a2419419f6f361306492d28391e54aee.1.llvm.15124477990207687272>:
3c011c88:	1bfc      	bnez.n	a11, 3c011cbd <anon.a2419419f6f361306492d28391e54aee.5.llvm.15124477990207687272+0x23>
3c011c8a:	8a3c01        	l32r	a0, 3bff457c <PS_WOE+0x3bfb457c>
3c011c8d:	000000        	ill
3c011c90:	0069      	s32i.n	a6, a0, 0
3c011c92:	140000        	extui	a0, a0, 0, 2
3c011c95:	000000        	ill

3c011c98 <anon.a2419419f6f361306492d28391e54aee.2.llvm.15124477990207687272>:
3c011c98:	        	xor	a7, a8, a3

3c011c9a <anon.a2419419f6f361306492d28391e54aee.5.llvm.15124477990207687272>:
3c011c9a:	303030        	xor	a3, a0, a3
3c011c9d:	323031        	l32r	a3, 3bfde560 <PS_WOE+0x3bf9e560>
3c011ca0:	303330        	xor	a3, a3, a3
3c011ca3:	34          	.byte 0x34
3c011ca4:	303530        	xor	a3, a5, a3
3c011ca7:	373036        	entry	a0, 0x1b98
3c011caa:	303830        	xor	a3, a8, a3
3c011cad:	3139      	s32i.n	a3, a1, 12
3c011caf:	313130        	srai	a3, a3, 17
3c011cb2:	313231        	l32r	a3, 3bfde17c <PS_WOE+0x3bf9e17c>
3c011cb5:	33          	.byte 0x33
3c011cb6:	313431        	l32r	a3, 3bfde188 <PS_WOE+0x3bf9e188>
3c011cb9:	363135        	call12	3c047fcc <_rodata_end+0x351a4>
3c011cbc:	313731        	l32r	a3, 3bfde198 <PS_WOE+0x3bf9e198>
3c011cbf:	3138      	l32i.n	a3, a1, 12
3c011cc1:	3239      	s32i.n	a3, a2, 12
3c011cc3:	313230        	srai	a3, a3, 18
3c011cc6:	32          	.byte 0x32
3c011cc7:	32          	.byte 0x32
3c011cc8:	32          	.byte 0x32
3c011cc9:	33          	.byte 0x33
3c011cca:	32          	.byte 0x32
3c011ccb:	34          	.byte 0x34
3c011ccc:	32          	.byte 0x32
3c011ccd:	363235        	call12	3c047ff0 <_rodata_end+0x351c8>
3c011cd0:	32          	.byte 0x32
3c011cd1:	383237        	bltu	a2, a3, 3c011d0d <anon.a2419419f6f361306492d28391e54aee.5.llvm.15124477990207687272+0x73>
3c011cd4:	32          	.byte 0x32
3c011cd5:	3339      	s32i.n	a3, a3, 12
3c011cd7:	313330        	srai	a3, a3, 19
3c011cda:	33          	.byte 0x33
3c011cdb:	32          	.byte 0x32
3c011cdc:	33          	.byte 0x33
3c011cdd:	33          	.byte 0x33
3c011cde:	33          	.byte 0x33
3c011cdf:	34          	.byte 0x34
3c011ce0:	33          	.byte 0x33
3c011ce1:	363335        	call12	3c048014 <_rodata_end+0x351ec>
3c011ce4:	33          	.byte 0x33
3c011ce5:	383337        	bltu	a3, a3, 3c011d21 <anon.a2419419f6f361306492d28391e54aee.5.llvm.15124477990207687272+0x87>
3c011ce8:	33          	.byte 0x33
3c011ce9:	3439      	s32i.n	a3, a4, 12
3c011ceb:	313430        	srai	a3, a3, 20
3c011cee:	34          	.byte 0x34
3c011cef:	32          	.byte 0x32
3c011cf0:	34          	.byte 0x34
3c011cf1:	33          	.byte 0x33
3c011cf2:	34          	.byte 0x34
3c011cf3:	34          	.byte 0x34
3c011cf4:	34          	.byte 0x34
3c011cf5:	363435        	call12	3c048038 <_rodata_end+0x35210>
3c011cf8:	34          	.byte 0x34
3c011cf9:	383437        	bltu	a4, a3, 3c011d35 <anon.a2419419f6f361306492d28391e54aee.5.llvm.15124477990207687272+0x9b>
3c011cfc:	34          	.byte 0x34
3c011cfd:	3539      	s32i.n	a3, a5, 12
3c011cff:	313530        	srai	a3, a3, 21
3c011d02:	353235        	call12	3c047024 <_rodata_end+0x341fc>
3c011d05:	33          	.byte 0x33
3c011d06:	353435        	call12	3c047048 <_rodata_end+0x34220>
3c011d09:	363535        	call12	3c04805c <_rodata_end+0x35234>
3c011d0c:	353735        	call12	3c047080 <_rodata_end+0x34258>
3c011d0f:	3538      	l32i.n	a3, a5, 12
3c011d11:	3639      	s32i.n	a3, a6, 12
3c011d13:	313630        	srai	a3, a3, 22
3c011d16:	363236        	entry	a2, 0x1b18
3c011d19:	33          	.byte 0x33
3c011d1a:	363436        	entry	a4, 0x1b18
3c011d1d:	363635        	call12	3c048080 <_rodata_end+0x35258>
3c011d20:	363736        	entry	a7, 0x1b18
3c011d23:	3638      	l32i.n	a3, a6, 12
3c011d25:	3739      	s32i.n	a3, a7, 12
3c011d27:	313730        	srai	a3, a3, 23
3c011d2a:	373237        	bltu	a2, a3, 3c011d65 <anon.74cf5c4392ae7087c6811939ec90b90a.8.llvm.1665210306593330739+0x1>
3c011d2d:	33          	.byte 0x33
3c011d2e:	373437        	bltu	a4, a3, 3c011d69 <anon.74cf5c4392ae7087c6811939ec90b90a.8.llvm.1665210306593330739+0x5>
3c011d31:	363735        	call12	3c0480a4 <_rodata_end+0x3527c>
3c011d34:	373737        	bltu	a7, a3, 3c011d6f <anon.74cf5c4392ae7087c6811939ec90b90a.8.llvm.1665210306593330739+0xb>
3c011d37:	3738      	l32i.n	a3, a7, 12
3c011d39:	3839      	s32i.n	a3, a8, 12
3c011d3b:	313830        	srai	a3, a3, 24
3c011d3e:	3238      	l32i.n	a3, a2, 12
3c011d40:	3338      	l32i.n	a3, a3, 12
3c011d42:	3438      	l32i.n	a3, a4, 12
3c011d44:	3538      	l32i.n	a3, a5, 12
3c011d46:	3638      	l32i.n	a3, a6, 12
3c011d48:	3738      	l32i.n	a3, a7, 12
3c011d4a:	3838      	l32i.n	a3, a8, 12
3c011d4c:	3938      	l32i.n	a3, a9, 12
3c011d4e:	3039      	s32i.n	a3, a0, 12
3c011d50:	3139      	s32i.n	a3, a1, 12
3c011d52:	3239      	s32i.n	a3, a2, 12
3c011d54:	3339      	s32i.n	a3, a3, 12
3c011d56:	3439      	s32i.n	a3, a4, 12
3c011d58:	3539      	s32i.n	a3, a5, 12
3c011d5a:	3639      	s32i.n	a3, a6, 12
3c011d5c:	3739      	s32i.n	a3, a7, 12
3c011d5e:	3839      	s32i.n	a3, a8, 12
3c011d60:	3939      	s32i.n	a3, a9, 12
	...

3c011d64 <anon.74cf5c4392ae7087c6811939ec90b90a.8.llvm.1665210306593330739>:
3c011d64:	796e41        	l32r	a4, 3bff031c <PS_WOE+0x3bfb031c>
3c011d67:	726f42        	s32i	a4, a15, 0x1c8
3c011d6a:	776f72        	s32i	a7, a15, 0x1dc
3c011d6d:	4d          	.byte 0x4d
3c011d6e:	457475        	call12	3c0574b4 <_rodata_end+0x4468c>
3c011d71:	72          	.byte 0x72
3c011d72:	726f72        	s32i	a7, a15, 0x1c8
3c011d75:	2e5b      	addi.n	a2, a14, 5
3c011d77:	635d2e2e 	ee.vmulas.u8.accx.ld.ip.qup	q7, a2, 224, q0, q4, q5, q5
3c011d7b:	6c6c61        	l32r	a6, 3bfecf2c <PS_WOE+0x3bfacf2c>
3c011d7e:	206465        	call8	3c0323c4 <_rodata_end+0x1f59c>
3c011d81:	60          	.byte 0x60
3c011d82:	6974704f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a4, 0xfffffe00, q5, q6, q7, q4
3c011d86:	3a3a6e6f 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a6, 0xfffffee0, q5, q4, q3, q2
3c011d8a:	776e75        	call12	3c089470 <_rodata_end+0x76648>
3c011d8d:	706172        	s32i	a7, a1, 0x1c0
3c011d90:	2928      	l32i.n	a2, a9, 8
3c011d92:	60          	.byte 0x60
3c011d93:	20          	.byte 0x20
3c011d94:	61206e6f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 224, q5, q4, q2, q0
3c011d98:	20          	.byte 0x20
3c011d99:	60          	.byte 0x60
3c011d9a:	656e6f4e 	ee.vmulas.u8.accx.ld.ip.qup	q3, a4, 0x1f0, q1, q4, q6, q6
3c011d9e:	762060        	ee.ldf.64.xp	f2, f7, a6, a0
3c011da1:	756c61        	l32r	a6, 3bfef354 <PS_WOE+0x3bfaf354>
3c011da4:	796265        	call8	3c08b3cc <_rodata_end+0x785a4>
3c011da7:	74          	.byte 0x74
3c011da8:	692065        	call8	3c07afb0 <_rodata_end+0x68188>
3c011dab:	7865646e 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a6, 0xfffffe40, q1, q4, q6, q5
3c011daf:	20          	.byte 0x20
3c011db0:	736920        	maxu	a6, a9, a2
3c011db3:	20          	.byte 0x20
3c011db4:	20746f6e 	ee.vmulas.s8.accx.ld.ip.qup	q0, a6, 240, q1, q4, q7, q4
3c011db8:	632061        	l32r	a6, 3bfeaa38 <PS_WOE+0x3bfaaa38>
3c011dbb:	6168      	l32i.n	a6, a1, 24
3c011dbd:	622072        	l32i	a7, a0, 0x188
3c011dc0:	646e756f 	ee.vmulas.u8.accx.ld.ip.qup	q1, a6, 0x150, q5, q6, q6, q6
3c011dc4:	797261        	l32r	a6, 3bff038c <PS_WOE+0x3bfb038c>
3c011dc7:	203b      	addi.n	a2, a0, 3
3c011dc9:	7469      	s32i.n	a6, a4, 28
3c011dcb:	736920        	maxu	a6, a9, a2
3c011dce:	20          	.byte 0x20
3c011dcf:	6e69      	s32i.n	a6, a14, 24
3c011dd1:	73          	.byte 0x73
3c011dd2:	6469      	s32i.n	a6, a4, 24
3c011dd4:	292065        	call8	3c03afdc <_rodata_end+0x281b4>
3c011dd7:	666f20        	ee.ldf.64.xp	f6, f6, a2, a15
3c011dda:	606020        	neg	a6, a2
3c011ddd:	000000        	ill
3c011de0:	011da5        	call8	3c012fbc <_rodata_end+0x194>
3c011de3:	0b3c      	movi.n	a11, 48
3c011de5:	000000        	ill
3c011de8:	011db0        	slli	a1, a13, 21
3c011deb:	263c      	movi.n	a6, 50
3c011ded:	000000        	ill
3c011df0:	010a61        	l32r	a6, 3bfd2218 <PS_WOE+0x3bf92218>
3c011df3:	083c      	movi.n	a8, 48
3c011df5:	000000        	ill
3c011df8:	011dd6        	bgez	a13, 3c011e0d <anon.74cf5c4392ae7087c6811939ec90b90a.8.llvm.1665210306593330739+0xa9>
3c011dfb:	063c      	movi.n	a6, 48
3c011dfd:	000000        	ill
3c011e00:	1ddc      	bnez.n	a13, 3c011e15 <anon.74cf5c4392ae7087c6811939ec90b90a.8.llvm.1665210306593330739+0xb1>
3c011e02:	013c01        	l32r	a0, 3bfd22f4 <PS_WOE+0x3bf922f4>
3c011e05:	000000        	ill
3c011e08:	676562        	s32i	a6, a5, 0x19c
3c011e0b:	6e69      	s32i.n	a6, a14, 24
3c011e0d:	20          	.byte 0x20
3c011e0e:	3d3c      	movi.n	a13, 51
3c011e10:	20          	.byte 0x20
3c011e11:	646e65        	call8	3c0764f8 <_rodata_end+0x636d0>
3c011e14:	20          	.byte 0x20
3c011e15:	0028      	l32i.n	a2, a0, 0
3c011e17:	00          	.byte 00
3c011e18:	1e08      	l32i.n	a0, a14, 4
3c011e1a:	0e3c01        	l32r	a0, 3bfd570c <PS_WOE+0x3bf9570c>
3c011e1d:	000000        	ill
3c011e20:	010ab5        	call12	3c012ecc <_rodata_end+0xa4>
3c011e23:	043c      	movi.n	a4, 48
3c011e25:	000000        	ill
3c011e28:	0100e4        	ee.ldqa.s16.128.ip	a14, 0
3c011e2b:	103c      	movi.n	a0, 49
3c011e2d:	000000        	ill
3c011e30:	1ddc      	bnez.n	a13, 3c011e45 <anon.74cf5c4392ae7087c6811939ec90b90a.8.llvm.1665210306593330739+0xe1>
3c011e32:	013c01        	l32r	a0, 3bfd2324 <PS_WOE+0x3bf92324>
3c011e35:	000000        	ill
3c011e38:	736920        	maxu	a6, a9, a2
3c011e3b:	756f20        	extui	a6, a2, 31, 8
3c011e3e:	74          	.byte 0x74
3c011e3f:	666f20        	ee.ldf.64.xp	f6, f6, a2, a15
3c011e42:	20          	.byte 0x20
3c011e43:	756f62        	s32i	a6, a15, 0x1d4
3c011e46:	2073646e 	ee.vmulas.s8.accx.ld.ip.qup	q0, a6, 64, q1, q4, q7, q3
3c011e4a:	6020666f 	ee.vmulas.u8.accx.ld.ip.qup	q0, a6, 96, q5, q4, q2, q0
3c011e4e:	a50000        	extui	a0, a0, 16, 11
3c011e51:	011d      	mov.n	a1, a1
3c011e53:	0b3c      	movi.n	a11, 48
3c011e55:	000000        	ill
3c011e58:	1e38      	l32i.n	a3, a14, 4
3c011e5a:	163c01        	l32r	a0, 3bfd774c <PS_WOE+0x3bf9774c>
3c011e5d:	000000        	ill
3c011e60:	1ddc      	bnez.n	a13, 3c011e75 <anon.74cf5c4392ae7087c6811939ec90b90a.8.llvm.1665210306593330739+0x111>
3c011e62:	013c01        	l32r	a0, 3bfd2354 <PS_WOE+0x3bf92354>
3c011e65:	000000        	ill
3c011e68:	6d6f682f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, -128, q5, q4, q6, q7
3c011e6c:	6d2f65        	call8	3c07f164 <_rodata_end+0x6c33c>
3c011e6f:	656261        	l32r	a6, 3bfeb3f8 <PS_WOE+0x3bfab3f8>
3c011e72:	2f7a      	add.n	a2, a15, a7
3c011e74:	64          	.byte 0x64
3c011e75:	657665        	call8	3c0775dc <_rodata_end+0x647b4>
3c011e78:	6f6c      	movi.n	a15, -26
3c011e7a:	656d70        	extui	a6, a7, 29, 7
3c011e7d:	722f746e 	ee.vmulas.u8.qacc.ld.ip.qup	q5, a6, 64, q1, q6, q2, q7
3c011e81:	747375        	call12	3c0865b8 <_rodata_end+0x73790>
3c011e84:	6574782f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, 0x180, q5, q6, q7, q4
3c011e88:	2f61736e 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -208, q1, q6, q6, q1
3c011e8c:	72          	.byte 0x72
3c011e8d:	747375        	call12	3c0865c4 <_rodata_end+0x7379c>
3c011e90:	2d          	.byte 0x2d
3c011e91:	7478      	l32i.n	a7, a4, 28
3c011e93:	736e65        	call8	3c085578 <_rodata_end+0x72750>
3c011e96:	642d61        	l32r	a6, 3bfeaf4c <PS_WOE+0x3bfaaf4c>
3c011e99:	2f7665        	call8	3c041600 <_rodata_end+0x2e7d8>
3c011e9c:	62          	.byte 0x62
3c011e9d:	6c6975        	call12	3c07e534 <_rodata_end+0x6b70c>
3c011ea0:	64          	.byte 0x64
3c011ea1:	3638782f 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a2, 0x180, q5, q6, q3, q0
3c011ea5:	2d34365f 	ee.vmulas.s8.accx.ld.ip.qup	q2, a5, -160, q4, q6, q3, q4
3c011ea9:	6b6e75        	call12	3c07d590 <_rodata_end+0x6a768>
3c011eac:	6e776f6e 	ee.vmulas.u8.accx.ld.ip.qup	q4, a6, -16, q1, q4, q7, q7
3c011eb0:	2d          	.byte 0x2d
3c011eb1:	696c      	movi.n	a9, -26
3c011eb3:	2d78756e 	ee.vmulas.s8.accx.ld.ip.qup	q3, a6, -176, q1, q6, q7, q0
3c011eb7:	756e67        	bbci	a14, 6, 3c011f30 <anon.74cf5c4392ae7087c6811939ec90b90a.49.llvm.1665210306593330739+0x2c>
3c011eba:	6174732f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, 48, q5, q6, q7, q4
3c011ebe:	326567        	bbci	a5, 6, 3c011ef4 <anon.74cf5c4392ae7087c6811939ec90b90a.8.llvm.1665210306593330739+0x190>
3c011ec1:	62696c2f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a2, 192, q5, q4, q6, q1
3c011ec5:	7375722f 	ee.vmulas.u8.qacc.ld.ip.qup	q6, a2, 32, q5, q6, q7, q5
3c011ec9:	74          	.byte 0x74
3c011eca:	696c      	movi.n	a9, -26
3c011ecc:	732f62        	l32i	a6, a15, 0x1cc
3c011ecf:	2f6372        	s32i	a7, a3, 188
3c011ed2:	72          	.byte 0x72
3c011ed3:	747375        	call12	3c086608 <_rodata_end+0x737e0>
3c011ed6:	62696c2f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a2, 192, q5, q4, q6, q1
3c011eda:	726172        	s32i	a7, a1, 0x1c8
3c011edd:	2f79      	s32i.n	a7, a15, 8
3c011edf:	63          	.byte 0x63
3c011ee0:	2f65726f 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -224, q5, q6, q6, q5
3c011ee4:	73          	.byte 0x73
3c011ee5:	2f6372        	s32i	a7, a3, 188
3c011ee8:	73          	.byte 0x73
3c011ee9:	74          	.byte 0x74
3c011eea:	6d2f72        	l32i	a7, a15, 0x1b4
3c011eed:	722e646f 	ee.vmulas.u8.qacc.ld.ip.qup	q5, a6, 64, q5, q4, q2, q6
3c011ef1:	000073        	lsi	f7, a0, 0
3c011ef4:	1e68      	l32i.n	a6, a14, 4
3c011ef6:	8a3c01        	l32r	a0, 3bff47e8 <PS_WOE+0x3bfb47e8>
3c011ef9:	000000        	ill
3c011efc:	000103        	lsi	f0, a1, 0
3c011eff:	001d00        	movsp	a0, a13
	...

3c011f04 <anon.74cf5c4392ae7087c6811939ec90b90a.49.llvm.1665210306593330739>:
3c011f04:	6d6f682f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, -128, q5, q4, q6, q7
3c011f08:	6d2f65        	call8	3c07f200 <_rodata_end+0x6c3d8>
3c011f0b:	656261        	l32r	a6, 3bfeb494 <PS_WOE+0x3bfab494>
3c011f0e:	2f7a      	add.n	a2, a15, a7
3c011f10:	64          	.byte 0x64
3c011f11:	657665        	call8	3c077678 <_rodata_end+0x64850>
3c011f14:	6f6c      	movi.n	a15, -26
3c011f16:	656d70        	extui	a6, a7, 29, 7
3c011f19:	722f746e 	ee.vmulas.u8.qacc.ld.ip.qup	q5, a6, 64, q1, q6, q2, q7
3c011f1d:	747375        	call12	3c086654 <_rodata_end+0x7382c>
3c011f20:	6574782f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, 0x180, q5, q6, q7, q4
3c011f24:	2f61736e 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -208, q1, q6, q6, q1
3c011f28:	72          	.byte 0x72
3c011f29:	747375        	call12	3c086660 <_rodata_end+0x73838>
3c011f2c:	2d          	.byte 0x2d
3c011f2d:	7478      	l32i.n	a7, a4, 28
3c011f2f:	736e65        	call8	3c085614 <_rodata_end+0x727ec>
3c011f32:	642d61        	l32r	a6, 3bfeafe8 <PS_WOE+0x3bfaafe8>
3c011f35:	2f7665        	call8	3c04169c <_rodata_end+0x2e874>
3c011f38:	62          	.byte 0x62
3c011f39:	6c6975        	call12	3c07e5d0 <_rodata_end+0x6b7a8>
3c011f3c:	64          	.byte 0x64
3c011f3d:	3638782f 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a2, 0x180, q5, q6, q3, q0
3c011f41:	2d34365f 	ee.vmulas.s8.accx.ld.ip.qup	q2, a5, -160, q4, q6, q3, q4
3c011f45:	6b6e75        	call12	3c07d62c <_rodata_end+0x6a804>
3c011f48:	6e776f6e 	ee.vmulas.u8.accx.ld.ip.qup	q4, a6, -16, q1, q4, q7, q7
3c011f4c:	2d          	.byte 0x2d
3c011f4d:	696c      	movi.n	a9, -26
3c011f4f:	2d78756e 	ee.vmulas.s8.accx.ld.ip.qup	q3, a6, -176, q1, q6, q7, q0
3c011f53:	756e67        	bbci	a14, 6, 3c011fcc <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17hb4363bea58e47ec0E.llvm.1665210306593330739+0x10>
3c011f56:	6174732f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, 48, q5, q6, q7, q4
3c011f5a:	326567        	bbci	a5, 6, 3c011f90 <anon.74cf5c4392ae7087c6811939ec90b90a.49.llvm.1665210306593330739+0x8c>
3c011f5d:	62696c2f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a2, 192, q5, q4, q6, q1
3c011f61:	7375722f 	ee.vmulas.u8.qacc.ld.ip.qup	q6, a2, 32, q5, q6, q7, q5
3c011f65:	74          	.byte 0x74
3c011f66:	696c      	movi.n	a9, -26
3c011f68:	732f62        	l32i	a6, a15, 0x1cc
3c011f6b:	2f6372        	s32i	a7, a3, 188
3c011f6e:	72          	.byte 0x72
3c011f6f:	747375        	call12	3c0866a4 <_rodata_end+0x7387c>
3c011f72:	62696c2f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a2, 192, q5, q4, q6, q1
3c011f76:	726172        	s32i	a7, a1, 0x1c8
3c011f79:	2f79      	s32i.n	a7, a15, 8
3c011f7b:	63          	.byte 0x63
3c011f7c:	2f65726f 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -224, q5, q6, q6, q5
3c011f80:	73          	.byte 0x73
3c011f81:	2f6372        	s32i	a7, a3, 188
3c011f84:	696e75        	call12	3c07b66c <_rodata_end+0x68844>
3c011f87:	63          	.byte 0x63
3c011f88:	2f65646f 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -192, q5, q4, q6, q5
3c011f8c:	696e75        	call12	3c07b674 <_rodata_end+0x6884c>
3c011f8f:	63          	.byte 0x63
3c011f90:	5f65646f 	ee.vmulas.u16.qacc.ld.ip.qup	q6, a6, -192, q5, q4, q6, q5
3c011f94:	64          	.byte 0x64
3c011f95:	617461        	l32r	a6, 3bfea568 <PS_WOE+0x3bfaa568>
3c011f98:	0073722e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a2, 32, q1, q6, q7, q3

3c011f9c <anon.74cf5c4392ae7087c6811939ec90b90a.50.llvm.1665210306593330739>:
3c011f9c:	011f04        	ee.ldqa.s16.128.ip	a0, 0x1f0
3c011f9f:	973c      	movi.n	a7, 57
3c011fa1:	000000        	ill
3c011fa4:	50          	.byte 0x50
3c011fa5:	000000        	ill
3c011fa8:	0028      	l32i.n	a2, a0, 0
	...

3c011fac <anon.74cf5c4392ae7087c6811939ec90b90a.51.llvm.1665210306593330739>:
3c011fac:	011f04        	ee.ldqa.s16.128.ip	a0, 0x1f0
3c011faf:	973c      	movi.n	a7, 57
3c011fb1:	000000        	ill
3c011fb4:	005c      	movi.n	a0, 80
3c011fb6:	160000        	ee.ldf.64.xp	f0, f1, a0, a0
3c011fb9:	000000        	ill

3c011fbc <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17hb4363bea58e47ec0E.llvm.1665210306593330739>:
3c011fbc:	00          	.byte 00
3c011fbd:	000003        	lsi	f0, a0, 0
3c011fc0:	200483        	lsi	f8, a4, 128
3c011fc3:	059100        	extui	a9, a0, 17, 1
3c011fc6:	60          	.byte 0x60
3c011fc7:	00          	.byte 00
3c011fc8:	5d          	.byte 0x5d
3c011fc9:	13          	.byte 0x13
3c011fca:	1200a0        	andbc	b0, b0, b10
3c011fcd:	1f2017        	blt	a0, a1, 3c011ff0 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17hb4363bea58e47ec0E.llvm.1665210306593330739+0x34>
3c011fd0:	200c      	movi.n	a0, 2
3c011fd2:	60          	.byte 0x60
3c011fd3:	a02cef1f 	ee.fft.ams.s16.st.incp	q2, q1, a1, a15, q4, q7, q4, 0
3c011fd7:	2a2b      	addi.n	a2, a10, 2
3c011fd9:	30          	.byte 0x30
3c011fda:	20          	.byte 0x20
3c011fdb:	6f2c      	movi.n	a15, 38
3c011fdd:	2ce0a6        	blti	a0, 128, 3c01200d <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17hb4363bea58e47ec0E.llvm.1665210306593330739+0x51>
3c011fe0:	60a802        	movi	a0, 0xfffff860
3c011fe3:	2d          	.byte 0x2d
3c011fe4:	2e60fb1e 	ee.vmulas.s8.accx.ld.ip.qup	q4, a1, -80, q3, q6, q6, q0
3c011fe8:	20fe00        	or	a15, a14, a0
3c011feb:	ff9e36        	entry	a14, 0x7fc8
3c011fee:	60          	.byte 0x60
3c011fef:	01fd36        	entry	a13, 248
3c011ff2:	0136e1        	l32r	a14, 3bfd24cc <PS_WOE+0x3bf924cc>
3c011ff5:	210a      	add.n	a2, a1, a0
3c011ff7:	0d2437        	blt	a4, a3, 3c012008 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17hb4363bea58e47ec0E.llvm.1665210306593330739+0x4c>
3c011ffa:	ab37e1        	l32r	a14, 3bffccd8 <PS_WOE+0x3bfbccd8>
3c011ffd:	2f39610e 	ee.vmulas.s8.accx.ld.ip.qup	q7, a0, -240, q1, q4, q3, q1
3c012001:	a118      	l32i.n	a1, a1, 40
3c012003:	3039      	s32i.n	a3, a0, 12
3c012005:	611c      	movi.n	a1, 22
3c012007:	f348      	l32i.n	a4, a3, 60
3c012009:	404ca11e 	ee.vmulas.u16.accx.ld.ip.qup	q1, a1, 16, q2, q4, q4, q4
3c01200d:	506134        	ee.ld.ua_state.ip	a3, 0xfffffe10
3c012010:	f0          	.byte 0xf0
3c012011:	a16a      	add.n	a10, a1, a6
3c012013:	6f4f51        	l32r	a5, 3bfedd50 <PS_WOE+0x3bfadd50>
3c012016:	9d5221        	l32r	a2, 3bff9560 <PS_WOE+0x3bfb9560>
3c012019:	a1bc      	beqz.n	a1, 3c012057 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0x17>
3c01201b:	cf0052        	l8ui	a5, a0, 207
3c01201e:	655361        	l32r	a6, 3bfeb56c <PS_WOE+0x3bfab56c>
3c012021:	53a1d1        	l32r	a13, 3bfe6ea8 <PS_WOE+0x3bfa6ea8>
3c012024:	21da00        	srai	a13, a0, 10
3c012027:	54          	.byte 0x54
3c012028:	00          	.byte 00
3c012029:	55e1e0        	extui	a14, a14, 17, 6
3c01202c:	5761e2ae 	ee.vmulas.u16.qacc.ld.ip.qup	q6, a10, 0x120, q3, q4, q6, q1
3c012030:	e4ec      	bnez.n	a4, 3c012062 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0x22>
3c012032:	d05921        	l32r	a2, 3c006198 <PS_WOE+0x3bfc6198>
3c012035:	a1e8      	l32i.n	a14, a1, 40
3c012037:	2059      	s32i.n	a5, a0, 8
3c012039:	59ee00        	s32nb	a0, a14, 56
3c01203c:	f0          	.byte 0xf0
3c01203d:	5a7f01        	l32r	a0, 3bfe8a3c <PS_WOE+0x3bfa8a3c>

3c012040 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739>:
3c012040:	007000        	waiti	0
3c012043:	2d0007        	bnone	a0, a0, 3c012074 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0x34>
3c012046:	010101        	l32r	a0, 3bfd244c <PS_WOE+0x3bf9244c>
3c012049:	020102        	l8ui	a0, a1, 2
3c01204c:	480101        	l32r	a0, 3bfe4050 <PS_WOE+0x3bfa4050>
3c01204f:	300b      	addi.n	a3, a0, -1
3c012051:	011015        	call4	3c013154 <_rodata_end+0x32c>
3c012054:	020765        	call8	3c0140cc <_rodata_end+0x12a4>
3c012057:	020206        	j	3c012863 <anon.7279222ba2c67945cf2b798d12ef55a0.38.llvm.17200090188990483032+0xfd>
3c01205a:	230401        	l32r	a0, 3bfdac6c <PS_WOE+0x3bf9ac6c>
3c01205d:	1b1e01        	l32r	a0, 3bfd8cd8 <PS_WOE+0x3bf98cd8>
3c012060:	0b5b      	addi.n	a0, a11, 5
3c012062:	093a      	add.n	a0, a9, a3
3c012064:	0109      	s32i.n	a0, a1, 0
3c012066:	0418      	l32i.n	a1, a4, 0
3c012068:	010901        	l32r	a0, 3bfd248c <PS_WOE+0x3bf9248c>
3c01206b:	050103        	lsi	f0, a1, 20
3c01206e:	032b      	addi.n	a0, a3, 2
3c012070:	083c      	movi.n	a8, 48
3c012072:	182a      	add.n	a1, a8, a2
3c012074:	372001        	l32r	a0, 3bfdfcf4 <PS_WOE+0x3bf9fcf4>
3c012077:	010101        	l32r	a0, 3bfd247c <PS_WOE+0x3bf9247c>
3c01207a:	04          	.byte 0x4
3c01207b:	0408      	l32i.n	a0, a4, 0
3c01207d:	070301        	l32r	a0, 3bfd3c8c <PS_WOE+0x3bf93c8c>
3c012080:	020a      	add.n	a0, a2, a0
3c012082:	011d      	mov.n	a1, a1
3c012084:	013a      	add.n	a0, a1, a3
3c012086:	020101        	l32r	a0, 3bfd288c <PS_WOE+0x3bf9288c>
3c012089:	010804        	ee.ldqa.s16.128.ip	a0, 128
3c01208c:	0109      	s32i.n	a0, a1, 0
3c01208e:	020a      	add.n	a0, a2, a0
3c012090:	011a      	add.n	a0, a1, a1
3c012092:	390202        	l8ui	a0, a2, 57
3c012095:	020401        	l32r	a0, 3bfd28a8 <PS_WOE+0x3bf928a8>
3c012098:	020204        	ee.st.accx.ip	a0, 16
3c01209b:	010303        	lsi	f0, a3, 4
3c01209e:	0103021e 	ee.vmulas.s16.accx.ld.ip.qup	q2, a1, 32, q0, q0, q0, q3
3c0120a2:	020b      	addi.n	a0, a2, -1
3c0120a4:	0139      	s32i.n	a3, a1, 0
3c0120a6:	010504        	ee.ldqa.s16.128.ip	a0, 80
3c0120a9:	010402        	l8ui	a0, a4, 1
3c0120ac:	160214        	ee.ld.qacc_l.h.32.ip	a1, 8
3c0120af:	010106        	j	3c0124b7 <anon.7279222ba2c67945cf2b798d12ef55a0.35.llvm.17200090188990483032+0x27>
3c0120b2:	013a      	add.n	a0, a1, a3
3c0120b4:	010201        	l32r	a0, 3bfd24bc <PS_WOE+0x3bf924bc>
3c0120b7:	010804        	ee.ldqa.s16.128.ip	a0, 128
3c0120ba:	0a0307        	bnone	a3, a0, 3c0120c8 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0x88>
3c0120bd:	011e02        	l16ui	a0, a14, 2
3c0120c0:	013b      	addi.n	a0, a1, 3
3c0120c2:	0c0101        	l32r	a0, 3bfd50c8 <PS_WOE+0x3bf950c8>
3c0120c5:	010901        	l32r	a0, 3bfd24ec <PS_WOE+0x3bf924ec>
3c0120c8:	0128      	l32i.n	a2, a1, 0
3c0120ca:	370103        	lsi	f0, a1, 220
3c0120cd:	030101        	l32r	a0, 3bfd2cd4 <PS_WOE+0x3bf92cd4>
3c0120d0:	010305        	call0	3c013104 <_rodata_end+0x2dc>
3c0120d3:	020704        	ee.st.accx.ip	a0, 56
3c0120d6:	020b      	addi.n	a0, a2, -1
3c0120d8:	011d      	mov.n	a1, a1
3c0120da:	013a      	add.n	a0, a1, a3
3c0120dc:	020102        	l8ui	a0, a1, 2
3c0120df:	010301        	l32r	a0, 3bfd24ec <PS_WOE+0x3bf924ec>
3c0120e2:	070205        	call0	3c019104 <_rodata_end+0x62dc>
3c0120e5:	020b02        	l8ui	a0, a11, 2
3c0120e8:	021c      	movi.n	a2, 16
3c0120ea:	0239      	s32i.n	a3, a2, 0
3c0120ec:	020101        	l32r	a0, 3bfd28f0 <PS_WOE+0x3bf928f0>
3c0120ef:	010804        	ee.ldqa.s16.128.ip	a0, 128
3c0120f2:	0109      	s32i.n	a0, a1, 0
3c0120f4:	020a      	add.n	a0, a2, a0
3c0120f6:	011d      	mov.n	a1, a1
3c0120f8:	0148      	l32i.n	a4, a1, 0
3c0120fa:	020104        	ee.st.accx.ip	a0, 8
3c0120fd:	010103        	lsi	f0, a1, 4
3c012100:	0108      	l32i.n	a0, a1, 0
3c012102:	020151        	l32r	a5, 3bfd2908 <PS_WOE+0x3bf92908>
3c012105:	080c07        	bnone	a12, a0, 3c012111 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0xd1>
3c012108:	020162        	l8ui	a6, a1, 2
3c01210b:	0b09      	s32i.n	a0, a11, 0
3c01210d:	024907        	ball	a9, a0, 3c012113 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0xd3>
3c012110:	011b      	addi.n	a0, a1, 1
3c012112:	010101        	l32r	a0, 3bfd2518 <PS_WOE+0x3bf92518>
3c012115:	0e3701        	l32r	a0, 3bfd59f4 <PS_WOE+0x3bf959f4>
3c012118:	010501        	l32r	a0, 3bfd252c <PS_WOE+0x3bf9252c>
3c01211b:	0b0502        	l8ui	a0, a5, 11
3c01211e:	092401        	l32r	a0, 3bfd45b0 <PS_WOE+0x3bf945b0>
3c012121:	046601        	l32r	a0, 3bfd32bc <PS_WOE+0x3bf932bc>
3c012124:	010601        	l32r	a0, 3bfd253c <PS_WOE+0x3bf9253c>
3c012127:	020202        	l8ui	a0, a2, 2
3c01212a:	0219      	s32i.n	a1, a2, 0
3c01212c:	100304        	ee.ld.ua_state.ip	a0, 48
3c01212f:	010d04        	ee.ldqa.s16.128.ip	a0, 208
3c012132:	060202        	l8ui	a0, a2, 6
3c012135:	010f01        	l32r	a0, 3bfd2574 <PS_WOE+0x3bf92574>
3c012138:	00          	.byte 00
3c012139:	030003        	lsi	f0, a0, 12
3c01213c:	021d      	mov.n	a1, a2
3c01213e:	021e021e 	ee.vmulas.s16.accx.ld.ip.qup	q5, a1, 32, q0, q0, q1, q6
3c012142:	010240        	slli	a0, a2, 28
3c012145:	010807        	bnone	a8, a0, 3c01214a <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0x10a>
3c012148:	090b02        	l8ui	a0, a11, 9
3c01214b:	032d01        	l32r	a0, 3bfd2e00 <PS_WOE+0x3bf92e00>
3c01214e:	750101        	l32r	a0, 3bfef554 <PS_WOE+0x3bfaf554>
3c012151:	012202        	l32i	a0, a2, 4
3c012154:	040376        	bf	b3, 3c01215c <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0x11c>
3c012157:	010902        	l8ui	a0, a9, 1
3c01215a:	db0306        	j	3c008d6a <PS_WOE+0x3bfc8d6a>
3c01215d:	010202        	l8ui	a0, a2, 1
3c012160:	013a      	add.n	a0, a1, a3
3c012162:	010701        	l32r	a0, 3bfd2580 <PS_WOE+0x3bf92580>
3c012165:	010101        	l32r	a0, 3bfd256c <PS_WOE+0x3bf9256c>
3c012168:	060802        	l8ui	a0, a8, 6
3c01216b:	020a      	add.n	a0, a2, a0
3c01216d:	1f3001        	l32r	a0, 3bfd9e30 <PS_WOE+0x3bf99e30>
3c012170:	300431        	l32r	a3, 3bfde180 <PS_WOE+0x3bf9e180>
3c012173:	010107        	bnone	a1, a0, 3c012178 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0x138>
3c012176:	280105        	call0	3c03a188 <_rodata_end+0x27360>
3c012179:	0c09      	s32i.n	a0, a12, 0
3c01217b:	042002        	l32i	a0, a0, 16
3c01217e:	010202        	l8ui	a0, a2, 1
3c012181:	03          	.byte 0x3
3c012182:	0138      	l32i.n	a3, a1, 0
3c012184:	030201        	l32r	a0, 3bfd2d8c <PS_WOE+0x3bf92d8c>
3c012187:	030101        	l32r	a0, 3bfd2d8c <PS_WOE+0x3bf92d8c>
3c01218a:	083a      	add.n	a0, a8, a3
3c01218c:	980202        	l8ui	a0, a2, 152
3c01218f:	0d0103        	lsi	f0, a1, 52
3c012192:	040701        	l32r	a0, 3bfd31b0 <PS_WOE+0x3bf931b0>
3c012195:	010601        	l32r	a0, 3bfd25b0 <PS_WOE+0x3bf925b0>
3c012198:	c60203        	lsi	f0, a2, 0x318
3c01219b:	010040        	slli	a0, a0, 28
3c01219e:	c3          	.byte 0xc3
3c01219f:	030021        	l32r	a2, 3bfd2da0 <PS_WOE+0x3bf92da0>
3c0121a2:	018d      	mov.n	a8, a1
3c0121a4:	60          	.byte 0x60
3c0121a5:	060020        	ee.ldf.64.xp	f0, f0, a2, a0
3c0121a8:	0269      	s32i.n	a6, a2, 0
3c0121aa:	010400        	slli	a0, a4, 32
3c0121ad:	200a      	add.n	a2, a0, a0
3c0121af:	025002        	s16i	a0, a0, 4
3c0121b2:	030100        	rsr.lend	a0
3c0121b5:	010401        	l32r	a0, 3bfd25c8 <PS_WOE+0x3bf925c8>
3c0121b8:	0219      	s32i.n	a1, a2, 0
3c0121ba:	970105        	call0	3bfa91cc <PS_WOE+0x3bf691cc>
3c0121bd:	121a02        	l16ui	a0, a10, 36
3c0121c0:	010d      	mov.n	a0, a1
3c0121c2:	190826        	beqi	a8, -1, 3c0121df <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0x19f>
3c0121c5:	2e0b      	addi.n	a2, a14, -1
3c0121c7:	03          	.byte 0x3
3c0121c8:	020130        	andb	b0, b1, b3
3c0121cb:	020204        	ee.st.accx.ip	a0, 16
3c0121ce:	430127        	bnone	a1, a2, 3c012215 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0x1d5>
3c0121d1:	020206        	j	3c0129dd <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0x158>
3c0121d4:	0c0202        	l8ui	a0, a2, 12
3c0121d7:	010801        	l32r	a0, 3bfd25f8 <PS_WOE+0x3bf925f8>
3c0121da:	0133012f 	ee.vmulas.s16.accx.ld.ip.qup	q2, a2, 16, q4, q0, q3, q3
3c0121de:	020301        	l32r	a0, 3bfd29ec <PS_WOE+0x3bf929ec>
3c0121e1:	020502        	l8ui	a0, a5, 2
3c0121e4:	2a0101        	l32r	a0, 3bfdc9e8 <PS_WOE+0x3bf9c9e8>
3c0121e7:	010802        	l8ui	a0, a8, 1
3c0121ea:	010201ee 	ee.vmulas.s16.accx.ld.ip.qup	q2, a14, 16, q0, q0, q0, q2
3c0121ee:	000104        	ee.ld.qacc_l.l.128.ip	a0, 16
3c0121f1:	100001        	l32r	a0, 3bfd61f4 <PS_WOE+0x3bf961f4>
3c0121f4:	001010        	movsp	a1, a0
3c0121f7:	010002        	l8ui	a0, a0, 1
3c0121fa:	9501e2        	l8ui	a14, a1, 149
3c0121fd:	030005        	call0	3c015200 <_rodata_end+0x23d8>
3c012200:	050201        	l32r	a0, 3bfd3608 <PS_WOE+0x3bf93608>
3c012203:	04          	.byte 0x4
3c012204:	0328      	l32i.n	a2, a3, 0
3c012206:	a50104        	ee.vldbc.16.ip	q4, a0, 2
3c012209:	040002        	l8ui	a0, a0, 4
3c01220c:	00          	.byte 00
3c01220d:	035002        	s16i	a0, a0, 6
3c012210:	310b46        	j	3c01e641 <_rodata_end+0xb819>
3c012213:	017b04        	ee.ldqa.s16.128.ip	a0, 0x7b0
3c012216:	290f36        	entry	a15, 0x1480
3c012219:	020201        	l32r	a0, 3bfd2a24 <PS_WOE+0x3bf92a24>
3c01221c:	030a      	add.n	a0, a3, a0
3c01221e:	020431        	l32r	a3, 3bfd2a30 <PS_WOE+0x3bf92a30>
3c012221:	010702        	l8ui	a0, a7, 1
3c012224:	033d      	mov.n	a3, a3
3c012226:	010524        	ee.ldqa.s16.128.ip	a2, 80
3c012229:	3e08      	l32i.n	a0, a14, 12
3c01222b:	020c01        	l32r	a0, 3bfd2a5c <PS_WOE+0x3bf92a5c>
3c01222e:	34          	.byte 0x34
3c01222f:	0a09      	s32i.n	a0, a10, 0
3c012231:	010204        	ee.ldqa.s16.128.ip	a0, 32
3c012234:	0102035f 	ee.vmulas.s16.accx.ld.ip.qup	q2, a5, 48, q4, q0, q0, q2
3c012238:	060201        	l32r	a0, 3bfd3a40 <PS_WOE+0x3bf93a40>
3c01223b:	010201        	l32r	a0, 3bfd2644 <PS_WOE+0x3bf92644>
3c01223e:	019d      	mov.n	a9, a1
3c012240:	150803        	lsi	f0, a8, 84
3c012243:	02          	.byte 0x2
3c012244:	0239      	s32i.n	a3, a2, 0
3c012246:	010101        	l32r	a0, 3bfd264c <PS_WOE+0x3bf9264c>
3c012249:	011601        	l32r	a0, 3bfd26a4 <PS_WOE+0x3bf926a4>
3c01224c:	0503070e 	ee.vmulas.s16.accx.ld.ip.qup	q2, a0, 0x170, q0, q0, q0, q3
3c012250:	0208c3        	lsi	f12, a8, 8
3c012253:	010103        	lsi	f0, a1, 4
3c012256:	510117        	bnone	a1, a1, 3c0122ab <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0x26b>
3c012259:	060201        	l32r	a0, 3bfd3a64 <PS_WOE+0x3bf93a64>
3c01225c:	020101        	l32r	a0, 3bfd2a60 <PS_WOE+0x3bf92a60>
3c01225f:	020101        	l32r	a0, 3bfd2a64 <PS_WOE+0x3bf92a64>
3c012262:	eb0201        	l32r	a0, 3c00ce6c <PS_WOE+0x3bfcce6c>
3c012265:	040201        	l32r	a0, 3bfd3270 <PS_WOE+0x3bf93270>
3c012268:	010206        	j	3c012674 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0x120>
3c01226b:	021b02        	l16ui	a0, a11, 4
3c01226e:	020855        	call4	3c0142f4 <_rodata_end+0x14cc>
3c012271:	020101        	l32r	a0, 3bfd2a78 <PS_WOE+0x3bf92a78>
3c012274:	016a      	add.n	a0, a1, a6
3c012276:	020101        	l32r	a0, 3bfd2a7c <PS_WOE+0x3bf92a7c>
3c012279:	010106        	j	3c012681 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0x12d>
3c01227c:	020365        	call8	3c0142b4 <_rodata_end+0x148c>
3c01227f:	050104        	ee.ldqa.u16.128.ip	a0, 16
3c012282:	010900        	slli	a0, a9, 32
3c012285:	01f502        	s32ri	a0, a5, 4
3c012288:	020a      	add.n	a0, a2, a0
3c01228a:	040101        	l32r	a0, 3bfd3290 <PS_WOE+0x3bf93290>
3c01228d:	049001        	l32r	a0, 3bfd34d0 <PS_WOE+0x3bf934d0>
3c012290:	040202        	l8ui	a0, a2, 4
3c012293:	0a2001        	l32r	a0, 3bfd4b14 <PS_WOE+0x3bf94b14>
3c012296:	0628      	l32i.n	a2, a6, 0
3c012298:	080402        	l8ui	a0, a4, 8
3c01229b:	060901        	l32r	a0, 3bfd3ac0 <PS_WOE+0x3bf93ac0>
3c01229e:	2e0302        	l8ui	a0, a3, 46
3c0122a1:	010d      	mov.n	a0, a1
3c0122a3:	070002        	l8ui	a0, a0, 7
3c0122a6:	010601        	l32r	a0, 3bfd26c0 <PS_WOE+0x3bf926c0>
3c0122a9:	165201        	l32r	a0, 3bfd7bf4 <PS_WOE+0x3bf97bf4>
3c0122ac:	010702        	l8ui	a0, a7, 1
3c0122af:	020102        	l8ui	a0, a1, 2
3c0122b2:	067a      	add.n	a0, a6, a7
3c0122b4:	010103        	lsi	f0, a1, 4
3c0122b7:	070102        	l8ui	a0, a1, 7
3c0122ba:	480101        	l32r	a0, 3bfe42c0 <PS_WOE+0x3bfa42c0>
3c0122bd:	010302        	l8ui	a0, a3, 1
3c0122c0:	000101        	l32r	a0, 3bfd22c4 <PS_WOE+0x3bf922c4>
3c0122c3:	020b02        	l8ui	a0, a11, 2
3c0122c6:	050534        	ee.ldqa.u16.128.ip	a3, 80
3c0122c9:	010101        	l32r	a0, 3bfd26d0 <PS_WOE+0x3bf926d0>
3c0122cc:	060100        	ee.ldf.64.xp	f0, f0, a0, a1
3c0122cf:	3b05000f 	ee.vmulas.s8.qacc.ld.ip.qup	q6, a0, 0xfffffe00, q4, q0, q0, q5
3c0122d3:	010007        	bnone	a0, a0, 3c0122d8 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0x298>
3c0122d6:	0151043f 	ee.vmulas.s16.accx.ld.ip.qup	q2, a3, 64, q4, q0, q5, q1
3c0122da:	00          	.byte 00
3c0122db:	2e0002        	l8ui	a0, a0, 46
3c0122de:	001702        	l16ui	a0, a7, 0
3c0122e1:	030101        	l32r	a0, 3bfd2ee8 <PS_WOE+0x3bf92ee8>
3c0122e4:	080504        	mula.dd.ll.ldinc	m0, a5, m0, m2
3c0122e7:	0208      	l32i.n	a0, a2, 0
3c0122e9:	041e07        	beq	a14, a0, 3c0122f1 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0x2b1>
3c0122ec:	000394        	ee.ld.qacc_l.l.128.ip	a9, 48
3c0122ef:	320437        	bnone	a4, a3, 3c012325 <anon.c1bbbf51cdc064267945a986967bba91.6.llvm.7723965441082667207+0x2>
3c0122f2:	0108      	l32i.n	a0, a1, 0
3c0122f4:	0516010e 	ee.vmulas.s16.accx.ld.ip.qup	q2, a0, 0x110, q0, q0, q1, q6
3c0122f8:	000f01        	l32r	a0, 3bfd2334 <PS_WOE+0x3bf92334>
3c0122fb:	110107        	bnone	a1, a0, 3c012310 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h7ca96020f4677e9bE.llvm.1665210306593330739+0x2d0>
3c0122fe:	010702        	l8ui	a0, a7, 1
3c012301:	050102        	l8ui	a0, a1, 5
3c012304:	64          	.byte 0x64
3c012305:	07a001        	l32r	a0, 3bfd4188 <PS_WOE+0x3bf94188>
3c012308:	00          	.byte 00
3c012309:	043d01        	l32r	a0, 3bfd3400 <PS_WOE+0x3bf93400>
3c01230c:	00          	.byte 00
3c01230d:	04          	.byte 0x4
3c01230e:	00          	.byte 00
3c01230f:	076d07        	bbci	a13, 0, 3c01231a <anon.c1bbbf51cdc064267945a986967bba91.2.llvm.7723965441082667207>
3c012312:	806000        	add	a6, a0, a0
3c012315:	        	or	a0, a0, a15

3c012317 <anon.c1bbbf51cdc064267945a986967bba91.1.llvm.7723965441082667207>:
3c012317:	207b20        	or	a7, a11, a2

3c01231a <anon.c1bbbf51cdc064267945a986967bba91.2.llvm.7723965441082667207>:
3c01231a:	202c      	movi.n	a0, 34

3c01231c <anon.c1bbbf51cdc064267945a986967bba91.3.llvm.7723965441082667207>:
3c01231c:	203a      	add.n	a2, a0, a3

3c01231e <anon.c1bbbf51cdc064267945a986967bba91.4.llvm.7723965441082667207>:
3c01231e:	0a7b20        	add.s	f7, f11, f2

3c012321 <anon.c1bbbf51cdc064267945a986967bba91.5.llvm.7723965441082667207>:
3c012321:	0a2c      	movi.n	a10, 32

3c012323 <anon.c1bbbf51cdc064267945a986967bba91.6.llvm.7723965441082667207>:
3c012323:	207b20        	or	a7, a11, a2
3c012326:	7d202e2e 	ee.vmulas.u8.qacc.ld.ip.qup	q2, a2, -32, q0, q4, q2, q0

3c01232a <anon.c1bbbf51cdc064267945a986967bba91.9.llvm.7723965441082667207>:
3c01232a:	7d          	.byte 0x7d

3c01232b <anon.c1bbbf51cdc064267945a986967bba91.10.llvm.7723965441082667207>:
3c01232b:	20          	.byte 0x20
3c01232c:	7d          	.byte 0x7d

3c01232d <anon.c1bbbf51cdc064267945a986967bba91.11.llvm.7723965441082667207>:
3c01232d:	      	l32i.n	a2, a8, 8

3c01232e <anon.c1bbbf51cdc064267945a986967bba91.12.llvm.7723965441082667207>:
3c01232e:	0a28      	l32i.n	a2, a10, 0

3c012330 <anon.c1bbbf51cdc064267945a986967bba91.13.llvm.7723965441082667207>:
3c012330:	      	movi.n	a9, 34

3c012331 <anon.c1bbbf51cdc064267945a986967bba91.14.llvm.7723965441082667207>:
3c012331:	0029      	s32i.n	a2, a0, 0
3c012333:	41a400        	srli	a10, a0, 4
3c012336:	044200        	extui	a4, a0, 2, 1
3c012339:	000000        	ill
3c01233c:	000004        	ee.ld.qacc_l.l.128.ip	a0, 0
3c01233f:	469000        	ee.ldf.64.xp	f9, f4, a0, a0
3c012342:	b04200        	addx8	a4, a2, a0
3c012345:	420046        	j	3c022b4a <_rodata_end+0xfd22>
3c012348:	004770        	break	7, 7
3c01234b:	2e2e42        	l32i	a4, a14, 184
3c01234e:	00          	.byte 00
3c01234f:	234c00        	sext	a4, a12, 7
3c012352:	023c01        	l32r	a0, 3bfd2c44 <PS_WOE+0x3bf92c44>
3c012355:	000000        	ill
3c012358:	63          	.byte 0x63
3c012359:	6c6c61        	l32r	a6, 3bfed50c <PS_WOE+0x3bfad50c>
3c01235c:	206465        	call8	3c0329a4 <_rodata_end+0x1fb7c>
3c01235f:	60          	.byte 0x60
3c012360:	6974704f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a4, 0xfffffe00, q5, q6, q7, q4
3c012364:	3a3a6e6f 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a6, 0xfffffee0, q5, q4, q3, q2
3c012368:	776e75        	call12	3c089a50 <_rodata_end+0x76c28>
3c01236b:	706172        	s32i	a7, a1, 0x1c0
3c01236e:	2928      	l32i.n	a2, a9, 8
3c012370:	60          	.byte 0x60
3c012371:	20          	.byte 0x20
3c012372:	61206e6f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 224, q5, q4, q2, q0
3c012376:	20          	.byte 0x20
3c012377:	60          	.byte 0x60
3c012378:	656e6f4e 	ee.vmulas.u8.accx.ld.ip.qup	q3, a4, 0x1f0, q1, q4, q6, q6
3c01237c:	762060        	ee.ldf.64.xp	f2, f7, a6, a0
3c01237f:	756c61        	l32r	a6, 3bfef930 <PS_WOE+0x3bfaf930>
3c012382:	682f65        	call8	3c07a678 <_rodata_end+0x67850>
3c012385:	2f656d6f 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -48, q5, q4, q6, q5
3c012389:	6d          	.byte 0x6d
3c01238a:	656261        	l32r	a6, 3bfeb914 <PS_WOE+0x3bfab914>
3c01238d:	2f7a      	add.n	a2, a15, a7
3c01238f:	64          	.byte 0x64
3c012390:	657665        	call8	3c077af8 <_rodata_end+0x64cd0>
3c012393:	6f6c      	movi.n	a15, -26
3c012395:	656d70        	extui	a6, a7, 29, 7
3c012398:	722f746e 	ee.vmulas.u8.qacc.ld.ip.qup	q5, a6, 64, q1, q6, q2, q7
3c01239c:	747375        	call12	3c086ad4 <_rodata_end+0x73cac>
3c01239f:	6574782f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, 0x180, q5, q6, q7, q4
3c0123a3:	2f61736e 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -208, q1, q6, q6, q1
3c0123a7:	72          	.byte 0x72
3c0123a8:	747375        	call12	3c086ae0 <_rodata_end+0x73cb8>
3c0123ab:	2d          	.byte 0x2d
3c0123ac:	7478      	l32i.n	a7, a4, 28
3c0123ae:	736e65        	call8	3c085a94 <_rodata_end+0x72c6c>
3c0123b1:	642d61        	l32r	a6, 3bfeb468 <PS_WOE+0x3bfab468>
3c0123b4:	2f7665        	call8	3c041b1c <_rodata_end+0x2ecf4>
3c0123b7:	62          	.byte 0x62
3c0123b8:	6c6975        	call12	3c07ea50 <_rodata_end+0x6bc28>
3c0123bb:	64          	.byte 0x64
3c0123bc:	3638782f 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a2, 0x180, q5, q6, q3, q0
3c0123c0:	2d34365f 	ee.vmulas.s8.accx.ld.ip.qup	q2, a5, -160, q4, q6, q3, q4
3c0123c4:	6b6e75        	call12	3c07daac <_rodata_end+0x6ac84>
3c0123c7:	6e776f6e 	ee.vmulas.u8.accx.ld.ip.qup	q4, a6, -16, q1, q4, q7, q7
3c0123cb:	2d          	.byte 0x2d
3c0123cc:	696c      	movi.n	a9, -26
3c0123ce:	2d78756e 	ee.vmulas.s8.accx.ld.ip.qup	q3, a6, -176, q1, q6, q7, q0
3c0123d2:	756e67        	bbci	a14, 6, 3c01244b <anon.7279222ba2c67945cf2b798d12ef55a0.34.llvm.17200090188990483032+0x13>
3c0123d5:	6174732f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, 48, q5, q6, q7, q4
3c0123d9:	326567        	bbci	a5, 6, 3c01240f <anon.c1bbbf51cdc064267945a986967bba91.14.llvm.7723965441082667207+0xde>
3c0123dc:	62696c2f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a2, 192, q5, q4, q6, q1
3c0123e0:	7375722f 	ee.vmulas.u8.qacc.ld.ip.qup	q6, a2, 32, q5, q6, q7, q5
3c0123e4:	74          	.byte 0x74
3c0123e5:	696c      	movi.n	a9, -26
3c0123e7:	732f62        	l32i	a6, a15, 0x1cc
3c0123ea:	2f6372        	s32i	a7, a3, 188
3c0123ed:	72          	.byte 0x72
3c0123ee:	747375        	call12	3c086b24 <_rodata_end+0x73cfc>
3c0123f1:	62696c2f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a2, 192, q5, q4, q6, q1
3c0123f5:	726172        	s32i	a7, a1, 0x1c8
3c0123f8:	2f79      	s32i.n	a7, a15, 8
3c0123fa:	63          	.byte 0x63
3c0123fb:	2f65726f 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -224, q5, q6, q6, q5
3c0123ff:	73          	.byte 0x73
3c012400:	2f6372        	s32i	a7, a3, 188
3c012403:	696e75        	call12	3c07bae8 <_rodata_end+0x68cc0>
3c012406:	63          	.byte 0x63
3c012407:	2f65646f 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -192, q5, q4, q6, q5
3c01240b:	70          	.byte 0x70
3c01240c:	6e6972        	s32i	a7, a9, 0x1b8
3c01240f:	74          	.byte 0x74
3c012410:	6c6261        	l32r	a6, 3bfed598 <PS_WOE+0x3bfad598>
3c012413:	722e65        	call8	3c0846f8 <_rodata_end+0x718d0>
3c012416:	830073        	lsi	f7, a0, 0x20c
3c012419:	3c0123        	lsi	f2, a1, 240
3c01241c:	000094        	ee.ld.qacc_l.l.128.ip	a9, 0
3c01241f:	001a00        	movsp	a0, a10
3c012422:	360000        	ee.ldf.64.xp	f0, f3, a0, a0
3c012425:	000000        	ill
3c012428:	83          	.byte 0x83
3c012429:	3c0123        	lsi	f2, a1, 240
3c01242c:	000094        	ee.ld.qacc_l.l.128.ip	a9, 0
3c01242f:	00          	.byte 00
3c012430:	000a      	add.n	a0, a0, a0
3c012432:	00          	.byte 00
3c012433:	001c00        	movsp	a0, a12
	...

3c012438 <anon.7279222ba2c67945cf2b798d12ef55a0.34.llvm.17200090188990483032>:
3c012438:	010600        	slli	a0, a6, 32
3c01243b:	010301        	l32r	a0, 3bfd2848 <PS_WOE+0x3bf92848>
3c01243e:	050204        	ee.ldqa.u16.128.ip	a0, 32
3c012441:	020707        	bnone	a7, a0, 3c012447 <anon.7279222ba2c67945cf2b798d12ef55a0.34.llvm.17200090188990483032+0xf>
3c012444:	0808      	l32i.n	a0, a8, 0
3c012446:	0209      	s32i.n	a0, a2, 0
3c012448:	050a      	add.n	a0, a5, a0
3c01244a:	020b      	addi.n	a0, a2, -1
3c01244c:	0110040e 	ee.vmulas.s16.accx.ld.ip.qup	q2, a0, 64, q0, q0, q1, q0
3c012450:	120211        	l32r	a1, 3bfd6c58 <PS_WOE+0x3bf96c58>
3c012453:	111305        	call0	3c023584 <_rodata_end+0x1075c>
3c012456:	150114        	ee.ldqa.u8.128.ip	a1, 16
3c012459:	021702        	l16ui	a0, a7, 4
3c01245c:	0d19      	s32i.n	a1, a13, 0
3c01245e:	051c      	movi.n	a5, 16
3c012460:	081d      	mov.n	a1, a8
3c012462:	0124011f 	ee.vmulas.s16.accx.ld.ip.qup	q2, a1, 16, q4, q0, q2, q4
3c012466:	046a      	add.n	a0, a4, a6
3c012468:	026b      	addi.n	a0, a2, 6
3c01246a:	02b103af 	ee.vmulas.s16.accx.ld.ip.qup	q4, a10, 48, q4, q1, q3, q1
3c01246e:	02bc      	beqz.n	a2, 3c0124a2 <anon.7279222ba2c67945cf2b798d12ef55a0.35.llvm.17200090188990483032+0x12>
3c012470:	02d102cf 	ee.vmulas.s16.accx.ld.ip.qup	q4, a12, 32, q4, q1, q5, q1
3c012474:	d50cd4        	ee.vldbc.8.ip	q2, a13, 12
3c012477:	d609      	s32i.n	a0, a6, 52
3c012479:	02d702        	addmi	a0, a7, 0x200
3c01247c:	01da      	add.n	a0, a1, a13
3c01247e:	e0          	.byte 0xe0
3c01247f:	02e105        	call0	3c015290 <_rodata_end+0x2468>
3c012482:	e804e7        	bnone	a4, a14, 3c01246e <anon.7279222ba2c67945cf2b798d12ef55a0.34.llvm.17200090188990483032+0x36>
3c012485:	20ee02        	s32c1i	a0, a14, 128
3c012488:	f0          	.byte 0xf0
3c012489:	04          	.byte 0x4
3c01248a:	02f8      	l32i.n	a15, a2, 0
3c01248c:	03fa      	add.n	a0, a3, a15
3c01248e:	01fb      	addi.n	a0, a1, 15

3c012490 <anon.7279222ba2c67945cf2b798d12ef55a0.35.llvm.17200090188990483032>:
3c012490:	270c      	movi.n	a7, 2
3c012492:	3e3b      	addi.n	a3, a14, 3
3c012494:	9e8f4f4e 	ee.stf.128.xp	f13, f14, f4, f8, a4, a15
3c012498:	8b7b9f9e 	ee.ldf.128.xp	f7, f6, f9, f7, a9, a15
3c01249c:	93          	.byte 0x93
3c01249d:	b2a296        	bltz	a2, 3c011fcb <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17hb4363bea58e47ec0E.llvm.1665210306593330739+0xf>
3c0124a0:	86ba      	add.n	a8, a6, a11
3c0124a2:	0706b1        	l32r	a11, 3bfd40bc <PS_WOE+0x3bf940bc>
3c0124a5:	3609      	s32i.n	a0, a6, 12
3c0124a7:	3d          	.byte 0x3d
3c0124a8:	d0f3563e 	ee.fft.ams.s16.ld.incp	q6, a3, q3, q0, q1, q7, q3, 0
3c0124ac:	1404d1        	l32r	a13, 3bfd74bc <PS_WOE+0x3bf974bc>
3c0124af:	3618      	l32i.n	a1, a6, 12
3c0124b1:	575637        	bbc	a6, a3, 3c01250c <anon.7279222ba2c67945cf2b798d12ef55a0.35.llvm.17200090188990483032+0x7c>
3c0124b4:	afaeaa7f 	ee.fft.cmul.s16.st.xp	q6, q2, q6, a7, a10, 5, 3, 3
3c0124b8:	bd          	.byte 0xbd
3c0124b9:	12e035        	call12	3c0252bc <_rodata_end+0x12494>
3c0124bc:	8e8987        	bany	a9, a8, 3c01244e <anon.7279222ba2c67945cf2b798d12ef55a0.34.llvm.17200090188990483032+0x16>
3c0124bf:	0e0d049e 	ee.vmulas.s16.accx.ld.ip.qup	q5, a9, -192, q0, q0, q0, q5
3c0124c3:	291211        	l32r	a1, 3bfdc90c <PS_WOE+0x3bf9c90c>
3c0124c6:	3a3431        	l32r	a3, 3bfe0d98 <PS_WOE+0x3bfa0d98>
3c0124c9:	494645        	call0	3c05b930 <_rodata_end+0x48b08>
3c0124cc:	4e4a      	add.n	a4, a14, a4
3c0124ce:	5c65644f 	ee.vmulas.u16.qacc.ld.ip.qup	q0, a4, -192, q5, q4, q6, q5
3c0124d2:	1bb7b6        	bltui	a7, 16, 3c0124f1 <anon.7279222ba2c67945cf2b798d12ef55a0.35.llvm.17200090188990483032+0x61>
3c0124d5:	071c      	movi.n	a7, 16
3c0124d7:	0a08      	l32i.n	a0, a10, 0
3c0124d9:	140b      	addi.n	a1, a4, -1
3c0124db:	393617        	bltu	a6, a1, 3c012518 <anon.7279222ba2c67945cf2b798d12ef55a0.35.llvm.17200090188990483032+0x88>
3c0124de:	a83a      	add.n	a10, a8, a3
3c0124e0:	d8a9      	s32i.n	a10, a8, 52
3c0124e2:	09d9      	s32i.n	a13, a9, 0
3c0124e4:	919037        	bne	a0, a3, 3c012479 <anon.7279222ba2c67945cf2b798d12ef55a0.34.llvm.17200090188990483032+0x41>
3c0124e7:	07a8      	l32i.n	a10, a7, 0
3c0124e9:	3b0a      	add.n	a3, a11, a0
3c0124eb:	8f69663e 	ee.ldf.128.xp	f15, f2, f6, f6, a3, a6
3c0124ef:	6f1192        	l16ui	a9, a1, 222
3c0124f2:	5f          	.byte 0x5f
3c0124f3:	5aefeebf 	ee.vmulas.u16.qacc.ld.ip.qup	q5, a11, 0xfffffee0, q7, q5, q6, q7
3c0124f7:	fcf462        	s32ri	a6, a4, 0x3f0
3c0124fa:	9a5453ff 	ee.stf.128.xp	f4, f9, f5, f5, a15, a3
3c0124fe:	2e9b      	addi.n	a2, a14, 9
3c012500:	5528272f 	ee.vmulas.u16.qacc.ld.ip.qup	q3, a2, 0x170, q4, q4, q2, q0
3c012504:	9d          	.byte 0x9d
3c012505:	a3a1a0        	movltz	a10, a1, a10
3c012508:	a8a7a4        	ee.vld.h.64.ip	q5, a10, 0x138
3c01250b:	ad          	.byte 0xad
3c01250c:	bcba      	add.n	a11, a12, a11
3c01250e:	c4          	.byte 0xc4
3c01250f:	0c0b06        	j	3c01553f <_rodata_end+0x2717>
3c012512:	3a1d15        	call4	3c04c6e4 <_rodata_end+0x398bc>
3c012515:	a651453f 	ee.fft.ams.s16.st.incp	q5, q4, a3, a5, q1, q5, q0, 1
3c012519:	cdcca7        	bnall	a12, a10, 3c0124ea <anon.7279222ba2c67945cf2b798d12ef55a0.35.llvm.17200090188990483032+0x5a>
3c01251c:	a0          	.byte 0xa0
3c01251d:	1a1907        	beq	a9, a0, 3c01253b <anon.7279222ba2c67945cf2b798d12ef55a0.35.llvm.17200090188990483032+0xab>
3c012520:	3e2522        	l32i	a2, a5, 248
3c012523:	3f          	.byte 0x3f
3c012524:	efece7        	bbsi	a12, 14, 3c012517 <anon.7279222ba2c67945cf2b798d12ef55a0.35.llvm.17200090188990483032+0x87>
3c012527:	04c6c5ff 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 0x150, q7, q1, q4, q6
3c01252b:	252320        	extui	a2, a2, 19, 3
3c01252e:	332826        	beqi	a8, 2, 3c012565 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0x11>
3c012531:	3a38      	l32i.n	a3, a10, 12
3c012533:	4a48      	l32i.n	a4, a10, 16
3c012535:	504c      	movi.n	a0, 69
3c012537:	53          	.byte 0x53
3c012538:	585655        	call4	3c06aaa0 <_rodata_end+0x57c78>
3c01253b:	5c5a      	add.n	a5, a12, a5
3c01253d:	6563605e 	ee.vmulas.u8.accx.ld.ip.qup	q2, a5, 0x100, q1, q4, q6, q3
3c012541:	736b66        	bnei	a11, 6, 3c0125b8 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0x64>
3c012544:	7d78      	l32i.n	a7, a13, 28
3c012546:	aaa48a7f 	ee.fft.cmul.s16.st.xp	q6, q2, q4, a7, a10, 1, 0, 1
3c01254a:	d0c0b0af 	ee.fft.ams.s16.ld.incp	q0, a10, q7, q0, q6, q4, q0, 0
3c01254e:	6f6eafae 	ee.vmulas.u8.accx.ld.ip.qup	q7, a10, -16, q2, q4, q6, q6
3c012552:	 	ee.vmulas.s8.accx.ld.ip.qup	q5, a11, 48, q2, q2, q5, q6

3c012554 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032>:
3c012554:	057b225e 	ee.vmulas.s16.accx.ld.ip.qup	q3, a5, 0x120, q0, q4, q7, q3
3c012558:	2d0403        	lsi	f0, a4, 180
3c01255b:	03          	.byte 0x3
3c01255c:	010366        	bnei	a3, -1, 3c012561 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0xd>
3c01255f:	82802e2f 	ee.ldf.128.ip	f4, f1, f2, f8, a2, -32
3c012563:	031d      	mov.n	a1, a3
3c012565:	1c0f31        	l32r	a3, 3bfd95a4 <PS_WOE+0x3bf995a4>
3c012568:	092404        	mula.dd.hl.ldinc	m2, a4, m0, m2
3c01256b:	052b051e 	ee.vmulas.s16.accx.ld.ip.qup	q3, a1, 0x150, q0, q0, q2, q3
3c01256f:	0e0444        	ee.ld.accx.ip	a4, 32
3c012572:	802a      	add.n	a8, a0, a2
3c012574:	06aa      	add.n	a0, a6, a10
3c012576:	24          	.byte 0x24
3c012577:	04          	.byte 0x4
3c012578:	24          	.byte 0x24
3c012579:	082804        	mula.dd.ll.ldinc	m2, a8, m0, m2
3c01257c:	4e0b34        	ee.ld.accx.ip	a3, 0xfffffc58
3c01257f:	378143        	lsip	f4, a1, 220
3c012582:	1609      	s32i.n	a0, a6, 4
3c012584:	080a      	add.n	a0, a8, a0
3c012586:	3b18      	l32i.n	a1, a11, 12
3c012588:	033945        	call0	3c015920 <_rodata_end+0x2af8>
3c01258b:	090863        	lsi	f6, a8, 36
3c01258e:	051630        	extui	a1, a3, 22, 1
3c012591:	1b0321        	l32r	a2, 3bfd91a0 <PS_WOE+0x3bf991a0>
3c012594:	400105        	call0	3c0525a8 <_rodata_end+0x3f780>
3c012597:	0438      	l32i.n	a3, a4, 0
3c012599:	054b      	addi.n	a0, a5, 4
3c01259b:	070a042f 	ee.vmulas.s16.accx.ld.ip.qup	q7, a2, 0x140, q4, q0, q0, q2
3c01259f:	0709      	s32i.n	a0, a7, 0
3c0125a1:	272040        	ee.stf.64.xp	f2, f2, a4, a0
3c0125a4:	090c04        	mula.dd.hl.ldinc	m0, a12, m0, m2
3c0125a7:	3a0336        	entry	a3, 0x1d00
3c0125aa:	071a05        	call0	3c01974c <_rodata_end+0x6924>
3c0125ad:	04          	.byte 0x4
3c0125ae:	070c      	movi.n	a7, 0
3c0125b0:	374950        	ee.stf.64.xp	f4, f3, a5, a9
3c0125b3:	330d33        	lsi	f3, a13, 204
3c0125b6:	082e07        	blt	a14, a0, 3c0125c2 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0x6e>
3c0125b9:	810a      	add.n	a8, a1, a0
3c0125bb:	4b5226        	beqi	a2, 5, 3c01260a <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0xb6>
3c0125be:	082b      	addi.n	a0, a8, 2
3c0125c0:	162a      	add.n	a1, a6, a2
3c0125c2:	261a      	add.n	a2, a6, a1
3c0125c4:	141c      	movi.n	a4, 17
3c0125c6:	4e0917        	bnone	a9, a1, 3c012618 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0xc4>
3c0125c9:	092404        	mula.dd.hl.ldinc	m2, a4, m0, m2
3c0125cc:	190d44        	mula.dd.hl.lddec	m0, a13, m0, m3
3c0125cf:	060a07        	bnone	a10, a0, 3c0125d9 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0x85>
3c0125d2:	0848      	l32i.n	a4, a8, 0
3c0125d4:	750927        	bnone	a9, a2, 3c01264d <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0xf9>
3c0125d7:	420b      	addi.n	a4, a2, -1
3c0125d9:	3b062a3e 	ee.vmulas.s8.qacc.ld.ip.qup	q6, a3, 0xfffffea0, q0, q4, q0, q6
3c0125dd:	060a05        	call0	3c018680 <_rodata_end+0x5858>
3c0125e0:	010651        	l32r	a5, 3bfd29f8 <PS_WOE+0x3bf929f8>
3c0125e3:	031005        	call0	3c0156e4 <_rodata_end+0x28bc>
3c0125e6:	8b8005        	call0	3bf9dde8 <PS_WOE+0x3bf5dde8>
3c0125e9:	481e62        	l16ui	a6, a14, 144
3c0125ec:	0a08      	l32i.n	a0, a10, 0
3c0125ee:	80          	.byte 0x80
3c0125ef:	225ea6        	blti	a14, 5, 3c012615 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0xc1>
3c0125f2:	0a0b45        	call0	3c01c6a8 <_rodata_end+0x9880>
3c0125f5:	130d06        	j	3c01722d <_rodata_end+0x4405>
3c0125f8:	063a      	add.n	a0, a6, a3
3c0125fa:	360a      	add.n	a3, a6, a0
3c0125fc:	042c      	movi.n	a4, 32
3c0125fe:	b98017        	bany	a0, a1, 3c0125bb <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0x67>
3c012601:	643c      	movi.n	a4, 54
3c012603:	480c53        	lsi	f5, a12, 0x120
3c012606:	0a09      	s32i.n	a0, a10, 0
3c012608:	1b4546        	j	3c019321 <_rodata_end+0x64f9>
3c01260b:	0848      	l32i.n	a4, a8, 0
3c01260d:	490d53        	lsi	f5, a13, 0x124
3c012610:	800a07        	bnone	a10, a0, 3c012594 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0x40>
3c012613:	0a46f6        	bgeui	a6, 4, 3c012621 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0xcd>
3c012616:	031d      	mov.n	a1, a3
3c012618:	374947        	ball	a9, a4, 3c012653 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0xff>
3c01261b:	080e03        	lsi	f0, a14, 32
3c01261e:	060a      	add.n	a0, a6, a0
3c012620:	0739      	s32i.n	a3, a7, 0
3c012622:	810a      	add.n	a8, a1, a0
3c012624:	071936        	entry	a9, 0x388
3c012627:	033b      	addi.n	a0, a3, 3
3c012629:	561c      	movi.n	a6, 21
3c01262b:	320f01        	l32r	a0, 3bfdee68 <PS_WOE+0x3bf9ee68>
3c01262e:	0d          	.byte 0xd
3c01262f:	83          	.byte 0x83
3c012630:	669b      	addi.n	a6, a6, 9
3c012632:	800b75        	call12	3bf926e8 <PS_WOE+0x3bf526e8>
3c012635:	c4          	.byte 0xc4
3c012636:	4c8a      	add.n	a4, a12, a8
3c012638:	840d63        	lsi	f6, a13, 0x210
3c01263b:	161030        	ee.ldf.64.xp	f1, f1, a3, a0
3c01263e:	4782aa8f 	ee.vmulas.u16.accx.ld.ip.qup	q6, a8, 0x1a0, q6, q5, q0, q2
3c012642:	82b9a1        	l32r	a10, 3bff3128 <PS_WOE+0x3bfb3128>
3c012645:	0739      	s32i.n	a3, a7, 0
3c012647:	042a      	add.n	a0, a4, a2
3c012649:	065c      	movi.n	a6, 80
3c01264b:	460a26        	beqi	a10, -1, 3c012695 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0x141>
3c01264e:	280a      	add.n	a2, a8, a0
3c012650:	821305        	call0	3bf94784 <PS_WOE+0x3bf54784>
3c012653:	655bb0        	extui	a5, a11, 27, 7
3c012656:	044b      	addi.n	a0, a4, 4
3c012658:	0739      	s32i.n	a3, a7, 0
3c01265a:	054011        	l32r	a1, 3bfd3b5c <PS_WOE+0x3bf93b5c>
3c01265d:	020b      	addi.n	a0, a2, -1
3c01265f:	08f8970e 	ee.vmulas.s16.accx.ld.ip.qup	q1, a0, 0xfffffe70, q2, q3, q7, q0
3c012663:	84          	.byte 0x84
3c012664:	092ad6        	bgez	a10, 3c0126fa <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0x1a6>
3c012667:	81e7a2        	s32c1i	a10, a7, 0x204
3c01266a:	010f33        	lsi	f3, a15, 4
3c01266d:	061d      	mov.n	a1, a6
3c01266f:	8108040e 	ee.ldf.128.ip	f3, f0, f0, f0, a0, 64
3c012673:	898c      	beqz.n	a9, 3c01267f <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0x12b>
3c012675:	056b04        	ee.ldqa.u16.128.ip	a0, 0x6b0
3c012678:	030d      	mov.n	a0, a3
3c01267a:	0709      	s32i.n	a0, a7, 0
3c01267c:	10          	.byte 0x10
3c01267d:	476092        	s32i	a9, a0, 0x11c
3c012680:	7409      	s32i.n	a0, a4, 28
3c012682:	803c      	movi.n	a0, 56
3c012684:	730af6        	bgeui	a10, 0x8000, 3c0126fb <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0x1a7>
3c012687:	7008      	l32i.n	a0, a0, 28
3c012689:	7a4615        	call4	3c08caec <_rodata_end+0x79cc4>
3c01268c:	14          	.byte 0x14
3c01268d:	140c      	movi.n	a4, 1
3c01268f:	570c      	movi.n	a7, 5
3c012691:	1909      	s32i.n	a0, a9, 4
3c012693:	818780        	src	a8, a7, a8
3c012696:	850347        	bnone	a3, a4, 3c01261f <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0xcb>
3c012699:	150f42        	l8ui	a4, a15, 21
3c01269c:	84          	.byte 0x84
3c01269d:	061f50        	ee.ldf.64.xp	f1, f0, a5, a15
3c0126a0:	d58006        	j	3c007ca4 <PS_WOE+0x3bfc7ca4>
3c0126a3:	052b      	addi.n	a0, a5, 2
3c0126a5:	7001213e 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a3, 16, q0, q4, q0, q1
3c0126a9:	032d      	mov.n	a2, a3
3c0126ab:	041a      	add.n	a0, a4, a1
3c0126ad:	02          	.byte 0x2
3c0126ae:	1f4081        	l32r	a8, 3bfda3b0 <PS_WOE+0x3bf9a3b0>
3c0126b1:	053a11        	l32r	a1, 3bfd3b9c <PS_WOE+0x3bf93b9c>
3c0126b4:	d08101        	l32r	a0, 3c0068b8 <PS_WOE+0x3bfc68b8>
3c0126b7:	822a      	add.n	a8, a2, a2
3c0126b9:	f780e6        	bgei	a0, 8, 3c0126b4 <anon.7279222ba2c67945cf2b798d12ef55a0.36.llvm.17200090188990483032+0x160>
3c0126bc:	4c29      	s32i.n	a2, a12, 16
3c0126be:	04          	.byte 0x4
3c0126bf:	040a      	add.n	a0, a4, a0
3c0126c1:	02          	.byte 0x2
3c0126c2:	83          	.byte 0x83
3c0126c3:	4c4411        	l32r	a1, 3bfe57d4 <PS_WOE+0x3bfa57d4>
3c0126c6:	3d          	.byte 0x3d
3c0126c7:	80          	.byte 0x80
3c0126c8:	c2          	.byte 0xc2
3c0126c9:	063c      	movi.n	a6, 48
3c0126cb:	550401        	l32r	a0, 3bfe7adc <PS_WOE+0x3bfa7adc>
3c0126ce:	341b05        	call0	3c046880 <_rodata_end+0x33a58>
3c0126d1:	02          	.byte 0x2
3c0126d2:	2c0e81        	l32r	a8, 3bfdd70c <PS_WOE+0x3bf9d70c>
3c0126d5:	0c6404        	ee.st.qacc_l.l.128.ip	a0, 0x640
3c0126d8:	800a56        	bnez	a10, 3c011edc <anon.74cf5c4392ae7087c6811939ec90b90a.8.llvm.1665210306593330739+0x178>
3c0126db:	0d1d38ae 	ee.vmulas.s16.accx.ld.ip.qup	q3, a10, -128, q0, q6, q1, q5
3c0126df:	042c      	movi.n	a4, 32
3c0126e1:	0709      	s32i.n	a0, a7, 0
3c0126e3:	060e02        	l8ui	a0, a14, 6
3c0126e6:	839a80        	moveqz	a9, a10, a8
3c0126e9:	04d8      	l32i.n	a13, a4, 0
3c0126eb:	0d0311        	l32r	a1, 3bfd5af8 <PS_WOE+0x3bf95af8>
3c0126ee:	03          	.byte 0x3
3c0126ef:	5f0477        	bnone	a4, a7, 3c012752 <anon.7279222ba2c67945cf2b798d12ef55a0.37.llvm.17200090188990483032+0x3c>
3c0126f2:	040c06        	j	3c013726 <_rodata_end+0x8fe>
3c0126f5:	0c0f01        	l32r	a0, 3bfd5734 <PS_WOE+0x3bf95734>
3c0126f8:	083804        	mula.dd.ll.ldinc	m3, a8, m0, m2
3c0126fb:	060a      	add.n	a0, a6, a0
3c0126fd:	0828      	l32i.n	a2, a8, 0
3c0126ff:	814e22        	s8i	a2, a14, 129
3c012702:	1d0c54        	ee.st.qacc_l.h.32.ip	a5, 48
3c012705:	070903        	lsi	f0, a9, 28
3c012708:	0e0836        	entry	a8, 0x700
3c01270b:	04          	.byte 0x4
3c01270c:	0709      	s32i.n	a0, a7, 0
3c01270e:	0709      	s32i.n	a0, a7, 0
3c012710:	25cb80        	extui	a12, a8, 27, 3
3c012713:	840a      	add.n	a8, a4, a0
3c012715:	        	j	3c012b19 <anon.59f700a49bcec3240477e61a72c53d6e.7.llvm.267152541612474560+0x1>

3c012716 <anon.7279222ba2c67945cf2b798d12ef55a0.37.llvm.17200090188990483032>:
3c012716:	030100        	rsr.lend	a0
3c012719:	060505        	call0	3c01876c <_rodata_end+0x5944>
3c01271c:	070206        	j	3c014328 <_rodata_end+0x1500>
3c01271f:	070806        	j	3c014343 <_rodata_end+0x151b>
3c012722:	1109      	s32i.n	a0, a1, 4
3c012724:	1c0a      	add.n	a1, a12, a0
3c012726:	190b      	addi.n	a1, a9, -1
3c012728:	1a0c      	movi.n	a10, 1
3c01272a:	0d          	.byte 0xd
3c01272b:	10          	.byte 0x10
3c01272c:	040f0c0e 	ee.vmulas.s16.accx.ld.ip.qup	q1, a0, 0x1c0, q0, q0, q0, q7
3c012730:	120310        	andbc	b0, b3, b1
3c012733:	091312        	l16ui	a1, a3, 18
3c012736:	170116        	beqz	a1, 3c0128aa <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0x25>
3c012739:	011804        	ee.ldqa.s16.128.ip	a0, 0x180
3c01273c:	0319      	s32i.n	a1, a3, 0
3c01273e:	071a      	add.n	a0, a7, a1
3c012740:	011b      	addi.n	a0, a1, 1
3c012742:	021c      	movi.n	a2, 16
3c012744:	0320161f 	ee.vmulas.s16.accx.ld.ip.qup	q6, a1, 96, q4, q2, q2, q0
3c012748:	032b      	addi.n	a0, a3, 2
3c01274a:	0b2d      	mov.n	a2, a11
3c01274c:	0330012e 	ee.vmulas.s16.accx.ld.ip.qup	q6, a2, 16, q0, q0, q3, q0
3c012750:	320231        	l32r	a3, 3bfdef58 <PS_WOE+0x3bf9ef58>
3c012753:	02a701        	l32r	a0, 3bfd31f0 <PS_WOE+0x3bf931f0>
3c012756:	02a9      	s32i.n	a10, a2, 0
3c012758:	04aa      	add.n	a0, a4, a10
3c01275a:	08ab      	addi.n	a0, a8, 10
3c01275c:	02fa      	add.n	a0, a2, a15
3c01275e:	05fb      	addi.n	a0, a5, 15
3c012760:	02fd      	mov.n	a15, a2
3c012762:	09ff03fe 	ee.vmulas.s16.accx.ld.ip.qup	q3, a15, 0xfffffe30, q0, q1, q7, q7

3c012766 <anon.7279222ba2c67945cf2b798d12ef55a0.38.llvm.17200090188990483032>:
3c012766:	ad          	.byte 0xad
3c012767:	7978      	l32i.n	a7, a9, 28
3c012769:	8d8b      	addi.n	a8, a13, 8
3c01276b:	a2          	.byte 0xa2
3c01276c:	585730        	ssxp	f5, a7, a3
3c01276f:	8c8b      	addi.n	a8, a12, 8
3c012771:	90          	.byte 0x90
3c012772:	dd1c      	movi.n	a13, 29
3c012774:	4c4b0f0e 	ee.vmulas.u16.accx.ld.ip.qup	q1, a0, -16, q0, q0, q4, q3
3c012778:	fcfb      	addi.n	a15, a12, 15
3c01277a:	5c3f2f2e 	ee.vmulas.u16.qacc.ld.ip.qup	q1, a2, -16, q0, q4, q3, q7
3c01277e:	5d          	.byte 0x5d
3c01277f:	8d84e25f 	ee.ldf.128.xp	f10, f9, f14, f8, a5, a2
3c012783:	a992918e 	ee.fft.cmul.s16.st.xp	q2, q1, q2, a8, a1, 3, 2, 0
3c012787:	bbbab1        	l32r	a11, 3c001670 <PS_WOE+0x3bfc1670>
3c01278a:	c9c6c5        	call0	3bfdc3f8 <PS_WOE+0x3bf9c3f8>
3c01278d:	deca      	add.n	a13, a14, a12
3c01278f:	e4          	.byte 0xe4
3c012790:	00ffe5        	call8	3c013790 <_rodata_end+0x968>
3c012793:	121104        	ee.st.qacc_h.h.32.ip	a0, 68
3c012796:	3129      	s32i.n	a2, a1, 12
3c012798:	34          	.byte 0x34
3c012799:	3b3a37        	bltu	a10, a3, 3c0127d8 <anon.7279222ba2c67945cf2b798d12ef55a0.38.llvm.17200090188990483032+0x72>
3c01279c:	3d          	.byte 0x3d
3c01279d:	4a49      	s32i.n	a4, a10, 16
3c01279f:	5d          	.byte 0x5d
3c0127a0:	928e84        	ee.vldbc.32.ip	q3, a8, 56
3c0127a3:	b1a9      	s32i.n	a10, a1, 44
3c0127a5:	bbbab4        	ee.vst.h.64.ip	q7, a11, 0x1d0
3c0127a8:	cecac6        	j	3c0062d7 <PS_WOE+0x3bfc62d7>
3c0127ab:	00e5e4cf 	ee.vmulas.s16.accx.ld.ip.qup	q0, a12, 64, q7, q5, q6, q5
3c0127af:	0e0d04        	ee.ld.accx.ip	a0, 104
3c0127b2:	291211        	l32r	a1, 3bfdcbfc <PS_WOE+0x3bf9cbfc>
3c0127b5:	3a3431        	l32r	a3, 3bfe1088 <PS_WOE+0x3bfa1088>
3c0127b8:	453b      	addi.n	a4, a5, 3
3c0127ba:	4a4946        	j	3c0250e3 <_rodata_end+0x122bb>
3c0127bd:	8465645e 	ee.ldf.128.ip	f8, f10, f6, f6, a5, 64
3c0127c1:	9d9b91        	l32r	a9, 3bff9e30 <PS_WOE+0x3bfb9e30>
3c0127c4:	cec9      	s32i.n	a12, a14, 48
3c0127c6:	29110dcf 	ee.vmulas.s8.accx.ld.ip.qup	q2, a12, 0xfffffed0, q4, q0, q1, q1
3c0127ca:	3b3a      	add.n	a3, a11, a3
3c0127cc:	574945        	call0	3c069c64 <_rodata_end+0x56e3c>
3c0127cf:	5c5b      	addi.n	a5, a12, 5
3c0127d1:	65645f5e 	ee.vmulas.u8.accx.ld.ip.qup	q2, a5, 0x1f0, q1, q2, q6, q4
3c0127d5:	8d          	.byte 0x8d
3c0127d6:	b4a991        	l32r	a9, 3bfffa7c <PS_WOE+0x3bfbfa7c>
3c0127d9:	bbba      	add.n	a11, a11, a11
3c0127db:	dfc9c5        	call0	3bff2478 <PS_WOE+0x3bfb2478>
3c0127de:	e4          	.byte 0xe4
3c0127df:	0df0e5        	call8	3c0206ec <_rodata_end+0xd8c4>
3c0127e2:	494511        	l32r	a1, 3bfe4cf8 <PS_WOE+0x3bfa4cf8>
3c0127e5:	64          	.byte 0x64
3c0127e6:	848065        	call8	3bf96fec <PS_WOE+0x3bf56fec>
3c0127e9:	bebcb2        	l32ai	a11, a12, 0x2f8
3c0127ec:	bf          	.byte 0xbf
3c0127ed:	f0d7d5        	call4	3c00356c <PS_WOE+0x3bfc356c>
3c0127f0:	8583f1        	l32r	a15, 3bff3dfc <PS_WOE+0x3bfb3dfc>
3c0127f3:	a48b      	addi.n	a10, a4, 8
3c0127f5:	bfbea6        	blti	a14, 16, 3c0127b8 <anon.7279222ba2c67945cf2b798d12ef55a0.38.llvm.17200090188990483032+0x52>
3c0127f8:	cfc7c5        	call0	3bfe2478 <PS_WOE+0x3bfa2478>
3c0127fb:	dbda      	add.n	a13, a11, a13
3c0127fd:	9848      	l32i.n	a4, a8, 36
3c0127ff:	bd          	.byte 0xbd
3c012800:	cd          	.byte 0xcd
3c012801:	cfcec6        	j	3c006740 <PS_WOE+0x3bfc6740>
3c012804:	4e49      	s32i.n	a4, a14, 16
3c012806:	5e59574f 	ee.vmulas.u16.qacc.ld.ip.qup	q5, a4, -144, q5, q2, q5, q1
3c01280a:	8f8e895f 	ee.ldf.128.xp	f15, f13, f8, f8, a5, a9
3c01280e:	b7b6b1        	l32r	a11, 3c0006e8 <PS_WOE+0x3bfc06e8>
3c012811:	c7c6c1bf 	ee.vmulas.u16.qacc.ld.xp.qup	q6, a11, a1, q7, q1, q4, q6
3c012815:	1611d7        	beq	a1, a13, 3c01282f <anon.7279222ba2c67945cf2b798d12ef55a0.38.llvm.17200090188990483032+0xc9>
3c012818:	5c5b17        	bbc	a11, a1, 3c012878 <anon.7279222ba2c67945cf2b798d12ef55a0.38.llvm.17200090188990483032+0x112>
3c01281b:	fef7f6        	bgeui	a7, 0x100, 3c01281d <anon.7279222ba2c67945cf2b798d12ef55a0.38.llvm.17200090188990483032+0xb7>
3c01281e:	716d80ff 	ee.vmulas.u8.qacc.ld.ip.qup	q3, a15, 0, q6, q0, q6, q5
3c012822:	1f0edfde 	ee.vmulas.s16.qacc.ld.ip.qup	q7, a13, -16, q3, q2, q0, q6
3c012826:	1d1c6f6e 	ee.vmulas.s16.qacc.ld.ip.qup	q3, a6, -16, q1, q4, q1, q4
3c01282a:	ae7e7d5f 	ee.fft.cmul.s16.st.xp	q5, q7, q6, a5, a13, 6, 1, 3
3c01282e:	bcbb7faf 	ee.vmulas.s8.qacc.ld.xp.qup	q1, a10, a15, q5, q7, q3, q3
3c012832:	1e1716        	beqz	a7, 3c012a17 <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0x192>
3c012835:	4e47461f 	ee.vmulas.u16.accx.ld.ip.qup	q4, a1, -160, q5, q0, q4, q7
3c012839:	5c5a584f 	ee.vmulas.u16.qacc.ld.ip.qup	q1, a4, -128, q5, q2, q5, q2
3c01283d:	b57f7e5e 	ee.vmulas.s16.qacc.ld.xp.qup	q3, a5, a14, q1, q6, q7, q7
3c012841:	d5d4c5        	call0	3bfe8590 <PS_WOE+0x3bfa8590>
3c012844:	f0dc      	bnez.n	a0, 3c012867 <anon.7279222ba2c67945cf2b798d12ef55a0.38.llvm.17200090188990483032+0x101>
3c012846:	72f5f1        	l32r	a15, 3bfef41c <PS_WOE+0x3bfaf41c>
3c012849:	748f73        	lsip	f7, a15, 0x1d0
3c01284c:	269675        	call12	3c0391b4 <_rodata_end+0x2638c>
3c01284f:	afa72f2e 	ee.fft.cmul.s16.st.xp	q0, q2, q7, a2, a15, 5, 2, 3
3c012853:	c7bfb7        	bgeu	a15, a11, 3c01281e <anon.7279222ba2c67945cf2b798d12ef55a0.38.llvm.17200090188990483032+0xb8>
3c012856:	9adfd7cf 	ee.stf.128.xp	f5, f15, f13, f13, a12, a7
3c01285a:	40          	.byte 0x40
3c01285b:	309897        	bne	a8, a9, 3c01288f <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0xa>
3c01285e:	d4d21f8f 	ee.fft.ams.s16.ld.incp.uaup	q7, a8, q3, q1, q4, q5, q2, 0
3c012862:	4f4effce 	ee.vmulas.u16.accx.ld.ip.qup	q7, a12, -16, q3, q6, q4, q6
3c012866:	5b5a      	add.n	a5, a11, a5
3c012868:	0f0807        	bnone	a8, a0, 3c01287b <anon.7279222ba2c67945cf2b798d12ef55a0.38.llvm.17200090188990483032+0x115>
3c01286b:	10          	.byte 0x10
3c01286c:	ee2f27        	blt	a15, a2, 3c01285e <anon.7279222ba2c67945cf2b798d12ef55a0.38.llvm.17200090188990483032+0xf8>
3c01286f:	376f6eef 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a14, 0x1e0, q5, q4, q6, q7
3c012873:	3d          	.byte 0x3d
3c012874:	9045423f 	ee.stf.128.ip	f0, f11, f4, f4, a3, 32
3c012878:	675391        	l32r	a9, 3bfec5c4 <PS_WOE+0x3bfac5c4>
3c01287b:	c9c875        	call12	3bfdc500 <PS_WOE+0x3bf9c500>
3c01287e:	d0          	.byte 0xd0
3c01287f:	d9d8d1        	l32r	a13, 3c008fe0 <PS_WOE+0x3bfc8fe0>
3c012882:	fffee7        	bbsi	a14, 30, 3c012885 <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032>

3c012885 <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032>:
3c012885:	00          	.byte 00
3c012886:	225f20        	orb	b5, b15, b2
3c012889:	04df82        	addmi	a8, a15, 0x400
3c01288c:	084482        	s8i	a8, a4, 8
3c01288f:	041b      	addi.n	a0, a4, 1
3c012891:	811106        	j	3bff2cd9 <PS_WOE+0x3bfb2cd9>
3c012894:	0eac      	beqz.n	a14, 3c0128b8 <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0x33>
3c012896:	05ab80        	extui	a10, a8, 27, 1
3c012899:	1b81091f 	ee.vmulas.s16.qacc.ld.ip.qup	q6, a1, 0xfffffe90, q4, q1, q0, q1
3c01289d:	03          	.byte 0x3
3c01289e:	0819      	s32i.n	a1, a8, 0
3c0128a0:	2f0401        	l32r	a0, 3bfde4b0 <PS_WOE+0x3bf9e4b0>
3c0128a3:	04          	.byte 0x4
3c0128a4:	34          	.byte 0x34
3c0128a5:	04          	.byte 0x4
3c0128a6:	010307        	bnone	a3, a0, 3c0128ab <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0x26>
3c0128a9:	070607        	bnone	a6, a0, 3c0128b4 <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0x2f>
3c0128ac:	500a11        	l32r	a1, 3bfe68d4 <PS_WOE+0x3bfa68d4>
3c0128af:	5507120f 	ee.vmulas.u16.qacc.ld.ip.qup	q2, a0, 0x120, q4, q2, q0, q7
3c0128b3:	040307        	bnone	a3, a0, 3c0128bb <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0x36>
3c0128b6:	0a1c      	movi.n	a10, 16
3c0128b8:	0309      	s32i.n	a0, a3, 0
3c0128ba:	0308      	l32i.n	a0, a3, 0
3c0128bc:	020307        	bnone	a3, a0, 3c0128c2 <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0x3d>
3c0128bf:	030303        	lsi	f0, a3, 12
3c0128c2:	040c      	movi.n	a4, 0
3c0128c4:	0b0305        	call0	3c01d8f8 <_rodata_end+0xaad0>
3c0128c7:	0e0106        	j	3c0160cf <_rodata_end+0x32a7>
3c0128ca:	4e0515        	call4	3c06091c <_rodata_end+0x4daf4>
3c0128cd:	071b07        	beq	a11, a0, 3c0128d8 <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0x53>
3c0128d0:	020757        	bnone	a7, a5, 3c0128d6 <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0x51>
3c0128d3:	0c1706        	j	3c015933 <_rodata_end+0x2b0b>
3c0128d6:	430450        	min	a0, a4, a5
3c0128d9:	03          	.byte 0x3
3c0128da:	032d      	mov.n	a2, a3
3c0128dc:	110401        	l32r	a0, 3bfd6cec <PS_WOE+0x3bf96cec>
3c0128df:	0c0f06        	j	3c01591f <_rodata_end+0x2af7>
3c0128e2:	043a      	add.n	a0, a4, a3
3c0128e4:	1d          	.byte 0x1d
3c0128e5:	205f25        	call8	3c032ed8 <_rodata_end+0x200b0>
3c0128e8:	046d      	mov.n	a6, a4
3c0128ea:	256a      	add.n	a2, a5, a6
3c0128ec:	05c880        	extui	a12, a8, 24, 1
3c0128ef:	03b082        	l32ai	a8, a0, 12
3c0128f2:	061a      	add.n	a0, a6, a1
3c0128f4:	03fd82        	s32ri	a8, a13, 12
3c0128f7:	0759      	s32i.n	a5, a7, 0
3c0128f9:	180916        	beqz	a9, 3c012a7d <anon.59f700a49bcec3240477e61a72c53d6e.1.llvm.267152541612474560+0x9>
3c0128fc:	1409      	s32i.n	a0, a4, 4
3c0128fe:	140c      	movi.n	a4, 1
3c012900:	6a0c      	movi.n	a10, 6
3c012902:	060a06        	j	3c01412e <_rodata_end+0x1306>
3c012905:	061a      	add.n	a0, a6, a1
3c012907:	0759      	s32i.n	a5, a7, 0
3c012909:	052b      	addi.n	a0, a5, 2
3c01290b:	2c0a46        	j	3c01d938 <_rodata_end+0xab10>
3c01290e:	04          	.byte 0x4
3c01290f:	040c      	movi.n	a4, 0
3c012911:	310301        	l32r	a0, 3bfded20 <PS_WOE+0x3bf9ed20>
3c012914:	2c0b      	addi.n	a2, a12, -1
3c012916:	061a04        	ee.ld.qacc_h.l.128.ip	a0, 0x1a0
3c012919:	030b      	addi.n	a0, a3, -1
3c01291b:	06ac80        	ee.ldf.64.xp	f10, f0, a8, a12
3c01291e:	060a      	add.n	a0, a6, a0
3c012920:	034d312f 	ee.vmulas.s16.accx.ld.ip.qup	q7, a2, 16, q4, q6, q4, q5
3c012924:	08a480        	lsx	f10, a4, a8
3c012927:	033c      	movi.n	a3, 48
3c012929:	073c030f 	ee.vmulas.s16.accx.ld.ip.qup	q7, a0, 0x130, q4, q0, q3, q4
3c01292d:	0838      	l32i.n	a3, a8, 0
3c01292f:	052b      	addi.n	a0, a5, 2
3c012931:	11ff82        	s32ri	a8, a15, 68
3c012934:	0818      	l32i.n	a1, a8, 0
3c012936:	032d112f 	ee.vmulas.s16.accx.ld.ip.qup	q7, a2, 16, q4, q2, q2, q5
3c01293a:	210f21        	l32r	a2, 3bfdad78 <PS_WOE+0x3bf9ad78>
3c01293d:	048c800f 	ee.vmulas.s16.accx.ld.ip.qup	q1, a0, 0x100, q6, q1, q0, q4
3c012941:	199782        	l16si	a8, a7, 50
3c012944:	150b      	addi.n	a1, a5, -1
3c012946:	9488      	l32i.n	a8, a4, 36
3c012948:	052f05        	call0	3c017c3c <_rodata_end+0x4e14>
3c01294b:	073b      	addi.n	a0, a7, 3
3c01294d:	180e02        	l8ui	a0, a14, 24
3c012950:	8009      	s32i.n	a0, a0, 32
3c012952:	0c7422be 	ee.vmulas.s16.accx.ld.ip.qup	q0, a11, -224, q0, q4, q7, q4
3c012956:	1ad680        	sub.s	f13, f6, f8
3c012959:	050c      	movi.n	a5, 0
3c01295b:	05ff80        	extui	a15, a8, 31, 1
3c01295e:	80          	.byte 0x80
3c01295f:	9df20cdf 	ee.stf.128.xp	f10, f5, f0, f15, a13, a12
3c012963:	03          	.byte 0x3
3c012964:	810937        	bnone	a9, a3, 3c0128e9 <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0x64>
3c012967:	145c      	movi.n	a4, 81
3c012969:	08b880        	lsx	f11, a8, a8
3c01296c:	05cb80        	extui	a12, a8, 27, 1
3c01296f:	180a      	add.n	a1, a8, a0
3c012971:	033b      	addi.n	a0, a3, 3
3c012973:	060a      	add.n	a0, a6, a0
3c012975:	0838      	l32i.n	a3, a8, 0
3c012977:	0c0846        	j	3c01599c <_rodata_end+0x2b74>
3c01297a:	0b7406        	j	3c01574e <_rodata_end+0x2926>
3c01297d:	045a031e 	ee.vmulas.s16.accx.ld.ip.qup	q1, a1, 0x130, q0, q0, q5, q2
3c012981:	0959      	s32i.n	a5, a9, 0
3c012983:	188380        	lsxp	f8, a3, a8
3c012986:	0a1c      	movi.n	a10, 16
3c012988:	4c0916        	beqz	a9, 3c012e4c <_rodata_end+0x24>
3c01298b:	8a8004        	ee.vst.128.ip	q1, a0, 0
3c01298e:	a4ab06        	j	3bffbc3e <PS_WOE+0x3bfbbc3e>
3c012991:	170c      	movi.n	a7, 1
3c012993:	a13104        	ee.ld.128.usar.ip	q4, a0, 0x310
3c012996:	da8104        	ee.vst.128.ip	q3, a0, 0xfffff810
3c012999:	0c0726        	beqi	a7, -1, 3c0129a9 <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0x124>
3c01299c:	800505        	call0	3bf929f0 <PS_WOE+0x3bf529f0>
3c01299f:	8110a6        	blti	a0, 1, 3c012924 <anon.7279222ba2c67945cf2b798d12ef55a0.39.llvm.17200090188990483032+0x9f>
3c0129a2:	0107f5        	call12	3c013a20 <_rodata_end+0xbf8>
3c0129a5:	062a20        	ee.ldf.64.xp	f2, f0, a2, a10
3c0129a8:	044c      	movi.n	a4, 64
3c0129aa:	048d80        	extui	a8, a8, 13, 1
3c0129ad:	80          	.byte 0x80
3c0129ae:	031b03be 	ee.vmulas.s16.accx.ld.ip.qup	q7, a11, 48, q0, q0, q1, q3
3c0129b2:	4e6f0d0f 	ee.vmulas.u16.accx.ld.ip.qup	q5, a0, -48, q4, q0, q6, q7
3c0129b6:	724200        	salt	a4, a2, a0
3c0129b9:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c0129bd:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c0129c1:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c0129c5:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c0129c9:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c0129cd:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c0129d1:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c0129d5:	bf42004f 	ee.vmulas.s8.qacc.ld.xp.qup	q6, a4, a0, q4, q0, q4, q2
3c0129d9:	e542004e 	ee.vmax.s32.st.incp	q4, a4, q2, q0, q0
3c0129dd:	7242004e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q0, q0, q4, q2
3c0129e1:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c0129e5:	0b42004f 	ee.vmulas.s16.accx.ld.ip.qup	q6, a4, 0xfffffe00, q4, q0, q4, q2
3c0129e9:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c0129ed:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c0129f1:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c0129f5:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c0129f9:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c0129fd:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a01:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a05:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a09:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a0d:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a11:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a15:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a19:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a1d:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a21:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a25:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a29:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a2d:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a31:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a35:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a39:	3142004f 	ee.vmulas.s8.qacc.ld.ip.qup	q2, a4, 0, q4, q0, q4, q2
3c012a3d:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a41:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a45:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a49:	7242004f 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a4, 0, q4, q0, q4, q2
3c012a4d:	6942004f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a4, 0xfffffe00, q4, q0, q4, q2
3c012a51:	4a42004f 	ee.vmulas.u16.accx.ld.ip.qup	q4, a4, 0xfffffe00, q4, q0, q4, q2
3c012a55:	420053        	lsi	f5, a0, 0x108
3c012a58:	524c      	movi.n	a2, 69
3c012a5a:	424200        	xorb	b4, b2, b0
3c012a5d:	420053        	lsi	f5, a0, 0x108
3c012a60:	524c      	movi.n	a2, 69
3c012a62:	00          	.byte 00
3c012a63:	55dc42        	addmi	a4, a12, 0x5500
3c012a66:	00          	.byte 00
3c012a67:	559e42        	l16si	a4, a14, 170
3c012a6a:	d24200        	quos	a4, a2, a0
3c012a6d:	420055        	call4	3c054a74 <_rodata_end+0x41c4c>
3c012a70:	55dc      	bnez.n	a5, 3c012a89 <anon.59f700a49bcec3240477e61a72c53d6e.1.llvm.267152541612474560+0x15>
3c012a72:	        	extui	a4, a0, 2, 2

3c012a74 <anon.59f700a49bcec3240477e61a72c53d6e.1.llvm.267152541612474560>:
3c012a74:	004e14        	ee.ld.qacc_l.l.128.ip	a1, 0x4e0
3c012a77:	000c42        	l8ui	a4, a12, 0
3c012a7a:	040000        	extui	a0, a0, 0, 1
3c012a7d:	000000        	ill
3c012a80:	41bc      	beqz.n	a1, 3c012ab8 <anon.59f700a49bcec3240477e61a72c53d6e.3.llvm.267152541612474560+0x2c>
3c012a82:	00          	.byte 00
3c012a83:	459c42        	l16si	a4, a12, 138
3c012a86:	00          	.byte 00
3c012a87:	465c42        	s16i	a4, a12, 140
3c012a8a:	00          	.byte 00
3c012a8b:	        	l32i	a4, a15, 0x1a0

3c012a8c <anon.59f700a49bcec3240477e61a72c53d6e.3.llvm.267152541612474560>:
3c012a8c:	6d6f682f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, -128, q5, q4, q6, q7
3c012a90:	6d2f65        	call8	3c07fd88 <_rodata_end+0x6cf60>
3c012a93:	656261        	l32r	a6, 3bfec01c <PS_WOE+0x3bfac01c>
3c012a96:	2f7a      	add.n	a2, a15, a7
3c012a98:	64          	.byte 0x64
3c012a99:	657665        	call8	3c078200 <_rodata_end+0x653d8>
3c012a9c:	6f6c      	movi.n	a15, -26
3c012a9e:	656d70        	extui	a6, a7, 29, 7
3c012aa1:	722f746e 	ee.vmulas.u8.qacc.ld.ip.qup	q5, a6, 64, q1, q6, q2, q7
3c012aa5:	747375        	call12	3c0871dc <_rodata_end+0x743b4>
3c012aa8:	6574782f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, 0x180, q5, q6, q7, q4
3c012aac:	2f61736e 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -208, q1, q6, q6, q1
3c012ab0:	72          	.byte 0x72
3c012ab1:	747375        	call12	3c0871e8 <_rodata_end+0x743c0>
3c012ab4:	2d          	.byte 0x2d
3c012ab5:	7478      	l32i.n	a7, a4, 28
3c012ab7:	736e65        	call8	3c08619c <_rodata_end+0x73374>
3c012aba:	642d61        	l32r	a6, 3bfebb70 <PS_WOE+0x3bfabb70>
3c012abd:	2f7665        	call8	3c042224 <_rodata_end+0x2f3fc>
3c012ac0:	62          	.byte 0x62
3c012ac1:	6c6975        	call12	3c07f158 <_rodata_end+0x6c330>
3c012ac4:	64          	.byte 0x64
3c012ac5:	3638782f 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a2, 0x180, q5, q6, q3, q0
3c012ac9:	2d34365f 	ee.vmulas.s8.accx.ld.ip.qup	q2, a5, -160, q4, q6, q3, q4
3c012acd:	6b6e75        	call12	3c07e1b4 <_rodata_end+0x6b38c>
3c012ad0:	6e776f6e 	ee.vmulas.u8.accx.ld.ip.qup	q4, a6, -16, q1, q4, q7, q7
3c012ad4:	2d          	.byte 0x2d
3c012ad5:	696c      	movi.n	a9, -26
3c012ad7:	2d78756e 	ee.vmulas.s8.accx.ld.ip.qup	q3, a6, -176, q1, q6, q7, q0
3c012adb:	756e67        	bbci	a14, 6, 3c012b54 <anon.59f700a49bcec3240477e61a72c53d6e.9.llvm.267152541612474560+0x1c>
3c012ade:	6174732f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, 48, q5, q6, q7, q4
3c012ae2:	326567        	bbci	a5, 6, 3c012b18 <anon.59f700a49bcec3240477e61a72c53d6e.7.llvm.267152541612474560>
3c012ae5:	62696c2f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a2, 192, q5, q4, q6, q1
3c012ae9:	7375722f 	ee.vmulas.u8.qacc.ld.ip.qup	q6, a2, 32, q5, q6, q7, q5
3c012aed:	74          	.byte 0x74
3c012aee:	696c      	movi.n	a9, -26
3c012af0:	732f62        	l32i	a6, a15, 0x1cc
3c012af3:	2f6372        	s32i	a7, a3, 188
3c012af6:	72          	.byte 0x72
3c012af7:	747375        	call12	3c08722c <_rodata_end+0x74404>
3c012afa:	62696c2f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a2, 192, q5, q4, q6, q1
3c012afe:	726172        	s32i	a7, a1, 0x1c8
3c012b01:	2f79      	s32i.n	a7, a15, 8
3c012b03:	63          	.byte 0x63
3c012b04:	2f65726f 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -224, q5, q6, q6, q5
3c012b08:	73          	.byte 0x73
3c012b09:	2f6372        	s32i	a7, a3, 188
3c012b0c:	746d66        	bnei	a13, 6, 3c012b84 <anon.6c49553720ac60af6143947e1304eaf6.2.llvm.2114311576004596468+0x24>
3c012b0f:	646f6d2f 	ee.vmulas.u8.accx.ld.ip.qup	q1, a2, 0x1d0, q5, q4, q6, q7
3c012b13:	0073722e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a2, 32, q1, q6, q7, q3
	...

3c012b18 <anon.59f700a49bcec3240477e61a72c53d6e.7.llvm.267152541612474560>:
3c012b18:	004e14        	ee.ld.qacc_l.l.128.ip	a1, 0x4e0
3c012b1b:	000842        	l8ui	a4, a8, 0
3c012b1e:	040000        	extui	a0, a0, 0, 1
3c012b21:	000000        	ill
3c012b24:	005fc4        	ee.ld.qacc_l.l.128.ip	a12, 0x5f0
3c012b27:	42          	.byte 0x42

3c012b28 <anon.59f700a49bcec3240477e61a72c53d6e.8.llvm.267152541612474560>:
3c012b28:	2a8c      	beqz.n	a10, 3c012b2e <anon.59f700a49bcec3240477e61a72c53d6e.8.llvm.267152541612474560+0x6>
3c012b2a:	8a3c01        	l32r	a0, 3bff541c <PS_WOE+0x3bfb541c>
3c012b2d:	000000        	ill
3c012b30:	0007c6        	j	3c012b53 <anon.59f700a49bcec3240477e61a72c53d6e.9.llvm.267152541612474560+0x1b>
3c012b33:	00          	.byte 00
3c012b34:	0009      	s32i.n	a0, a0, 0
	...

3c012b38 <anon.59f700a49bcec3240477e61a72c53d6e.9.llvm.267152541612474560>:
3c012b38:	6c6166        	bnei	a1, 6, 3c012ba8 <anon.6c49553720ac60af6143947e1304eaf6.2.llvm.2114311576004596468+0x48>
3c012b3b:	73          	.byte 0x73
3c012b3c:	000065        	call8	3c012b44 <anon.59f700a49bcec3240477e61a72c53d6e.9.llvm.267152541612474560+0xc>
3c012b3f:	2a8c00        	mul.s	f8, f12, f0
3c012b42:	8a3c01        	l32r	a0, 3bff5434 <PS_WOE+0x3bfb5434>
3c012b45:	000000        	ill
3c012b48:	091b      	addi.n	a0, a9, 1
3c012b4a:	160000        	ee.ldf.64.xp	f0, f1, a0, a0
3c012b4d:	000000        	ill
3c012b50:	2a8c      	beqz.n	a10, 3c012b56 <anon.59f700a49bcec3240477e61a72c53d6e.9.llvm.267152541612474560+0x1e>
3c012b52:	8a3c01        	l32r	a0, 3bff5444 <PS_WOE+0x3bfb5444>
3c012b55:	000000        	ill
3c012b58:	000914        	ee.ld.qacc_l.l.128.ip	a1, 144
3c012b5b:	001e00        	movsp	a0, a14
	...

3c012b60 <anon.6c49553720ac60af6143947e1304eaf6.2.llvm.2114311576004596468>:
3c012b60:	012b60        	slli	a2, a11, 26
3c012b63:	003c      	movi.n	a0, 48
3c012b65:	000000        	ill
3c012b68:	6038      	l32i.n	a3, a0, 24
3c012b6a:	044200        	extui	a4, a0, 2, 1
3c012b6d:	000000        	ill
3c012b70:	000004        	ee.ld.qacc_l.l.128.ip	a0, 0
3c012b73:	00          	.byte 00
3c012b74:	5fac      	beqz.n	a15, 3c012b9d <anon.6c49553720ac60af6143947e1304eaf6.2.llvm.2114311576004596468+0x3d>
3c012b76:	00          	.byte 00
3c012b77:	615c42        	s16i	a4, a12, 194
3c012b7a:	004200        	break	2, 0
3c012b7d:	000000        	ill
3c012b80:	000001        	l32r	a0, 3bfd2b80 <PS_WOE+0x3bf92b80>
3c012b83:	00          	.byte 00
3c012b84:	006174        	ee.ld.qacc_l.l.128.ip	a7, 0x610
3c012b87:	622042        	l32i	a4, a0, 0x188
3c012b8a:	207475        	call12	3c0332d0 <_rodata_end+0x204a8>
3c012b8d:	74          	.byte 0x74
3c012b8e:	6568      	l32i.n	a6, a5, 24
3c012b90:	20          	.byte 0x20
3c012b91:	6e69      	s32i.n	a6, a14, 24
3c012b93:	64          	.byte 0x64
3c012b94:	207865        	call8	3c03331c <_rodata_end+0x204f4>
3c012b97:	7369      	s32i.n	a6, a3, 28
3c012b99:	20          	.byte 0x20
3c012b9a:	00          	.byte 00
3c012b9b:	059800        	extui	a9, a0, 24, 1
3c012b9e:	203c01        	l32r	a0, 3bfdac90 <PS_WOE+0x3bf9ac90>
3c012ba1:	000000        	ill
3c012ba4:	2b88      	l32i.n	a8, a11, 8
3c012ba6:	123c01        	l32r	a0, 3bfd7498 <PS_WOE+0x3bf97498>
3c012ba9:	000000        	ill
3c012bac:	006154        	ee.ld.qacc_l.l.128.ip	a5, 0x610
3c012baf:	000442        	l8ui	a4, a4, 0
3c012bb2:	040000        	extui	a0, a0, 0, 1
3c012bb5:	000000        	ill
3c012bb8:	5db8      	l32i.n	a11, a13, 20
3c012bba:	00          	.byte 00
3c012bbb:	42          	.byte 0x42
3c012bbc:	3d          	.byte 0x3d
3c012bbd:	3d          	.byte 0x3d
3c012bbe:	6d3d21        	l32r	a2, 3bfee0b4 <PS_WOE+0x3bfae0b4>
3c012bc1:	637461        	l32r	a6, 3bfeb994 <PS_WOE+0x3bfab994>
3c012bc4:	6568      	l32i.n	a6, a5, 24
3c012bc6:	73          	.byte 0x73
3c012bc7:	737361        	l32r	a6, 3bfef994 <PS_WOE+0x3bfaf994>
3c012bca:	747265        	call8	3c0872f0 <_rodata_end+0x744c8>
3c012bcd:	6f69      	s32i.n	a6, a15, 24
3c012bcf:	6166206e 	ee.vmulas.u8.accx.ld.ip.qup	q2, a6, 0, q0, q4, q6, q6
3c012bd3:	6c69      	s32i.n	a6, a12, 24
3c012bd5:	3a6465        	call8	3c04d21c <_rodata_end+0x3a3f4>
3c012bd8:	20          	.byte 0x20
3c012bd9:	60          	.byte 0x60
3c012bda:	6c28      	l32i.n	a2, a12, 24
3c012bdc:	746665        	call8	3c087244 <_rodata_end+0x7441c>
3c012bdf:	722020        	salt	a2, a0, a2
3c012be2:	6769      	s32i.n	a6, a7, 24
3c012be4:	7468      	l32i.n	a6, a4, 28
3c012be6:	6029      	s32i.n	a2, a0, 24
3c012be8:	200a      	add.n	a2, a0, a0
3c012bea:	656c20        	extui	a6, a2, 28, 7
3c012bed:	3a7466        	bnei	a4, 7, 3c012c2b <anon.6c49553720ac60af6143947e1304eaf6.2.llvm.2114311576004596468+0xcb>
3c012bf0:	606020        	neg	a6, a2
3c012bf3:	0a2c      	movi.n	a10, 32
3c012bf5:	20          	.byte 0x20
3c012bf6:	676972        	s32i	a7, a9, 0x19c
3c012bf9:	7468      	l32i.n	a6, a4, 28
3c012bfb:	203a      	add.n	a2, a0, a3
3c012bfd:	006060        	rsil	a6, 0
3c012c00:	012bc7        	blt	a11, a12, 3c012c05 <anon.6c49553720ac60af6143947e1304eaf6.2.llvm.2114311576004596468+0xa5>
3c012c03:	193c      	movi.n	a9, 49
3c012c05:	000000        	ill
3c012c08:	012be0        	slli	a2, a11, 18
3c012c0b:	123c      	movi.n	a2, 49
3c012c0d:	000000        	ill
3c012c10:	012bf2        	l32i	a15, a11, 4
3c012c13:	0c3c      	movi.n	a12, 48
3c012c15:	000000        	ill
3c012c18:	3c012bfe 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a15, -80, q0, q4, q0, q1
3c012c1c:	000001        	l32r	a0, 3bfd2c1c <PS_WOE+0x3bf92c1c>
3c012c1f:	00          	.byte 00
3c012c20:	203a60        	or	a3, a10, a6
3c012c23:	2bc700        	oeq.s	b12, f7, f0
3c012c26:	193c01        	l32r	a0, 3bfd9118 <PS_WOE+0x3bf99118>
3c012c29:	000000        	ill
3c012c2c:	012be0        	slli	a2, a11, 18
3c012c2f:	123c      	movi.n	a2, 49
3c012c31:	000000        	ill
3c012c34:	012bf2        	l32i	a15, a11, 4
3c012c37:	0c3c      	movi.n	a12, 48
3c012c39:	000000        	ill
3c012c3c:	012c20        	slli	a2, a12, 30
3c012c3f:	033c      	movi.n	a3, 48
3c012c41:	000000        	ill
3c012c44:	50          	.byte 0x50
3c012c45:	696e61        	l32r	a6, 3bfed200 <PS_WOE+0x3bfad200>
3c012c48:	6e4963        	ssi	f6, a9, 0x1b8
3c012c4b:	706f66        	bnei	a15, 6, 3c012cbf <anon.d90319d082a0f7d6c7a3bb20e3f64163.0.llvm.13695025157779122309+0x17>
3c012c4e:	6c7961        	l32r	a6, 3bfede34 <PS_WOE+0x3bfade34>
3c012c51:	5464616f 	ee.vmulas.u16.qacc.ld.ip.qup	q0, a6, 0x110, q5, q4, q6, q4
3c012c55:	420061        	l32r	a6, 3bfe3458 <PS_WOE+0x3bfa3458>
3c012c58:	0008      	l32i.n	a0, a0, 0
3c012c5a:	040000        	extui	a0, a0, 0, 1
3c012c5d:	000000        	ill
3c012c60:	004060        	break	0, 6
3c012c63:	656d42        	s32i	a4, a13, 0x194
3c012c66:	73          	.byte 0x73
3c012c67:	73          	.byte 0x73
3c012c68:	656761        	l32r	a6, 3bfec204 <PS_WOE+0x3bfac204>
3c012c6b:	00          	.byte 00
3c012c6c:	006154        	ee.ld.qacc_l.l.128.ip	a5, 0x610
3c012c6f:	000442        	l8ui	a4, a4, 0
3c012c72:	040000        	extui	a0, a0, 0, 1
3c012c75:	000000        	ill
3c012c78:	6098      	l32i.n	a9, a0, 24
3c012c7a:	544200        	extui	a4, a0, 2, 6
3c012c7d:	420061        	l32r	a6, 3bfe3480 <PS_WOE+0x3bfa3480>
3c012c80:	000004        	ee.ld.qacc_l.l.128.ip	a0, 0
3c012c83:	00          	.byte 00
3c012c84:	000004        	ee.ld.qacc_l.l.128.ip	a0, 0
3c012c87:	6a2800        	maddn.s	f2, f8, f0
3c012c8a:	634200        	minu	a4, a2, a0
3c012c8d:	5f6e61        	l32r	a6, 3bfeaa48 <PS_WOE+0x3bfaaa48>
3c012c90:	776e75        	call12	3c08a378 <_rodata_end+0x77550>
3c012c93:	6e69      	s32i.n	a6, a14, 24
3c012c95:	000064        	ee.ld.qacc_l.l.128.ip	a6, 0
3c012c98:	006154        	ee.ld.qacc_l.l.128.ip	a5, 0x610
3c012c9b:	000442        	l8ui	a4, a4, 0
3c012c9e:	040000        	extui	a0, a0, 0, 1
3c012ca1:	000000        	ill
3c012ca4:	005fe4        	ee.ld.qacc_l.l.128.ip	a14, 0x5f0
3c012ca7:	42          	.byte 0x42

3c012ca8 <anon.d90319d082a0f7d6c7a3bb20e3f64163.0.llvm.13695025157779122309>:
3c012ca8:	203a      	add.n	a2, a0, a3
3c012caa:	00          	.byte 00
3c012cab:	00          	.byte 00
3c012cac:	2ca8      	l32i.n	a10, a12, 8
3c012cae:	003c01        	l32r	a0, 3bfd2da0 <PS_WOE+0x3bf92da0>
3c012cb1:	000000        	ill
3c012cb4:	2ca8      	l32i.n	a10, a12, 8
3c012cb6:	023c01        	l32r	a0, 3bfd35a8 <PS_WOE+0x3bf935a8>
3c012cb9:	000000        	ill
3c012cbc:	6e6172        	s32i	a7, a1, 0x1b8
3c012cbf:	206567        	bbci	a5, 6, 3c012ce3 <anon.d90319d082a0f7d6c7a3bb20e3f64163.0.llvm.13695025157779122309+0x3b>
3c012cc2:	73          	.byte 0x73
3c012cc3:	74          	.byte 0x74
3c012cc4:	747261        	l32r	a6, 3bfefe8c <PS_WOE+0x3bfafe8c>
3c012cc7:	20          	.byte 0x20
3c012cc8:	6e69      	s32i.n	a6, a14, 24
3c012cca:	64          	.byte 0x64
3c012ccb:	207865        	call8	3c033450 <_rodata_end+0x20628>
3c012cce:	756f20        	extui	a6, a2, 31, 8
3c012cd1:	74          	.byte 0x74
3c012cd2:	666f20        	ee.ldf.64.xp	f6, f6, a2, a15
3c012cd5:	20          	.byte 0x20
3c012cd6:	6e6172        	s32i	a7, a1, 0x1b8
3c012cd9:	206567        	bbci	a5, 6, 3c012cfd <anon.d90319d082a0f7d6c7a3bb20e3f64163.0.llvm.13695025157779122309+0x55>
3c012cdc:	726f66        	bnei	a15, 6, 3c012d52 <anon.d90319d082a0f7d6c7a3bb20e3f64163.0.llvm.13695025157779122309+0xaa>
3c012cdf:	20          	.byte 0x20
3c012ce0:	73          	.byte 0x73
3c012ce1:	696c      	movi.n	a9, -26
3c012ce3:	63          	.byte 0x63
3c012ce4:	6f2065        	call8	3c081eec <_rodata_end+0x6f0c4>
3c012ce7:	6c2066        	bnei	a0, 2, 3c012d57 <anon.d90319d082a0f7d6c7a3bb20e3f64163.0.llvm.13695025157779122309+0xaf>
3c012cea:	676e65        	call8	3c07a3d0 <_rodata_end+0x675a8>
3c012ced:	74          	.byte 0x74
3c012cee:	2068      	l32i.n	a6, a0, 8
3c012cf0:	2cbc      	beqz.n	a12, 3c012d26 <anon.d90319d082a0f7d6c7a3bb20e3f64163.0.llvm.13695025157779122309+0x7e>
3c012cf2:	123c01        	l32r	a0, 3bfd75e4 <PS_WOE+0x3bf975e4>
3c012cf5:	000000        	ill
3c012cf8:	3c012cce 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a12, -64, q0, q4, q0, q1
3c012cfc:	000022        	l8ui	a2, a0, 0
3c012cff:	011400        	slli	a1, a4, 32
3c012d02:	103c01        	l32r	a0, 3bfd6df4 <PS_WOE+0x3bf96df4>
3c012d05:	000000        	ill
3c012d08:	3c012cce 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a12, -64, q0, q4, q0, q1
3c012d0c:	000022        	l8ui	a2, a0, 0
3c012d0f:	00          	.byte 00
3c012d10:	73          	.byte 0x73
3c012d11:	696c      	movi.n	a9, -26
3c012d13:	63          	.byte 0x63
3c012d14:	692065        	call8	3c07bf1c <_rodata_end+0x690f4>
3c012d17:	7865646e 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a6, 0xfffffe40, q1, q4, q6, q5
3c012d1b:	747320        	extui	a7, a2, 3, 8
3c012d1e:	747261        	l32r	a6, 3bfefee8 <PS_WOE+0x3bfafee8>
3c012d21:	73          	.byte 0x73
3c012d22:	746120        	extui	a6, a2, 1, 8
3c012d25:	622020        	saltu	a2, a0, a2
3c012d28:	207475        	call12	3c033470 <_rodata_end+0x20648>
3c012d2b:	646e65        	call8	3c077410 <_rodata_end+0x645e8>
3c012d2e:	73          	.byte 0x73
3c012d2f:	746120        	extui	a6, a2, 1, 8
3c012d32:	100020        	and	a0, a0, a2
3c012d35:	012d      	mov.n	a2, a1
3c012d37:	163c      	movi.n	a6, 49
3c012d39:	000000        	ill
3c012d3c:	012d26        	beqi	a13, 2, 3c012d41 <anon.d90319d082a0f7d6c7a3bb20e3f64163.0.llvm.13695025157779122309+0x99>
3c012d3f:	0d3c      	movi.n	a13, 48
3c012d41:	000000        	ill
3c012d44:	63ec      	bnez.n	a3, 3c012d6e <anon.d90319d082a0f7d6c7a3bb20e3f64163.0.llvm.13695025157779122309+0xc6>
3c012d46:	084200        	lsx	f4, a2, a0
3c012d49:	000000        	ill
3c012d4c:	000004        	ee.ld.qacc_l.l.128.ip	a0, 0
3c012d4f:	00          	.byte 00
3c012d50:	600c      	movi.n	a0, 6
3c012d52:	634200        	minu	a4, a2, a0
3c012d55:	6f          	.byte 0x6f
3c012d56:	006c      	movi.n	a0, -32
3c012d58:	63ec      	bnez.n	a3, 3c012d82 <anon.8a84a47ca5c5b935e2c2118fc1422494.32.llvm.14364309025287346892+0xa>
3c012d5a:	044200        	extui	a4, a0, 2, 1
3c012d5d:	000000        	ill
3c012d60:	000004        	ee.ld.qacc_l.l.128.ip	a0, 0
3c012d63:	00          	.byte 00
3c012d64:	5db8      	l32i.n	a11, a13, 20
3c012d66:	00          	.byte 00
3c012d67:	63ec42        	s32c1i	a4, a12, 0x18c
3c012d6a:	044200        	extui	a4, a0, 2, 1
3c012d6d:	000000        	ill
3c012d70:	000004        	ee.ld.qacc_l.l.128.ip	a0, 0
3c012d73:	655400        	extui	a5, a0, 20, 7
3c012d76:	00          	.byte 00
3c012d77:	        	l32i	a4, a15, 0x1a0

3c012d78 <anon.8a84a47ca5c5b935e2c2118fc1422494.32.llvm.14364309025287346892>:
3c012d78:	6d6f682f 	ee.vmulas.u8.accx.ld.ip.qup	q3, a2, -128, q5, q4, q6, q7
3c012d7c:	6d2f65        	call8	3c080074 <_rodata_end+0x6d24c>
3c012d7f:	656261        	l32r	a6, 3bfec308 <PS_WOE+0x3bfac308>
3c012d82:	2f7a      	add.n	a2, a15, a7
3c012d84:	64          	.byte 0x64
3c012d85:	657665        	call8	3c0784ec <_rodata_end+0x656c4>
3c012d88:	6f6c      	movi.n	a15, -26
3c012d8a:	656d70        	extui	a6, a7, 29, 7
3c012d8d:	722f746e 	ee.vmulas.u8.qacc.ld.ip.qup	q5, a6, 64, q1, q6, q2, q7
3c012d91:	747375        	call12	3c0874c8 <_rodata_end+0x746a0>
3c012d94:	6574782f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, 0x180, q5, q6, q7, q4
3c012d98:	2f61736e 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -208, q1, q6, q6, q1
3c012d9c:	72          	.byte 0x72
3c012d9d:	747375        	call12	3c0874d4 <_rodata_end+0x746ac>
3c012da0:	2d          	.byte 0x2d
3c012da1:	7478      	l32i.n	a7, a4, 28
3c012da3:	736e65        	call8	3c086488 <_rodata_end+0x73660>
3c012da6:	642d61        	l32r	a6, 3bfebe5c <PS_WOE+0x3bfabe5c>
3c012da9:	2f7665        	call8	3c042510 <_rodata_end+0x2f6e8>
3c012dac:	62          	.byte 0x62
3c012dad:	6c6975        	call12	3c07f444 <_rodata_end+0x6c61c>
3c012db0:	64          	.byte 0x64
3c012db1:	3638782f 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a2, 0x180, q5, q6, q3, q0
3c012db5:	2d34365f 	ee.vmulas.s8.accx.ld.ip.qup	q2, a5, -160, q4, q6, q3, q4
3c012db9:	6b6e75        	call12	3c07e4a0 <_rodata_end+0x6b678>
3c012dbc:	6e776f6e 	ee.vmulas.u8.accx.ld.ip.qup	q4, a6, -16, q1, q4, q7, q7
3c012dc0:	2d          	.byte 0x2d
3c012dc1:	696c      	movi.n	a9, -26
3c012dc3:	2d78756e 	ee.vmulas.s8.accx.ld.ip.qup	q3, a6, -176, q1, q6, q7, q0
3c012dc7:	756e67        	bbci	a14, 6, 3c012e40 <_rodata_end+0x18>
3c012dca:	6174732f 	ee.vmulas.u8.accx.ld.ip.qup	q2, a2, 48, q5, q6, q7, q4
3c012dce:	326567        	bbci	a5, 6, 3c012e04 <anon.8a84a47ca5c5b935e2c2118fc1422494.33.llvm.14364309025287346892>
3c012dd1:	62696c2f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a2, 192, q5, q4, q6, q1
3c012dd5:	7375722f 	ee.vmulas.u8.qacc.ld.ip.qup	q6, a2, 32, q5, q6, q7, q5
3c012dd9:	74          	.byte 0x74
3c012dda:	696c      	movi.n	a9, -26
3c012ddc:	732f62        	l32i	a6, a15, 0x1cc
3c012ddf:	2f6372        	s32i	a7, a3, 188
3c012de2:	72          	.byte 0x72
3c012de3:	747375        	call12	3c087518 <_rodata_end+0x746f0>
3c012de6:	62696c2f 	ee.vmulas.u8.accx.ld.ip.qup	q5, a2, 192, q5, q4, q6, q1
3c012dea:	726172        	s32i	a7, a1, 0x1c8
3c012ded:	2f79      	s32i.n	a7, a15, 8
3c012def:	63          	.byte 0x63
3c012df0:	2f65726f 	ee.vmulas.s8.accx.ld.ip.qup	q6, a6, -224, q5, q6, q6, q5
3c012df4:	73          	.byte 0x73
3c012df5:	2f6372        	s32i	a7, a3, 188
3c012df8:	637365        	call8	3c076530 <_rodata_end+0x63708>
3c012dfb:	657061        	l32r	a6, 3bfec3bc <PS_WOE+0x3bfac3bc>
3c012dfe:	0073722e 	ee.vmulas.s16.accx.ld.ip.qup	q0, a2, 32, q1, q6, q7, q3
	...

3c012e04 <anon.8a84a47ca5c5b935e2c2118fc1422494.33.llvm.14364309025287346892>:
3c012e04:	2d78      	l32i.n	a7, a13, 8
3c012e06:	893c01        	l32r	a0, 3bff52f8 <PS_WOE+0x3bfb52f8>
3c012e09:	000000        	ill
3c012e0c:	000034        	ee.ld.qacc_l.l.128.ip	a3, 0
3c012e0f:	00          	.byte 00
3c012e10:	000005        	call0	3c012e14 <anon.8a84a47ca5c5b935e2c2118fc1422494.34.llvm.14364309025287346892>
	...

3c012e14 <anon.8a84a47ca5c5b935e2c2118fc1422494.34.llvm.14364309025287346892>:
3c012e14:	755c      	movi.n	a5, 87
3c012e16:	007b      	addi.n	a0, a0, 7

3c012e18 <anon.8a84a47ca5c5b935e2c2118fc1422494.38.llvm.14364309025287346892>:
3c012e18:	2d78      	l32i.n	a7, a13, 8
3c012e1a:	893c01        	l32r	a0, 3bff530c <PS_WOE+0x3bfb530c>
3c012e1d:	000000        	ill
3c012e20:	000062        	l8ui	a6, a0, 0
3c012e23:	00          	.byte 00
3c012e24:	000023        	lsi	f2, a0, 0
	...

Disassembly of section .rwtext:

40378400 <esp32s3_hal::configure_cpu_caches-0x28>:
40378400:	004000        	break	0, 0
40378403:	1a1c00        	sub.s	f1, f12, f0
40378406:	004000        	break	0, 0
40378409:	40          	.byte 0x40
4037840a:	00          	.byte 00
4037840b:	1a1c00        	sub.s	f1, f12, f0
4037840e:	004000        	break	0, 0
40378411:	3fcdc7        	bnall	a13, a12, 40378454 <ESP32Reset+0x18>
40378414:	00          	.byte 00
40378415:	e0          	.byte 0xe0
40378416:	e000600f 	ee.src.q.ld.ip	q0, a0, 0x100, q5, q0
4037841a:	0000600f 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q5, q4, q0, q0
4037841e:	005000        	syscall
40378421:	00          	.byte 00
40378422:	f05000        	subx8	a5, a0, a0
40378425:	 	ee.vmulas.s8.qacc.ld.ip.qup	q4, a0, 0x100, q4, q0, q4, q2

40378428 <esp32s3_hal::configure_cpu_caches>:
40378428:	004136        	entry	a1, 32
4037842b:	fff5a1        	l32r	a10, 40378400 <_init_end>
4037842e:	8b0c      	movi.n	a11, 8
40378430:	0c2c      	movi.n	a12, 32
40378432:	fff481        	l32r	a8, 40378404 <_init_end+0x4>
40378435:	0008e0        	callx8	a8
40378438:	f01d      	retw.n
4037843a:	f03d      	nop.n

4037843c <ESP32Reset>:
4037843c:	004136        	entry	a1, 32
4037843f:	fff2a1        	l32r	a10, 40378408 <_init_end+0x8>
40378442:	8b0c      	movi.n	a11, 8
40378444:	0c2c      	movi.n	a12, 32
40378446:	fff181        	l32r	a8, 4037840c <_init_end+0xc>
40378449:	0008e0        	callx8	a8
4037844c:	fff181        	l32r	a8, 40378410 <_init_end+0x10>
4037844f:	00a002        	movi	a0, 0
40378452:	201880        	or	a1, a8, a8
40378455:	ffef81        	l32r	a8, 40378414 <_init_end+0x14>
40378458:	fff091        	l32r	a9, 40378418 <_init_end+0x18>
4037845b:	0bb897        	bgeu	a8, a9, 4037846a <ESP32Reset+0x2e>
4037845e:	0a0c      	movi.n	a10, 0
40378460:	0020c0        	memw
40378463:	08a9      	s32i.n	a10, a8, 0
40378465:	884b      	addi.n	a8, a8, 4
40378467:	f53897        	bltu	a8, a9, 40378460 <ESP32Reset+0x24>
4037846a:	ffec81        	l32r	a8, 4037841c <_init_end+0x1c>
4037846d:	ffec91        	l32r	a9, 40378420 <_init_end+0x20>
40378470:	0bb897        	bgeu	a8, a9, 4037847f <ESP32Reset+0x43>
40378473:	0a0c      	movi.n	a10, 0
40378475:	0020c0        	memw
40378478:	08a9      	s32i.n	a10, a8, 0
4037847a:	884b      	addi.n	a8, a8, 4
4037847c:	f53897        	bltu	a8, a9, 40378475 <ESP32Reset+0x39>
4037847f:	ffe981        	l32r	a8, 40378424 <_init_end+0x24>
40378482:	0008e0        	callx8	a8
40378485:	0041f0        	break	1, 15
40378488:	378520        	ee.stf.64.xp	f8, f3, a2, a5
4037848b:	05b840        	extui	a11, a4, 24, 1
4037848e:	003c01        	l32r	a0, 40338580 <rom_i2c_writeReg_Mask+0x332814>
40378491:	420062        	l8ui	a6, a0, 66
40378494:	0578      	l32i.n	a7, a5, 0
40378496:	c03c01        	l32r	a0, 40368588 <rom_i2c_writeReg_Mask+0x36281c>
40378499:	0188      	l32i.n	a8, a1, 0
4037849b:	088020        	lsx	f8, a0, a2
4037849e:	00          	.byte 00
4037849f:	902c20        	addx2	a2, a12, a2
403784a2:	244037        	ball	a0, a3, 403784ca <ESP32Reset+0x8e>
403784a5:	3c0103        	lsi	f0, a1, 240
403784a8:	902c      	movi.n	a0, 41
403784aa:	2c4037        	ball	a0, a3, 403784da <ESP32Reset+0x9e>
403784ad:	90          	.byte 0x90
403784ae:	2c4037        	ball	a0, a3, 403784de <ESP32Reset+0xa2>
403784b1:	90          	.byte 0x90
403784b2:	2c4037        	ball	a0, a3, 403784e2 <ESP32Reset+0xa6>
403784b5:	90          	.byte 0x90
403784b6:	2c4037        	ball	a0, a3, 403784e6 <ESP32Reset+0xaa>
403784b9:	90          	.byte 0x90
403784ba:	2c4037        	ball	a0, a3, 403784ea <ESP32Reset+0xae>
403784bd:	90          	.byte 0x90
403784be:	804037        	ball	a0, a3, 40378442 <ESP32Reset+0x6>
403784c1:	400c      	movi.n	a0, 4
403784c3:	200070        	or	a0, a0, a7
403784c6:	00          	.byte 00
403784c7:	00          	.byte 00
403784c8:	298c      	beqz.n	a9, 403784ce <ESP32Reset+0x92>
403784ca:	600c      	movi.n	a0, 6
403784cc:	218c      	beqz.n	a1, 403784d2 <ESP32Reset+0x96>
403784ce:	600c      	movi.n	a0, 6
403784d0:	90          	.byte 0x90
403784d1:	0c29      	s32i.n	a2, a12, 0
403784d3:	219060        	srai	a9, a6, 0
403784d6:	600c      	movi.n	a0, 6
403784d8:	0c2994        	ee.st.qacc_l.l.128.ip	a9, 0x290
403784db:	219460        	srai	a9, a6, 4
403784de:	600c      	movi.n	a0, 6
403784e0:	2998      	l32i.n	a9, a9, 8
403784e2:	600c      	movi.n	a0, 6
403784e4:	2198      	l32i.n	a9, a1, 8
403784e6:	600c      	movi.n	a0, 6
403784e8:	6fd8      	l32i.n	a13, a15, 24
403784ea:	004200        	break	2, 0
403784ed:	0c28      	l32i.n	a2, a12, 0
403784ef:	200060        	or	a0, a0, a6
403784f2:	600c      	movi.n	a0, 6
403784f4:	05c8      	l32i.n	a12, a5, 0
403784f6:	c03c01        	l32r	a0, 403685e8 <rom_i2c_writeReg_Mask+0x36287c>
403784f9:	8442006f 	ee.ldf.128.ip	f8, f5, f0, f4, a6, 0
403784fd:	3c0103        	lsi	f0, a1, 240
40378500:	378b20        	ee.stf.64.xp	f8, f3, a2, a11
40378503:	40          	.byte 0x40
40378504:	0000ffff 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q7, q6, q0, q0
40378508:	07ac      	beqz.n	a7, 4037852c <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0xc>
4037850a:	d03c01        	l32r	a0, 4036c5fc <rom_i2c_writeReg_Mask+0x366890>
4037850d:	000d      	mov.n	a0, a0
4037850f:	42          	.byte 0x42

40378510 <__level_1_interrupt>:
40378510:	004136        	entry	a1, 32
40378513:	ffdd81        	l32r	a8, 40378488 <ESP32Reset+0x4c>
40378516:	02ad      	mov.n	a10, a2
40378518:	03bd      	mov.n	a11, a3
4037851a:	0008e0        	callx8	a8
4037851d:	f01d      	retw.n
	...

40378520 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts>:
40378520:	030136        	entry	a1, 0x180
40378523:	03e280        	rsr.interrupt	a8
40378526:	03e490        	rsr.intenable	a9
40378529:	7a0c      	movi.n	a10, 7
4037852b:	f1a9      	s32i.n	a10, a1, 60
4037852d:	02ba27        	bgeu	a10, a2, 40378533 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x13>
40378530:	017706        	j	40378b10 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5f0>
40378533:	108980        	and	a8, a9, a8
40378536:	ffd791        	l32r	a9, 40378494 <ESP32Reset+0x58>
40378539:	a09290        	addx4	a9, a2, a9
4037853c:	0998      	l32i.n	a9, a9, 0
4037853e:	108890        	and	a8, a8, a9
40378541:	ffd591        	l32r	a9, 40378498 <ESP32Reset+0x5c>
40378544:	109890        	and	a9, a8, a9
40378547:	047916        	beqz	a9, 40378592 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x72>
4037854a:	fa7c      	movi.n	a10, -1
4037854c:	30a9a0        	xor	a10, a9, a10
4037854f:	990b      	addi.n	a9, a9, -1
40378551:	109a90        	and	a9, a10, a9
40378554:	40f990        	nsau	a9, a9
40378557:	0a2c      	movi.n	a10, 32
40378559:	c09a90        	sub	a9, a10, a9
4037855c:	ffd0a1        	l32r	a10, 4037849c <ESP32Reset+0x60>
4037855f:	1088a0        	and	a8, a8, a10
40378562:	00d816        	beqz	a8, 40378573 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x53>
40378565:	180c      	movi.n	a8, 1
40378567:	401900        	ssl	a9
4037856a:	a18800        	sll	a8, a8
4037856d:	13e380        	wsr.intclear	a8
40378570:	002010        	rsync
40378573:	fac992        	addi	a9, a9, -6
40378576:	781c      	movi.n	a8, 23
40378578:	02b897        	bgeu	a8, a9, 4037857e <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e>
4037857b:	0163c6        	j	40378b0e <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5ee>
4037857e:	ffc881        	l32r	a8, 403784a0 <ESP32Reset+0x64>
40378581:	ffc8a1        	l32r	a10, 403784a4 <ESP32Reset+0x68>
40378584:	a099a0        	addx4	a9, a9, a10
40378587:	0998      	l32i.n	a9, a9, 0
40378589:	0009a0        	jx	a9
4037858c:	ffcc81        	l32r	a8, 403784bc <ESP32Reset+0x80>
4037858f:	001d06        	j	40378607 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0xe7>
40378592:	ffcb91        	l32r	a9, 403784c0 <ESP32Reset+0x84>
40378595:	108890        	and	a8, a8, a9
40378598:	024816        	beqz	a8, 403785c0 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0xa0>
4037859b:	f97c      	movi.n	a9, -1
4037859d:	309890        	xor	a9, a8, a9
403785a0:	880b      	addi.n	a8, a8, -1
403785a2:	108980        	and	a8, a9, a8
403785a5:	40f880        	nsau	a8, a8
403785a8:	092c      	movi.n	a9, 32
403785aa:	c08980        	sub	a8, a9, a8
403785ad:	190c      	movi.n	a9, 1
403785af:	401800        	ssl	a8
403785b2:	a18900        	sll	a8, a9
403785b5:	13e380        	wsr.intclear	a8
403785b8:	002010        	rsync
403785bb:	03eb80        	rsr.prid	a8
403785be:	f01d      	retw.n
403785c0:	ffc161        	l32r	a6, 403784c4 <ESP32Reset+0x88>
403785c3:	03eb80        	rsr.prid	a8
403785c6:	108860        	and	a8, a8, a6
403785c9:	070c      	movi.n	a7, 0
403785cb:	3f1877        	beq	a8, a7, 4037860e <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0xee>
403785ce:	ffbe91        	l32r	a9, 403784c8 <ESP32Reset+0x8c>
403785d1:	0020c0        	memw
403785d4:	0948      	l32i.n	a4, a9, 0
403785d6:	3f9877        	bne	a8, a7, 40378619 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0xf9>
403785d9:	ffbe91        	l32r	a9, 403784d4 <ESP32Reset+0x98>
403785dc:	0020c0        	memw
403785df:	0998      	l32i.n	a9, a9, 0
403785e1:	5199      	s32i.n	a9, a1, 20
403785e3:	3f9877        	bne	a8, a7, 40378626 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x106>
403785e6:	ffbd91        	l32r	a9, 403784dc <ESP32Reset+0xa0>
403785e9:	000f06        	j	40378629 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x109>
403785ec:	ffb381        	l32r	a8, 403784b8 <ESP32Reset+0x7c>
403785ef:	000506        	j	40378607 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0xe7>
403785f2:	ffb081        	l32r	a8, 403784b4 <ESP32Reset+0x78>
403785f5:	000386        	j	40378607 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0xe7>
403785f8:	ffae81        	l32r	a8, 403784b0 <ESP32Reset+0x74>
403785fb:	000206        	j	40378607 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0xe7>
403785fe:	ffab81        	l32r	a8, 403784ac <ESP32Reset+0x70>
40378601:	000086        	j	40378607 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0xe7>
40378604:	ffa981        	l32r	a8, 403784a8 <ESP32Reset+0x6c>
40378607:	02ad      	mov.n	a10, a2
40378609:	03bd      	mov.n	a11, a3
4037860b:	013f06        	j	40378b0b <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5eb>
4037860e:	ffaf91        	l32r	a9, 403784cc <ESP32Reset+0x90>
40378611:	0020c0        	memw
40378614:	0948      	l32i.n	a4, a9, 0
40378616:	bf1877        	beq	a8, a7, 403785d9 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0xb9>
40378619:	ffad91        	l32r	a9, 403784d0 <ESP32Reset+0x94>
4037861c:	0020c0        	memw
4037861f:	0998      	l32i.n	a9, a9, 0
40378621:	5199      	s32i.n	a9, a1, 20
40378623:	bf1877        	beq	a8, a7, 403785e6 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0xc6>
40378626:	ffac91        	l32r	a9, 403784d8 <ESP32Reset+0x9c>
40378629:	0020c0        	memw
4037862c:	0998      	l32i.n	a9, a9, 0
4037862e:	6199      	s32i.n	a9, a1, 24
40378630:	1139      	s32i.n	a3, a1, 4
40378632:	051877        	beq	a8, a7, 4037863b <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x11b>
40378635:	ffaa81        	l32r	a8, 403784e0 <ESP32Reset+0xa4>
40378638:	000086        	j	4037863e <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x11e>
4037863b:	ffaa81        	l32r	a8, 403784e4 <ESP32Reset+0xa8>
4037863e:	0020c0        	memw
40378641:	0838      	l32i.n	a3, a8, 0
40378643:	03eb50        	rsr.prid	a5
40378646:	e0a082        	movi	a8, 224
40378649:	818a      	add.n	a8, a1, a8
4037864b:	00c8a2        	addi	a10, a8, 0
4037864e:	80a0c2        	movi	a12, 128
40378651:	ffa581        	l32r	a8, 403784e8 <ESP32Reset+0xac>
40378654:	07bd      	mov.n	a11, a7
40378656:	0008e0        	callx8	a8
40378659:	6188      	l32i.n	a8, a1, 24
4037865b:	208480        	or	a8, a4, a8
4037865e:	3139      	s32i.n	a3, a1, 12
40378660:	5198      	l32i.n	a9, a1, 20
40378662:	209930        	or	a9, a9, a3
40378665:	208890        	or	a8, a8, a9
40378668:	109560        	and	a9, a5, a6
4037866b:	2129      	s32i.n	a2, a1, 8
4037866d:	4149      	s32i.n	a4, a1, 16
4037866f:	0a1977        	beq	a9, a7, 4037867d <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x15d>
40378672:	ff9e91        	l32r	a9, 403784ec <ESP32Reset+0xb0>
40378675:	e199      	s32i.n	a9, a1, 56
40378677:	00a856        	bnez	a8, 40378685 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x165>
4037867a:	008246        	j	40378887 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x367>
4037867d:	ff9c91        	l32r	a9, 403784f0 <ESP32Reset+0xb4>
40378680:	e199      	s32i.n	a9, a1, 56
40378682:	201816        	beqz	a8, 40378887 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x367>
40378685:	180c      	movi.n	a8, 1
40378687:	b189      	s32i.n	a8, a1, 44
40378689:	fe7c      	movi.n	a14, -1
4037868b:	082c      	movi.n	a8, 32
4037868d:	d189      	s32i.n	a8, a1, 52
4037868f:	084c      	movi.n	a8, 64
40378691:	c189      	s32i.n	a8, a1, 48
40378693:	f80c      	movi.n	a8, 15
40378695:	9189      	s32i.n	a8, a1, 36
40378697:	ff9781        	l32r	a8, 403784f4 <ESP32Reset+0xb8>
4037869a:	8189      	s32i.n	a8, a1, 32
4037869c:	f81c      	movi.n	a8, 31
4037869e:	7189      	s32i.n	a8, a1, 28
403786a0:	4168      	l32i.n	a6, a1, 16
403786a2:	5148      	l32i.n	a4, a1, 20
403786a4:	6158      	l32i.n	a5, a1, 24
403786a6:	3138      	l32i.n	a3, a1, 12
403786a8:	a1e9      	s32i.n	a14, a1, 40
403786aa:	004586        	j	403787c4 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x2a4>
403786ad:	418320        	srli	a8, a2, 3
403786b0:	9198      	l32i.n	a9, a1, 36
403786b2:	108890        	and	a8, a8, a9
403786b5:	40c192        	addi	a9, a1, 64
403786b8:	10c992        	addi	a9, a9, 16
403786bb:	c08980        	sub	a8, a9, a8
403786be:	080892        	l8ui	a9, a8, 8
403786c1:	0908b2        	l8ui	a11, a8, 9
403786c4:	11bb80        	slli	a11, a11, 8
403786c7:	209b90        	or	a9, a11, a9
403786ca:	0a08b2        	l8ui	a11, a8, 10
403786cd:	11bb00        	slli	a11, a11, 16
403786d0:	0b08c2        	l8ui	a12, a8, 11
403786d3:	01cc80        	slli	a12, a12, 24
403786d6:	20bcb0        	or	a11, a12, a11
403786d9:	209b90        	or	a9, a11, a9
403786dc:	0c08b2        	l8ui	a11, a8, 12
403786df:	0d08c2        	l8ui	a12, a8, 13
403786e2:	11cc80        	slli	a12, a12, 8
403786e5:	20bcb0        	or	a11, a12, a11
403786e8:	0e08c2        	l8ui	a12, a8, 14
403786eb:	11cc00        	slli	a12, a12, 16
403786ee:	0f08d2        	l8ui	a13, a8, 15
403786f1:	01dd80        	slli	a13, a13, 24
403786f4:	20cdc0        	or	a12, a13, a12
403786f7:	20bcb0        	or	a11, a12, a11
403786fa:	f1a8      	l32i.n	a10, a1, 60
403786fc:	10c2a0        	and	a12, a2, a10
403786ff:	401c00        	ssl	a12
40378702:	81bb90        	src	a11, a11, a9
40378705:	e1a8      	l32i.n	a10, a1, 56
40378707:	a0d2a0        	addx4	a13, a2, a10
4037870a:	0020c0        	memw
4037870d:	0dd8      	l32i.n	a13, a13, 0
4037870f:	81a8      	l32i.n	a10, a1, 32
40378711:	a0dda0        	addx4	a13, a13, a10
40378714:	0dd8      	l32i.n	a13, a13, 0
40378716:	11ddc0        	slli	a13, a13, 4
40378719:	e0a0a2        	movi	a10, 224
4037871c:	a1aa      	add.n	a10, a1, a10
4037871e:	00ca22        	addi	a2, a10, 0
40378721:	22da      	add.n	a2, a2, a13
40378723:	32d8      	l32i.n	a13, a2, 12
40378725:	20ddb0        	or	a13, a13, a11
40378728:	32d9      	s32i.n	a13, a2, 12
4037872a:	0008d2        	l8ui	a13, a8, 0
4037872d:	0108e2        	l8ui	a14, a8, 1
40378730:	11ee80        	slli	a14, a14, 8
40378733:	20ded0        	or	a13, a14, a13
40378736:	0208e2        	l8ui	a14, a8, 2
40378739:	11ee00        	slli	a14, a14, 16
4037873c:	0308f2        	l8ui	a15, a8, 3
4037873f:	01ff80        	slli	a15, a15, 24
40378742:	20efe0        	or	a14, a15, a14
40378745:	20eed0        	or	a14, a14, a13
40378748:	401c00        	ssl	a12
4037874b:	a1de00        	sll	a13, a14
4037874e:	02f8      	l32i.n	a15, a2, 0
40378750:	20ffd0        	or	a15, a15, a13
40378753:	02f9      	s32i.n	a15, a2, 0
40378755:	0408f2        	l8ui	a15, a8, 4
40378758:	0508a2        	l8ui	a10, a8, 5
4037875b:	11aa80        	slli	a10, a10, 8
4037875e:	20aaf0        	or	a10, a10, a15
40378761:	0608f2        	l8ui	a15, a8, 6
40378764:	11ff00        	slli	a15, a15, 16
40378767:	070882        	l8ui	a8, a8, 7
4037876a:	018880        	slli	a8, a8, 24
4037876d:	2088f0        	or	a8, a8, a15
40378770:	2088a0        	or	a8, a8, a10
40378773:	401c00        	ssl	a12
40378776:	81a8e0        	src	a10, a8, a14
40378779:	12e8      	l32i.n	a14, a2, 4
4037877b:	20eea0        	or	a14, a14, a10
4037877e:	12e9      	s32i.n	a14, a2, 4
40378780:	a19900        	sll	a9, a9
40378783:	418180        	srli	a8, a8, 1
40378786:	a1e8      	l32i.n	a14, a1, 40
40378788:	30cce0        	xor	a12, a12, a14
4037878b:	71f8      	l32i.n	a15, a1, 28
4037878d:	10ccf0        	and	a12, a12, a15
40378790:	400c00        	ssr	a12
40378793:	918080        	srl	a8, a8
40378796:	208980        	or	a8, a9, a8
40378799:	2298      	l32i.n	a9, a2, 8
4037879b:	209980        	or	a9, a9, a8
4037879e:	2299      	s32i.n	a9, a2, 8
403787a0:	309be0        	xor	a9, a11, a14
403787a3:	103390        	and	a3, a3, a9
403787a6:	309ae0        	xor	a9, a10, a14
403787a9:	104490        	and	a4, a4, a9
403787ac:	209430        	or	a9, a4, a3
403787af:	3088e0        	xor	a8, a8, a14
403787b2:	105580        	and	a5, a5, a8
403787b5:	308de0        	xor	a8, a13, a14
403787b8:	106680        	and	a6, a6, a8
403787bb:	208650        	or	a8, a6, a5
403787be:	208890        	or	a8, a8, a9
403787c1:	0c2816        	beqz	a8, 40378887 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x367>
403787c4:	5f4172        	s8i	a7, a1, 95
403787c7:	5e4172        	s8i	a7, a1, 94
403787ca:	5d4172        	s8i	a7, a1, 93
403787cd:	5c4172        	s8i	a7, a1, 92
403787d0:	5b4172        	s8i	a7, a1, 91
403787d3:	5a4172        	s8i	a7, a1, 90
403787d6:	594172        	s8i	a7, a1, 89
403787d9:	584172        	s8i	a7, a1, 88
403787dc:	574172        	s8i	a7, a1, 87
403787df:	564172        	s8i	a7, a1, 86
403787e2:	554172        	s8i	a7, a1, 85
403787e5:	544172        	s8i	a7, a1, 84
403787e8:	534172        	s8i	a7, a1, 83
403787eb:	524172        	s8i	a7, a1, 82
403787ee:	514172        	s8i	a7, a1, 81
403787f1:	b188      	l32i.n	a8, a1, 44
403787f3:	504182        	s8i	a8, a1, 80
403787f6:	4f4172        	s8i	a7, a1, 79
403787f9:	4e4172        	s8i	a7, a1, 78
403787fc:	4d4172        	s8i	a7, a1, 77
403787ff:	4c4172        	s8i	a7, a1, 76
40378802:	4b4172        	s8i	a7, a1, 75
40378805:	4a4172        	s8i	a7, a1, 74
40378808:	494172        	s8i	a7, a1, 73
4037880b:	484172        	s8i	a7, a1, 72
4037880e:	474172        	s8i	a7, a1, 71
40378811:	464172        	s8i	a7, a1, 70
40378814:	454172        	s8i	a7, a1, 69
40378817:	444172        	s8i	a7, a1, 68
4037881a:	434172        	s8i	a7, a1, 67
4037881d:	424172        	s8i	a7, a1, 66
40378820:	414172        	s8i	a7, a1, 65
40378823:	404172        	s8i	a7, a1, 64
40378826:	2b9677        	bne	a6, a7, 40378855 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x335>
40378829:	3084e0        	xor	a8, a4, a14
4037882c:	940b      	addi.n	a9, a4, -1
4037882e:	108890        	and	a8, a8, a9
40378831:	40f880        	nsau	a8, a8
40378834:	c198      	l32i.n	a9, a1, 48
40378836:	c02980        	sub	a2, a9, a8
40378839:	2b1577        	beq	a5, a7, 40378868 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x348>
4037883c:	3085e0        	xor	a8, a5, a14
4037883f:	950b      	addi.n	a9, a5, -1
40378841:	108890        	and	a8, a8, a9
40378844:	40f880        	nsau	a8, a8
40378847:	d198      	l32i.n	a9, a1, 52
40378849:	c08980        	sub	a8, a9, a8
4037884c:	209640        	or	a9, a6, a4
4037884f:	2e1977        	beq	a9, a7, 40378881 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x361>
40378852:	ff95c6        	j	403786ad <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x18d>
40378855:	3086e0        	xor	a8, a6, a14
40378858:	960b      	addi.n	a9, a6, -1
4037885a:	108890        	and	a8, a8, a9
4037885d:	40f880        	nsau	a8, a8
40378860:	d198      	l32i.n	a9, a1, 52
40378862:	c02980        	sub	a2, a9, a8
40378865:	d39577        	bne	a5, a7, 4037883c <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x31c>
40378868:	3083e0        	xor	a8, a3, a14
4037886b:	930b      	addi.n	a9, a3, -1
4037886d:	108890        	and	a8, a8, a9
40378870:	40f880        	nsau	a8, a8
40378873:	c198      	l32i.n	a9, a1, 48
40378875:	c08980        	sub	a8, a9, a8
40378878:	209640        	or	a9, a6, a4
4037887b:	021977        	beq	a9, a7, 40378881 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x361>
4037887e:	ff8ac6        	j	403786ad <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x18d>
40378881:	40c822        	addi	a2, a8, 64
40378884:	ff8946        	j	403786ad <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x18d>
40378887:	60c162        	addi	a6, a1, 96
4037888a:	e0a082        	movi	a8, 224
4037888d:	818a      	add.n	a8, a1, a8
4037888f:	00c8b2        	addi	a11, a8, 0
40378892:	80a0c2        	movi	a12, 128
40378895:	ff1881        	l32r	a8, 403784f8 <ESP32Reset+0xbc>
40378898:	06ad      	mov.n	a10, a6
4037889a:	0008e0        	callx8	a8
4037889d:	2188      	l32i.n	a8, a1, 8
4037889f:	1188c0        	slli	a8, a8, 4
403788a2:	e68a      	add.n	a14, a6, a8
403788a4:	1e88      	l32i.n	a8, a14, 4
403788a6:	5198      	l32i.n	a9, a1, 20
403788a8:	10a890        	and	a10, a8, a9
403788ab:	fd7c      	movi.n	a13, -1
403788ad:	084c      	movi.n	a8, 64
403788af:	0e98      	l32i.n	a9, a14, 0
403788b1:	41b8      	l32i.n	a11, a1, 16
403788b3:	10b9b0        	and	a11, a9, a11
403788b6:	092c      	movi.n	a9, 32
403788b8:	2e9b77        	bne	a11, a7, 403788ea <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x3ca>
403788bb:	30cad0        	xor	a12, a10, a13
403788be:	fa0b      	addi.n	a15, a10, -1
403788c0:	10ccf0        	and	a12, a12, a15
403788c3:	40fcc0        	nsau	a12, a12
403788c6:	c0c8c0        	sub	a12, a8, a12
403788c9:	2ef8      	l32i.n	a15, a14, 8
403788cb:	6168      	l32i.n	a6, a1, 24
403788cd:	10ff60        	and	a15, a15, a6
403788d0:	2e1f77        	beq	a15, a7, 40378902 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x3e2>
403788d3:	30dfd0        	xor	a13, a15, a13
403788d6:	ef0b      	addi.n	a14, a15, -1
403788d8:	10dde0        	and	a13, a13, a14
403788db:	40fdd0        	nsau	a13, a13
403788de:	c0d9d0        	sub	a13, a9, a13
403788e1:	20aba0        	or	a10, a11, a10
403788e4:	351a77        	beq	a10, a7, 4037891d <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x3fd>
403788e7:	000d46        	j	40378920 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x400>
403788ea:	30cbd0        	xor	a12, a11, a13
403788ed:	fb0b      	addi.n	a15, a11, -1
403788ef:	10ccf0        	and	a12, a12, a15
403788f2:	40fcc0        	nsau	a12, a12
403788f5:	c0c9c0        	sub	a12, a9, a12
403788f8:	2ef8      	l32i.n	a15, a14, 8
403788fa:	6168      	l32i.n	a6, a1, 24
403788fc:	10ff60        	and	a15, a15, a6
403788ff:	d09f77        	bne	a15, a7, 403788d3 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x3b3>
40378902:	3ee8      	l32i.n	a14, a14, 12
40378904:	31f8      	l32i.n	a15, a1, 12
40378906:	10eef0        	and	a14, a14, a15
40378909:	30ded0        	xor	a13, a14, a13
4037890c:	ee0b      	addi.n	a14, a14, -1
4037890e:	10dde0        	and	a13, a13, a14
40378911:	40fdd0        	nsau	a13, a13
40378914:	c0d8d0        	sub	a13, a8, a13
40378917:	20aba0        	or	a10, a11, a10
4037891a:	029a77        	bne	a10, a7, 40378920 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x400>
4037891d:	40cdc2        	addi	a12, a13, 64
40378920:	62a0a2        	movi	a10, 98
40378923:	02bac7        	bgeu	a10, a12, 40378929 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x409>
40378926:	007906        	j	40378b0e <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5ee>
40378929:	fef4b1        	l32r	a11, 403784fc <ESP32Reset+0xc0>
4037892c:	a0bcb0        	addx4	a11, a12, a11
4037892f:	0bb8      	l32i.n	a11, a11, 0
40378931:	000ba0        	jx	a11
40378934:	170c      	movi.n	a7, 1
40378936:	007286        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378939:	270c      	movi.n	a7, 2
4037893b:	007146        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
4037893e:	370c      	movi.n	a7, 3
40378940:	007006        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378943:	470c      	movi.n	a7, 4
40378945:	006ec6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378948:	570c      	movi.n	a7, 5
4037894a:	006d86        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
4037894d:	670c      	movi.n	a7, 6
4037894f:	006c46        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378952:	f178      	l32i.n	a7, a1, 60
40378954:	006b06        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378957:	870c      	movi.n	a7, 8
40378959:	0069c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
4037895c:	970c      	movi.n	a7, 9
4037895e:	006886        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378961:	a70c      	movi.n	a7, 10
40378963:	006746        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378966:	b70c      	movi.n	a7, 11
40378968:	006606        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
4037896b:	c70c      	movi.n	a7, 12
4037896d:	0064c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378970:	d70c      	movi.n	a7, 13
40378972:	006386        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378975:	e70c      	movi.n	a7, 14
40378977:	006246        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
4037897a:	f70c      	movi.n	a7, 15
4037897c:	006106        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
4037897f:	071c      	movi.n	a7, 16
40378981:	005fc6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378984:	171c      	movi.n	a7, 17
40378986:	005e86        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378989:	271c      	movi.n	a7, 18
4037898b:	005d46        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
4037898e:	371c      	movi.n	a7, 19
40378990:	005c06        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378993:	471c      	movi.n	a7, 20
40378995:	005ac6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378998:	571c      	movi.n	a7, 21
4037899a:	005986        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
4037899d:	671c      	movi.n	a7, 22
4037899f:	005846        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789a2:	871c      	movi.n	a7, 24
403789a4:	005706        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789a7:	971c      	movi.n	a7, 25
403789a9:	0055c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789ac:	a71c      	movi.n	a7, 26
403789ae:	005486        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789b1:	b71c      	movi.n	a7, 27
403789b3:	005346        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789b6:	c71c      	movi.n	a7, 28
403789b8:	005206        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789bb:	d71c      	movi.n	a7, 29
403789bd:	0050c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789c0:	e71c      	movi.n	a7, 30
403789c2:	004f86        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789c5:	f71c      	movi.n	a7, 31
403789c7:	004e46        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789ca:	097d      	mov.n	a7, a9
403789cc:	004d06        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789cf:	372c      	movi.n	a7, 35
403789d1:	004bc6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789d4:	472c      	movi.n	a7, 36
403789d6:	004a86        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789d9:	572c      	movi.n	a7, 37
403789db:	004946        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789de:	672c      	movi.n	a7, 38
403789e0:	004806        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789e3:	772c      	movi.n	a7, 39
403789e5:	0046c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789e8:	872c      	movi.n	a7, 40
403789ea:	004586        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789ed:	972c      	movi.n	a7, 41
403789ef:	004446        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789f2:	a72c      	movi.n	a7, 42
403789f4:	004306        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789f7:	b72c      	movi.n	a7, 43
403789f9:	0041c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
403789fc:	c72c      	movi.n	a7, 44
403789fe:	004086        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a01:	d72c      	movi.n	a7, 45
40378a03:	003f46        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a06:	f72c      	movi.n	a7, 47
40378a08:	003e06        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a0b:	073c      	movi.n	a7, 48
40378a0d:	003cc6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a10:	173c      	movi.n	a7, 49
40378a12:	003b86        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a15:	273c      	movi.n	a7, 50
40378a17:	003a46        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a1a:	373c      	movi.n	a7, 51
40378a1c:	003906        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a1f:	473c      	movi.n	a7, 52
40378a21:	0037c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a24:	573c      	movi.n	a7, 53
40378a26:	003686        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a29:	673c      	movi.n	a7, 54
40378a2b:	003546        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a2e:	773c      	movi.n	a7, 55
40378a30:	003406        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a33:	873c      	movi.n	a7, 56
40378a35:	0032c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a38:	973c      	movi.n	a7, 57
40378a3a:	003186        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a3d:	a73c      	movi.n	a7, 58
40378a3f:	003046        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a42:	b73c      	movi.n	a7, 59
40378a44:	002f06        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a47:	c73c      	movi.n	a7, 60
40378a49:	002dc6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a4c:	d73c      	movi.n	a7, 61
40378a4e:	002c86        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a51:	e73c      	movi.n	a7, 62
40378a53:	002b46        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a56:	f73c      	movi.n	a7, 63
40378a58:	002a06        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a5b:	087d      	mov.n	a7, a8
40378a5d:	0028c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a60:	174c      	movi.n	a7, 65
40378a62:	002786        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a65:	274c      	movi.n	a7, 66
40378a67:	002646        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a6a:	374c      	movi.n	a7, 67
40378a6c:	002506        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a6f:	474c      	movi.n	a7, 68
40378a71:	0023c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a74:	574c      	movi.n	a7, 69
40378a76:	002286        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a79:	674c      	movi.n	a7, 70
40378a7b:	002146        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a7e:	774c      	movi.n	a7, 71
40378a80:	002006        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a83:	874c      	movi.n	a7, 72
40378a85:	001ec6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a88:	974c      	movi.n	a7, 73
40378a8a:	001d86        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a8d:	a74c      	movi.n	a7, 74
40378a8f:	001c46        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a92:	b74c      	movi.n	a7, 75
40378a94:	001b06        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a97:	c74c      	movi.n	a7, 76
40378a99:	0019c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378a9c:	d74c      	movi.n	a7, 77
40378a9e:	001886        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378aa1:	f74c      	movi.n	a7, 79
40378aa3:	001746        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378aa6:	075c      	movi.n	a7, 80
40378aa8:	001606        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378aab:	175c      	movi.n	a7, 81
40378aad:	0014c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378ab0:	275c      	movi.n	a7, 82
40378ab2:	001386        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378ab5:	375c      	movi.n	a7, 83
40378ab7:	001246        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378aba:	475c      	movi.n	a7, 84
40378abc:	001106        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378abf:	575c      	movi.n	a7, 85
40378ac1:	000fc6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378ac4:	675c      	movi.n	a7, 86
40378ac6:	000e86        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378ac9:	775c      	movi.n	a7, 87
40378acb:	000d46        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378ace:	875c      	movi.n	a7, 88
40378ad0:	000c06        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378ad3:	975c      	movi.n	a7, 89
40378ad5:	000ac6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378ad8:	a75c      	movi.n	a7, 90
40378ada:	000986        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378add:	b75c      	movi.n	a7, 91
40378adf:	000846        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378ae2:	c75c      	movi.n	a7, 92
40378ae4:	000706        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378ae7:	d75c      	movi.n	a7, 93
40378ae9:	0005c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378aec:	e75c      	movi.n	a7, 94
40378aee:	000486        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378af1:	f75c      	movi.n	a7, 95
40378af3:	000346        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378af6:	60a072        	movi	a7, 96
40378af9:	0001c6        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378afc:	61a072        	movi	a7, 97
40378aff:	000046        	j	40378b04 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupts+0x5e4>
40378b02:	0a7d      	mov.n	a7, a10
40378b04:	fe7f81        	l32r	a8, 40378500 <ESP32Reset+0xc4>
40378b07:	07ad      	mov.n	a10, a7
40378b09:	11b8      	l32i.n	a11, a1, 4
40378b0b:	0008e0        	callx8	a8
40378b0e:	f01d      	retw.n
40378b10:	8b0c      	movi.n	a11, 8
40378b12:	fe5ec1        	l32r	a12, 4037848c <ESP32Reset+0x50>
40378b15:	fe5e81        	l32r	a8, 40378490 <ESP32Reset+0x54>
40378b18:	02ad      	mov.n	a10, a2
40378b1a:	0008e0        	callx8	a8
40378b1d:	0041f0        	break	1, 15

40378b20 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupt>:
40378b20:	004136        	entry	a1, 32
40378b23:	fe7881        	l32r	a8, 40378504 <ESP32Reset+0xc8>
40378b26:	108280        	and	a8, a2, a8
40378b29:	fe7791        	l32r	a9, 40378508 <ESP32Reset+0xcc>
40378b2c:	a08890        	addx4	a8, a8, a9
40378b2f:	0888      	l32i.n	a8, a8, 0
40378b31:	fe7691        	l32r	a9, 4037850c <ESP32Reset+0xd0>
40378b34:	041897        	beq	a8, a9, 40378b3c <esp_hal_common::interrupt::xtensa::vectored::handle_interrupt+0x1c>
40378b37:	03ad      	mov.n	a10, a3
40378b39:	0008e0        	callx8	a8
40378b3c:	f01d      	retw.n
40378b3e:	00          	.byte 00
40378b3f:	00          	.byte 00
40378b40:	0dd8      	l32i.n	a13, a13, 0
40378b42:	00          	.byte 00
40378b43:	0dd842        	addmi	a4, a8, 0xd00
40378b46:	00          	.byte 00
40378b47:	0dd842        	addmi	a4, a8, 0xd00
40378b4a:	00          	.byte 00
40378b4b:	0dd842        	addmi	a4, a8, 0xd00
40378b4e:	        	ee.ldf.64.xp	f4, f3, a0, a2

40378b50 <__level_4_interrupt>:
40378b50:	004136        	entry	a1, 32
40378b53:	fffb81        	l32r	a8, 40378b40 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupt+0x20>
40378b56:	03ad      	mov.n	a10, a3
40378b58:	0008e0        	callx8	a8
40378b5b:	f01d      	retw.n
40378b5d:	0020f0        	nop

40378b60 <__level_5_interrupt>:
40378b60:	004136        	entry	a1, 32
40378b63:	fff881        	l32r	a8, 40378b44 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupt+0x24>
40378b66:	03ad      	mov.n	a10, a3
40378b68:	0008e0        	callx8	a8
40378b6b:	f01d      	retw.n
40378b6d:	0020f0        	nop

40378b70 <__level_6_interrupt>:
40378b70:	004136        	entry	a1, 32
40378b73:	fff581        	l32r	a8, 40378b48 <esp_hal_common::interrupt::xtensa::vectored::handle_interrupt+0x28>
40378b76:	03ad      	mov.n	a10, a3
40378b78:	0008e0        	callx8	a8
40378b7b:	f01d      	retw.n
40378b7d:	0020f0        	nop

40378b80 <__level_7_interrupt>:
40378b80:	004136        	entry	a1, 32
40378b83:	fff281        	l32r	a8, 40378b4c <esp_hal_common::interrupt::xtensa::vectored::handle_interrupt+0x2c>
40378b86:	03ad      	mov.n	a10, a3
40378b88:	0008e0        	callx8	a8
40378b8b:	f01d      	retw.n
40378b8d:	000000        	ill

40378b90 <save_context>:
40378b90:	046122        	s32i	a2, a1, 16
40378b93:	056132        	s32i	a3, a1, 20
40378b96:	066142        	s32i	a4, a1, 24
40378b99:	076152        	s32i	a5, a1, 28
40378b9c:	086162        	s32i	a6, a1, 32
40378b9f:	096172        	s32i	a7, a1, 36
40378ba2:	0a6182        	s32i	a8, a1, 40
40378ba5:	0b6192        	s32i	a9, a1, 44
40378ba8:	0c61a2        	s32i	a10, a1, 48
40378bab:	0d61b2        	s32i	a11, a1, 52
40378bae:	0e61c2        	s32i	a12, a1, 56
40378bb1:	0f61d2        	s32i	a13, a1, 60
40378bb4:	1061e2        	s32i	a14, a1, 64
40378bb7:	1161f2        	s32i	a15, a1, 68
40378bba:	030330        	rsr.sar	a3
40378bbd:	126132        	s32i	a3, a1, 72
40378bc0:	030030        	rsr.lbeg	a3
40378bc3:	156132        	s32i	a3, a1, 84
40378bc6:	030130        	rsr.lend	a3
40378bc9:	166132        	s32i	a3, a1, 88
40378bcc:	030230        	rsr.lcount	a3
40378bcf:	176132        	s32i	a3, a1, 92
40378bd2:	e33e70        	rur.threadptr	a3
40378bd5:	186132        	s32i	a3, a1, 96
40378bd8:	030c30        	rsr.scompare1	a3
40378bdb:	196132        	s32i	a3, a1, 100
40378bde:	030430        	rsr.br	a3
40378be1:	1a6132        	s32i	a3, a1, 104
40378be4:	031030        	rsr.acclo	a3
40378be7:	1b6132        	s32i	a3, a1, 108
40378bea:	031130        	rsr.acchi	a3
40378bed:	1c6132        	s32i	a3, a1, 112
40378bf0:	032030        	rsr.m0	a3
40378bf3:	1d6132        	s32i	a3, a1, 116
40378bf6:	032130        	rsr.m1	a3
40378bf9:	1e6132        	s32i	a3, a1, 120
40378bfc:	032230        	rsr.m2	a3
40378bff:	1f6132        	s32i	a3, a1, 124
40378c02:	032330        	rsr.m3	a3
40378c05:	206132        	s32i	a3, a1, 128
40378c08:	e33e80        	rur.fcr	a3
40378c0b:	246132        	s32i	a3, a1, 144
40378c0e:	e33e90        	rur.fsr	a3
40378c11:	256132        	s32i	a3, a1, 148
40378c14:	264103        	ssi	f0, a1, 152
40378c17:	274113        	ssi	f1, a1, 156
40378c1a:	284123        	ssi	f2, a1, 160
40378c1d:	294133        	ssi	f3, a1, 164
40378c20:	2a4143        	ssi	f4, a1, 168
40378c23:	2b4153        	ssi	f5, a1, 172
40378c26:	2c4163        	ssi	f6, a1, 176
40378c29:	2d4173        	ssi	f7, a1, 180
40378c2c:	2e4183        	ssi	f8, a1, 184
40378c2f:	2f4193        	ssi	f9, a1, 188
40378c32:	3041a3        	ssi	f10, a1, 192
40378c35:	3141b3        	ssi	f11, a1, 196
40378c38:	3241c3        	ssi	f12, a1, 200
40378c3b:	3341d3        	ssi	f13, a1, 204
40378c3e:	3441e3        	ssi	f14, a1, 208
40378c41:	3541f3        	ssi	f15, a1, 212
40378c44:	366102        	s32i	a0, a1, 216
40378c47:	03e620        	rsr.ps	a2
40378c4a:	0fa002        	movi	a0, 15
40378c4d:	103200        	and	a3, a2, a0
40378c50:	0233f6        	bgeui	a3, 3, 40378c56 <save_context+0xc6>
40378c53:	03a032        	movi	a3, 3
40378c56:	014c01        	l32r	a0, 40339188 <rom_i2c_writeReg_Mask+0x33341c>
40378c59:	203300        	or	a3, a3, a0
40378c5c:	13e630        	wsr.ps	a3
40378c5f:	03b100        	rsr.epc1	a0
40378c62:	01d112        	addmi	a1, a1, 0x100
40378c65:	10ccc0        	and	a12, a12, a12
40378c68:	408030        	rotw	3
40378c6b:	10ccc0        	and	a12, a12, a12
40378c6e:	408030        	rotw	3
40378c71:	10ccc0        	and	a12, a12, a12
40378c74:	408030        	rotw	3
40378c77:	10ccc0        	and	a12, a12, a12
40378c7a:	408030        	rotw	3
40378c7d:	10ccc0        	and	a12, a12, a12
40378c80:	408040        	rotw	4
40378c83:	ffd112        	addmi	a1, a1, 0xffffff00
40378c86:	13e620        	wsr.ps	a2
40378c89:	002010        	rsync
40378c8c:	13b100        	wsr.epc1	a0
40378c8f:	362102        	l32i	a0, a1, 216
40378c92:	000080        	ret
40378c95:	0041f0        	break	1, 15

40378c98 <restore_context>:
40378c98:	122132        	l32i	a3, a1, 72
40378c9b:	130330        	wsr.sar	a3
40378c9e:	152132        	l32i	a3, a1, 84
40378ca1:	130030        	wsr.lbeg	a3
40378ca4:	162132        	l32i	a3, a1, 88
40378ca7:	130130        	wsr.lend	a3
40378caa:	172132        	l32i	a3, a1, 92
40378cad:	130230        	wsr.lcount	a3
40378cb0:	182132        	l32i	a3, a1, 96
40378cb3:	f3e730        	wur.threadptr	a3
40378cb6:	192132        	l32i	a3, a1, 100
40378cb9:	130c30        	wsr.scompare1	a3
40378cbc:	1a2132        	l32i	a3, a1, 104
40378cbf:	130430        	wsr.br	a3
40378cc2:	1b2132        	l32i	a3, a1, 108
40378cc5:	131030        	wsr.acclo	a3
40378cc8:	1c2132        	l32i	a3, a1, 112
40378ccb:	131130        	wsr.acchi	a3
40378cce:	1d2132        	l32i	a3, a1, 116
40378cd1:	132030        	wsr.m0	a3
40378cd4:	1e2132        	l32i	a3, a1, 120
40378cd7:	132130        	wsr.m1	a3
40378cda:	1f2132        	l32i	a3, a1, 124
40378cdd:	132230        	wsr.m2	a3
40378ce0:	202132        	l32i	a3, a1, 128
40378ce3:	132330        	wsr.m3	a3
40378ce6:	242132        	l32i	a3, a1, 144
40378ce9:	f3e830        	wur.fcr	a3
40378cec:	252132        	l32i	a3, a1, 148
40378cef:	f3e930        	wur.fsr	a3
40378cf2:	260103        	lsi	f0, a1, 152
40378cf5:	270113        	lsi	f1, a1, 156
40378cf8:	280123        	lsi	f2, a1, 160
40378cfb:	290133        	lsi	f3, a1, 164
40378cfe:	2a0143        	lsi	f4, a1, 168
40378d01:	2b0153        	lsi	f5, a1, 172
40378d04:	2c0163        	lsi	f6, a1, 176
40378d07:	2d0173        	lsi	f7, a1, 180
40378d0a:	2e0183        	lsi	f8, a1, 184
40378d0d:	2f0193        	lsi	f9, a1, 188
40378d10:	3001a3        	lsi	f10, a1, 192
40378d13:	3101b3        	lsi	f11, a1, 196
40378d16:	3201c3        	lsi	f12, a1, 200
40378d19:	3301d3        	lsi	f13, a1, 204
40378d1c:	3401e3        	lsi	f14, a1, 208
40378d1f:	3501f3        	lsi	f15, a1, 212
40378d22:	042122        	l32i	a2, a1, 16
40378d25:	052132        	l32i	a3, a1, 20
40378d28:	062142        	l32i	a4, a1, 24
40378d2b:	072152        	l32i	a5, a1, 28
40378d2e:	082162        	l32i	a6, a1, 32
40378d31:	092172        	l32i	a7, a1, 36
40378d34:	0a2182        	l32i	a8, a1, 40
40378d37:	0b2192        	l32i	a9, a1, 44
40378d3a:	0c21a2        	l32i	a10, a1, 48
40378d3d:	0d21b2        	l32i	a11, a1, 52
40378d40:	0e21c2        	l32i	a12, a1, 56
40378d43:	0f21d2        	l32i	a13, a1, 60
40378d46:	1021e2        	l32i	a14, a1, 64
40378d49:	1121f2        	l32i	a15, a1, 68
40378d4c:	000080        	ret
40378d4f:	0041f0        	break	1, 15
40378d52:	f03d      	nop.n

40378d54 <__default_naked_exception>:
40378d54:	200110        	or	a0, a1, a1
40378d57:	ffd112        	addmi	a1, a1, 0xffffff00
40378d5a:	036102        	s32i	a0, a1, 12
40378d5d:	49d100        	s32e	a0, a1, -12
40378d60:	03e600        	rsr.ps	a0
40378d63:	016102        	s32i	a0, a1, 4
40378d66:	03e800        	rsr.exccause	a0
40378d69:	136102        	s32i	a0, a1, 76
40378d6c:	03ee00        	rsr.excvaddr	a0
40378d6f:	146102        	s32i	a0, a1, 80
40378d72:	03b100        	rsr.epc1	a0
40378d75:	006102        	s32i	a0, a1, 0
40378d78:	49c100        	s32e	a0, a1, -16
40378d7b:	03d100        	rsr.excsave1	a0
40378d7e:	026102        	s32i	a0, a1, 8
40378d81:	ffe0c5        	call0	40378b90 <save_context>
40378d84:	010201        	l32r	a0, 4033918c <rom_i2c_writeReg_Mask+0x333420>
40378d87:	13e600        	wsr.ps	a0
40378d8a:	002010        	rsync
40378d8d:	132162        	l32i	a6, a1, 76
40378d90:	084626        	beqi	a6, 4, 40378d9c <__default_naked_exception+0x48>
40378d93:	207110        	or	a7, a1, a1
40378d96:	002855        	call4	4037901c <__default_exception>
40378d99:	000446        	j	40378dae <.RestoreContext>
40378d9c:	00fd01        	l32r	a0, 40339190 <rom_i2c_writeReg_Mask+0x333424>
40378d9f:	13e600        	wsr.ps	a0
40378da2:	002010        	rsync
40378da5:	01a062        	movi	a6, 1
40378da8:	207110        	or	a7, a1, a1
40378dab:	ff7655        	call4	40378510 <__level_1_interrupt>

40378dae <.RestoreContext>:
40378dae:	ffee85        	call0	40378c98 <restore_context>
40378db1:	012102        	l32i	a0, a1, 4
40378db4:	13e600        	wsr.ps	a0
40378db7:	002102        	l32i	a0, a1, 0
40378dba:	13b100        	wsr.epc1	a0
40378dbd:	022102        	l32i	a0, a1, 8
40378dc0:	032112        	l32i	a1, a1, 12
40378dc3:	002010        	rsync
40378dc6:	003000        	rfe
40378dc9:	0041f0        	break	1, 15

40378dcc <__default_naked_double_exception>:
40378dcc:	200110        	or	a0, a1, a1
40378dcf:	ffd112        	addmi	a1, a1, 0xffffff00
40378dd2:	036102        	s32i	a0, a1, 12
40378dd5:	49d100        	s32e	a0, a1, -12
40378dd8:	03e600        	rsr.ps	a0
40378ddb:	016102        	s32i	a0, a1, 4
40378dde:	03e800        	rsr.exccause	a0
40378de1:	136102        	s32i	a0, a1, 76
40378de4:	03ee00        	rsr.excvaddr	a0
40378de7:	146102        	s32i	a0, a1, 80
40378dea:	03c000        	rsr.depc	a0
40378ded:	006102        	s32i	a0, a1, 0
40378df0:	49c100        	s32e	a0, a1, -16
40378df3:	03d700        	rsr.excsave7	a0
40378df6:	026102        	s32i	a0, a1, 8
40378df9:	ffd945        	call0	40378b90 <save_context>
40378dfc:	132162        	l32i	a6, a1, 76
40378dff:	207110        	or	a7, a1, a1
40378e02:	002195        	call4	4037901c <__default_exception>
40378e05:	ffe905        	call0	40378c98 <restore_context>
40378e08:	012102        	l32i	a0, a1, 4
40378e0b:	13e600        	wsr.ps	a0
40378e0e:	002102        	l32i	a0, a1, 0
40378e11:	13b100        	wsr.epc1	a0
40378e14:	022102        	l32i	a0, a1, 8
40378e17:	032112        	l32i	a1, a1, 12
40378e1a:	002010        	rsync
40378e1d:	003200        	rfde
40378e20:	0041f0        	break	1, 15
	...

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

40378e78 <__default_naked_level_3_interrupt>:
40378e78:	200110        	or	a0, a1, a1
40378e7b:	ffd112        	addmi	a1, a1, 0xffffff00
40378e7e:	036102        	s32i	a0, a1, 12
40378e81:	49d100        	s32e	a0, a1, -12
40378e84:	03c300        	rsr.eps3	a0
40378e87:	016102        	s32i	a0, a1, 4
40378e8a:	03b300        	rsr.epc3	a0
40378e8d:	006102        	s32i	a0, a1, 0
40378e90:	49c100        	s32e	a0, a1, -16
40378e93:	03d300        	rsr.excsave3	a0
40378e96:	026102        	s32i	a0, a1, 8
40378e99:	ffcf45        	call0	40378b90 <save_context>
40378e9c:	00bf01        	l32r	a0, 40339198 <rom_i2c_writeReg_Mask+0x33342c>
40378e9f:	13e600        	wsr.ps	a0
40378ea2:	002010        	rsync
40378ea5:	03a062        	movi	a6, 3
40378ea8:	207110        	or	a7, a1, a1
40378eab:	ff6655        	call4	40378510 <__level_1_interrupt>
40378eae:	ffde85        	call0	40378c98 <restore_context>
40378eb1:	012102        	l32i	a0, a1, 4
40378eb4:	13c300        	wsr.eps3	a0
40378eb7:	002102        	l32i	a0, a1, 0
40378eba:	13b300        	wsr.epc3	a0
40378ebd:	022102        	l32i	a0, a1, 8
40378ec0:	032112        	l32i	a1, a1, 12
40378ec3:	002010        	rsync
40378ec6:	003310        	rfi	3
40378ec9:	0041f0        	break	1, 15

40378ecc <__default_naked_level_4_interrupt>:
40378ecc:	200110        	or	a0, a1, a1
40378ecf:	ffd112        	addmi	a1, a1, 0xffffff00
40378ed2:	036102        	s32i	a0, a1, 12
40378ed5:	49d100        	s32e	a0, a1, -12
40378ed8:	03c400        	rsr.eps4	a0
40378edb:	016102        	s32i	a0, a1, 4
40378ede:	03b400        	rsr.epc4	a0
40378ee1:	006102        	s32i	a0, a1, 0
40378ee4:	49c100        	s32e	a0, a1, -16
40378ee7:	03d400        	rsr.excsave4	a0
40378eea:	026102        	s32i	a0, a1, 8
40378eed:	ffca05        	call0	40378b90 <save_context>
40378ef0:	00ab01        	l32r	a0, 4033919c <rom_i2c_writeReg_Mask+0x333430>
40378ef3:	13e600        	wsr.ps	a0
40378ef6:	002010        	rsync
40378ef9:	04a062        	movi	a6, 4
40378efc:	207110        	or	a7, a1, a1
40378eff:	ffc515        	call4	40378b50 <__level_4_interrupt>
40378f02:	ffd945        	call0	40378c98 <restore_context>
40378f05:	012102        	l32i	a0, a1, 4
40378f08:	13c400        	wsr.eps4	a0
40378f0b:	002102        	l32i	a0, a1, 0
40378f0e:	13b400        	wsr.epc4	a0
40378f11:	022102        	l32i	a0, a1, 8
40378f14:	032112        	l32i	a1, a1, 12
40378f17:	002010        	rsync
40378f1a:	003410        	rfi	4
40378f1d:	0041f0        	break	1, 15

40378f20 <__default_naked_level_5_interrupt>:
40378f20:	200110        	or	a0, a1, a1
40378f23:	ffd112        	addmi	a1, a1, 0xffffff00
40378f26:	036102        	s32i	a0, a1, 12
40378f29:	49d100        	s32e	a0, a1, -12
40378f2c:	03c500        	rsr.eps5	a0
40378f2f:	016102        	s32i	a0, a1, 4
40378f32:	03b500        	rsr.epc5	a0
40378f35:	006102        	s32i	a0, a1, 0
40378f38:	49c100        	s32e	a0, a1, -16
40378f3b:	03d500        	rsr.excsave5	a0
40378f3e:	026102        	s32i	a0, a1, 8
40378f41:	ffc4c5        	call0	40378b90 <save_context>
40378f44:	009701        	l32r	a0, 403391a0 <rom_i2c_writeReg_Mask+0x333434>
40378f47:	13e600        	wsr.ps	a0
40378f4a:	002010        	rsync
40378f4d:	05a062        	movi	a6, 5
40378f50:	207110        	or	a7, a1, a1
40378f53:	ffc0d5        	call4	40378b60 <__level_5_interrupt>
40378f56:	ffd405        	call0	40378c98 <restore_context>
40378f59:	012102        	l32i	a0, a1, 4
40378f5c:	13c500        	wsr.eps5	a0
40378f5f:	002102        	l32i	a0, a1, 0
40378f62:	13b500        	wsr.epc5	a0
40378f65:	022102        	l32i	a0, a1, 8
40378f68:	032112        	l32i	a1, a1, 12
40378f6b:	002010        	rsync
40378f6e:	003510        	rfi	5
40378f71:	0041f0        	break	1, 15

40378f74 <__default_naked_level_6_interrupt>:
40378f74:	200110        	or	a0, a1, a1
40378f77:	ffd112        	addmi	a1, a1, 0xffffff00
40378f7a:	036102        	s32i	a0, a1, 12
40378f7d:	49d100        	s32e	a0, a1, -12
40378f80:	03c600        	rsr.eps6	a0
40378f83:	016102        	s32i	a0, a1, 4
40378f86:	03b600        	rsr.epc6	a0
40378f89:	006102        	s32i	a0, a1, 0
40378f8c:	49c100        	s32e	a0, a1, -16
40378f8f:	03d600        	rsr.excsave6	a0
40378f92:	026102        	s32i	a0, a1, 8
40378f95:	ffbf85        	call0	40378b90 <save_context>
40378f98:	008301        	l32r	a0, 403391a4 <rom_i2c_writeReg_Mask+0x333438>
40378f9b:	13e600        	wsr.ps	a0
40378f9e:	002010        	rsync
40378fa1:	06a062        	movi	a6, 6
40378fa4:	207110        	or	a7, a1, a1
40378fa7:	ffbc95        	call4	40378b70 <__level_6_interrupt>
40378faa:	ffcec5        	call0	40378c98 <restore_context>
40378fad:	012102        	l32i	a0, a1, 4
40378fb0:	13c600        	wsr.eps6	a0
40378fb3:	002102        	l32i	a0, a1, 0
40378fb6:	13b600        	wsr.epc6	a0
40378fb9:	022102        	l32i	a0, a1, 8
40378fbc:	032112        	l32i	a1, a1, 12
40378fbf:	002010        	rsync
40378fc2:	003610        	rfi	6
40378fc5:	0041f0        	break	1, 15

40378fc8 <__default_naked_level_7_interrupt>:
40378fc8:	200110        	or	a0, a1, a1
40378fcb:	ffd112        	addmi	a1, a1, 0xffffff00
40378fce:	036102        	s32i	a0, a1, 12
40378fd1:	49d100        	s32e	a0, a1, -12
40378fd4:	03c700        	rsr.eps7	a0
40378fd7:	016102        	s32i	a0, a1, 4
40378fda:	03b700        	rsr.epc7	a0
40378fdd:	006102        	s32i	a0, a1, 0
40378fe0:	49c100        	s32e	a0, a1, -16
40378fe3:	03d700        	rsr.excsave7	a0
40378fe6:	026102        	s32i	a0, a1, 8
40378fe9:	ffba45        	call0	40378b90 <save_context>
40378fec:	006f01        	l32r	a0, 403391a8 <rom_i2c_writeReg_Mask+0x33343c>
40378fef:	13e600        	wsr.ps	a0
40378ff2:	002010        	rsync
40378ff5:	07a062        	movi	a6, 7
40378ff8:	207110        	or	a7, a1, a1
40378ffb:	ffb855        	call4	40378b80 <__level_7_interrupt>
40378ffe:	ffc985        	call0	40378c98 <restore_context>
40379001:	012102        	l32i	a0, a1, 4
40379004:	13c700        	wsr.eps7	a0
40379007:	002102        	l32i	a0, a1, 0
4037900a:	13b700        	wsr.epc7	a0
4037900d:	022102        	l32i	a0, a1, 8
40379010:	032112        	l32i	a1, a1, 12
40379013:	002010        	rsync
40379016:	003710        	rfi	7
40379019:	0041f0        	break	1, 15

4037901c <__default_exception>:
4037901c:	004136        	entry	a1, 32
4037901f:	006381        	l32r	a8, 403391ac <rom_i2c_writeReg_Mask+0x333440>
40379022:	02ad      	mov.n	a10, a2
40379024:	03bd      	mov.n	a11, a3
40379026:	0008e0        	callx8	a8
40379029:	f01d      	retw.n
	...

4037902c <__default_user_exception>:
4037902c:	014136        	entry	a1, 160
4037902f:	2139      	s32i.n	a3, a1, 8
40379031:	1129      	s32i.n	a2, a1, 4
40379033:	005f81        	l32r	a8, 403391b0 <rom_i2c_writeReg_Mask+0x333444>
40379036:	c189      	s32i.n	a8, a1, 48
40379038:	08c182        	addi	a8, a1, 8
4037903b:	b189      	s32i.n	a8, a1, 44
4037903d:	005d81        	l32r	a8, 403391b4 <rom_i2c_writeReg_Mask+0x333448>
40379040:	a189      	s32i.n	a8, a1, 40
40379042:	04c182        	addi	a8, a1, 4
40379045:	9189      	s32i.n	a8, a1, 36
40379047:	380c      	movi.n	a8, 3
40379049:	704182        	s8i	a8, a1, 112
4037904c:	891c      	movi.n	a9, 24
4037904e:	1b6192        	s32i	a9, a1, 108
40379051:	190c      	movi.n	a9, 1
40379053:	1a6192        	s32i	a9, a1, 104
40379056:	092c      	movi.n	a9, 32
40379058:	196192        	s32i	a9, a1, 100
4037905b:	8a0c      	movi.n	a10, 8
4037905d:	1861a2        	s32i	a10, a1, 96
40379060:	0a0c      	movi.n	a10, 0
40379062:	1761a2        	s32i	a10, a1, 92
40379065:	2b0c      	movi.n	a11, 2
40379067:	1561b2        	s32i	a11, a1, 84
4037906a:	504182        	s8i	a8, a1, 80
4037906d:	1361a2        	s32i	a10, a1, 76
40379070:	1261a2        	s32i	a10, a1, 72
40379073:	116192        	s32i	a9, a1, 68
40379076:	f1b9      	s32i.n	a11, a1, 60
40379078:	d1b9      	s32i.n	a11, a1, 52
4037907a:	81b9      	s32i.n	a11, a1, 32
4037907c:	34c182        	addi	a8, a1, 52
4037907f:	7189      	s32i.n	a8, a1, 28
40379081:	41b9      	s32i.n	a11, a1, 16
40379083:	004d81        	l32r	a8, 403391b8 <rom_i2c_writeReg_Mask+0x33344c>
40379086:	3189      	s32i.n	a8, a1, 12
40379088:	61b9      	s32i.n	a11, a1, 24
4037908a:	24c182        	addi	a8, a1, 36
4037908d:	5189      	s32i.n	a8, a1, 20
4037908f:	0cc1a2        	addi	a10, a1, 12
40379092:	004ab1        	l32r	a11, 403391bc <rom_i2c_writeReg_Mask+0x333450>
40379095:	004a81        	l32r	a8, 403391c0 <rom_i2c_writeReg_Mask+0x333454>
40379098:	0008e0        	callx8	a8
4037909b:	0041f0        	break	1, 15
4037909e:	f03d      	nop.n

403790a0 <__default_interrupt>:
403790a0:	014136        	entry	a1, 160
403790a3:	2139      	s32i.n	a3, a1, 8
403790a5:	1129      	s32i.n	a2, a1, 4
403790a7:	004781        	l32r	a8, 403391c4 <rom_i2c_writeReg_Mask+0x333458>
403790aa:	c189      	s32i.n	a8, a1, 48
403790ac:	08c182        	addi	a8, a1, 8
403790af:	b189      	s32i.n	a8, a1, 44
403790b1:	004581        	l32r	a8, 403391c8 <rom_i2c_writeReg_Mask+0x33345c>
403790b4:	a189      	s32i.n	a8, a1, 40
403790b6:	04c182        	addi	a8, a1, 4
403790b9:	9189      	s32i.n	a8, a1, 36
403790bb:	380c      	movi.n	a8, 3
403790bd:	704182        	s8i	a8, a1, 112
403790c0:	891c      	movi.n	a9, 24
403790c2:	1b6192        	s32i	a9, a1, 108
403790c5:	190c      	movi.n	a9, 1
403790c7:	1a6192        	s32i	a9, a1, 104
403790ca:	092c      	movi.n	a9, 32
403790cc:	196192        	s32i	a9, a1, 100
403790cf:	8a0c      	movi.n	a10, 8
403790d1:	1861a2        	s32i	a10, a1, 96
403790d4:	0a0c      	movi.n	a10, 0
403790d6:	1761a2        	s32i	a10, a1, 92
403790d9:	2b0c      	movi.n	a11, 2
403790db:	1561b2        	s32i	a11, a1, 84
403790de:	504182        	s8i	a8, a1, 80
403790e1:	1361a2        	s32i	a10, a1, 76
403790e4:	1261a2        	s32i	a10, a1, 72
403790e7:	116192        	s32i	a9, a1, 68
403790ea:	f1b9      	s32i.n	a11, a1, 60
403790ec:	d1b9      	s32i.n	a11, a1, 52
403790ee:	81b9      	s32i.n	a11, a1, 32
403790f0:	34c182        	addi	a8, a1, 52
403790f3:	7189      	s32i.n	a8, a1, 28
403790f5:	41b9      	s32i.n	a11, a1, 16
403790f7:	003581        	l32r	a8, 403391cc <rom_i2c_writeReg_Mask+0x333460>
403790fa:	3189      	s32i.n	a8, a1, 12
403790fc:	61b9      	s32i.n	a11, a1, 24
403790fe:	24c182        	addi	a8, a1, 36
40379101:	5189      	s32i.n	a8, a1, 20
40379103:	0cc1a2        	addi	a10, a1, 12
40379106:	0032b1        	l32r	a11, 403391d0 <rom_i2c_writeReg_Mask+0x333464>
40379109:	003281        	l32r	a8, 403391d4 <rom_i2c_writeReg_Mask+0x333468>
4037910c:	0008e0        	callx8	a8
4037910f:	0041f0        	break	1, 15
40379112:	f03d      	nop.n

40379114 <__default_double_exception>:
40379114:	014136        	entry	a1, 160
40379117:	2139      	s32i.n	a3, a1, 8
40379119:	1129      	s32i.n	a2, a1, 4
4037911b:	002f81        	l32r	a8, 403391d8 <rom_i2c_writeReg_Mask+0x33346c>
4037911e:	c189      	s32i.n	a8, a1, 48
40379120:	08c182        	addi	a8, a1, 8
40379123:	b189      	s32i.n	a8, a1, 44
40379125:	002d81        	l32r	a8, 403391dc <rom_i2c_writeReg_Mask+0x333470>
40379128:	a189      	s32i.n	a8, a1, 40
4037912a:	04c182        	addi	a8, a1, 4
4037912d:	9189      	s32i.n	a8, a1, 36
4037912f:	380c      	movi.n	a8, 3
40379131:	704182        	s8i	a8, a1, 112
40379134:	891c      	movi.n	a9, 24
40379136:	1b6192        	s32i	a9, a1, 108
40379139:	190c      	movi.n	a9, 1
4037913b:	1a6192        	s32i	a9, a1, 104
4037913e:	092c      	movi.n	a9, 32
40379140:	196192        	s32i	a9, a1, 100
40379143:	8a0c      	movi.n	a10, 8
40379145:	1861a2        	s32i	a10, a1, 96
40379148:	0a0c      	movi.n	a10, 0
4037914a:	1761a2        	s32i	a10, a1, 92
4037914d:	2b0c      	movi.n	a11, 2
4037914f:	1561b2        	s32i	a11, a1, 84
40379152:	504182        	s8i	a8, a1, 80
40379155:	1361a2        	s32i	a10, a1, 76
40379158:	1261a2        	s32i	a10, a1, 72
4037915b:	116192        	s32i	a9, a1, 68
4037915e:	f1b9      	s32i.n	a11, a1, 60
40379160:	d1b9      	s32i.n	a11, a1, 52
40379162:	81b9      	s32i.n	a11, a1, 32
40379164:	34c182        	addi	a8, a1, 52
40379167:	7189      	s32i.n	a8, a1, 28
40379169:	41b9      	s32i.n	a11, a1, 16
4037916b:	001d81        	l32r	a8, 403391e0 <rom_i2c_writeReg_Mask+0x333474>
4037916e:	3189      	s32i.n	a8, a1, 12
40379170:	61b9      	s32i.n	a11, a1, 24
40379172:	24c182        	addi	a8, a1, 36
40379175:	5189      	s32i.n	a8, a1, 20
40379177:	0cc1a2        	addi	a10, a1, 12
4037917a:	001ab1        	l32r	a11, 403391e4 <rom_i2c_writeReg_Mask+0x333478>
4037917d:	001a81        	l32r	a8, 403391e8 <rom_i2c_writeReg_Mask+0x33347c>
40379180:	0008e0        	callx8	a8
40379183:	0041f0        	break	1, 15
40379186:	000000        	ill
40379189:	00          	.byte 00
4037918a:	04          	.byte 0x4
4037918b:	00          	.byte 00
4037918c:	040003        	lsi	f0, a0, 16
4037918f:	00          	.byte 00
40379190:	040001        	l32r	a0, 4033a190 <rom_i2c_writeReg_Mask+0x334424>
40379193:	00          	.byte 00
40379194:	040002        	l8ui	a0, a0, 4
40379197:	00          	.byte 00
40379198:	040003        	lsi	f0, a0, 16
4037919b:	00          	.byte 00
4037919c:	04          	.byte 0x4
4037919d:	00          	.byte 00
4037919e:	050004        	ee.ldqa.u16.128.ip	a0, 0
403791a1:	00          	.byte 00
403791a2:	060004        	ee.ld.qacc_h.l.128.ip	a0, 0
403791a5:	00          	.byte 00
403791a6:	04          	.byte 0x4
403791a7:	00          	.byte 00
403791a8:	040007        	bnone	a0, a0, 403791b0 <__default_double_exception+0x9c>
403791ab:	00          	.byte 00
403791ac:	9228      	l32i.n	a2, a2, 36
403791ae:	544037        	ball	a0, a3, 40379206 <__default_double_exception+0xf2>
403791b1:	bc42000f 	ee.vmulas.s8.qacc.ld.xp.qup	q0, a0, a0, q4, q0, q4, q2
403791b5:	420012        	l8ui	a1, a0, 66
403791b8:	0948      	l32i.n	a4, a9, 0
403791ba:	c43c01        	l32r	a0, 4036a2ac <rom_i2c_writeReg_Mask+0x364540>
403791bd:	0109      	s32i.n	a0, a1, 0
403791bf:	9c3c      	movi.n	a12, 57
403791c1:	420061        	l32r	a6, 403499c4 <rom_i2c_writeReg_Mask+0x343c58>
403791c4:	000f54        	ee.ld.qacc_l.l.128.ip	a5, 240
403791c7:	42          	.byte 0x42
403791c8:	0f7c      	movi.n	a15, -16
403791ca:	e04200        	subx4	a4, a2, a0
403791cd:	0109      	s32i.n	a0, a1, 0
403791cf:	f03c      	movi.n	a0, 63
403791d1:	0109      	s32i.n	a0, a1, 0
403791d3:	9c3c      	movi.n	a12, 57
403791d5:	420061        	l32r	a6, 403499d8 <rom_i2c_writeReg_Mask+0x343c6c>
403791d8:	000f54        	ee.ld.qacc_l.l.128.ip	a5, 240
403791db:	12bc42        	l32ai	a4, a12, 72
403791de:	144200        	extui	a4, a0, 2, 2
403791e1:	010a      	add.n	a0, a1, a0
403791e3:	243c      	movi.n	a4, 50
403791e5:	010a      	add.n	a0, a1, a0
403791e7:	9c3c      	movi.n	a12, 57
403791e9:	420061        	l32r	a6, 403499ec <rom_i2c_writeReg_Mask+0x343c80>
403791ec:	3388      	l32i.n	a8, a3, 12
403791ee:	144200        	extui	a4, a0, 2, 2
403791f1:	3c0115        	call4	403b5204 <__user_exception+0x3bfdc>
403791f4:	011030        	slli	a1, a0, 29
403791f7:	a83c      	movi.n	a8, 58
403791f9:	420050        	xorb	b0, b0, b5
403791fc:	144c      	movi.n	a4, 65
403791fe:	c44200        	extui	a4, a0, 2, 13
40379201:	14          	.byte 0x14
40379202:	003c01        	l32r	a0, 403392f4 <rom_i2c_writeReg_Mask+0x333588>
40379205:	c03780        	sub	a3, a7, a8
40379208:	078000        	ee.stf.64.xp	f8, f0, a0, a0
4037920b:	00          	.byte 00
4037920c:	3fffffff 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a15, -16, q7, q7, q7, q7
40379210:	000000        	ill
40379213:	800140        	add	a0, a1, a4
40379216:	7c0007        	bnone	a0, a0, 40379296 <__user_exception+0x6e>
40379219:	003c      	movi.n	a0, 48
4037921b:	14ec42        	s32c1i	a4, a12, 80
4037921e:	483c01        	l32r	a0, 4034b310 <rom_i2c_writeReg_Mask+0x3455a4>
40379221:	10          	.byte 0x10
40379222:	243c01        	l32r	a0, 40342314 <rom_i2c_writeReg_Mask+0x33c5a8>
40379225:	3c0115        	call4	403b5238 <__user_exception+0x3c010>

40379228 <__user_exception>:
40379228:	016136        	entry	a1, 176
4037922b:	156132        	s32i	a3, a1, 84
4037922e:	176122        	s32i	a2, a1, 92
40379231:	88a082        	movi	a8, 136
40379234:	818a      	add.n	a8, a1, a8
40379236:	00c832        	addi	a3, a8, 0
40379239:	196132        	s32i	a3, a1, 100
4037923c:	ffec81        	l32r	a8, 403791ec <__default_double_exception+0xd8>
4037923f:	1b6182        	s32i	a8, a1, 108
40379242:	5cc182        	addi	a8, a1, 92
40379245:	1a6182        	s32i	a8, a1, 104
40379248:	040c      	movi.n	a4, 0
4037924a:	206142        	s32i	a4, a1, 128
4037924d:	120c      	movi.n	a2, 1
4037924f:	1f6122        	s32i	a2, a1, 124
40379252:	68c182        	addi	a8, a1, 104
40379255:	1e6182        	s32i	a8, a1, 120
40379258:	250c      	movi.n	a5, 2
4037925a:	1d6152        	s32i	a5, a1, 116
4037925d:	ffe481        	l32r	a8, 403791f0 <__default_double_exception+0xdc>
40379260:	1c6182        	s32i	a8, a1, 112
40379263:	64c1a2        	addi	a10, a1, 100
40379266:	ffe371        	l32r	a7, 403791f4 <__default_double_exception+0xe0>
40379269:	70c1c2        	addi	a12, a1, 112
4037926c:	ffe361        	l32r	a6, 403791f8 <__default_double_exception+0xe4>
4037926f:	07bd      	mov.n	a11, a7
40379271:	0006e0        	callx8	a6
40379274:	196132        	s32i	a3, a1, 100
40379277:	ffe181        	l32r	a8, 403791fc <__default_double_exception+0xe8>
4037927a:	1b6182        	s32i	a8, a1, 108
4037927d:	152132        	l32i	a3, a1, 84
40379280:	1a6132        	s32i	a3, a1, 104
40379283:	106142        	s32i	a4, a1, 64
40379286:	206142        	s32i	a4, a1, 128
40379289:	166122        	s32i	a2, a1, 88
4037928c:	1f6122        	s32i	a2, a1, 124
4037928f:	68c182        	addi	a8, a1, 104
40379292:	1e6182        	s32i	a8, a1, 120
40379295:	1d6152        	s32i	a5, a1, 116
40379298:	ffda81        	l32r	a8, 40379200 <__default_double_exception+0xec>
4037929b:	1c6182        	s32i	a8, a1, 112
4037929e:	64c1a2        	addi	a10, a1, 100
403792a1:	70c1c2        	addi	a12, a1, 112
403792a4:	07bd      	mov.n	a11, a7
403792a6:	0006e0        	callx8	a6
403792a9:	3398      	l32i.n	a9, a3, 12
403792ab:	f0c982        	addi	a8, a9, -16
403792ae:	0020c0        	memw
403792b1:	0888      	l32i.n	a8, a8, 0
403792b3:	f4c992        	addi	a9, a9, -12
403792b6:	0020c0        	memw
403792b9:	09e8      	l32i.n	a14, a9, 0
403792bb:	f90c      	movi.n	a9, 15
403792bd:	10ae90        	and	a10, a14, a9
403792c0:	439a56        	bnez	a10, 403796fd <__user_exception+0x4d5>
403792c3:	ffd0a1        	l32r	a10, 40379204 <__default_double_exception+0xf0>
403792c6:	ceaa      	add.n	a12, a14, a10
403792c8:	ffd0b1        	l32r	a11, 40379208 <__default_double_exception+0xf4>
403792cb:	02bbc7        	bgeu	a11, a12, 403792d1 <__user_exception+0xa9>
403792ce:	010ac6        	j	403796fd <__user_exception+0x4d5>
403792d1:	428e16        	beqz	a14, 403796fd <__user_exception+0x4d5>
403792d4:	c159      	s32i.n	a5, a1, 48
403792d6:	e169      	s32i.n	a6, a1, 56
403792d8:	ffcdc1        	l32r	a12, 4037920c <__default_double_exception+0xf8>
403792db:	1088c0        	and	a8, a8, a12
403792de:	ffccd1        	l32r	a13, 40379210 <__default_double_exception+0xfc>
403792e1:	2078d0        	or	a7, a8, a13
403792e4:	f0cef2        	addi	a15, a14, -16
403792e7:	0020c0        	memw
403792ea:	0ff8      	l32i.n	a15, a15, 0
403792ec:	d1c9      	s32i.n	a12, a1, 52
403792ee:	10ffc0        	and	a15, a15, a12
403792f1:	b1d9      	s32i.n	a13, a1, 44
403792f3:	202fd0        	or	a2, a15, a13
403792f6:	f4cee2        	addi	a14, a14, -12
403792f9:	0020c0        	memw
403792fc:	0ee8      	l32i.n	a14, a14, 0
403792fe:	1021d2        	l32i	a13, a1, 64
40379301:	0dcd      	mov.n	a12, a13
40379303:	162152        	l32i	a5, a1, 88
40379306:	156152        	s32i	a5, a1, 84
40379309:	146152        	s32i	a5, a1, 80
4037930c:	136152        	s32i	a5, a1, 76
4037930f:	126152        	s32i	a5, a1, 72
40379312:	056d      	mov.n	a6, a5
40379314:	058d      	mov.n	a8, a5
40379316:	053d      	mov.n	a3, a5
40379318:	054d      	mov.n	a4, a5
4037931a:	116172        	s32i	a7, a1, 68
4037931d:	f129      	s32i.n	a2, a1, 60
4037931f:	029727        	bne	a7, a2, 40379325 <__user_exception+0xfd>
40379322:	00a006        	j	403795a6 <__user_exception+0x37e>
40379325:	10fe90        	and	a15, a14, a9
40379328:	0dcd      	mov.n	a12, a13
4037932a:	156152        	s32i	a5, a1, 84
4037932d:	146152        	s32i	a5, a1, 80
40379330:	136152        	s32i	a5, a1, 76
40379333:	126152        	s32i	a5, a1, 72
40379336:	056d      	mov.n	a6, a5
40379338:	058d      	mov.n	a8, a5
4037933a:	053d      	mov.n	a3, a5
4037933c:	054d      	mov.n	a4, a5
4037933e:	264f56        	bnez	a15, 403795a6 <__user_exception+0x37e>
40379341:	feaa      	add.n	a15, a14, a10
40379343:	0dcd      	mov.n	a12, a13
40379345:	156152        	s32i	a5, a1, 84
40379348:	146152        	s32i	a5, a1, 80
4037934b:	136152        	s32i	a5, a1, 76
4037934e:	126152        	s32i	a5, a1, 72
40379351:	056d      	mov.n	a6, a5
40379353:	058d      	mov.n	a8, a5
40379355:	053d      	mov.n	a3, a5
40379357:	054d      	mov.n	a4, a5
40379359:	02bbf7        	bgeu	a11, a15, 4037935f <__user_exception+0x137>
4037935c:	009186        	j	403795a6 <__user_exception+0x37e>
4037935f:	0dcd      	mov.n	a12, a13
40379361:	156152        	s32i	a5, a1, 84
40379364:	146152        	s32i	a5, a1, 80
40379367:	136152        	s32i	a5, a1, 76
4037936a:	126152        	s32i	a5, a1, 72
4037936d:	056d      	mov.n	a6, a5
4037936f:	058d      	mov.n	a8, a5
40379371:	053d      	mov.n	a3, a5
40379373:	054d      	mov.n	a4, a5
40379375:	22de16        	beqz	a14, 403795a6 <__user_exception+0x37e>
40379378:	0d2d      	mov.n	a2, a13
4037937a:	f0cef2        	addi	a15, a14, -16
4037937d:	0020c0        	memw
40379380:	0ff8      	l32i.n	a15, a15, 0
40379382:	d188      	l32i.n	a8, a1, 52
40379384:	10ff80        	and	a15, a15, a8
40379387:	b188      	l32i.n	a8, a1, 44
40379389:	207f80        	or	a7, a15, a8
4037938c:	f4cee2        	addi	a14, a14, -12
4037938f:	0020c0        	memw
40379392:	0ee8      	l32i.n	a14, a14, 0
40379394:	f188      	l32i.n	a8, a1, 60
40379396:	259877        	bne	a8, a7, 403793bf <__user_exception+0x197>
40379399:	040c      	movi.n	a4, 0
4037939b:	162182        	l32i	a8, a1, 88
4037939e:	156182        	s32i	a8, a1, 84
403793a1:	162182        	l32i	a8, a1, 88
403793a4:	146182        	s32i	a8, a1, 80
403793a7:	162182        	l32i	a8, a1, 88
403793aa:	136182        	s32i	a8, a1, 76
403793ad:	162182        	l32i	a8, a1, 88
403793b0:	126182        	s32i	a8, a1, 72
403793b3:	162162        	l32i	a6, a1, 88
403793b6:	162182        	l32i	a8, a1, 88
403793b9:	162132        	l32i	a3, a1, 88
403793bc:	0077c6        	j	4037959f <__user_exception+0x377>
403793bf:	10fe90        	and	a15, a14, a9
403793c2:	040c      	movi.n	a4, 0
403793c4:	062f56        	bnez	a15, 4037942a <__user_exception+0x202>
403793c7:	feaa      	add.n	a15, a14, a10
403793c9:	5d3bf7        	bltu	a11, a15, 4037942a <__user_exception+0x202>
403793cc:	8179      	s32i.n	a7, a1, 32
403793ce:	156152        	s32i	a5, a1, 84
403793d1:	146152        	s32i	a5, a1, 80
403793d4:	136152        	s32i	a5, a1, 76
403793d7:	126152        	s32i	a5, a1, 72
403793da:	056d      	mov.n	a6, a5
403793dc:	058d      	mov.n	a8, a5
403793de:	053d      	mov.n	a3, a5
403793e0:	04cd      	mov.n	a12, a4
403793e2:	162152        	l32i	a5, a1, 88
403793e5:	02dd      	mov.n	a13, a2
403793e7:	1bbe16        	beqz	a14, 403795a6 <__user_exception+0x37e>
403793ea:	f0cef2        	addi	a15, a14, -16
403793ed:	0020c0        	memw
403793f0:	0ff8      	l32i.n	a15, a15, 0
403793f2:	d188      	l32i.n	a8, a1, 52
403793f4:	10ff80        	and	a15, a15, a8
403793f7:	b188      	l32i.n	a8, a1, 44
403793f9:	207f80        	or	a7, a15, a8
403793fc:	f4cee2        	addi	a14, a14, -12
403793ff:	0020c0        	memw
40379402:	0ee8      	l32i.n	a14, a14, 0
40379404:	81f8      	l32i.n	a15, a1, 32
40379406:	359f77        	bne	a15, a7, 4037943f <__user_exception+0x217>
40379409:	162182        	l32i	a8, a1, 88
4037940c:	156182        	s32i	a8, a1, 84
4037940f:	162182        	l32i	a8, a1, 88
40379412:	146182        	s32i	a8, a1, 80
40379415:	162182        	l32i	a8, a1, 88
40379418:	136182        	s32i	a8, a1, 76
4037941b:	162182        	l32i	a8, a1, 88
4037941e:	126182        	s32i	a8, a1, 72
40379421:	162162        	l32i	a6, a1, 88
40379424:	162182        	l32i	a8, a1, 88
40379427:	005c86        	j	4037959d <__user_exception+0x375>
4037942a:	156152        	s32i	a5, a1, 84
4037942d:	146152        	s32i	a5, a1, 80
40379430:	136152        	s32i	a5, a1, 76
40379433:	126152        	s32i	a5, a1, 72
40379436:	056d      	mov.n	a6, a5
40379438:	058d      	mov.n	a8, a5
4037943a:	053d      	mov.n	a3, a5
4037943c:	0057c6        	j	4037959f <__user_exception+0x377>
4037943f:	10fe90        	and	a15, a14, a9
40379442:	044f56        	bnez	a15, 4037948a <__user_exception+0x262>
40379445:	feaa      	add.n	a15, a14, a10
40379447:	3f3bf7        	bltu	a11, a15, 4037948a <__user_exception+0x262>
4037944a:	03ce16        	beqz	a14, 4037948a <__user_exception+0x262>
4037944d:	f0cef2        	addi	a15, a14, -16
40379450:	0020c0        	memw
40379453:	0ff8      	l32i.n	a15, a15, 0
40379455:	d188      	l32i.n	a8, a1, 52
40379457:	10ff80        	and	a15, a15, a8
4037945a:	b188      	l32i.n	a8, a1, 44
4037945c:	208f80        	or	a8, a15, a8
4037945f:	f4cee2        	addi	a14, a14, -12
40379462:	0020c0        	memw
40379465:	0ee8      	l32i.n	a14, a14, 0
40379467:	6179      	s32i.n	a7, a1, 24
40379469:	309787        	bne	a7, a8, 4037949d <__user_exception+0x275>
4037946c:	162182        	l32i	a8, a1, 88
4037946f:	156182        	s32i	a8, a1, 84
40379472:	162182        	l32i	a8, a1, 88
40379475:	146182        	s32i	a8, a1, 80
40379478:	162182        	l32i	a8, a1, 88
4037947b:	136182        	s32i	a8, a1, 76
4037947e:	162182        	l32i	a8, a1, 88
40379481:	126182        	s32i	a8, a1, 72
40379484:	162162        	l32i	a6, a1, 88
40379487:	004406        	j	4037959b <__user_exception+0x373>
4037948a:	156152        	s32i	a5, a1, 84
4037948d:	146152        	s32i	a5, a1, 80
40379490:	136152        	s32i	a5, a1, 76
40379493:	126152        	s32i	a5, a1, 72
40379496:	056d      	mov.n	a6, a5
40379498:	058d      	mov.n	a8, a5
4037949a:	003fc6        	j	4037959d <__user_exception+0x375>
4037949d:	5189      	s32i.n	a8, a1, 20
4037949f:	10fe90        	and	a15, a14, a9
403794a2:	041f56        	bnez	a15, 403794e7 <__user_exception+0x2bf>
403794a5:	feaa      	add.n	a15, a14, a10
403794a7:	3c3bf7        	bltu	a11, a15, 403794e7 <__user_exception+0x2bf>
403794aa:	039e16        	beqz	a14, 403794e7 <__user_exception+0x2bf>
403794ad:	f0cef2        	addi	a15, a14, -16
403794b0:	0020c0        	memw
403794b3:	0ff8      	l32i.n	a15, a15, 0
403794b5:	d188      	l32i.n	a8, a1, 52
403794b7:	10ff80        	and	a15, a15, a8
403794ba:	b188      	l32i.n	a8, a1, 44
403794bc:	208f80        	or	a8, a15, a8
403794bf:	f4cee2        	addi	a14, a14, -12
403794c2:	0020c0        	memw
403794c5:	0ee8      	l32i.n	a14, a14, 0
403794c7:	51f8      	l32i.n	a15, a1, 20
403794c9:	2b9f87        	bne	a15, a8, 403794f8 <__user_exception+0x2d0>
403794cc:	162182        	l32i	a8, a1, 88
403794cf:	156182        	s32i	a8, a1, 84
403794d2:	162182        	l32i	a8, a1, 88
403794d5:	146182        	s32i	a8, a1, 80
403794d8:	162182        	l32i	a8, a1, 88
403794db:	136182        	s32i	a8, a1, 76
403794de:	162182        	l32i	a8, a1, 88
403794e1:	126182        	s32i	a8, a1, 72
403794e4:	002c46        	j	40379599 <__user_exception+0x371>
403794e7:	156152        	s32i	a5, a1, 84
403794ea:	146152        	s32i	a5, a1, 80
403794ed:	136152        	s32i	a5, a1, 76
403794f0:	126152        	s32i	a5, a1, 72
403794f3:	056d      	mov.n	a6, a5
403794f5:	002886        	j	4037959b <__user_exception+0x373>
403794f8:	4189      	s32i.n	a8, a1, 16
403794fa:	10fe90        	and	a15, a14, a9
403794fd:	03bf56        	bnez	a15, 4037953c <__user_exception+0x314>
40379500:	feaa      	add.n	a15, a14, a10
40379502:	363bf7        	bltu	a11, a15, 4037953c <__user_exception+0x314>
40379505:	033e16        	beqz	a14, 4037953c <__user_exception+0x314>
40379508:	f0cef2        	addi	a15, a14, -16
4037950b:	0020c0        	memw
4037950e:	0ff8      	l32i.n	a15, a15, 0
40379510:	d188      	l32i.n	a8, a1, 52
40379512:	10ff80        	and	a15, a15, a8
40379515:	b188      	l32i.n	a8, a1, 44
40379517:	207f80        	or	a7, a15, a8
4037951a:	f4cee2        	addi	a14, a14, -12
4037951d:	0020c0        	memw
40379520:	0ee8      	l32i.n	a14, a14, 0
40379522:	4188      	l32i.n	a8, a1, 16
40379524:	239877        	bne	a8, a7, 4037954b <__user_exception+0x323>
40379527:	162182        	l32i	a8, a1, 88
4037952a:	156182        	s32i	a8, a1, 84
4037952d:	162182        	l32i	a8, a1, 88
40379530:	146182        	s32i	a8, a1, 80
40379533:	162182        	l32i	a8, a1, 88
40379536:	136182        	s32i	a8, a1, 76
40379539:	001646        	j	40379596 <__user_exception+0x36e>
4037953c:	156152        	s32i	a5, a1, 84
4037953f:	146152        	s32i	a5, a1, 80
40379542:	136152        	s32i	a5, a1, 76
40379545:	126152        	s32i	a5, a1, 72
40379548:	001346        	j	40379599 <__user_exception+0x371>
4037954b:	10fe90        	and	a15, a14, a9
4037954e:	03bf56        	bnez	a15, 4037958d <__user_exception+0x365>
40379551:	feaa      	add.n	a15, a14, a10
40379553:	363bf7        	bltu	a11, a15, 4037958d <__user_exception+0x365>
40379556:	033e16        	beqz	a14, 4037958d <__user_exception+0x365>
40379559:	f0cef2        	addi	a15, a14, -16
4037955c:	0020c0        	memw
4037955f:	0ff8      	l32i.n	a15, a15, 0
40379561:	d188      	l32i.n	a8, a1, 52
40379563:	10ff80        	and	a15, a15, a8
40379566:	b188      	l32i.n	a8, a1, 44
40379568:	20ff80        	or	a15, a15, a8
4037956b:	f4cee2        	addi	a14, a14, -12
4037956e:	0020c0        	memw
40379571:	0ee8      	l32i.n	a14, a14, 0
40379573:	3179      	s32i.n	a7, a1, 12
40379575:	0217f7        	beq	a7, a15, 4037957b <__user_exception+0x353>
40379578:	00e446        	j	4037990d <__user_exception+0x6e5>
4037957b:	162182        	l32i	a8, a1, 88
4037957e:	156182        	s32i	a8, a1, 84
40379581:	162182        	l32i	a8, a1, 88
40379584:	146182        	s32i	a8, a1, 80
40379587:	136142        	s32i	a4, a1, 76
4037958a:	000206        	j	40379596 <__user_exception+0x36e>
4037958d:	156152        	s32i	a5, a1, 84
40379590:	146152        	s32i	a5, a1, 80
40379593:	136152        	s32i	a5, a1, 76
40379596:	126142        	s32i	a4, a1, 72
40379599:	046d      	mov.n	a6, a4
4037959b:	048d      	mov.n	a8, a4
4037959d:	043d      	mov.n	a3, a4
4037959f:	04cd      	mov.n	a12, a4
403795a1:	162152        	l32i	a5, a1, 88
403795a4:	02dd      	mov.n	a13, a2
403795a6:	9139      	s32i.n	a3, a1, 36
403795a8:	a189      	s32i.n	a8, a1, 40
403795aa:	b169      	s32i.n	a6, a1, 44
403795ac:	122182        	l32i	a8, a1, 72
403795af:	126182        	s32i	a8, a1, 72
403795b2:	132182        	l32i	a8, a1, 76
403795b5:	136182        	s32i	a8, a1, 76
403795b8:	142182        	l32i	a8, a1, 80
403795bb:	146182        	s32i	a8, a1, 80
403795be:	152192        	l32i	a9, a1, 84
403795c1:	156192        	s32i	a9, a1, 84
403795c4:	f178      	l32i.n	a7, a1, 60
403795c6:	d1c9      	s32i.n	a12, a1, 52
403795c8:	112182        	l32i	a8, a1, 68
403795cb:	186182        	s32i	a8, a1, 96
403795ce:	88a082        	movi	a8, 136
403795d1:	818a      	add.n	a8, a1, a8
403795d3:	00c882        	addi	a8, a8, 0
403795d6:	196182        	s32i	a8, a1, 100
403795d9:	ff0f21        	l32r	a2, 40379218 <__default_double_exception+0x104>
403795dc:	1b6122        	s32i	a2, a1, 108
403795df:	60c182        	addi	a8, a1, 96
403795e2:	1a6182        	s32i	a8, a1, 104
403795e5:	2061d2        	s32i	a13, a1, 128
403795e8:	1f6152        	s32i	a5, a1, 124
403795eb:	68c182        	addi	a8, a1, 104
403795ee:	1e6182        	s32i	a8, a1, 120
403795f1:	c138      	l32i.n	a3, a1, 48
403795f3:	1d6132        	s32i	a3, a1, 116
403795f6:	ff0951        	l32r	a5, 4037921c <__default_double_exception+0x108>
403795f9:	1c6152        	s32i	a5, a1, 112
403795fc:	64c1a2        	addi	a10, a1, 100
403795ff:	fefdb1        	l32r	a11, 403791f4 <__default_double_exception+0xe0>
40379602:	70c1c2        	addi	a12, a1, 112
40379605:	e168      	l32i.n	a6, a1, 56
40379607:	0006e0        	callx8	a6
4037960a:	116152        	s32i	a5, a1, 68
4037960d:	009416        	beqz	a4, 4037961a <__user_exception+0x3f2>
40379610:	037d      	mov.n	a7, a3
40379612:	9188      	l32i.n	a8, a1, 36
40379614:	042816        	beqz	a8, 4037965a <__user_exception+0x432>
40379617:	001f46        	j	40379698 <__user_exception+0x470>
4037961a:	186172        	s32i	a7, a1, 96
4037961d:	88a082        	movi	a8, 136
40379620:	818a      	add.n	a8, a1, a8
40379622:	00c882        	addi	a8, a8, 0
40379625:	196182        	s32i	a8, a1, 100
40379628:	1b6122        	s32i	a2, a1, 108
4037962b:	60c182        	addi	a8, a1, 96
4037962e:	1a6182        	s32i	a8, a1, 104
40379631:	080c      	movi.n	a8, 0
40379633:	206182        	s32i	a8, a1, 128
40379636:	180c      	movi.n	a8, 1
40379638:	1f6182        	s32i	a8, a1, 124
4037963b:	68c182        	addi	a8, a1, 104
4037963e:	1e6182        	s32i	a8, a1, 120
40379641:	037d      	mov.n	a7, a3
40379643:	1d6132        	s32i	a3, a1, 116
40379646:	1c6152        	s32i	a5, a1, 112
40379649:	64c1a2        	addi	a10, a1, 100
4037964c:	feeab1        	l32r	a11, 403791f4 <__default_double_exception+0xe0>
4037964f:	70c1c2        	addi	a12, a1, 112
40379652:	0006e0        	callx8	a6
40379655:	9188      	l32i.n	a8, a1, 36
40379657:	03d856        	bnez	a8, 40379698 <__user_exception+0x470>
4037965a:	8188      	l32i.n	a8, a1, 32
4037965c:	186182        	s32i	a8, a1, 96
4037965f:	88a082        	movi	a8, 136
40379662:	818a      	add.n	a8, a1, a8
40379664:	00c882        	addi	a8, a8, 0
40379667:	196182        	s32i	a8, a1, 100
4037966a:	1b6122        	s32i	a2, a1, 108
4037966d:	60c182        	addi	a8, a1, 96
40379670:	1a6182        	s32i	a8, a1, 104
40379673:	080c      	movi.n	a8, 0
40379675:	206182        	s32i	a8, a1, 128
40379678:	180c      	movi.n	a8, 1
4037967a:	1f6182        	s32i	a8, a1, 124
4037967d:	68c182        	addi	a8, a1, 104
40379680:	1e6182        	s32i	a8, a1, 120
40379683:	1d6172        	s32i	a7, a1, 116
40379686:	112182        	l32i	a8, a1, 68
40379689:	1c6182        	s32i	a8, a1, 112
4037968c:	64c1a2        	addi	a10, a1, 100
4037968f:	fed9b1        	l32r	a11, 403791f4 <__default_double_exception+0xe0>
40379692:	70c1c2        	addi	a12, a1, 112
40379695:	0006e0        	callx8	a6
40379698:	d158      	l32i.n	a5, a1, 52
4037969a:	152132        	l32i	a3, a1, 84
4037969d:	a188      	l32i.n	a8, a1, 40
4037969f:	0d6816        	beqz	a8, 40379779 <__user_exception+0x551>
403796a2:	b188      	l32i.n	a8, a1, 44
403796a4:	114816        	beqz	a8, 403797bc <__user_exception+0x594>
403796a7:	122182        	l32i	a8, a1, 72
403796aa:	152816        	beqz	a8, 40379800 <__user_exception+0x5d8>
403796ad:	132182        	l32i	a8, a1, 76
403796b0:	190816        	beqz	a8, 40379844 <__user_exception+0x61c>
403796b3:	142182        	l32i	a8, a1, 80
403796b6:	1ce816        	beqz	a8, 40379888 <__user_exception+0x660>
403796b9:	20c316        	beqz	a3, 403798c9 <__user_exception+0x6a1>
403796bc:	03d516        	beqz	a5, 403796fd <__user_exception+0x4d5>
403796bf:	7188      	l32i.n	a8, a1, 28
403796c1:	186182        	s32i	a8, a1, 96
403796c4:	88a082        	movi	a8, 136
403796c7:	818a      	add.n	a8, a1, a8
403796c9:	00c882        	addi	a8, a8, 0
403796cc:	196182        	s32i	a8, a1, 100
403796cf:	1b6122        	s32i	a2, a1, 108
403796d2:	60c182        	addi	a8, a1, 96
403796d5:	1a6182        	s32i	a8, a1, 104
403796d8:	080c      	movi.n	a8, 0
403796da:	206182        	s32i	a8, a1, 128
403796dd:	180c      	movi.n	a8, 1
403796df:	1f6182        	s32i	a8, a1, 124
403796e2:	68c182        	addi	a8, a1, 104
403796e5:	1e6182        	s32i	a8, a1, 120
403796e8:	1d6172        	s32i	a7, a1, 116
403796eb:	112182        	l32i	a8, a1, 68
403796ee:	1c6182        	s32i	a8, a1, 112
403796f1:	64c1a2        	addi	a10, a1, 100
403796f4:	fec0b1        	l32r	a11, 403791f4 <__default_double_exception+0xe0>
403796f7:	70c1c2        	addi	a12, a1, 112
403796fa:	0006e0        	callx8	a6
403796fd:	88a082        	movi	a8, 136
40379700:	818a      	add.n	a8, a1, a8
40379702:	00c892        	addi	a9, a8, 0
40379705:	1a6192        	s32i	a9, a1, 104
40379708:	095d      	mov.n	a5, a9
4037970a:	156152        	s32i	a5, a1, 84
4037970d:	162192        	l32i	a9, a1, 88
40379710:	102142        	l32i	a4, a1, 64
40379713:	206142        	s32i	a4, a1, 128
40379716:	1f6142        	s32i	a4, a1, 124
40379719:	fec131        	l32r	a3, 40379220 <__default_double_exception+0x10c>
4037971c:	1e6132        	s32i	a3, a1, 120
4037971f:	1d6192        	s32i	a9, a1, 116
40379722:	fec021        	l32r	a2, 40379224 <__default_double_exception+0x110>
40379725:	1c6122        	s32i	a2, a1, 112
40379728:	68c1a2        	addi	a10, a1, 104
4037972b:	feb271        	l32r	a7, 403791f4 <__default_double_exception+0xe0>
4037972e:	70c1c2        	addi	a12, a1, 112
40379731:	07bd      	mov.n	a11, a7
40379733:	0006e0        	callx8	a6
40379736:	1a6152        	s32i	a5, a1, 104
40379739:	206142        	s32i	a4, a1, 128
4037973c:	1f6142        	s32i	a4, a1, 124
4037973f:	1e6132        	s32i	a3, a1, 120
40379742:	162152        	l32i	a5, a1, 88
40379745:	1d6152        	s32i	a5, a1, 116
40379748:	1c6122        	s32i	a2, a1, 112
4037974b:	68c1a2        	addi	a10, a1, 104
4037974e:	70c1c2        	addi	a12, a1, 112
40379751:	07bd      	mov.n	a11, a7
40379753:	0006e0        	callx8	a6
40379756:	152182        	l32i	a8, a1, 84
40379759:	1a6182        	s32i	a8, a1, 104
4037975c:	206142        	s32i	a4, a1, 128
4037975f:	1f6142        	s32i	a4, a1, 124
40379762:	1e6132        	s32i	a3, a1, 120
40379765:	1d6152        	s32i	a5, a1, 116
40379768:	1c6122        	s32i	a2, a1, 112
4037976b:	68c1a2        	addi	a10, a1, 104
4037976e:	70c1c2        	addi	a12, a1, 112
40379771:	07bd      	mov.n	a11, a7
40379773:	0006e0        	callx8	a6
40379776:	ffff06        	j	40379776 <__user_exception+0x54e>
40379779:	6188      	l32i.n	a8, a1, 24
4037977b:	186182        	s32i	a8, a1, 96
4037977e:	88a082        	movi	a8, 136
40379781:	818a      	add.n	a8, a1, a8
40379783:	00c882        	addi	a8, a8, 0
40379786:	196182        	s32i	a8, a1, 100
40379789:	1b6122        	s32i	a2, a1, 108
4037978c:	60c182        	addi	a8, a1, 96
4037978f:	1a6182        	s32i	a8, a1, 104
40379792:	080c      	movi.n	a8, 0
40379794:	206182        	s32i	a8, a1, 128
40379797:	180c      	movi.n	a8, 1
40379799:	1f6182        	s32i	a8, a1, 124
4037979c:	68c182        	addi	a8, a1, 104
4037979f:	1e6182        	s32i	a8, a1, 120
403797a2:	1d6172        	s32i	a7, a1, 116
403797a5:	112182        	l32i	a8, a1, 68
403797a8:	1c6182        	s32i	a8, a1, 112
403797ab:	64c1a2        	addi	a10, a1, 100
403797ae:	fe91b1        	l32r	a11, 403791f4 <__default_double_exception+0xe0>
403797b1:	70c1c2        	addi	a12, a1, 112
403797b4:	0006e0        	callx8	a6
403797b7:	b188      	l32i.n	a8, a1, 44
403797b9:	eea856        	bnez	a8, 403796a7 <__user_exception+0x47f>
403797bc:	5188      	l32i.n	a8, a1, 20
403797be:	186182        	s32i	a8, a1, 96
403797c1:	88a082        	movi	a8, 136
403797c4:	818a      	add.n	a8, a1, a8
403797c6:	00c882        	addi	a8, a8, 0
403797c9:	196182        	s32i	a8, a1, 100
403797cc:	1b6122        	s32i	a2, a1, 108
403797cf:	60c182        	addi	a8, a1, 96
403797d2:	1a6182        	s32i	a8, a1, 104
403797d5:	080c      	movi.n	a8, 0
403797d7:	206182        	s32i	a8, a1, 128
403797da:	180c      	movi.n	a8, 1
403797dc:	1f6182        	s32i	a8, a1, 124
403797df:	68c182        	addi	a8, a1, 104
403797e2:	1e6182        	s32i	a8, a1, 120
403797e5:	1d6172        	s32i	a7, a1, 116
403797e8:	112182        	l32i	a8, a1, 68
403797eb:	1c6182        	s32i	a8, a1, 112
403797ee:	64c1a2        	addi	a10, a1, 100
403797f1:	fe80b1        	l32r	a11, 403791f4 <__default_double_exception+0xe0>
403797f4:	70c1c2        	addi	a12, a1, 112
403797f7:	0006e0        	callx8	a6
403797fa:	122182        	l32i	a8, a1, 72
403797fd:	eac856        	bnez	a8, 403796ad <__user_exception+0x485>
40379800:	4188      	l32i.n	a8, a1, 16
40379802:	186182        	s32i	a8, a1, 96
40379805:	88a082        	movi	a8, 136
40379808:	818a      	add.n	a8, a1, a8
4037980a:	00c882        	addi	a8, a8, 0
4037980d:	196182        	s32i	a8, a1, 100
40379810:	1b6122        	s32i	a2, a1, 108
40379813:	60c182        	addi	a8, a1, 96
40379816:	1a6182        	s32i	a8, a1, 104
40379819:	080c      	movi.n	a8, 0
4037981b:	206182        	s32i	a8, a1, 128
4037981e:	180c      	movi.n	a8, 1
40379820:	1f6182        	s32i	a8, a1, 124
40379823:	68c182        	addi	a8, a1, 104
40379826:	1e6182        	s32i	a8, a1, 120
40379829:	1d6172        	s32i	a7, a1, 116
4037982c:	112182        	l32i	a8, a1, 68
4037982f:	1c6182        	s32i	a8, a1, 112
40379832:	64c1a2        	addi	a10, a1, 100
40379835:	fe6fb1        	l32r	a11, 403791f4 <__default_double_exception+0xe0>
40379838:	70c1c2        	addi	a12, a1, 112
4037983b:	0006e0        	callx8	a6
4037983e:	132182        	l32i	a8, a1, 76
40379841:	e6e856        	bnez	a8, 403796b3 <__user_exception+0x48b>
40379844:	3188      	l32i.n	a8, a1, 12
40379846:	186182        	s32i	a8, a1, 96
40379849:	88a082        	movi	a8, 136
4037984c:	818a      	add.n	a8, a1, a8
4037984e:	00c882        	addi	a8, a8, 0
40379851:	196182        	s32i	a8, a1, 100
40379854:	1b6122        	s32i	a2, a1, 108
40379857:	60c182        	addi	a8, a1, 96
4037985a:	1a6182        	s32i	a8, a1, 104
4037985d:	080c      	movi.n	a8, 0
4037985f:	206182        	s32i	a8, a1, 128
40379862:	180c      	movi.n	a8, 1
40379864:	1f6182        	s32i	a8, a1, 124
40379867:	68c182        	addi	a8, a1, 104
4037986a:	1e6182        	s32i	a8, a1, 120
4037986d:	1d6172        	s32i	a7, a1, 116
40379870:	112182        	l32i	a8, a1, 68
40379873:	1c6182        	s32i	a8, a1, 112
40379876:	64c1a2        	addi	a10, a1, 100
40379879:	fe5eb1        	l32r	a11, 403791f4 <__default_double_exception+0xe0>
4037987c:	70c1c2        	addi	a12, a1, 112
4037987f:	0006e0        	callx8	a6
40379882:	142182        	l32i	a8, a1, 80
40379885:	e30856        	bnez	a8, 403796b9 <__user_exception+0x491>
40379888:	2188      	l32i.n	a8, a1, 8
4037988a:	186182        	s32i	a8, a1, 96
4037988d:	88a082        	movi	a8, 136
40379890:	818a      	add.n	a8, a1, a8
40379892:	00c882        	addi	a8, a8, 0
40379895:	196182        	s32i	a8, a1, 100
40379898:	1b6122        	s32i	a2, a1, 108
4037989b:	60c182        	addi	a8, a1, 96
4037989e:	1a6182        	s32i	a8, a1, 104
403798a1:	080c      	movi.n	a8, 0
403798a3:	206182        	s32i	a8, a1, 128
403798a6:	180c      	movi.n	a8, 1
403798a8:	1f6182        	s32i	a8, a1, 124
403798ab:	68c182        	addi	a8, a1, 104
403798ae:	1e6182        	s32i	a8, a1, 120
403798b1:	1d6172        	s32i	a7, a1, 116
403798b4:	112182        	l32i	a8, a1, 68
403798b7:	1c6182        	s32i	a8, a1, 112
403798ba:	64c1a2        	addi	a10, a1, 100
403798bd:	fe4db1        	l32r	a11, 403791f4 <__default_double_exception+0xe0>
403798c0:	70c1c2        	addi	a12, a1, 112
403798c3:	0006e0        	callx8	a6
403798c6:	df2356        	bnez	a3, 403796bc <__user_exception+0x494>
403798c9:	1188      	l32i.n	a8, a1, 4
403798cb:	186182        	s32i	a8, a1, 96
403798ce:	88a082        	movi	a8, 136
403798d1:	818a      	add.n	a8, a1, a8
403798d3:	00c882        	addi	a8, a8, 0
403798d6:	196182        	s32i	a8, a1, 100
403798d9:	1b6122        	s32i	a2, a1, 108
403798dc:	60c182        	addi	a8, a1, 96
403798df:	1a6182        	s32i	a8, a1, 104
403798e2:	080c      	movi.n	a8, 0
403798e4:	206182        	s32i	a8, a1, 128
403798e7:	180c      	movi.n	a8, 1
403798e9:	1f6182        	s32i	a8, a1, 124
403798ec:	68c182        	addi	a8, a1, 104
403798ef:	1e6182        	s32i	a8, a1, 120
403798f2:	1d6172        	s32i	a7, a1, 116
403798f5:	112182        	l32i	a8, a1, 68
403798f8:	1c6182        	s32i	a8, a1, 112
403798fb:	64c1a2        	addi	a10, a1, 100
403798fe:	fe3db1        	l32r	a11, 403791f4 <__default_double_exception+0xe0>
40379901:	70c1c2        	addi	a12, a1, 112
40379904:	0006e0        	callx8	a6
40379907:	db4556        	bnez	a5, 403796bf <__user_exception+0x497>
4037990a:	ff7bc6        	j	403796fd <__user_exception+0x4d5>
4037990d:	21f9      	s32i.n	a15, a1, 8
4037990f:	052d      	mov.n	a2, a5
40379911:	10fe90        	and	a15, a14, a9
40379914:	06ef56        	bnez	a15, 40379986 <__user_exception+0x75e>
40379917:	feaa      	add.n	a15, a14, a10
40379919:	693bf7        	bltu	a11, a15, 40379986 <__user_exception+0x75e>
4037991c:	066e16        	beqz	a14, 40379986 <__user_exception+0x75e>
4037991f:	f0cef2        	addi	a15, a14, -16
40379922:	0020c0        	memw
40379925:	0ff8      	l32i.n	a15, a15, 0
40379927:	d188      	l32i.n	a8, a1, 52
40379929:	10ff80        	and	a15, a15, a8
4037992c:	b188      	l32i.n	a8, a1, 44
4037992e:	20ff80        	or	a15, a15, a8
40379931:	f4cee2        	addi	a14, a14, -12
40379934:	0020c0        	memw
40379937:	0ee8      	l32i.n	a14, a14, 0
40379939:	11f9      	s32i.n	a15, a1, 4
4037993b:	2168      	l32i.n	a6, a1, 8
4037993d:	4e16f7        	beq	a6, a15, 4037998f <__user_exception+0x767>
40379940:	10fe90        	and	a15, a14, a9
40379943:	048f56        	bnez	a15, 4037998f <__user_exception+0x767>
40379946:	feaa      	add.n	a15, a14, a10
40379948:	433bf7        	bltu	a11, a15, 4037998f <__user_exception+0x767>
4037994b:	040e16        	beqz	a14, 4037998f <__user_exception+0x767>
4037994e:	f0ceb2        	addi	a11, a14, -16
40379951:	0020c0        	memw
40379954:	0bb8      	l32i.n	a11, a11, 0
40379956:	d188      	l32i.n	a8, a1, 52
40379958:	10bb80        	and	a11, a11, a8
4037995b:	b188      	l32i.n	a8, a1, 44
4037995d:	20cb80        	or	a12, a11, a8
40379960:	f4ceb2        	addi	a11, a14, -12
40379963:	0020c0        	memw
40379966:	0bd8      	l32i.n	a13, a11, 0
40379968:	71c9      	s32i.n	a12, a1, 28
4037996a:	11b8      	l32i.n	a11, a1, 4
4037996c:	3b9bc7        	bne	a11, a12, 403799ab <__user_exception+0x783>
4037996f:	156142        	s32i	a4, a1, 84
40379972:	146142        	s32i	a4, a1, 80
40379975:	136142        	s32i	a4, a1, 76
40379978:	126142        	s32i	a4, a1, 72
4037997b:	046d      	mov.n	a6, a4
4037997d:	048d      	mov.n	a8, a4
4037997f:	043d      	mov.n	a3, a4
40379981:	04cd      	mov.n	a12, a4
40379983:	001646        	j	403799e0 <__user_exception+0x7b8>
40379986:	156122        	s32i	a2, a1, 84
40379989:	146122        	s32i	a2, a1, 80
4037998c:	000146        	j	40379995 <__user_exception+0x76d>
4037998f:	156122        	s32i	a2, a1, 84
40379992:	146142        	s32i	a4, a1, 80
40379995:	136142        	s32i	a4, a1, 76
40379998:	126142        	s32i	a4, a1, 72
4037999b:	046d      	mov.n	a6, a4
4037999d:	048d      	mov.n	a8, a4
4037999f:	043d      	mov.n	a3, a4
403799a1:	04cd      	mov.n	a12, a4
403799a3:	025d      	mov.n	a5, a2
403799a5:	1021d2        	l32i	a13, a1, 64
403799a8:	fefe86        	j	403795a6 <__user_exception+0x37e>
403799ab:	1b0c      	movi.n	a11, 1
403799ad:	080c      	movi.n	a8, 0
403799af:	0bcd      	mov.n	a12, a11
403799b1:	084d      	mov.n	a4, a8
403799b3:	311d87        	beq	a13, a8, 403799e8 <__user_exception+0x7c0>
403799b6:	edaa      	add.n	a14, a13, a10
403799b8:	fe17f1        	l32r	a15, 40379214 <__default_double_exception+0x100>
403799bb:	0bad      	mov.n	a10, a11
403799bd:	33bef7        	bgeu	a14, a15, 403799f4 <__user_exception+0x7cc>
403799c0:	109d90        	and	a9, a13, a9
403799c3:	011947        	beq	a9, a4, 403799c8 <__user_exception+0x7a0>
403799c6:	04bd      	mov.n	a11, a4
403799c8:	109ba0        	and	a9, a11, a10
403799cb:	10c9c0        	and	a12, a9, a12
403799ce:	146142        	s32i	a4, a1, 80
403799d1:	136142        	s32i	a4, a1, 76
403799d4:	126142        	s32i	a4, a1, 72
403799d7:	046d      	mov.n	a6, a4
403799d9:	048d      	mov.n	a8, a4
403799db:	043d      	mov.n	a3, a4
403799dd:	156142        	s32i	a4, a1, 84
403799e0:	1021d2        	l32i	a13, a1, 64
403799e3:	025d      	mov.n	a5, a2
403799e5:	feef46        	j	403795a6 <__user_exception+0x37e>
403799e8:	04cd      	mov.n	a12, a4
403799ea:	edaa      	add.n	a14, a13, a10
403799ec:	fe0af1        	l32r	a15, 40379214 <__default_double_exception+0x100>
403799ef:	0bad      	mov.n	a10, a11
403799f1:	cb3ef7        	bltu	a14, a15, 403799c0 <__user_exception+0x798>
403799f4:	04ad      	mov.n	a10, a4
403799f6:	109d90        	and	a9, a13, a9
403799f9:	c99947        	bne	a9, a4, 403799c6 <__user_exception+0x79e>
403799fc:	fff206        	j	403799c8 <__user_exception+0x7a0>
	...

Disassembly of section .rwdata_dummy:

3fc88000 <_rwdata_reserved_start-0x1a00>:
	...

Disassembly of section .data:

3fc89a00 <_ZN3log6LOGGER17hbc707aa8b53ae921E.0>:
3fc89a00:	0119c0        	slli	a1, a9, 20
3fc89a03:	      	movi.n	a12, 60

3fc89a04 <_ZN3log6LOGGER17hbc707aa8b53ae921E.1>:
3fc89a04:	19cc      	bnez.n	a9, 3fc89a09 <_ZN6broken6ALARM017hf50f2173a161f780E.0+0x1>
3fc89a06:	01          	.byte 0x1
3fc89a07:	3c          	.byte 0x3c

Disassembly of section .bss:

3fc89a08 <_ZN6broken6ALARM017hf50f2173a161f780E.0>:
3fc89a08:	000000        	ill
	...

3fc89a0c <_ZN6broken6ALARM017hf50f2173a161f780E.1>:
	...

3fc89a0d <_ESP_HAL_DEVICE_PERIPHERALS>:
3fc89a0d:	000000        	ill

3fc89a10 <esp_hal_common::critical_section_impl::multicore::MULTICORE_LOCK>:
	...

3fc89a1c <log::STATE>:
3fc89a1c:	000000        	ill
	...

3fc89a20 <log::MAX_LOG_LEVEL_FILTER>:
3fc89a20:	000000        	ill
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	694c      	movi.n	a9, 70
   2:	72656b6e 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a6, 176, q1, q4, q6, q5
   6:	203a      	add.n	a2, a0, a3
   8:	4c4c      	movi.n	a12, 68
   a:	44          	.byte 0x44
   b:	363120        	ee.ldf.64.xp	f3, f3, a2, a1
   e:	342e302e 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a2, 0x100, q0, q6, q2, q6
	...
