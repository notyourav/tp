/* 8021D36C 0021A2AC  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8021D370 0021A2B0  7C 08 02 A6 */ mflr r0
/* 8021D374 0021A2B4  90 01 00 24 */ stw r0, 0x24(r1)
/* 8021D378 0021A2B8  39 61 00 20 */ addi r11, r1, 0x20
/* 8021D37C 0021A2BC  48 14 4E 55 */ bl _savegpr_26
/* 8021D380 0021A2C0  7C 7A 1B 78 */ mr r26, r3
/* 8021D384 0021A2C4  7C BB 2B 78 */ mr r27, r5
/* 8021D388 0021A2C8  7C DC 33 78 */ mr r28, r6
/* 8021D38C 0021A2CC  7C FD 3B 78 */ mr r29, r7
/* 8021D390 0021A2D0  7D 1E 43 78 */ mr r30, r8
/* 8021D394 0021A2D4  4B FF F8 ED */ bl dMeter2Info_c_NS_getItemType
/* 8021D398 0021A2D8  7C 7F 1B 78 */ mr r31, r3
/* 8021D39C 0021A2DC  28 1B 00 00 */ cmplwi r27, 0
/* 8021D3A0 0021A2E0  41 82 00 94 */ beq lbl_8021D434
/* 8021D3A4 0021A2E4  7F 43 D3 78 */ mr r3, r26
/* 8021D3A8 0021A2E8  7F E4 FB 78 */ mr r4, r31
/* 8021D3AC 0021A2EC  7F 65 DB 78 */ mr r5, r27
/* 8021D3B0 0021A2F0  48 00 01 75 */ bl dMeter2Info_c_NS_set1stColor
/* 8021D3B4 0021A2F4  28 1C 00 00 */ cmplwi r28, 0
/* 8021D3B8 0021A2F8  41 82 00 7C */ beq lbl_8021D434
/* 8021D3BC 0021A2FC  38 1F FF E5 */ addi r0, r31, -27
/* 8021D3C0 0021A300  54 00 06 3E */ clrlwi r0, r0, 0x18
/* 8021D3C4 0021A304  28 00 00 02 */ cmplwi r0, 2
/* 8021D3C8 0021A308  40 81 00 10 */ ble lbl_8021D3D8
/* 8021D3CC 0021A30C  57 E0 06 3E */ clrlwi r0, r31, 0x18
/* 8021D3D0 0021A310  28 00 00 1E */ cmplwi r0, 0x1e
/* 8021D3D4 0021A314  40 82 00 20 */ bne lbl_8021D3F4
lbl_8021D3D8:
/* 8021D3D8 0021A318  28 1D 00 00 */ cmplwi r29, 0
/* 8021D3DC 0021A31C  40 82 00 18 */ bne lbl_8021D3F4
/* 8021D3E0 0021A320  7F 43 D3 78 */ mr r3, r26
/* 8021D3E4 0021A324  7F E4 FB 78 */ mr r4, r31
/* 8021D3E8 0021A328  7F 85 E3 78 */ mr r5, r28
/* 8021D3EC 0021A32C  48 00 03 79 */ bl dMeter2Info_c_NS_set3rdColor
/* 8021D3F0 0021A330  48 00 00 44 */ b lbl_8021D434
lbl_8021D3F4:
/* 8021D3F4 0021A334  7F 43 D3 78 */ mr r3, r26
/* 8021D3F8 0021A338  7F E4 FB 78 */ mr r4, r31
/* 8021D3FC 0021A33C  7F 85 E3 78 */ mr r5, r28
/* 8021D400 0021A340  48 00 02 45 */ bl dMeter2Info_c_NS_set2ndColor
/* 8021D404 0021A344  28 1D 00 00 */ cmplwi r29, 0
/* 8021D408 0021A348  41 82 00 2C */ beq lbl_8021D434
/* 8021D40C 0021A34C  7F 43 D3 78 */ mr r3, r26
/* 8021D410 0021A350  7F E4 FB 78 */ mr r4, r31
/* 8021D414 0021A354  7F A5 EB 78 */ mr r5, r29
/* 8021D418 0021A358  48 00 03 4D */ bl dMeter2Info_c_NS_set3rdColor
/* 8021D41C 0021A35C  28 1E 00 00 */ cmplwi r30, 0
/* 8021D420 0021A360  41 82 00 14 */ beq lbl_8021D434
/* 8021D424 0021A364  7F 43 D3 78 */ mr r3, r26
/* 8021D428 0021A368  7F E4 FB 78 */ mr r4, r31
/* 8021D42C 0021A36C  7F C5 F3 78 */ mr r5, r30
/* 8021D430 0021A370  48 00 07 35 */ bl dMeter2Info_c_NS_set4thColor
lbl_8021D434:
/* 8021D434 0021A374  39 61 00 20 */ addi r11, r1, 0x20
/* 8021D438 0021A378  48 14 4D E5 */ bl _restgpr_26
/* 8021D43C 0021A37C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8021D440 0021A380  7C 08 03 A6 */ mtlr r0
/* 8021D444 0021A384  38 21 00 20 */ addi r1, r1, 0x20
/* 8021D448 0021A388  4E 80 00 20 */ blr
