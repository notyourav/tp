/* 802DFF60 002DCEA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DFF64 002DCEA4  7C 08 02 A6 */	mflr r0
/* 802DFF68 002DCEA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DFF6C 002DCEAC  39 61 00 20 */	addi r11, r1, 0x20
/* 802DFF70 002DCEB0  48 08 22 69 */	bl _savegpr_28
/* 802DFF74 002DCEB4  7C 7C 1B 78 */	mr r28, r3
/* 802DFF78 002DCEB8  7C BD 2B 78 */	mr r29, r5
/* 802DFF7C 002DCEBC  3B E0 00 00 */	li r31, 0
/* 802DFF80 002DCEC0  38 60 00 00 */	li r3, 0
/* 802DFF84 002DCEC4  A0 FC 00 62 */	lhz r7, 0x62(r28)
/* 802DFF88 002DCEC8  7C E9 03 A6 */	mtctr r7
/* 802DFF8C 002DCECC  2C 07 00 00 */	cmpwi r7, 0
/* 802DFF90 002DCED0  40 81 00 38 */	ble lbl_802DFFC8
lbl_802DFF94:
/* 802DFF94 002DCED4  80 BC 00 58 */	lwz r5, 0x58(r28)
/* 802DFF98 002DCED8  7C A5 18 2E */	lwzx r5, r5, r3
/* 802DFF9C 002DCEDC  A0 C5 00 08 */	lhz r6, 8(r5)
/* 802DFFA0 002DCEE0  7C 06 20 00 */	cmpw r6, r4
/* 802DFFA4 002DCEE4  41 81 00 18 */	bgt lbl_802DFFBC
/* 802DFFA8 002DCEE8  A0 05 00 0A */	lhz r0, 0xa(r5)
/* 802DFFAC 002DCEEC  7C 04 00 00 */	cmpw r4, r0
/* 802DFFB0 002DCEF0  41 81 00 0C */	bgt lbl_802DFFBC
/* 802DFFB4 002DCEF4  7C 86 20 50 */	subf r4, r6, r4
/* 802DFFB8 002DCEF8  48 00 00 10 */	b lbl_802DFFC8
lbl_802DFFBC:
/* 802DFFBC 002DCEFC  3B FF 00 01 */	addi r31, r31, 1
/* 802DFFC0 002DCF00  38 63 00 04 */	addi r3, r3, 4
/* 802DFFC4 002DCF04  42 00 FF D0 */	bdnz lbl_802DFF94
lbl_802DFFC8:
/* 802DFFC8 002DCF08  7C 1F 38 00 */	cmpw r31, r7
/* 802DFFCC 002DCF0C  41 82 00 E0 */	beq lbl_802E00AC
/* 802DFFD0 002DCF10  80 7C 00 58 */	lwz r3, 0x58(r28)
/* 802DFFD4 002DCF14  57 E6 10 3A */	slwi r6, r31, 2
/* 802DFFD8 002DCF18  7C A3 30 2E */	lwzx r5, r3, r6
/* 802DFFDC 002DCF1C  A0 65 00 16 */	lhz r3, 0x16(r5)
/* 802DFFE0 002DCF20  A0 05 00 18 */	lhz r0, 0x18(r5)
/* 802DFFE4 002DCF24  7C 03 01 D6 */	mullw r0, r3, r0
/* 802DFFE8 002DCF28  7F C4 03 D6 */	divw r30, r4, r0
/* 802DFFEC 002DCF2C  7C 1E 01 D6 */	mullw r0, r30, r0
/* 802DFFF0 002DCF30  7C 80 20 50 */	subf r4, r0, r4
/* 802DFFF4 002DCF34  7C E4 1B D6 */	divw r7, r4, r3
/* 802DFFF8 002DCF38  7C 07 19 D6 */	mullw r0, r7, r3
/* 802DFFFC 002DCF3C  7C 60 20 50 */	subf r3, r0, r4
/* 802E0000 002DCF40  A0 05 00 0C */	lhz r0, 0xc(r5)
/* 802E0004 002DCF44  7C 03 01 D6 */	mullw r0, r3, r0
/* 802E0008 002DCF48  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 802E000C 002DCF4C  80 7C 00 58 */	lwz r3, 0x58(r28)
/* 802E0010 002DCF50  7C 63 30 2E */	lwzx r3, r3, r6
/* 802E0014 002DCF54  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 802E0018 002DCF58  7C 07 01 D6 */	mullw r0, r7, r0
/* 802E001C 002DCF5C  90 1C 00 20 */	stw r0, 0x20(r28)
/* 802E0020 002DCF60  80 1C 00 44 */	lwz r0, 0x44(r28)
/* 802E0024 002DCF64  7C 1E 00 00 */	cmpw r30, r0
/* 802E0028 002DCF68  40 82 00 10 */	bne lbl_802E0038
/* 802E002C 002DCF6C  A0 1C 00 66 */	lhz r0, 0x66(r28)
/* 802E0030 002DCF70  7C 1F 00 00 */	cmpw r31, r0
/* 802E0034 002DCF74  41 82 00 6C */	beq lbl_802E00A0
lbl_802E0038:
/* 802E0038 002DCF78  80 7C 00 58 */	lwz r3, 0x58(r28)
/* 802E003C 002DCF7C  7C E3 30 2E */	lwzx r7, r3, r6
/* 802E0040 002DCF80  38 7C 00 24 */	addi r3, r28, 0x24
/* 802E0044 002DCF84  80 07 00 10 */	lwz r0, 0x10(r7)
/* 802E0048 002DCF88  7C 9E 01 D6 */	mullw r4, r30, r0
/* 802E004C 002DCF8C  38 84 00 20 */	addi r4, r4, 0x20
/* 802E0050 002DCF90  7C 87 22 14 */	add r4, r7, r4
/* 802E0054 002DCF94  A0 A7 00 1A */	lhz r5, 0x1a(r7)
/* 802E0058 002DCF98  A0 C7 00 1C */	lhz r6, 0x1c(r7)
/* 802E005C 002DCF9C  A0 E7 00 14 */	lhz r7, 0x14(r7)
/* 802E0060 002DCFA0  39 00 00 00 */	li r8, 0
/* 802E0064 002DCFA4  39 20 00 00 */	li r9, 0
/* 802E0068 002DCFA8  39 40 00 00 */	li r10, 0
/* 802E006C 002DCFAC  48 07 DD D5 */	bl GXInitTexObj
/* 802E0070 002DCFB0  38 7C 00 24 */	addi r3, r28, 0x24
/* 802E0074 002DCFB4  38 80 00 01 */	li r4, 1
/* 802E0078 002DCFB8  38 A0 00 01 */	li r5, 1
/* 802E007C 002DCFBC  C0 22 C5 F0 */	lfs f1, lbl_80455FF0-_SDA2_BASE_(r2)
/* 802E0080 002DCFC0  FC 40 08 90 */	fmr f2, f1
/* 802E0084 002DCFC4  FC 60 08 90 */	fmr f3, f1
/* 802E0088 002DCFC8  38 C0 00 00 */	li r6, 0
/* 802E008C 002DCFCC  38 E0 00 00 */	li r7, 0
/* 802E0090 002DCFD0  39 00 00 00 */	li r8, 0
/* 802E0094 002DCFD4  48 07 E0 41 */	bl GXInitTexObjLOD
/* 802E0098 002DCFD8  93 DC 00 44 */	stw r30, 0x44(r28)
/* 802E009C 002DCFDC  B3 FC 00 66 */	sth r31, 0x66(r28)
lbl_802E00A0:
/* 802E00A0 002DCFE0  38 7C 00 24 */	addi r3, r28, 0x24
/* 802E00A4 002DCFE4  7F A4 EB 78 */	mr r4, r29
/* 802E00A8 002DCFE8  48 07 E3 6D */	bl GXLoadTexObj
lbl_802E00AC:
/* 802E00AC 002DCFEC  39 61 00 20 */	addi r11, r1, 0x20
/* 802E00B0 002DCFF0  48 08 21 75 */	bl _restgpr_28
/* 802E00B4 002DCFF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E00B8 002DCFF8  7C 08 03 A6 */	mtlr r0
/* 802E00BC 002DCFFC  38 21 00 20 */	addi r1, r1, 0x20
/* 802E00C0 002DD000  4E 80 00 20 */	blr 
