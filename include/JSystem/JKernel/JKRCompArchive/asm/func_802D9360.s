/* getExpandedResSize__14JKRCompArchiveCFPCv __ct__14JKRCompArchiveFlQ210JKRArchive15EMountDirection::getExpandedResSize( const(void const *)) */
/* missing reference */
/* 802D9360 002D62A0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802D9364 002D62A4  7C 08 02 A6 */	mflr r0
/* 802D9368 002D62A8  90 01 00 64 */	stw r0, 0x64(r1)
/* 802D936C 002D62AC  39 61 00 60 */	addi r11, r1, 0x60
/* 802D9370 002D62B0  48 08 8E 6D */	bl _savegpr_29
/* 802D9374 002D62B4  7C 7E 1B 78 */	mr r30, r3
/* 802D9378 002D62B8  7C 9D 23 78 */	mr r29, r4
/* 802D937C 002D62BC  80 03 00 50 */	lwz r0, 0x50(r3)
/* 802D9380 002D62C0  28 00 00 00 */	cmplwi r0, 0
/* 802D9384 002D62C4  40 82 00 18 */	bne lbl_802D939C
/* 802D9388 002D62C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802D938C 002D62CC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802D9390 002D62D0  7D 89 03 A6 */	mtctr r12
/* 802D9394 002D62D4  4E 80 04 21 */	bctrl
/* 802D9398 002D62D8  48 00 01 68 */	b lbl_802D9500
lbl_802D939C:
/* 802D939C 002D62DC  4B FF D3 99 */	bl findPtrResource__10JKRArchiveCFPCv
/* 802D93A0 002D62E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D93A4 002D62E4  40 82 00 0C */	bne lbl_802D93B0
/* 802D93A8 002D62E8  38 60 FF FF */	li r3, -1
/* 802D93AC 002D62EC  48 00 01 54 */	b lbl_802D9500
lbl_802D93B0:
/* 802D93B0 002D62F0  80 1F 00 04 */	lwz r0, 4(r31)
/* 802D93B4 002D62F4  54 03 46 3E */	srwi r3, r0, 0x18
/* 802D93B8 002D62F8  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 802D93BC 002D62FC  40 82 00 20 */	bne lbl_802D93DC
/* 802D93C0 002D6300  7F C3 F3 78 */	mr r3, r30
/* 802D93C4 002D6304  7F A4 EB 78 */	mr r4, r29
/* 802D93C8 002D6308  81 9E 00 00 */	lwz r12, 0(r30)
/* 802D93CC 002D630C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802D93D0 002D6310  7D 89 03 A6 */	mtctr r12
/* 802D93D4 002D6314  4E 80 04 21 */	bctrl
/* 802D93D8 002D6318  48 00 01 28 */	b lbl_802D9500
lbl_802D93DC:
/* 802D93DC 002D631C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 802D93E0 002D6320  41 82 00 28 */	beq lbl_802D9408
/* 802D93E4 002D6324  88 BD 00 07 */	lbz r5, 7(r29)
/* 802D93E8 002D6328  88 9D 00 06 */	lbz r4, 6(r29)
/* 802D93EC 002D632C  88 7D 00 04 */	lbz r3, 4(r29)
/* 802D93F0 002D6330  88 1D 00 05 */	lbz r0, 5(r29)
/* 802D93F4 002D6334  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D93F8 002D6338  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D93FC 002D633C  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D9400 002D6340  7C A3 03 78 */	or r3, r5, r0
/* 802D9404 002D6344  48 00 00 FC */	b lbl_802D9500
lbl_802D9408:
/* 802D9408 002D6348  38 01 00 2F */	addi r0, r1, 0x2f
/* 802D940C 002D634C  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 802D9410 002D6350  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 802D9414 002D6354  41 82 00 44 */	beq lbl_802D9458
/* 802D9418 002D6358  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 802D941C 002D635C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D9420 002D6360  80 1F 00 08 */	lwz r0, 8(r31)
/* 802D9424 002D6364  7C 60 1A 14 */	add r3, r0, r3
/* 802D9428 002D6368  7F A4 EB 78 */	mr r4, r29
/* 802D942C 002D636C  38 A0 00 20 */	li r5, 0x20
/* 802D9430 002D6370  38 C0 00 00 */	li r6, 0
/* 802D9434 002D6374  38 E0 00 00 */	li r7, 0
/* 802D9438 002D6378  39 00 00 00 */	li r8, 0
/* 802D943C 002D637C  39 20 FF FF */	li r9, -1
/* 802D9440 002D6380  39 40 00 00 */	li r10, 0
/* 802D9444 002D6384  4B FF 91 71 */	bl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 802D9448 002D6388  7F A3 EB 78 */	mr r3, r29
/* 802D944C 002D638C  38 80 00 20 */	li r4, 0x20
/* 802D9450 002D6390  48 06 21 31 */	bl DCInvalidateRange
/* 802D9454 002D6394  48 00 00 6C */	b lbl_802D94C0
lbl_802D9458:
/* 802D9458 002D6398  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 802D945C 002D639C  41 82 00 48 */	beq lbl_802D94A4
/* 802D9460 002D63A0  38 00 00 00 */	li r0, 0
/* 802D9464 002D63A4  90 01 00 08 */	stw r0, 8(r1)
/* 802D9468 002D63A8  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 802D946C 002D63AC  7F A4 EB 78 */	mr r4, r29
/* 802D9470 002D63B0  38 A0 00 02 */	li r5, 2
/* 802D9474 002D63B4  38 C0 00 20 */	li r6, 0x20
/* 802D9478 002D63B8  38 E0 00 00 */	li r7, 0
/* 802D947C 002D63BC  39 00 00 01 */	li r8, 1
/* 802D9480 002D63C0  81 3E 00 6C */	lwz r9, 0x6c(r30)
/* 802D9484 002D63C4  80 1F 00 08 */	lwz r0, 8(r31)
/* 802D9488 002D63C8  7D 29 02 14 */	add r9, r9, r0
/* 802D948C 002D63CC  39 40 00 00 */	li r10, 0
/* 802D9490 002D63D0  48 00 07 C5 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D9494 002D63D4  7F A3 EB 78 */	mr r3, r29
/* 802D9498 002D63D8  38 80 00 20 */	li r4, 0x20
/* 802D949C 002D63DC  48 06 20 E5 */	bl DCInvalidateRange
/* 802D94A0 002D63E0  48 00 00 20 */	b lbl_802D94C0
lbl_802D94A4:
/* 802D94A4 002D63E4  3C 60 80 3A */	lis r3, lbl_8039D220@ha
/* 802D94A8 002D63E8  38 63 D2 20 */	addi r3, r3, lbl_8039D220@l
/* 802D94AC 002D63EC  38 80 03 AF */	li r4, 0x3af
/* 802D94B0 002D63F0  38 A3 00 13 */	addi r5, r3, 0x13
/* 802D94B4 002D63F4  38 C3 00 27 */	addi r6, r3, 0x27
/* 802D94B8 002D63F8  4C C6 31 82 */	crclr 6
/* 802D94BC 002D63FC  48 00 8D 41 */	bl JUTException_NS_panic_f
lbl_802D94C0:
/* 802D94C0 002D6400  88 BD 00 07 */	lbz r5, 7(r29)
/* 802D94C4 002D6404  88 9D 00 06 */	lbz r4, 6(r29)
/* 802D94C8 002D6408  88 7D 00 04 */	lbz r3, 4(r29)
/* 802D94CC 002D640C  88 1D 00 05 */	lbz r0, 5(r29)
/* 802D94D0 002D6410  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D94D4 002D6414  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D94D8 002D6418  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D94DC 002D641C  7C BD 03 78 */	or r29, r5, r0
/* 802D94E0 002D6420  7F C3 F3 78 */	mr r3, r30
/* 802D94E4 002D6424  7F E4 FB 78 */	mr r4, r31
/* 802D94E8 002D6428  7F A5 EB 78 */	mr r5, r29
/* 802D94EC 002D642C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802D94F0 002D6430  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802D94F4 002D6434  7D 89 03 A6 */	mtctr r12
/* 802D94F8 002D6438  4E 80 04 21 */	bctrl
/* 802D94FC 002D643C  7F A3 EB 78 */	mr r3, r29
lbl_802D9500:
/* 802D9500 002D6440  39 61 00 60 */	addi r11, r1, 0x60
/* 802D9504 002D6444  48 08 8D 25 */	bl _restgpr_29
/* 802D9508 002D6448  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802D950C 002D644C  7C 08 03 A6 */	mtlr r0
/* 802D9510 002D6450  38 21 00 60 */	addi r1, r1, 0x60
/* 802D9514 002D6454  4E 80 00 20 */	blr
