.include "macros.inc"

.section .text, "ax" # 80352580


/* 803524E4 0034F424  48 00 00 9D */	bl __DSP_debug_printf
/* 803524E8 0034F428  80 0D 93 80 */	lwz r0, lbl_80451900-_SDA_BASE_(r13)
/* 803524EC 0034F42C  2C 00 00 01 */	cmpwi r0, 1
/* 803524F0 0034F430  41 82 00 7C */	beq lbl_8035256C
/* 803524F4 0034F434  80 6D 84 D8 */	lwz r3, lbl_80450A58-_SDA_BASE_(r13)
/* 803524F8 0034F438  4B FE 83 7D */	bl OSRegisterVersion
/* 803524FC 0034F43C  4B FE B1 F9 */	bl __RAS_OSDisableInterrupts_begin 
.global __DSPHandler
/* 80352500 0034F440  3C 80 80 2A */	lis r4, __DSPHandler@ha
/* 80352504 0034F444  3B E3 00 00 */	addi r31, r3, 0
.global __DSPHandler
/* 80352508 0034F448  38 84 EB 20 */	addi r4, r4, __DSPHandler@l
/* 8035250C 0034F44C  38 60 00 07 */	li r3, 7
/* 80352510 0034F450  4B FE B2 31 */	bl __OSSetInterruptHandler
/* 80352514 0034F454  3C 60 01 00 */	lis r3, 0x100
/* 80352518 0034F458  4B FE B6 2D */	bl __OSUnmaskInterrupts
/* 8035251C 0034F45C  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 80352520 0034F460  38 C3 50 00 */	addi r6, r3, 0xCC005000@l
/* 80352524 0034F464  A0 63 50 0A */	lhz r3, 0x500a(r3)
/* 80352528 0034F468  38 00 FF 57 */	li r0, -169
/* 8035252C 0034F46C  7C 60 00 38 */	and r0, r3, r0
/* 80352530 0034F470  60 00 08 00 */	ori r0, r0, 0x800
/* 80352534 0034F474  B0 06 00 0A */	sth r0, 0xa(r6)
/* 80352538 0034F478  38 A0 FF 53 */	li r5, -173
/* 8035253C 0034F47C  38 80 00 00 */	li r4, 0
/* 80352540 0034F480  A0 E6 00 0A */	lhz r7, 0xa(r6)
/* 80352544 0034F484  38 00 00 01 */	li r0, 1
/* 80352548 0034F488  38 7F 00 00 */	addi r3, r31, 0
/* 8035254C 0034F48C  7C E5 28 38 */	and r5, r7, r5
/* 80352550 0034F490  B0 A6 00 0A */	sth r5, 0xa(r6)
/* 80352554 0034F494  90 8D 93 88 */	stw r4, lbl_80451908-_SDA_BASE_(r13)
/* 80352558 0034F498  90 8D 93 94 */	stw r4, lbl_80451914-_SDA_BASE_(r13)
/* 8035255C 0034F49C  90 8D 93 8C */	stw r4, lbl_8045190C-_SDA_BASE_(r13)
/* 80352560 0034F4A0  90 8D 93 90 */	stw r4, lbl_80451910-_SDA_BASE_(r13)
/* 80352564 0034F4A4  90 0D 93 80 */	stw r0, lbl_80451900-_SDA_BASE_(r13)
/* 80352568 0034F4A8  4B FE B1 B5 */	bl OSRestoreInterrupts
lbl_8035256C:
/* 8035256C 0034F4AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80352570 0034F4B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80352574 0034F4B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80352578 0034F4B8  7C 08 03 A6 */	mtlr r0
/* 8035257C 0034F4BC  4E 80 00 20 */	blr 

.global __DSP_debug_printf
__DSP_debug_printf:
/* 80352580 0034F4C0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80352584 0034F4C4  40 86 00 24 */	bne cr1, lbl_803525A8
/* 80352588 0034F4C8  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8035258C 0034F4CC  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80352590 0034F4D0  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80352594 0034F4D4  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80352598 0034F4D8  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8035259C 0034F4DC  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803525A0 0034F4E0  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803525A4 0034F4E4  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_803525A8:
/* 803525A8 0034F4E8  90 61 00 08 */	stw r3, 8(r1)
/* 803525AC 0034F4EC  90 81 00 0C */	stw r4, 0xc(r1)
/* 803525B0 0034F4F0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803525B4 0034F4F4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803525B8 0034F4F8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803525BC 0034F4FC  91 01 00 1C */	stw r8, 0x1c(r1)
/* 803525C0 0034F500  91 21 00 20 */	stw r9, 0x20(r1)
/* 803525C4 0034F504  91 41 00 24 */	stw r10, 0x24(r1)
/* 803525C8 0034F508  38 21 00 70 */	addi r1, r1, 0x70
/* 803525CC 0034F50C  4E 80 00 20 */	blr 

