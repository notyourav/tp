/* 8002FB80 0002CAC0  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8002FB84 0002CAC4  7C 08 02 A6 */ mflr r0
/* 8002FB88 0002CAC8  90 01 00 24 */ stw r0, 0x24(r1)
/* 8002FB8C 0002CACC  39 61 00 20 */ addi r11, r1, 0x20
/* 8002FB90 0002CAD0  48 33 26 49 */ bl _savegpr_28
/* 8002FB94 0002CAD4  7C 7C 1B 78 */ mr r28, r3
/* 8002FB98 0002CAD8  3C 60 80 3F */ lis r3, lbl_803F6094@ha
/* 8002FB9C 0002CADC  38 63 60 94 */ addi r3, r3, lbl_803F6094@l
/* 8002FBA0 0002CAE0  3B A3 00 20 */ addi r29, r3, 0x20
/* 8002FBA4 0002CAE4  1C 1C 04 04 */ mulli r0, r28, 0x404
/* 8002FBA8 0002CAE8  7C 7D 00 2E */ lwzx r3, r29, r0
/* 8002FBAC 0002CAEC  28 03 00 00 */ cmplwi r3, 0
/* 8002FBB0 0002CAF0  41 82 00 74 */ beq lbl_8002FC24
/* 8002FBB4 0002CAF4  88 03 00 13 */ lbz r0, 0x13(r3)
/* 8002FBB8 0002CAF8  28 00 00 40 */ cmplwi r0, 0x40
/* 8002FBBC 0002CAFC  40 80 00 68 */ bge lbl_8002FC24
/* 8002FBC0 0002CB00  4B FF F0 95 */ bl dComIfG_getNowCalcRegion
/* 8002FBC4 0002CB04  54 7E 06 3E */ clrlwi r30, r3, 0x18
/* 8002FBC8 0002CB08  28 1E 00 FF */ cmplwi r30, 0xff
/* 8002FBCC 0002CB0C  41 82 00 30 */ beq lbl_8002FBFC
/* 8002FBD0 0002CB10  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002FBD4 0002CB14  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002FBD8 0002CB18  3B E3 00 64 */ addi r31, r3, 0x64
/* 8002FBDC 0002CB1C  7F E3 FB 78 */ mr r3, r31
/* 8002FBE0 0002CB20  7F C4 F3 78 */ mr r4, r30
/* 8002FBE4 0002CB24  48 00 32 95 */ bl isRegionBit__33dSv_player_field_last_stay_info_cCFi
/* 8002FBE8 0002CB28  2C 03 00 00 */ cmpwi r3, 0
/* 8002FBEC 0002CB2C  40 82 00 10 */ bne lbl_8002FBFC
/* 8002FBF0 0002CB30  7F E3 FB 78 */ mr r3, r31
/* 8002FBF4 0002CB34  7F C4 F3 78 */ mr r4, r30
/* 8002FBF8 0002CB38  48 00 32 55 */ bl onRegionBit__33dSv_player_field_last_stay_info_cFi
lbl_8002FBFC:
/* 8002FBFC 0002CB3C  88 0D 87 E4 */ lbz r0, lbl_80450D64-_SDA_BASE_(r13)
/* 8002FC00 0002CB40  7C 00 07 74 */ extsb r0, r0
/* 8002FC04 0002CB44  1C 00 04 04 */ mulli r0, r0, 0x404
/* 8002FC08 0002CB48  7C 9D 00 2E */ lwzx r4, r29, r0
/* 8002FC0C 0002CB4C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002FC10 0002CB50  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002FC14 0002CB54  88 84 00 13 */ lbz r4, 0x13(r4)
/* 8002FC18 0002CB58  48 00 54 91 */ bl getSave2__10dSv_save_cFi
/* 8002FC1C 0002CB5C  7F 84 E3 78 */ mr r4, r28
/* 8002FC20 0002CB60  48 00 4E 85 */ bl onVisitedRoom__13dSv_memory2_cFi
lbl_8002FC24:
/* 8002FC24 0002CB64  39 61 00 20 */ addi r11, r1, 0x20
/* 8002FC28 0002CB68  48 33 25 FD */ bl _restgpr_28
/* 8002FC2C 0002CB6C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8002FC30 0002CB70  7C 08 03 A6 */ mtlr r0
/* 8002FC34 0002CB74  38 21 00 20 */ addi r1, r1, 0x20
/* 8002FC38 0002CB78  4E 80 00 20 */ blr