/* fetchResource_subroutine__13JKRDvdArchiveFlUlUlP7JKRHeapiiPPUc __ct__13JKRDvdArchiveFlQ210JKRArchive15EMountDirection::fetchResource_subroutine(long, unsigned long, unsigned long, JKRHeap *, int, int, unsigned char **) */
/* JKRDvdArchive_NS_fetchResource_subroutine_X1_ */
/* 802D8474 002D53B4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802D8478 002D53B8  7C 08 02 A6 */	mflr r0
/* 802D847C 002D53BC  90 01 00 74 */	stw r0, 0x74(r1)
/* 802D8480 002D53C0  39 61 00 70 */	addi r11, r1, 0x70
/* 802D8484 002D53C4  48 08 9D 49 */	bl _savegpr_25
/* 802D8488 002D53C8  7C 7D 1B 78 */	mr r29, r3
/* 802D848C 002D53CC  7C 9E 23 78 */	mr r30, r4
/* 802D8490 002D53D0  7C B9 2B 78 */	mr r25, r5
/* 802D8494 002D53D4  7C DA 33 78 */	mr r26, r6
/* 802D8498 002D53D8  7D 3F 4B 78 */	mr r31, r9
/* 802D849C 002D53DC  38 19 00 1F */	addi r0, r25, 0x1f
/* 802D84A0 002D53E0  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 802D84A4 002D53E4  2C 08 00 01 */	cmpwi r8, 1
/* 802D84A8 002D53E8  41 82 01 9C */	beq lbl_802D8644
/* 802D84AC 002D53EC  40 80 00 10 */	bge lbl_802D84BC
/* 802D84B0 002D53F0  2C 08 00 00 */	cmpwi r8, 0
/* 802D84B4 002D53F4  40 80 00 14 */	bge lbl_802D84C8
/* 802D84B8 002D53F8  48 00 01 A8 */	b lbl_802D8660
lbl_802D84BC:
/* 802D84BC 002D53FC  2C 08 00 03 */	cmpwi r8, 3
/* 802D84C0 002D5400  40 80 01 A0 */	bge lbl_802D8660
/* 802D84C4 002D5404  48 00 01 28 */	b lbl_802D85EC
lbl_802D84C8:
/* 802D84C8 002D5408  2C 07 00 00 */	cmpwi r7, 0
/* 802D84CC 002D540C  41 82 00 14 */	beq lbl_802D84E0
/* 802D84D0 002D5410  41 80 01 1C */	blt lbl_802D85EC
/* 802D84D4 002D5414  2C 07 00 03 */	cmpwi r7, 3
/* 802D84D8 002D5418  40 80 01 14 */	bge lbl_802D85EC
/* 802D84DC 002D541C  48 00 00 5C */	b lbl_802D8538
lbl_802D84E0:
/* 802D84E0 002D5420  7F 63 DB 78 */	mr r3, r27
/* 802D84E4 002D5424  38 80 00 20 */	li r4, 0x20
/* 802D84E8 002D5428  7F 45 D3 78 */	mr r5, r26
/* 802D84EC 002D542C  4B FF 5F 89 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D84F0 002D5430  7C 7C 1B 78 */	mr r28, r3
/* 802D84F4 002D5434  38 00 00 00 */	li r0, 0
/* 802D84F8 002D5438  90 01 00 08 */	stw r0, 8(r1)
/* 802D84FC 002D543C  7F A3 EB 78 */	mr r3, r29
/* 802D8500 002D5440  7F 84 E3 78 */	mr r4, r28
/* 802D8504 002D5444  38 A0 00 00 */	li r5, 0
/* 802D8508 002D5448  7F 66 DB 78 */	mr r6, r27
/* 802D850C 002D544C  38 E0 00 00 */	li r7, 0
/* 802D8510 002D5450  39 00 00 01 */	li r8, 1
/* 802D8514 002D5454  7F C9 F3 78 */	mr r9, r30
/* 802D8518 002D5458  39 40 00 00 */	li r10, 0
/* 802D851C 002D545C  48 00 17 39 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D8520 002D5460  7F 83 E3 78 */	mr r3, r28
/* 802D8524 002D5464  7F 64 DB 78 */	mr r4, r27
/* 802D8528 002D5468  48 06 30 59 */	bl DCInvalidateRange
/* 802D852C 002D546C  93 9F 00 00 */	stw r28, 0(r31)
/* 802D8530 002D5470  7F 63 DB 78 */	mr r3, r27
/* 802D8534 002D5474  48 00 01 4C */	b lbl_802D8680
lbl_802D8538:
/* 802D8538 002D5478  38 01 00 2F */	addi r0, r1, 0x2f
/* 802D853C 002D547C  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 802D8540 002D5480  38 00 00 00 */	li r0, 0
/* 802D8544 002D5484  90 01 00 08 */	stw r0, 8(r1)
/* 802D8548 002D5488  7F 64 DB 78 */	mr r4, r27
/* 802D854C 002D548C  38 A0 00 02 */	li r5, 2
/* 802D8550 002D5490  38 C0 00 20 */	li r6, 0x20
/* 802D8554 002D5494  38 E0 00 00 */	li r7, 0
/* 802D8558 002D5498  39 00 00 01 */	li r8, 1
/* 802D855C 002D549C  7F C9 F3 78 */	mr r9, r30
/* 802D8560 002D54A0  39 40 00 00 */	li r10, 0
/* 802D8564 002D54A4  48 00 16 F1 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D8568 002D54A8  7F 63 DB 78 */	mr r3, r27
/* 802D856C 002D54AC  38 80 00 20 */	li r4, 0x20
/* 802D8570 002D54B0  48 06 30 11 */	bl DCInvalidateRange
/* 802D8574 002D54B4  88 BB 00 07 */	lbz r5, 7(r27)
/* 802D8578 002D54B8  88 9B 00 06 */	lbz r4, 6(r27)
/* 802D857C 002D54BC  88 7B 00 04 */	lbz r3, 4(r27)
/* 802D8580 002D54C0  88 1B 00 05 */	lbz r0, 5(r27)
/* 802D8584 002D54C4  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D8588 002D54C8  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D858C 002D54CC  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D8590 002D54D0  7C BC 03 78 */	or r28, r5, r0
/* 802D8594 002D54D4  7F 83 E3 78 */	mr r3, r28
/* 802D8598 002D54D8  38 80 00 20 */	li r4, 0x20
/* 802D859C 002D54DC  7F 45 D3 78 */	mr r5, r26
/* 802D85A0 002D54E0  4B FF 5E D5 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D85A4 002D54E4  7C 7B 1B 78 */	mr r27, r3
/* 802D85A8 002D54E8  38 00 00 00 */	li r0, 0
/* 802D85AC 002D54EC  90 01 00 08 */	stw r0, 8(r1)
/* 802D85B0 002D54F0  7F A3 EB 78 */	mr r3, r29
/* 802D85B4 002D54F4  7F 64 DB 78 */	mr r4, r27
/* 802D85B8 002D54F8  38 A0 00 01 */	li r5, 1
/* 802D85BC 002D54FC  7F 86 E3 78 */	mr r6, r28
/* 802D85C0 002D5500  38 E0 00 00 */	li r7, 0
/* 802D85C4 002D5504  39 00 00 01 */	li r8, 1
/* 802D85C8 002D5508  7F C9 F3 78 */	mr r9, r30
/* 802D85CC 002D550C  39 40 00 00 */	li r10, 0
/* 802D85D0 002D5510  48 00 16 85 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D85D4 002D5514  7F 63 DB 78 */	mr r3, r27
/* 802D85D8 002D5518  7F 84 E3 78 */	mr r4, r28
/* 802D85DC 002D551C  48 06 2F A5 */	bl DCInvalidateRange
/* 802D85E0 002D5520  93 7F 00 00 */	stw r27, 0(r31)
/* 802D85E4 002D5524  7F 83 E3 78 */	mr r3, r28
/* 802D85E8 002D5528  48 00 00 98 */	b lbl_802D8680
lbl_802D85EC:
/* 802D85EC 002D552C  7F 63 DB 78 */	mr r3, r27
/* 802D85F0 002D5530  38 80 00 20 */	li r4, 0x20
/* 802D85F4 002D5534  7F 45 D3 78 */	mr r5, r26
/* 802D85F8 002D5538  4B FF 5E 7D */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D85FC 002D553C  7C 7C 1B 78 */	mr r28, r3
/* 802D8600 002D5540  38 00 00 00 */	li r0, 0
/* 802D8604 002D5544  90 01 00 08 */	stw r0, 8(r1)
/* 802D8608 002D5548  7F A3 EB 78 */	mr r3, r29
/* 802D860C 002D554C  7F 84 E3 78 */	mr r4, r28
/* 802D8610 002D5550  38 A0 00 01 */	li r5, 1
/* 802D8614 002D5554  7F 26 CB 78 */	mr r6, r25
/* 802D8618 002D5558  38 E0 00 00 */	li r7, 0
/* 802D861C 002D555C  39 00 00 01 */	li r8, 1
/* 802D8620 002D5560  7F C9 F3 78 */	mr r9, r30
/* 802D8624 002D5564  39 40 00 00 */	li r10, 0
/* 802D8628 002D5568  48 00 16 2D */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D862C 002D556C  7F 83 E3 78 */	mr r3, r28
/* 802D8630 002D5570  7F 24 CB 78 */	mr r4, r25
/* 802D8634 002D5574  48 06 2F 4D */	bl DCInvalidateRange
/* 802D8638 002D5578  93 9F 00 00 */	stw r28, 0(r31)
/* 802D863C 002D557C  7F 63 DB 78 */	mr r3, r27
/* 802D8640 002D5580  48 00 00 40 */	b lbl_802D8680
lbl_802D8644:
/* 802D8644 002D5584  3C 60 80 3A */	lis r3, lbl_8039D1B0@ha
/* 802D8648 002D5588  38 63 D1 B0 */	addi r3, r3, lbl_8039D1B0@l
/* 802D864C 002D558C  38 80 02 F2 */	li r4, 0x2f2
/* 802D8650 002D5590  38 A3 00 12 */	addi r5, r3, 0x12
/* 802D8654 002D5594  38 C3 00 4C */	addi r6, r3, 0x4c
/* 802D8658 002D5598  4C C6 31 82 */	crclr 6
/* 802D865C 002D559C  48 00 9B A1 */	bl JUTException_NS_panic_f
lbl_802D8660:
/* 802D8660 002D55A0  3C 60 80 3A */	lis r3, lbl_8039D1B0@ha
/* 802D8664 002D55A4  38 63 D1 B0 */	addi r3, r3, lbl_8039D1B0@l
/* 802D8668 002D55A8  38 80 02 F6 */	li r4, 0x2f6
/* 802D866C 002D55AC  38 A3 00 12 */	addi r5, r3, 0x12
/* 802D8670 002D55B0  38 C3 00 3A */	addi r6, r3, 0x3a
/* 802D8674 002D55B4  4C C6 31 82 */	crclr 6
/* 802D8678 002D55B8  48 00 9B 85 */	bl JUTException_NS_panic_f
/* 802D867C 002D55BC  38 60 00 00 */	li r3, 0
lbl_802D8680:
/* 802D8680 002D55C0  39 61 00 70 */	addi r11, r1, 0x70
/* 802D8684 002D55C4  48 08 9B 95 */	bl _restgpr_25
/* 802D8688 002D55C8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802D868C 002D55CC  7C 08 03 A6 */	mtlr r0
/* 802D8690 002D55D0  38 21 00 70 */	addi r1, r1, 0x70
/* 802D8694 002D55D4  4E 80 00 20 */	blr
