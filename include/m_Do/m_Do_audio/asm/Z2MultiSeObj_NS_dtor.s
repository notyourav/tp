/* 80007888 000047C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000788C 000047CC  7C 08 02 A6 */	mflr r0
/* 80007890 000047D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007894 000047D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80007898 000047D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8000789C 000047DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 800078A0 000047E0  7C 9F 23 78 */	mr r31, r4
/* 800078A4 000047E4  41 82 00 1C */	beq lbl_800078C0
/* 800078A8 000047E8  38 80 00 00 */	li r4, 0
/* 800078AC 000047EC  48 2A 72 89 */	bl __dt__12Z2MultiSeMgrFv
/* 800078B0 000047F0  7F E0 07 35 */	extsh. r0, r31
/* 800078B4 000047F4  40 81 00 0C */	ble lbl_800078C0
/* 800078B8 000047F8  7F C3 F3 78 */	mr r3, r30
/* 800078BC 000047FC  48 2C 74 81 */	bl __dl__FPv
lbl_800078C0:
/* 800078C0 00004800  7F C3 F3 78 */	mr r3, r30
/* 800078C4 00004804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800078C8 00004808  83 C1 00 08 */	lwz r30, 8(r1)
/* 800078CC 0000480C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800078D0 00004810  7C 08 03 A6 */	mtlr r0
/* 800078D4 00004814  38 21 00 10 */	addi r1, r1, 0x10
/* 800078D8 00004818  4E 80 00 20 */	blr 