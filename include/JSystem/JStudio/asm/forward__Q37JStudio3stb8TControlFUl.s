/* 802894B4 002863F4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802894B8 002863F8  7C 08 02 A6 */	mflr r0
/* 802894BC 002863FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 802894C0 00286400  39 61 00 60 */	addi r11, r1, 0x60
/* 802894C4 00286404  48 0D 8D 09 */	bl func_803621CC
/* 802894C8 00286408  7C 7B 1B 78 */	mr r27, r3
/* 802894CC 0028640C  7C 9C 23 78 */	mr r28, r4
/* 802894D0 00286410  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802894D4 00286414  90 03 00 54 */	stw r0, 0x54(r3)
/* 802894D8 00286418  38 7B 00 20 */	addi r3, r27, 0x20
/* 802894DC 0028641C  4B FF F7 0D */	bl forward__Q37JStudio3stb7TObjectFUl
/* 802894E0 00286420  7C 7F 1B 78 */	mr r31, r3
/* 802894E4 00286424  3B C0 00 0F */	li r30, 0xf
/* 802894E8 00286428  3B A0 00 00 */	li r29, 0
/* 802894EC 0028642C  38 1B 00 14 */	addi r0, r27, 0x14
/* 802894F0 00286430  90 01 00 24 */	stw r0, 0x24(r1)
/* 802894F4 00286434  90 01 00 20 */	stw r0, 0x20(r1)
/* 802894F8 00286438  90 01 00 34 */	stw r0, 0x34(r1)
/* 802894FC 0028643C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80289500 00286440  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 80289504 00286444  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80289508 00286448  90 61 00 18 */	stw r3, 0x18(r1)
/* 8028950C 0028644C  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80289510 00286450  90 61 00 28 */	stw r3, 0x28(r1)
/* 80289514 00286454  90 61 00 38 */	stw r3, 0x38(r1)
/* 80289518 00286458  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8028951C 0028645C  48 00 00 48 */	b lbl_80289564
lbl_80289520:
/* 80289520 00286460  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80289524 00286464  3B 23 FF F4 */	addi r25, r3, -12
/* 80289528 00286468  80 03 00 00 */	lwz r0, 0(r3)
/* 8028952C 0028646C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80289530 00286470  3B 40 00 00 */	li r26, 0
/* 80289534 00286474  7F 23 CB 78 */	mr r3, r25
/* 80289538 00286478  7F 84 E3 78 */	mr r4, r28
/* 8028953C 0028647C  4B FF F6 AD */	bl forward__Q37JStudio3stb7TObjectFUl
/* 80289540 00286480  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80289544 00286484  40 82 00 0C */	bne lbl_80289550
/* 80289548 00286488  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8028954C 0028648C  41 82 00 08 */	beq lbl_80289554
lbl_80289550:
/* 80289550 00286490  3B 40 00 01 */	li r26, 1
lbl_80289554:
/* 80289554 00286494  7F 5F D3 78 */	mr r31, r26
/* 80289558 00286498  80 19 00 30 */	lwz r0, 0x30(r25)
/* 8028955C 0028649C  7F DE 00 38 */	and r30, r30, r0
/* 80289560 002864A0  7F BD 03 78 */	or r29, r29, r0
lbl_80289564:
/* 80289564 002864A4  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80289568 002864A8  90 61 00 14 */	stw r3, 0x14(r1)
/* 8028956C 002864AC  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80289570 002864B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80289574 002864B4  90 61 00 0C */	stw r3, 0xc(r1)
/* 80289578 002864B8  90 01 00 08 */	stw r0, 8(r1)
/* 8028957C 002864BC  7C 00 18 50 */	subf r0, r0, r3
/* 80289580 002864C0  7C 00 00 34 */	cntlzw r0, r0
/* 80289584 002864C4  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80289588 002864C8  41 82 FF 98 */	beq lbl_80289520
/* 8028958C 002864CC  57 A0 80 1E */	slwi r0, r29, 0x10
/* 80289590 002864D0  7F C0 03 78 */	or r0, r30, r0
/* 80289594 002864D4  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 80289598 002864D8  7F E3 FB 78 */	mr r3, r31
/* 8028959C 002864DC  39 61 00 60 */	addi r11, r1, 0x60
/* 802895A0 002864E0  48 0D 8C 79 */	bl func_80362218
/* 802895A4 002864E4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802895A8 002864E8  7C 08 03 A6 */	mtlr r0
/* 802895AC 002864EC  38 21 00 60 */	addi r1, r1, 0x60
/* 802895B0 002864F0  4E 80 00 20 */	blr 