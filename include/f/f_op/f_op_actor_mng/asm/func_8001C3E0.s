/* 8001C3E0 00019320  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8001C3E4 00019324  7C 08 02 A6 */ mflr r0
/* 8001C3E8 00019328  90 01 00 44 */ stw r0, 0x44(r1)
/* 8001C3EC 0001932C  39 61 00 40 */ addi r11, r1, 0x40
/* 8001C3F0 00019330  48 34 5D DD */ bl _savegpr_25
/* 8001C3F4 00019334  7C 7B 1B 78 */ mr r27, r3
/* 8001C3F8 00019338  7C 9C 23 78 */ mr r28, r4
/* 8001C3FC 0001933C  7C B9 2B 78 */ mr r25, r5
/* 8001C400 00019340  7C DD 33 78 */ mr r29, r6
/* 8001C404 00019344  7C FA 3B 78 */ mr r26, r7
/* 8001C408 00019348  7D 1E 43 78 */ mr r30, r8
/* 8001C40C 0001934C  7D 3F 4B 78 */ mr r31, r9
/* 8001C410 00019350  80 0D 8B E0 */ lwz r0, lbl_80451160-_SDA_BASE_(r13)
/* 8001C414 00019354  90 01 00 10 */ stw r0, 0x10(r1)
/* 8001C418 00019358  A0 0D 8B E4 */ lhz r0, lbl_80451164-_SDA_BASE_(r13)
/* 8001C41C 0001935C  B0 01 00 14 */ sth r0, 0x14(r1)
/* 8001C420 00019360  2C 1C 00 FF */ cmpwi r28, 0xff
/* 8001C424 00019364  40 82 00 0C */ bne lbl_8001C430
/* 8001C428 00019368  38 60 00 00 */ li r3, 0
/* 8001C42C 0001936C  48 00 01 6C */ b lbl_8001C598
lbl_8001C430:
/* 8001C430 00019370  28 1E 00 00 */ cmplwi r30, 0
/* 8001C434 00019374  41 82 00 20 */ beq lbl_8001C454
/* 8001C438 00019378  A8 1E 00 00 */ lha r0, 0(r30)
/* 8001C43C 0001937C  B0 01 00 10 */ sth r0, 0x10(r1)
/* 8001C440 00019380  A8 1E 00 02 */ lha r0, 2(r30)
/* 8001C444 00019384  B0 01 00 12 */ sth r0, 0x12(r1)
/* 8001C448 00019388  A8 1E 00 04 */ lha r0, 4(r30)
/* 8001C44C 0001938C  B0 01 00 14 */ sth r0, 0x14(r1)
/* 8001C450 00019390  48 00 00 1C */ b lbl_8001C46C
lbl_8001C454:
/* 8001C454 00019394  C0 22 82 2C */ lfs f1, lbl_80451C2C-_SDA2_BASE_(r2)
/* 8001C458 00019398  48 24 B5 35 */ bl cM_rndFX__Ff
/* 8001C45C 0001939C  FC 00 08 1E */ fctiwz f0, f1
/* 8001C460 000193A0  D8 01 00 18 */ stfd f0, 0x18(r1)
/* 8001C464 000193A4  80 01 00 1C */ lwz r0, 0x1c(r1)
/* 8001C468 000193A8  B0 01 00 12 */ sth r0, 0x12(r1)
lbl_8001C46C:
/* 8001C46C 000193AC  38 00 00 FF */ li r0, 0xff
/* 8001C470 000193B0  B0 01 00 14 */ sth r0, 0x14(r1)
/* 8001C474 000193B4  7F 83 E3 78 */ mr r3, r28
/* 8001C478 000193B8  48 07 F3 4D */ bl check_itemno__Fi
/* 8001C47C 000193BC  57 44 C1 0E */ rlwinm r4, r26, 0x18, 4, 7
/* 8001C480 000193C0  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 8001C484 000193C4  53 20 44 2E */ rlwimi r0, r25, 8, 0x10, 0x17
/* 8001C488 000193C8  64 00 00 FF */ oris r0, r0, 0xff
/* 8001C48C 000193CC  7C 9A 03 78 */ or r26, r4, r0
/* 8001C490 000193D0  2C 1C 00 20 */ cmpwi r28, 0x20
/* 8001C494 000193D4  41 82 00 D8 */ beq lbl_8001C56C
/* 8001C498 000193D8  40 80 00 14 */ bge lbl_8001C4AC
/* 8001C49C 000193DC  2C 1C 00 1E */ cmpwi r28, 0x1e
/* 8001C4A0 000193E0  41 82 00 18 */ beq lbl_8001C4B8
/* 8001C4A4 000193E4  40 80 00 74 */ bge lbl_8001C518
/* 8001C4A8 000193E8  48 00 00 C4 */ b lbl_8001C56C
lbl_8001C4AC:
/* 8001C4AC 000193EC  2C 1C 00 23 */ cmpwi r28, 0x23
/* 8001C4B0 000193F0  40 80 00 BC */ bge lbl_8001C56C
/* 8001C4B4 000193F4  48 00 00 34 */ b lbl_8001C4E8
lbl_8001C4B8:
/* 8001C4B8 000193F8  38 00 00 00 */ li r0, 0
/* 8001C4BC 000193FC  90 01 00 08 */ stw r0, 8(r1)
/* 8001C4C0 00019400  38 60 01 3F */ li r3, 0x13f
/* 8001C4C4 00019404  38 80 FF FF */ li r4, -1
/* 8001C4C8 00019408  7F 65 DB 78 */ mr r5, r27
/* 8001C4CC 0001940C  7F A6 EB 78 */ mr r6, r29
/* 8001C4D0 00019410  7F C7 F3 78 */ mr r7, r30
/* 8001C4D4 00019414  7F E8 FB 78 */ mr r8, r31
/* 8001C4D8 00019418  39 20 FF FF */ li r9, -1
/* 8001C4DC 0001941C  39 40 00 00 */ li r10, 0
/* 8001C4E0 00019420  4B FF D9 25 */ bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8001C4E4 00019424  48 00 00 B4 */ b lbl_8001C598
lbl_8001C4E8:
/* 8001C4E8 00019428  38 00 00 00 */ li r0, 0
/* 8001C4EC 0001942C  90 01 00 08 */ stw r0, 8(r1)
/* 8001C4F0 00019430  38 60 02 1B */ li r3, 0x21b
/* 8001C4F4 00019434  7F 44 D3 78 */ mr r4, r26
/* 8001C4F8 00019438  7F 65 DB 78 */ mr r5, r27
/* 8001C4FC 0001943C  7F A6 EB 78 */ mr r6, r29
/* 8001C500 00019440  7F C7 F3 78 */ mr r7, r30
/* 8001C504 00019444  7F E8 FB 78 */ mr r8, r31
/* 8001C508 00019448  39 20 FF FF */ li r9, -1
/* 8001C50C 0001944C  39 40 00 00 */ li r10, 0
/* 8001C510 00019450  4B FF D8 F5 */ bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8001C514 00019454  48 00 00 84 */ b lbl_8001C598
lbl_8001C518:
/* 8001C518 00019458  3B C0 00 00 */ li r30, 0
/* 8001C51C 0001945C  3B 80 00 00 */ li r28, 0
lbl_8001C520:
/* 8001C520 00019460  93 81 00 08 */ stw r28, 8(r1)
/* 8001C524 00019464  38 60 02 18 */ li r3, 0x218
/* 8001C528 00019468  7F 44 D3 78 */ mr r4, r26
/* 8001C52C 0001946C  7F 65 DB 78 */ mr r5, r27
/* 8001C530 00019470  7F A6 EB 78 */ mr r6, r29
/* 8001C534 00019474  38 E1 00 10 */ addi r7, r1, 0x10
/* 8001C538 00019478  7F E8 FB 78 */ mr r8, r31
/* 8001C53C 0001947C  39 20 FF FF */ li r9, -1
/* 8001C540 00019480  39 40 00 00 */ li r10, 0
/* 8001C544 00019484  4B FF D8 C1 */ bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8001C548 00019488  C0 22 82 2C */ lfs f1, lbl_80451C2C-_SDA2_BASE_(r2)
/* 8001C54C 0001948C  48 24 B4 41 */ bl cM_rndFX__Ff
/* 8001C550 00019490  FC 00 08 1E */ fctiwz f0, f1
/* 8001C554 00019494  D8 01 00 18 */ stfd f0, 0x18(r1)
/* 8001C558 00019498  80 01 00 1C */ lwz r0, 0x1c(r1)
/* 8001C55C 0001949C  B0 01 00 12 */ sth r0, 0x12(r1)
/* 8001C560 000194A0  3B DE 00 01 */ addi r30, r30, 1
/* 8001C564 000194A4  2C 1E 00 02 */ cmpwi r30, 2
/* 8001C568 000194A8  41 80 FF B8 */ blt lbl_8001C520
lbl_8001C56C:
/* 8001C56C 000194AC  38 00 00 00 */ li r0, 0
/* 8001C570 000194B0  90 01 00 08 */ stw r0, 8(r1)
/* 8001C574 000194B4  38 60 02 18 */ li r3, 0x218
/* 8001C578 000194B8  7F 44 D3 78 */ mr r4, r26
/* 8001C57C 000194BC  7F 65 DB 78 */ mr r5, r27
/* 8001C580 000194C0  7F A6 EB 78 */ mr r6, r29
/* 8001C584 000194C4  38 E1 00 10 */ addi r7, r1, 0x10
/* 8001C588 000194C8  7F E8 FB 78 */ mr r8, r31
/* 8001C58C 000194CC  39 20 FF FF */ li r9, -1
/* 8001C590 000194D0  39 40 00 00 */ li r10, 0
/* 8001C594 000194D4  4B FF D8 71 */ bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
lbl_8001C598:
/* 8001C598 000194D8  39 61 00 40 */ addi r11, r1, 0x40
/* 8001C59C 000194DC  48 34 5C 7D */ bl _restgpr_25
/* 8001C5A0 000194E0  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8001C5A4 000194E4  7C 08 03 A6 */ mtlr r0
/* 8001C5A8 000194E8  38 21 00 40 */ addi r1, r1, 0x40
/* 8001C5AC 000194EC  4E 80 00 20 */ blr
