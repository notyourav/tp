.include "macros.inc"

.section .text, "ax" # 802984f8


.global JASBasicWaveBank
JASBasicWaveBank:
/* 802984F8 00295438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802984FC 0029543C  7C 08 02 A6 */	mflr r0
/* 80298500 00295440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298504 00295444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298508 00295448  7C 7F 1B 78 */	mr r31, r3
/* 8029850C 0029544C  3C 60 80 3C */	lis r3, lbl_803C7780@ha
/* 80298510 00295450  38 03 77 80 */	addi r0, r3, lbl_803C7780@l
/* 80298514 00295454  90 1F 00 00 */	stw r0, 0(r31)
/* 80298518 00295458  3C 60 80 3C */	lis r3, lbl_803C7768@ha
/* 8029851C 0029545C  38 03 77 68 */	addi r0, r3, lbl_803C7768@l
/* 80298520 00295460  90 1F 00 00 */	stw r0, 0(r31)
/* 80298524 00295464  38 00 00 00 */	li r0, 0
/* 80298528 00295468  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8029852C 0029546C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80298530 00295470  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 80298534 00295474  B0 1F 00 26 */	sth r0, 0x26(r31)
/* 80298538 00295478  38 7F 00 04 */	addi r3, r31, 4
/* 8029853C 0029547C  48 0A 6A CD */	bl OSInitMutex
/* 80298540 00295480  7F E3 FB 78 */	mr r3, r31
/* 80298544 00295484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80298548 00295488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029854C 0029548C  7C 08 03 A6 */	mtlr r0
/* 80298550 00295490  38 21 00 10 */	addi r1, r1, 0x10
/* 80298554 00295494  4E 80 00 20 */	blr 
/* 80298558 00295498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029855C 0029549C  7C 08 02 A6 */	mflr r0
/* 80298560 002954A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298564 002954A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298568 002954A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8029856C 002954AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80298570 002954B0  7C 9F 23 78 */	mr r31, r4
/* 80298574 002954B4  41 82 00 54 */	beq lbl_802985C8
/* 80298578 002954B8  3C 60 80 3C */	lis r3, lbl_803C7768@ha
/* 8029857C 002954BC  38 03 77 68 */	addi r0, r3, lbl_803C7768@l
/* 80298580 002954C0  90 1E 00 00 */	stw r0, 0(r30)
/* 80298584 002954C4  80 7E 00 1C */	lwz r3, 0x1c(r30)
.global JASBasicWaveBank_NS_TWaveHandle_NS_dtor
/* 80298588 002954C8  3C 80 80 2A */	lis r4, JASBasicWaveBank_NS_TWaveHandle_NS_dtor@ha
.global JASBasicWaveBank_NS_TWaveHandle_NS_dtor
/* 8029858C 002954CC  38 84 85 E4 */	addi r4, r4, JASBasicWaveBank_NS_TWaveHandle_NS_dtor@l
/* 80298590 002954D0  48 0C 96 DD */	bl func_80361C6C
/* 80298594 002954D4  80 7E 00 20 */	lwz r3, 0x20(r30)
.global JASBasicWaveBank_NS_TWaveGroup_NS_dtor
/* 80298598 002954D8  3C 80 80 2A */	lis r4, JASBasicWaveBank_NS_TWaveGroup_NS_dtor@ha
.global JASBasicWaveBank_NS_TWaveGroup_NS_dtor
/* 8029859C 002954DC  38 84 8A 0C */	addi r4, r4, JASBasicWaveBank_NS_TWaveGroup_NS_dtor@l
/* 802985A0 002954E0  48 0C 96 CD */	bl func_80361C6C
/* 802985A4 002954E4  28 1E 00 00 */	cmplwi r30, 0
/* 802985A8 002954E8  41 82 00 10 */	beq lbl_802985B8
/* 802985AC 002954EC  3C 60 80 3C */	lis r3, lbl_803C7780@ha
/* 802985B0 002954F0  38 03 77 80 */	addi r0, r3, lbl_803C7780@l
/* 802985B4 002954F4  90 1E 00 00 */	stw r0, 0(r30)
lbl_802985B8:
/* 802985B8 002954F8  7F E0 07 35 */	extsh. r0, r31
/* 802985BC 002954FC  40 81 00 0C */	ble lbl_802985C8
/* 802985C0 00295500  7F C3 F3 78 */	mr r3, r30
/* 802985C4 00295504  48 03 67 79 */	bl __dl__FPv
lbl_802985C8:
/* 802985C8 00295508  7F C3 F3 78 */	mr r3, r30
/* 802985CC 0029550C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802985D0 00295510  83 C1 00 08 */	lwz r30, 8(r1)
/* 802985D4 00295514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802985D8 00295518  7C 08 03 A6 */	mtlr r0
/* 802985DC 0029551C  38 21 00 10 */	addi r1, r1, 0x10
/* 802985E0 00295520  4E 80 00 20 */	blr 
.global JASBasicWaveBank_NS_TWaveHandle_NS_dtor
JASBasicWaveBank_NS_TWaveHandle_NS_dtor:
/* 802985E4 00295524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802985E8 00295528  7C 08 02 A6 */	mflr r0
/* 802985EC 0029552C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802985F0 00295530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802985F4 00295534  7C 7F 1B 79 */	or. r31, r3, r3
/* 802985F8 00295538  41 82 00 30 */	beq lbl_80298628
/* 802985FC 0029553C  3C 60 80 3C */	lis r3, lbl_803C7728@ha
/* 80298600 00295540  38 03 77 28 */	addi r0, r3, lbl_803C7728@l
/* 80298604 00295544  90 1F 00 00 */	stw r0, 0(r31)
/* 80298608 00295548  41 82 00 10 */	beq lbl_80298618
/* 8029860C 0029554C  3C 60 80 3C */	lis r3, lbl_803C7754@ha
/* 80298610 00295550  38 03 77 54 */	addi r0, r3, lbl_803C7754@l
/* 80298614 00295554  90 1F 00 00 */	stw r0, 0(r31)
lbl_80298618:
/* 80298618 00295558  7C 80 07 35 */	extsh. r0, r4
/* 8029861C 0029555C  40 81 00 0C */	ble lbl_80298628
/* 80298620 00295560  7F E3 FB 78 */	mr r3, r31
/* 80298624 00295564  48 03 67 19 */	bl __dl__FPv
lbl_80298628:
/* 80298628 00295568  7F E3 FB 78 */	mr r3, r31
/* 8029862C 0029556C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80298630 00295570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298634 00295574  7C 08 03 A6 */	mtlr r0
/* 80298638 00295578  38 21 00 10 */	addi r1, r1, 0x10
/* 8029863C 0029557C  4E 80 00 20 */	blr 

.global JASBasicWaveBank_NS_getWaveGroup
JASBasicWaveBank_NS_getWaveGroup:
/* 80298640 00295580  A0 03 00 26 */	lhz r0, 0x26(r3)
/* 80298644 00295584  7C 04 00 40 */	cmplw r4, r0
/* 80298648 00295588  41 80 00 0C */	blt lbl_80298654
/* 8029864C 0029558C  38 60 00 00 */	li r3, 0
/* 80298650 00295590  4E 80 00 20 */	blr 
lbl_80298654:
/* 80298654 00295594  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80298658 00295598  54 80 38 30 */	slwi r0, r4, 7
/* 8029865C 0029559C  7C 63 02 14 */	add r3, r3, r0
/* 80298660 002955A0  4E 80 00 20 */	blr 

.global JASBasicWaveBank_NS_setGroupCount
JASBasicWaveBank_NS_setGroupCount:
/* 80298664 002955A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80298668 002955A8  7C 08 02 A6 */	mflr r0
/* 8029866C 002955AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80298670 002955B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80298674 002955B4  48 0C 9B 69 */	bl _savegpr_29
/* 80298678 002955B8  7C 7D 1B 78 */	mr r29, r3
/* 8029867C 002955BC  7C 9E 23 78 */	mr r30, r4
/* 80298680 002955C0  7C BF 2B 78 */	mr r31, r5
/* 80298684 002955C4  80 63 00 20 */	lwz r3, 0x20(r3)
.global JASBasicWaveBank_NS_TWaveGroup_NS_dtor
/* 80298688 002955C8  3C 80 80 2A */	lis r4, JASBasicWaveBank_NS_TWaveGroup_NS_dtor@ha
.global JASBasicWaveBank_NS_TWaveGroup_NS_dtor
/* 8029868C 002955CC  38 84 8A 0C */	addi r4, r4, JASBasicWaveBank_NS_TWaveGroup_NS_dtor@l
/* 80298690 002955D0  48 0C 95 DD */	bl func_80361C6C
/* 80298694 002955D4  B3 DD 00 26 */	sth r30, 0x26(r29)
/* 80298698 002955D8  57 C3 38 30 */	slwi r3, r30, 7
/* 8029869C 002955DC  38 63 00 10 */	addi r3, r3, 0x10
/* 802986A0 002955E0  7F E4 FB 78 */	mr r4, r31
/* 802986A4 002955E4  38 A0 00 00 */	li r5, 0
/* 802986A8 002955E8  48 03 66 69 */	bl __nwa__FUlP7JKRHeapi
.global JASBasicWaveBank_NS_TWaveGroup
/* 802986AC 002955EC  3C 80 80 2A */	lis r4, JASBasicWaveBank_NS_TWaveGroup@ha
.global JASBasicWaveBank_NS_TWaveGroup
/* 802986B0 002955F0  38 84 89 C0 */	addi r4, r4, JASBasicWaveBank_NS_TWaveGroup@l
.global JASBasicWaveBank_NS_TWaveGroup_NS_dtor
/* 802986B4 002955F4  3C A0 80 2A */	lis r5, JASBasicWaveBank_NS_TWaveGroup_NS_dtor@ha
.global JASBasicWaveBank_NS_TWaveGroup_NS_dtor
/* 802986B8 002955F8  38 A5 8A 0C */	addi r5, r5, JASBasicWaveBank_NS_TWaveGroup_NS_dtor@l
/* 802986BC 002955FC  38 C0 00 80 */	li r6, 0x80
/* 802986C0 00295600  7F C7 F3 78 */	mr r7, r30
/* 802986C4 00295604  48 0C 98 51 */	bl func_80361F14
/* 802986C8 00295608  90 7D 00 20 */	stw r3, 0x20(r29)
/* 802986CC 0029560C  38 A0 00 00 */	li r5, 0
/* 802986D0 00295610  38 60 00 00 */	li r3, 0
/* 802986D4 00295614  48 00 00 18 */	b lbl_802986EC
lbl_802986D8:
/* 802986D8 00295618  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 802986DC 0029561C  38 03 00 74 */	addi r0, r3, 0x74
/* 802986E0 00295620  7F A4 01 2E */	stwx r29, r4, r0
/* 802986E4 00295624  38 A5 00 01 */	addi r5, r5, 1
/* 802986E8 00295628  38 63 00 80 */	addi r3, r3, 0x80
lbl_802986EC:
/* 802986EC 0029562C  A0 1D 00 26 */	lhz r0, 0x26(r29)
/* 802986F0 00295630  7C 05 00 00 */	cmpw r5, r0
/* 802986F4 00295634  41 80 FF E4 */	blt lbl_802986D8
/* 802986F8 00295638  39 61 00 20 */	addi r11, r1, 0x20
/* 802986FC 0029563C  48 0C 9B 2D */	bl _restgpr_29
/* 80298700 00295640  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80298704 00295644  7C 08 03 A6 */	mtlr r0
/* 80298708 00295648  38 21 00 20 */	addi r1, r1, 0x20
/* 8029870C 0029564C  4E 80 00 20 */	blr 

.global JASBasicWaveBank_NS_setWaveTableSize
JASBasicWaveBank_NS_setWaveTableSize:
/* 80298710 00295650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80298714 00295654  7C 08 02 A6 */	mflr r0
/* 80298718 00295658  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029871C 0029565C  39 61 00 20 */	addi r11, r1, 0x20
/* 80298720 00295660  48 0C 9A BD */	bl _savegpr_29
/* 80298724 00295664  7C 7D 1B 78 */	mr r29, r3
/* 80298728 00295668  7C 9E 23 78 */	mr r30, r4
/* 8029872C 0029566C  7C BF 2B 78 */	mr r31, r5
/* 80298730 00295670  80 63 00 1C */	lwz r3, 0x1c(r3)
.global JASBasicWaveBank_NS_TWaveHandle_NS_dtor
/* 80298734 00295674  3C 80 80 2A */	lis r4, JASBasicWaveBank_NS_TWaveHandle_NS_dtor@ha
.global JASBasicWaveBank_NS_TWaveHandle_NS_dtor
/* 80298738 00295678  38 84 85 E4 */	addi r4, r4, JASBasicWaveBank_NS_TWaveHandle_NS_dtor@l
/* 8029873C 0029567C  48 0C 95 31 */	bl func_80361C6C
/* 80298740 00295680  1C 7E 00 2C */	mulli r3, r30, 0x2c
/* 80298744 00295684  38 63 00 10 */	addi r3, r3, 0x10
/* 80298748 00295688  7F E4 FB 78 */	mr r4, r31
/* 8029874C 0029568C  38 A0 00 00 */	li r5, 0
/* 80298750 00295690  48 03 65 C1 */	bl __nwa__FUlP7JKRHeapi
.global JASBasicWaveBank_NS_TWaveHandle
/* 80298754 00295694  3C 80 80 2A */	lis r4, JASBasicWaveBank_NS_TWaveHandle@ha
.global JASBasicWaveBank_NS_TWaveHandle
/* 80298758 00295698  38 84 8C 18 */	addi r4, r4, JASBasicWaveBank_NS_TWaveHandle@l
.global JASBasicWaveBank_NS_TWaveHandle_NS_dtor
/* 8029875C 0029569C  3C A0 80 2A */	lis r5, JASBasicWaveBank_NS_TWaveHandle_NS_dtor@ha
.global JASBasicWaveBank_NS_TWaveHandle_NS_dtor
/* 80298760 002956A0  38 A5 85 E4 */	addi r5, r5, JASBasicWaveBank_NS_TWaveHandle_NS_dtor@l
/* 80298764 002956A4  38 C0 00 2C */	li r6, 0x2c
/* 80298768 002956A8  7F C7 F3 78 */	mr r7, r30
/* 8029876C 002956AC  48 0C 97 A9 */	bl func_80361F14
/* 80298770 002956B0  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 80298774 002956B4  B3 DD 00 24 */	sth r30, 0x24(r29)
/* 80298778 002956B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8029877C 002956BC  48 0C 9A AD */	bl _restgpr_29
/* 80298780 002956C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80298784 002956C4  7C 08 03 A6 */	mtlr r0
/* 80298788 002956C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8029878C 002956CC  4E 80 00 20 */	blr 

.global JASBasicWaveBank_NS_incWaveTable
JASBasicWaveBank_NS_incWaveTable:
/* 80298790 002956D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80298794 002956D4  7C 08 02 A6 */	mflr r0
/* 80298798 002956D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8029879C 002956DC  39 61 00 30 */	addi r11, r1, 0x30
/* 802987A0 002956E0  48 0C 9A 31 */	bl _savegpr_26
/* 802987A4 002956E4  7C 7A 1B 78 */	mr r26, r3
/* 802987A8 002956E8  7C 9B 23 78 */	mr r27, r4
/* 802987AC 002956EC  38 7A 00 04 */	addi r3, r26, 4
/* 802987B0 002956F0  90 61 00 08 */	stw r3, 8(r1)
/* 802987B4 002956F4  48 0A 68 8D */	bl OSLockMutex
/* 802987B8 002956F8  3B 80 00 00 */	li r28, 0
/* 802987BC 002956FC  3B E0 00 00 */	li r31, 0
/* 802987C0 00295700  3B BB 00 04 */	addi r29, r27, 4
/* 802987C4 00295704  3B DB 00 48 */	addi r30, r27, 0x48
/* 802987C8 00295708  48 00 00 48 */	b lbl_80298810
lbl_802987CC:
/* 802987CC 0029570C  7F 63 DB 78 */	mr r3, r27
/* 802987D0 00295710  7F 84 E3 78 */	mr r4, r28
/* 802987D4 00295714  48 00 03 81 */	bl JASBasicWaveBank_NS_TWaveGroup_NS_getWaveID
/* 802987D8 00295718  1C 63 00 2C */	mulli r3, r3, 0x2c
/* 802987DC 0029571C  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 802987E0 00295720  7C 80 1A 14 */	add r4, r0, r3
/* 802987E4 00295724  80 04 00 28 */	lwz r0, 0x28(r4)
/* 802987E8 00295728  28 00 00 00 */	cmplwi r0, 0
/* 802987EC 0029572C  40 82 00 1C */	bne lbl_80298808
/* 802987F0 00295730  93 A4 00 28 */	stw r29, 0x28(r4)
/* 802987F4 00295734  93 C4 00 24 */	stw r30, 0x24(r4)
/* 802987F8 00295738  80 7B 00 78 */	lwz r3, 0x78(r27)
/* 802987FC 0029573C  38 1F 00 04 */	addi r0, r31, 4
/* 80298800 00295740  7C 03 00 2E */	lwzx r0, r3, r0
/* 80298804 00295744  90 04 00 0C */	stw r0, 0xc(r4)
lbl_80298808:
/* 80298808 00295748  3B 9C 00 01 */	addi r28, r28, 1
/* 8029880C 0029574C  3B FF 00 08 */	addi r31, r31, 8
lbl_80298810:
/* 80298810 00295750  A0 1B 00 7C */	lhz r0, 0x7c(r27)
/* 80298814 00295754  7C 1C 00 40 */	cmplw r28, r0
/* 80298818 00295758  41 80 FF B4 */	blt lbl_802987CC
/* 8029881C 0029575C  80 61 00 08 */	lwz r3, 8(r1)
/* 80298820 00295760  48 0A 68 FD */	bl OSUnlockMutex
/* 80298824 00295764  39 61 00 30 */	addi r11, r1, 0x30
/* 80298828 00295768  48 0C 99 F5 */	bl _restgpr_26
/* 8029882C 0029576C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80298830 00295770  7C 08 03 A6 */	mtlr r0
/* 80298834 00295774  38 21 00 30 */	addi r1, r1, 0x30
/* 80298838 00295778  4E 80 00 20 */	blr 

.global JASBasicWaveBank_NS_decWaveTable
JASBasicWaveBank_NS_decWaveTable:
/* 8029883C 0029577C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80298840 00295780  7C 08 02 A6 */	mflr r0
/* 80298844 00295784  90 01 00 34 */	stw r0, 0x34(r1)
/* 80298848 00295788  39 61 00 30 */	addi r11, r1, 0x30
/* 8029884C 0029578C  48 0C 99 81 */	bl _savegpr_25
/* 80298850 00295790  7C 79 1B 78 */	mr r25, r3
/* 80298854 00295794  7C 9A 23 78 */	mr r26, r4
/* 80298858 00295798  38 79 00 04 */	addi r3, r25, 4
/* 8029885C 0029579C  90 61 00 08 */	stw r3, 8(r1)
/* 80298860 002957A0  48 0A 67 E1 */	bl OSLockMutex
/* 80298864 002957A4  3B 60 00 00 */	li r27, 0
/* 80298868 002957A8  3B 9A 00 04 */	addi r28, r26, 4
/* 8029886C 002957AC  3B A0 00 00 */	li r29, 0
/* 80298870 002957B0  3B CD 8C F8 */	addi r30, r13, lbl_80451278-_SDA_BASE_
/* 80298874 002957B4  3B E0 FF FF */	li r31, -1
/* 80298878 002957B8  48 00 00 38 */	b lbl_802988B0
lbl_8029887C:
/* 8029887C 002957BC  7F 43 D3 78 */	mr r3, r26
/* 80298880 002957C0  7F 64 DB 78 */	mr r4, r27
/* 80298884 002957C4  48 00 02 D1 */	bl JASBasicWaveBank_NS_TWaveGroup_NS_getWaveID
/* 80298888 002957C8  1C 63 00 2C */	mulli r3, r3, 0x2c
/* 8029888C 002957CC  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 80298890 002957D0  7C 60 1A 14 */	add r3, r0, r3
/* 80298894 002957D4  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80298898 002957D8  7C 00 E0 40 */	cmplw r0, r28
/* 8029889C 002957DC  40 82 00 10 */	bne lbl_802988AC
/* 802988A0 002957E0  93 A3 00 28 */	stw r29, 0x28(r3)
/* 802988A4 002957E4  93 C3 00 24 */	stw r30, 0x24(r3)
/* 802988A8 002957E8  93 E3 00 0C */	stw r31, 0xc(r3)
lbl_802988AC:
/* 802988AC 002957EC  3B 7B 00 01 */	addi r27, r27, 1
lbl_802988B0:
/* 802988B0 002957F0  A0 1A 00 7C */	lhz r0, 0x7c(r26)
/* 802988B4 002957F4  7C 1B 00 40 */	cmplw r27, r0
/* 802988B8 002957F8  41 80 FF C4 */	blt lbl_8029887C
/* 802988BC 002957FC  80 61 00 08 */	lwz r3, 8(r1)
/* 802988C0 00295800  48 0A 68 5D */	bl OSUnlockMutex
/* 802988C4 00295804  39 61 00 30 */	addi r11, r1, 0x30
/* 802988C8 00295808  48 0C 99 51 */	bl _restgpr_25
/* 802988CC 0029580C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802988D0 00295810  7C 08 03 A6 */	mtlr r0
/* 802988D4 00295814  38 21 00 30 */	addi r1, r1, 0x30
/* 802988D8 00295818  4E 80 00 20 */	blr 
/* 802988DC 0029581C  A0 03 00 24 */	lhz r0, 0x24(r3)
/* 802988E0 00295820  7C 04 00 40 */	cmplw r4, r0
/* 802988E4 00295824  41 80 00 0C */	blt lbl_802988F0
/* 802988E8 00295828  38 60 00 00 */	li r3, 0
/* 802988EC 0029582C  4E 80 00 20 */	blr 
lbl_802988F0:
/* 802988F0 00295830  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802988F4 00295834  1C 04 00 2C */	mulli r0, r4, 0x2c
/* 802988F8 00295838  7C 63 02 14 */	add r3, r3, r0
/* 802988FC 0029583C  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80298900 00295840  28 00 00 00 */	cmplwi r0, 0
/* 80298904 00295844  4C 82 00 20 */	bnelr 
/* 80298908 00295848  38 60 00 00 */	li r3, 0
/* 8029890C 0029584C  4E 80 00 20 */	blr 

.global JASBasicWaveBank_NS_setWaveInfo
JASBasicWaveBank_NS_setWaveInfo:
/* 80298910 00295850  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 80298914 00295854  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80298918 00295858  1D 60 00 2C */	mulli r11, r0, 0x2c
/* 8029891C 0029585C  39 4B 00 04 */	addi r10, r11, 4
/* 80298920 00295860  7D 48 52 14 */	add r10, r8, r10
/* 80298924 00295864  88 07 00 00 */	lbz r0, 0(r7)
/* 80298928 00295868  98 0A 00 00 */	stb r0, 0(r10)
/* 8029892C 0029586C  88 07 00 01 */	lbz r0, 1(r7)
/* 80298930 00295870  98 0A 00 01 */	stb r0, 1(r10)
/* 80298934 00295874  88 07 00 02 */	lbz r0, 2(r7)
/* 80298938 00295878  98 0A 00 02 */	stb r0, 2(r10)
/* 8029893C 0029587C  C0 07 00 04 */	lfs f0, 4(r7)
/* 80298940 00295880  D0 0A 00 04 */	stfs f0, 4(r10)
/* 80298944 00295884  81 27 00 08 */	lwz r9, 8(r7)
/* 80298948 00295888  91 2A 00 08 */	stw r9, 8(r10)
/* 8029894C 0029588C  80 07 00 0C */	lwz r0, 0xc(r7)
/* 80298950 00295890  90 0A 00 0C */	stw r0, 0xc(r10)
/* 80298954 00295894  80 07 00 10 */	lwz r0, 0x10(r7)
/* 80298958 00295898  90 0A 00 10 */	stw r0, 0x10(r10)
/* 8029895C 0029589C  80 07 00 14 */	lwz r0, 0x14(r7)
/* 80298960 002958A0  90 0A 00 14 */	stw r0, 0x14(r10)
/* 80298964 002958A4  80 07 00 18 */	lwz r0, 0x18(r7)
/* 80298968 002958A8  90 0A 00 18 */	stw r0, 0x18(r10)
/* 8029896C 002958AC  A8 07 00 1C */	lha r0, 0x1c(r7)
/* 80298970 002958B0  B0 0A 00 1C */	sth r0, 0x1c(r10)
/* 80298974 002958B4  A8 07 00 1E */	lha r0, 0x1e(r7)
/* 80298978 002958B8  B0 0A 00 1E */	sth r0, 0x1e(r10)
/* 8029897C 002958BC  80 07 00 20 */	lwz r0, 0x20(r7)
/* 80298980 002958C0  90 0A 00 20 */	stw r0, 0x20(r10)
/* 80298984 002958C4  39 0D 8C F8 */	addi r8, r13, lbl_80451278-_SDA_BASE_
/* 80298988 002958C8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8029898C 002958CC  7C E0 5A 14 */	add r7, r0, r11
/* 80298990 002958D0  91 07 00 24 */	stw r8, 0x24(r7)
/* 80298994 002958D4  38 E0 FF FF */	li r7, -1
/* 80298998 002958D8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8029899C 002958DC  7C 60 5A 14 */	add r3, r0, r11
/* 802989A0 002958E0  90 E3 00 0C */	stw r7, 0xc(r3)
/* 802989A4 002958E4  80 64 00 78 */	lwz r3, 0x78(r4)
/* 802989A8 002958E8  54 A5 18 38 */	slwi r5, r5, 3
/* 802989AC 002958EC  7C C3 2B 2E */	sthx r6, r3, r5
/* 802989B0 002958F0  80 04 00 78 */	lwz r0, 0x78(r4)
/* 802989B4 002958F4  7C 60 2A 14 */	add r3, r0, r5
/* 802989B8 002958F8  91 23 00 04 */	stw r9, 4(r3)
/* 802989BC 002958FC  4E 80 00 20 */	blr 
.global JASBasicWaveBank_NS_TWaveGroup
JASBasicWaveBank_NS_TWaveGroup:
/* 802989C0 00295900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802989C4 00295904  7C 08 02 A6 */	mflr r0
/* 802989C8 00295908  90 01 00 14 */	stw r0, 0x14(r1)
/* 802989CC 0029590C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802989D0 00295910  7C 7F 1B 78 */	mr r31, r3
/* 802989D4 00295914  48 00 17 69 */	bl JASWaveArc
/* 802989D8 00295918  3C 60 80 3C */	lis r3, lbl_803C773C@ha
/* 802989DC 0029591C  38 03 77 3C */	addi r0, r3, lbl_803C773C@l
/* 802989E0 00295920  90 1F 00 00 */	stw r0, 0(r31)
/* 802989E4 00295924  38 00 00 00 */	li r0, 0
/* 802989E8 00295928  90 1F 00 74 */	stw r0, 0x74(r31)
/* 802989EC 0029592C  90 1F 00 78 */	stw r0, 0x78(r31)
/* 802989F0 00295930  B0 1F 00 7C */	sth r0, 0x7c(r31)
/* 802989F4 00295934  7F E3 FB 78 */	mr r3, r31
/* 802989F8 00295938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802989FC 0029593C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298A00 00295940  7C 08 03 A6 */	mtlr r0
/* 80298A04 00295944  38 21 00 10 */	addi r1, r1, 0x10
/* 80298A08 00295948  4E 80 00 20 */	blr 
.global JASBasicWaveBank_NS_TWaveGroup_NS_dtor
JASBasicWaveBank_NS_TWaveGroup_NS_dtor:
/* 80298A0C 0029594C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298A10 00295950  7C 08 02 A6 */	mflr r0
/* 80298A14 00295954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298A18 00295958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298A1C 0029595C  93 C1 00 08 */	stw r30, 8(r1)
/* 80298A20 00295960  7C 7E 1B 79 */	or. r30, r3, r3
/* 80298A24 00295964  7C 9F 23 78 */	mr r31, r4
/* 80298A28 00295968  41 82 00 40 */	beq lbl_80298A68
/* 80298A2C 0029596C  3C 60 80 3C */	lis r3, lbl_803C773C@ha
/* 80298A30 00295970  38 03 77 3C */	addi r0, r3, lbl_803C773C@l
/* 80298A34 00295974  90 1E 00 00 */	stw r0, 0(r30)
/* 80298A38 00295978  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 80298A3C 0029597C  28 03 00 00 */	cmplwi r3, 0
/* 80298A40 00295980  41 82 00 0C */	beq lbl_80298A4C
/* 80298A44 00295984  38 63 FF F0 */	addi r3, r3, -16
/* 80298A48 00295988  48 03 63 19 */	bl __dla__FPv
lbl_80298A4C:
/* 80298A4C 0029598C  7F C3 F3 78 */	mr r3, r30
/* 80298A50 00295990  38 80 00 00 */	li r4, 0
/* 80298A54 00295994  48 00 17 61 */	bl JASWaveArc_NS_dtor
/* 80298A58 00295998  7F E0 07 35 */	extsh. r0, r31
/* 80298A5C 0029599C  40 81 00 0C */	ble lbl_80298A68
/* 80298A60 002959A0  7F C3 F3 78 */	mr r3, r30
/* 80298A64 002959A4  48 03 62 D9 */	bl __dl__FPv
lbl_80298A68:
/* 80298A68 002959A8  7F C3 F3 78 */	mr r3, r30
/* 80298A6C 002959AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80298A70 002959B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80298A74 002959B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298A78 002959B8  7C 08 03 A6 */	mtlr r0
/* 80298A7C 002959BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80298A80 002959C0  4E 80 00 20 */	blr 

.global JASBasicWaveBank_NS_TWaveGroup_NS_setWaveCount
JASBasicWaveBank_NS_TWaveGroup_NS_setWaveCount:
/* 80298A84 002959C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80298A88 002959C8  7C 08 02 A6 */	mflr r0
/* 80298A8C 002959CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80298A90 002959D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80298A94 002959D4  48 0C 97 49 */	bl _savegpr_29
/* 80298A98 002959D8  7C 7D 1B 78 */	mr r29, r3
/* 80298A9C 002959DC  7C 9E 23 78 */	mr r30, r4
/* 80298AA0 002959E0  7C BF 2B 78 */	mr r31, r5
/* 80298AA4 002959E4  80 63 00 78 */	lwz r3, 0x78(r3)
/* 80298AA8 002959E8  28 03 00 00 */	cmplwi r3, 0
/* 80298AAC 002959EC  41 82 00 0C */	beq lbl_80298AB8
/* 80298AB0 002959F0  38 63 FF F0 */	addi r3, r3, -16
/* 80298AB4 002959F4  48 03 62 AD */	bl __dla__FPv
lbl_80298AB8:
/* 80298AB8 002959F8  B3 DD 00 7C */	sth r30, 0x7c(r29)
/* 80298ABC 002959FC  57 C3 18 38 */	slwi r3, r30, 3
/* 80298AC0 00295A00  38 63 00 10 */	addi r3, r3, 0x10
/* 80298AC4 00295A04  7F E4 FB 78 */	mr r4, r31
/* 80298AC8 00295A08  38 A0 00 00 */	li r5, 0
/* 80298ACC 00295A0C  48 03 62 45 */	bl __nwa__FUlP7JKRHeapi
.global JASBasicWaveBank_NS_TGroupWaveInfo
/* 80298AD0 00295A10  3C 80 80 2A */	lis r4, JASBasicWaveBank_NS_TGroupWaveInfo@ha
.global JASBasicWaveBank_NS_TGroupWaveInfo
/* 80298AD4 00295A14  38 84 8C 4C */	addi r4, r4, JASBasicWaveBank_NS_TGroupWaveInfo@l
/* 80298AD8 00295A18  38 A0 00 00 */	li r5, 0
/* 80298ADC 00295A1C  38 C0 00 08 */	li r6, 8
/* 80298AE0 00295A20  7F C7 F3 78 */	mr r7, r30
/* 80298AE4 00295A24  48 0C 94 31 */	bl func_80361F14
/* 80298AE8 00295A28  90 7D 00 78 */	stw r3, 0x78(r29)
/* 80298AEC 00295A2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80298AF0 00295A30  48 0C 97 39 */	bl _restgpr_29
/* 80298AF4 00295A34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80298AF8 00295A38  7C 08 03 A6 */	mtlr r0
/* 80298AFC 00295A3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80298B00 00295A40  4E 80 00 20 */	blr 
/* 80298B04 00295A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298B08 00295A48  7C 08 02 A6 */	mflr r0
/* 80298B0C 00295A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298B10 00295A50  7C 64 1B 78 */	mr r4, r3
/* 80298B14 00295A54  80 63 00 74 */	lwz r3, 0x74(r3)
/* 80298B18 00295A58  4B FF FC 79 */	bl JASBasicWaveBank_NS_incWaveTable
/* 80298B1C 00295A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298B20 00295A60  7C 08 03 A6 */	mtlr r0
/* 80298B24 00295A64  38 21 00 10 */	addi r1, r1, 0x10
/* 80298B28 00295A68  4E 80 00 20 */	blr 
/* 80298B2C 00295A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298B30 00295A70  7C 08 02 A6 */	mflr r0
/* 80298B34 00295A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298B38 00295A78  7C 64 1B 78 */	mr r4, r3
/* 80298B3C 00295A7C  80 63 00 74 */	lwz r3, 0x74(r3)
/* 80298B40 00295A80  4B FF FC FD */	bl JASBasicWaveBank_NS_decWaveTable
/* 80298B44 00295A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298B48 00295A88  7C 08 03 A6 */	mtlr r0
/* 80298B4C 00295A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80298B50 00295A90  4E 80 00 20 */	blr 

.global JASBasicWaveBank_NS_TWaveGroup_NS_getWaveID
JASBasicWaveBank_NS_TWaveGroup_NS_getWaveID:
/* 80298B54 00295A94  80 63 00 78 */	lwz r3, 0x78(r3)
/* 80298B58 00295A98  54 80 18 38 */	slwi r0, r4, 3
/* 80298B5C 00295A9C  7C 63 02 2E */	lhzx r3, r3, r0
/* 80298B60 00295AA0  4E 80 00 20 */	blr 
/* 80298B64 00295AA4  80 83 00 28 */	lwz r4, 0x28(r3)
/* 80298B68 00295AA8  80 84 00 38 */	lwz r4, 0x38(r4)
/* 80298B6C 00295AAC  28 04 00 00 */	cmplwi r4, 0
/* 80298B70 00295AB0  40 82 00 0C */	bne lbl_80298B7C
/* 80298B74 00295AB4  38 60 00 00 */	li r3, 0
/* 80298B78 00295AB8  4E 80 00 20 */	blr 
lbl_80298B7C:
/* 80298B7C 00295ABC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80298B80 00295AC0  7C 64 02 14 */	add r3, r4, r0
/* 80298B84 00295AC4  4E 80 00 20 */	blr 
/* 80298B88 00295AC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298B8C 00295ACC  7C 08 02 A6 */	mflr r0
/* 80298B90 00295AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298B94 00295AD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298B98 00295AD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80298B9C 00295ADC  41 82 00 1C */	beq lbl_80298BB8
/* 80298BA0 00295AE0  3C A0 80 3C */	lis r5, lbl_803C7780@ha
/* 80298BA4 00295AE4  38 05 77 80 */	addi r0, r5, lbl_803C7780@l
/* 80298BA8 00295AE8  90 1F 00 00 */	stw r0, 0(r31)
/* 80298BAC 00295AEC  7C 80 07 35 */	extsh. r0, r4
/* 80298BB0 00295AF0  40 81 00 08 */	ble lbl_80298BB8
/* 80298BB4 00295AF4  48 03 61 89 */	bl __dl__FPv
lbl_80298BB8:
/* 80298BB8 00295AF8  7F E3 FB 78 */	mr r3, r31
/* 80298BBC 00295AFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80298BC0 00295B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298BC4 00295B04  7C 08 03 A6 */	mtlr r0
/* 80298BC8 00295B08  38 21 00 10 */	addi r1, r1, 0x10
/* 80298BCC 00295B0C  4E 80 00 20 */	blr 
/* 80298BD0 00295B10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298BD4 00295B14  7C 08 02 A6 */	mflr r0
/* 80298BD8 00295B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298BDC 00295B1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298BE0 00295B20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80298BE4 00295B24  41 82 00 1C */	beq lbl_80298C00
/* 80298BE8 00295B28  3C A0 80 3C */	lis r5, lbl_803C7754@ha
/* 80298BEC 00295B2C  38 05 77 54 */	addi r0, r5, lbl_803C7754@l
/* 80298BF0 00295B30  90 1F 00 00 */	stw r0, 0(r31)
/* 80298BF4 00295B34  7C 80 07 35 */	extsh. r0, r4
/* 80298BF8 00295B38  40 81 00 08 */	ble lbl_80298C00
/* 80298BFC 00295B3C  48 03 61 41 */	bl __dl__FPv
lbl_80298C00:
/* 80298C00 00295B40  7F E3 FB 78 */	mr r3, r31
/* 80298C04 00295B44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80298C08 00295B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298C0C 00295B4C  7C 08 03 A6 */	mtlr r0
/* 80298C10 00295B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80298C14 00295B54  4E 80 00 20 */	blr 
.global JASBasicWaveBank_NS_TWaveHandle
JASBasicWaveBank_NS_TWaveHandle:
/* 80298C18 00295B58  3C 80 80 3C */	lis r4, lbl_803C7754@ha
/* 80298C1C 00295B5C  38 04 77 54 */	addi r0, r4, lbl_803C7754@l
/* 80298C20 00295B60  90 03 00 00 */	stw r0, 0(r3)
/* 80298C24 00295B64  3C 80 80 3C */	lis r4, lbl_803C7728@ha
/* 80298C28 00295B68  38 04 77 28 */	addi r0, r4, lbl_803C7728@l
/* 80298C2C 00295B6C  90 03 00 00 */	stw r0, 0(r3)
/* 80298C30 00295B70  38 00 00 3C */	li r0, 0x3c
/* 80298C34 00295B74  98 03 00 05 */	stb r0, 5(r3)
/* 80298C38 00295B78  38 0D 82 38 */	addi r0, r13, lbl_804507B8-_SDA_BASE_
/* 80298C3C 00295B7C  90 03 00 24 */	stw r0, 0x24(r3)
/* 80298C40 00295B80  38 00 00 00 */	li r0, 0
/* 80298C44 00295B84  90 03 00 28 */	stw r0, 0x28(r3)
/* 80298C48 00295B88  4E 80 00 20 */	blr 
.global JASBasicWaveBank_NS_TGroupWaveInfo
JASBasicWaveBank_NS_TGroupWaveInfo:
/* 80298C4C 00295B8C  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 80298C50 00295B90  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 80298C54 00295B94  B0 03 00 00 */	sth r0, 0(r3)
/* 80298C58 00295B98  38 00 FF FF */	li r0, -1
/* 80298C5C 00295B9C  90 03 00 04 */	stw r0, 4(r3)
/* 80298C60 00295BA0  4E 80 00 20 */	blr 
/* 80298C64 00295BA4  38 63 00 04 */	addi r3, r3, 4
/* 80298C68 00295BA8  4E 80 00 20 */	blr 
/* 80298C6C 00295BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298C70 00295BB0  7C 08 02 A6 */	mflr r0
/* 80298C74 00295BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298C78 00295BB8  4B FF F9 C9 */	bl JASBasicWaveBank_NS_getWaveGroup
/* 80298C7C 00295BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298C80 00295BC0  7C 08 03 A6 */	mtlr r0
/* 80298C84 00295BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80298C88 00295BC8  4E 80 00 20 */	blr 
/* 80298C8C 00295BCC  A0 63 00 26 */	lhz r3, 0x26(r3)
/* 80298C90 00295BD0  4E 80 00 20 */	blr 

