/* 8010D38C 0010A2CC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8010D390 0010A2D0  7C 08 02 A6 */ mflr r0
/* 8010D394 0010A2D4  90 01 00 14 */ stw r0, 0x14(r1)
/* 8010D398 0010A2D8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8010D39C 0010A2DC  93 C1 00 08 */ stw r30, 8(r1)
/* 8010D3A0 0010A2E0  7C 7F 1B 78 */ mr r31, r3
/* 8010D3A4 0010A2E4  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8010D3A8 0010A2E8  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 8010D3AC 0010A2EC  3B C4 5D 7C */ addi r30, r4, 0x5d7c
/* 8010D3B0 0010A2F0  80 03 31 7C */ lwz r0, 0x317c(r3)
/* 8010D3B4 0010A2F4  1C 00 00 38 */ mulli r0, r0, 0x38
/* 8010D3B8 0010A2F8  7C 1E 00 2E */ lwzx r0, r30, r0
/* 8010D3BC 0010A2FC  54 00 06 31 */ rlwinm. r0, r0, 0, 0x18, 0x18
/* 8010D3C0 0010A300  41 82 00 A4 */ beq lbl_8010D464
/* 8010D3C4 0010A304  38 80 00 01 */ li r4, 1
/* 8010D3C8 0010A308  4B FC 18 11 */ bl daAlink_c_NS_checkSubjectEnd
/* 8010D3CC 0010A30C  2C 03 00 00 */ cmpwi r3, 0
/* 8010D3D0 0010A310  41 82 00 30 */ beq lbl_8010D400
/* 8010D3D4 0010A314  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010D3D8 0010A318  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010D3DC 0010A31C  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 8010D3E0 0010A320  54 00 04 E2 */ rlwinm r0, r0, 0, 0x13, 0x11
/* 8010D3E4 0010A324  90 03 5F 18 */ stw r0, 0x5f18(r3)
/* 8010D3E8 0010A328  38 00 00 00 */ li r0, 0
/* 8010D3EC 0010A32C  B0 1F 05 9C */ sth r0, 0x59c(r31)
/* 8010D3F0 0010A330  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 8010D3F4 0010A334  54 00 00 C0 */ rlwinm r0, r0, 0, 3, 0
/* 8010D3F8 0010A338  90 1F 31 A0 */ stw r0, 0x31a0(r31)
/* 8010D3FC 0010A33C  48 00 00 C0 */ b lbl_8010D4BC
lbl_8010D400:
/* 8010D400 0010A340  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010D404 0010A344  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010D408 0010A348  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 8010D40C 0010A34C  54 00 04 A5 */ rlwinm. r0, r0, 0, 0x12, 0x12
/* 8010D410 0010A350  41 82 00 AC */ beq lbl_8010D4BC
/* 8010D414 0010A354  AB DF 04 E6 */ lha r30, 0x4e6(r31)
/* 8010D418 0010A358  A8 1F 31 0C */ lha r0, 0x310c(r31)
/* 8010D41C 0010A35C  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
/* 8010D420 0010A360  7F E3 FB 78 */ mr r3, r31
/* 8010D424 0010A364  4B FC 14 7D */ bl daAlink_c_NS_setBodyAngleToCamera
/* 8010D428 0010A368  B3 DF 04 E6 */ sth r30, 0x4e6(r31)
/* 8010D42C 0010A36C  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 8010D430 0010A370  A8 1F 31 0C */ lha r0, 0x310c(r31)
/* 8010D434 0010A374  7C 03 00 50 */ subf r0, r3, r0
/* 8010D438 0010A378  7C 00 07 34 */ extsh r0, r0
/* 8010D43C 0010A37C  2C 00 40 00 */ cmpwi r0, 0x4000
/* 8010D440 0010A380  40 81 00 10 */ ble lbl_8010D450
/* 8010D444 0010A384  38 03 40 00 */ addi r0, r3, 0x4000
/* 8010D448 0010A388  B0 1F 31 0C */ sth r0, 0x310c(r31)
/* 8010D44C 0010A38C  48 00 00 70 */ b lbl_8010D4BC
lbl_8010D450:
/* 8010D450 0010A390  2C 00 C0 00 */ cmpwi r0, -16384
/* 8010D454 0010A394  40 80 00 68 */ bge lbl_8010D4BC
/* 8010D458 0010A398  38 03 C0 00 */ addi r0, r3, -16384
/* 8010D45C 0010A39C  B0 1F 31 0C */ sth r0, 0x310c(r31)
/* 8010D460 0010A3A0  48 00 00 5C */ b lbl_8010D4BC
lbl_8010D464:
/* 8010D464 0010A3A4  48 07 41 DD */ bl dCam_getBody
/* 8010D468 0010A3A8  38 80 00 04 */ li r4, 4
/* 8010D46C 0010A3AC  48 05 40 89 */ bl dCamera_c_NS_ChangeModeOK
/* 8010D470 0010A3B0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8010D474 0010A3B4  41 82 00 48 */ beq lbl_8010D4BC
/* 8010D478 0010A3B8  80 1F 05 80 */ lwz r0, 0x580(r31)
/* 8010D47C 0010A3BC  64 00 04 00 */ oris r0, r0, 0x400
/* 8010D480 0010A3C0  90 1F 05 80 */ stw r0, 0x580(r31)
/* 8010D484 0010A3C4  80 1F 31 7C */ lwz r0, 0x317c(r31)
/* 8010D488 0010A3C8  1C 00 00 38 */ mulli r0, r0, 0x38
/* 8010D48C 0010A3CC  7C 1E 00 2E */ lwzx r0, r30, r0
/* 8010D490 0010A3D0  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 8010D494 0010A3D4  41 82 00 28 */ beq lbl_8010D4BC
/* 8010D498 0010A3D8  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 8010D49C 0010A3DC  B0 1F 31 0C */ sth r0, 0x310c(r31)
/* 8010D4A0 0010A3E0  38 00 00 00 */ li r0, 0
/* 8010D4A4 0010A3E4  B0 1F 31 0A */ sth r0, 0x310a(r31)
/* 8010D4A8 0010A3E8  7F E3 FB 78 */ mr r3, r31
/* 8010D4AC 0010A3EC  4B FC 16 49 */ bl daAlink_c_NS_setSubjectMode
/* 8010D4B0 0010A3F0  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 8010D4B4 0010A3F4  64 00 60 00 */ oris r0, r0, 0x6000
/* 8010D4B8 0010A3F8  90 1F 31 A0 */ stw r0, 0x31a0(r31)
lbl_8010D4BC:
/* 8010D4BC 0010A3FC  7F E3 FB 78 */ mr r3, r31
/* 8010D4C0 0010A400  4B FF E5 AD */ bl daAlink_c_NS_commonHookshotWallWait
/* 8010D4C4 0010A404  2C 03 00 00 */ cmpwi r3, 0
/* 8010D4C8 0010A408  41 82 00 0C */ beq lbl_8010D4D4
/* 8010D4CC 0010A40C  38 60 00 01 */ li r3, 1
/* 8010D4D0 0010A410  48 00 01 0C */ b lbl_8010D5DC
lbl_8010D4D4:
/* 8010D4D4 0010A414  7F E3 FB 78 */ mr r3, r31
/* 8010D4D8 0010A418  38 80 00 01 */ li r4, 1
/* 8010D4DC 0010A41C  4B FA 5D 8D */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 8010D4E0 0010A420  88 1F 2F 8D */ lbz r0, 0x2f8d(r31)
/* 8010D4E4 0010A424  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8010D4E8 0010A428  41 82 00 18 */ beq lbl_8010D500
/* 8010D4EC 0010A42C  7F E3 FB 78 */ mr r3, r31
/* 8010D4F0 0010A430  38 80 00 01 */ li r4, 1
/* 8010D4F4 0010A434  C0 22 93 3C */ lfs f1, lbl_80452D3C-_SDA2_BASE_(r2)
/* 8010D4F8 0010A438  4B FB 95 51 */ bl daAlink_c_NS_procFallInit
/* 8010D4FC 0010A43C  48 00 00 E0 */ b lbl_8010D5DC
lbl_8010D500:
/* 8010D500 0010A440  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 8010D504 0010A444  2C 00 00 00 */ cmpwi r0, 0
/* 8010D508 0010A448  40 82 00 A4 */ bne lbl_8010D5AC
/* 8010D50C 0010A44C  7F E3 FB 78 */ mr r3, r31
/* 8010D510 0010A450  38 80 00 47 */ li r4, 0x47
/* 8010D514 0010A454  4B FB 2C 51 */ bl daAlink_c_NS_checkSetItemTrigger
/* 8010D518 0010A458  2C 03 00 00 */ cmpwi r3, 0
/* 8010D51C 0010A45C  41 82 00 10 */ beq lbl_8010D52C
/* 8010D520 0010A460  38 00 00 01 */ li r0, 1
/* 8010D524 0010A464  B0 1F 30 12 */ sth r0, 0x3012(r31)
/* 8010D528 0010A468  48 00 00 28 */ b lbl_8010D550
lbl_8010D52C:
/* 8010D52C 0010A46C  A8 1F 30 12 */ lha r0, 0x3012(r31)
/* 8010D530 0010A470  2C 00 00 00 */ cmpwi r0, 0
/* 8010D534 0010A474  41 82 00 1C */ beq lbl_8010D550
/* 8010D538 0010A478  7F E3 FB 78 */ mr r3, r31
/* 8010D53C 0010A47C  4B FA 50 C9 */ bl itemButton__9daAlink_cFv
/* 8010D540 0010A480  2C 03 00 00 */ cmpwi r3, 0
/* 8010D544 0010A484  40 82 00 0C */ bne lbl_8010D550
/* 8010D548 0010A488  38 00 00 00 */ li r0, 0
/* 8010D54C 0010A48C  B0 1F 30 12 */ sth r0, 0x3012(r31)
lbl_8010D550:
/* 8010D550 0010A490  3B DF 1F D0 */ addi r30, r31, 0x1fd0
/* 8010D554 0010A494  7F C3 F3 78 */ mr r3, r30
/* 8010D558 0010A498  48 05 0F 75 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 8010D55C 0010A49C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8010D560 0010A4A0  40 82 00 38 */ bne lbl_8010D598
/* 8010D564 0010A4A4  C0 3F 33 AC */ lfs f1, 0x33ac(r31)
/* 8010D568 0010A4A8  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 8010D56C 0010A4AC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010D570 0010A4B0  41 81 00 10 */ bgt lbl_8010D580
/* 8010D574 0010A4B4  A8 1F 30 12 */ lha r0, 0x3012(r31)
/* 8010D578 0010A4B8  2C 00 00 00 */ cmpwi r0, 0
/* 8010D57C 0010A4BC  41 82 00 5C */ beq lbl_8010D5D8
lbl_8010D580:
/* 8010D580 0010A4C0  C0 3E 00 10 */ lfs f1, 0x10(r30)
/* 8010D584 0010A4C4  3C 60 80 39 */ lis r3, lbl_8038E9C0@ha
/* 8010D588 0010A4C8  38 63 E9 C0 */ addi r3, r3, lbl_8038E9C0@l
/* 8010D58C 0010A4CC  C0 03 00 38 */ lfs f0, 0x38(r3)
/* 8010D590 0010A4D0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8010D594 0010A4D4  40 81 00 44 */ ble lbl_8010D5D8
lbl_8010D598:
/* 8010D598 0010A4D8  7F E3 FB 78 */ mr r3, r31
/* 8010D59C 0010A4DC  4B FF DD C1 */ bl daAlink_c_NS_setHookshotWallWaitAnime
/* 8010D5A0 0010A4E0  38 00 00 01 */ li r0, 1
/* 8010D5A4 0010A4E4  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8010D5A8 0010A4E8  48 00 00 30 */ b lbl_8010D5D8
lbl_8010D5AC:
/* 8010D5AC 0010A4EC  7F E3 FB 78 */ mr r3, r31
/* 8010D5B0 0010A4F0  38 80 00 47 */ li r4, 0x47
/* 8010D5B4 0010A4F4  4B FB 2B B1 */ bl daAlink_c_NS_checkSetItemTrigger
/* 8010D5B8 0010A4F8  2C 03 00 00 */ cmpwi r3, 0
/* 8010D5BC 0010A4FC  40 82 00 10 */ bne lbl_8010D5CC
/* 8010D5C0 0010A500  A8 1F 30 12 */ lha r0, 0x3012(r31)
/* 8010D5C4 0010A504  2C 00 00 00 */ cmpwi r0, 0
/* 8010D5C8 0010A508  41 82 00 10 */ beq lbl_8010D5D8
lbl_8010D5CC:
/* 8010D5CC 0010A50C  7F E3 FB 78 */ mr r3, r31
/* 8010D5D0 0010A510  48 00 00 25 */ bl daAlink_c_NS_procHookshotWallShootInit
/* 8010D5D4 0010A514  48 00 00 08 */ b lbl_8010D5DC
lbl_8010D5D8:
/* 8010D5D8 0010A518  38 60 00 01 */ li r3, 1
lbl_8010D5DC:
/* 8010D5DC 0010A51C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8010D5E0 0010A520  83 C1 00 08 */ lwz r30, 8(r1)
/* 8010D5E4 0010A524  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8010D5E8 0010A528  7C 08 03 A6 */ mtlr r0
/* 8010D5EC 0010A52C  38 21 00 10 */ addi r1, r1, 0x10
/* 8010D5F0 0010A530  4E 80 00 20 */ blr
