/* 80130BC4 0012DB04  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 80130BC8 0012DB08  7C 08 02 A6 */ mflr r0
/* 80130BCC 0012DB0C  90 01 00 54 */ stw r0, 0x54(r1)
/* 80130BD0 0012DB10  DB E1 00 40 */ stfd f31, 0x40(r1)
/* 80130BD4 0012DB14  F3 E1 00 48 */ psq_st f31, 72(r1), 0, 0
/* 80130BD8 0012DB18  39 61 00 40 */ addi r11, r1, 0x40
/* 80130BDC 0012DB1C  48 23 15 F1 */ bl _savegpr_25
/* 80130BE0 0012DB20  7C 7F 1B 78 */ mr r31, r3
/* 80130BE4 0012DB24  3B BF 1F D0 */ addi r29, r31, 0x1fd0
/* 80130BE8 0012DB28  83 83 28 10 */ lwz r28, 0x2810(r3)
/* 80130BEC 0012DB2C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80130BF0 0012DB30  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80130BF4 0012DB34  3B C3 4E C8 */ addi r30, r3, 0x4ec8
/* 80130BF8 0012DB38  A0 03 4F A2 */ lhz r0, 0x4fa2(r3)
/* 80130BFC 0012DB3C  54 03 07 38 */ rlwinm r3, r0, 0, 0x1c, 0x1c
/* 80130C00 0012DB40  30 03 FF FF */ addic r0, r3, -1
/* 80130C04 0012DB44  7C 00 19 10 */ subfe r0, r0, r3
/* 80130C08 0012DB48  54 1B 06 3F */ clrlwi. r27, r0, 0x18
/* 80130C0C 0012DB4C  41 82 00 0C */ beq lbl_80130C18
/* 80130C10 0012DB50  38 7F 2D 84 */ addi r3, r31, 0x2d84
/* 80130C14 0012DB54  48 19 AF 45 */ bl Z2WolfHowlMgr_NS_skipCorrectDemo
lbl_80130C18:
/* 80130C18 0012DB58  7F E3 FB 78 */ mr r3, r31
/* 80130C1C 0012DB5C  80 9F 32 CC */ lwz r4, 0x32cc(r31)
/* 80130C20 0012DB60  4B FE 7B 95 */ bl daAlink_c_NS_checkEndMessage
/* 80130C24 0012DB64  2C 03 00 00 */ cmpwi r3, 0
/* 80130C28 0012DB68  40 82 00 20 */ bne lbl_80130C48
/* 80130C2C 0012DB6C  2C 1B 00 00 */ cmpwi r27, 0
/* 80130C30 0012DB70  41 82 00 4C */ beq lbl_80130C7C
/* 80130C34 0012DB74  80 1F 32 CC */ lwz r0, 0x32cc(r31)
/* 80130C38 0012DB78  28 00 05 35 */ cmplwi r0, 0x535
/* 80130C3C 0012DB7C  41 82 00 0C */ beq lbl_80130C48
/* 80130C40 0012DB80  28 00 05 32 */ cmplwi r0, 0x532
/* 80130C44 0012DB84  40 82 00 38 */ bne lbl_80130C7C
lbl_80130C48:
/* 80130C48 0012DB88  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 80130C4C 0012DB8C  2C 00 00 00 */ cmpwi r0, 0
/* 80130C50 0012DB90  40 82 00 78 */ bne lbl_80130CC8
/* 80130C54 0012DB94  7F E3 FB 78 */ mr r3, r31
/* 80130C58 0012DB98  4B FE 70 39 */ bl daAlink_c_NS_resetSpecialEvent
/* 80130C5C 0012DB9C  38 00 00 00 */ li r0, 0
/* 80130C60 0012DBA0  B0 1F 30 B2 */ sth r0, 0x30b2(r31)
/* 80130C64 0012DBA4  B0 1F 30 B0 */ sth r0, 0x30b0(r31)
/* 80130C68 0012DBA8  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80130C6C 0012DBAC  38 63 03 D0 */ addi r3, r3, 0x3d0
/* 80130C70 0012DBB0  48 18 52 65 */ bl Z2SeqMgr_NS_taktModeMuteOff
/* 80130C74 0012DBB4  38 60 00 01 */ li r3, 1
/* 80130C78 0012DBB8  48 00 06 30 */ b lbl_801312A8
lbl_80130C7C:
/* 80130C7C 0012DBBC  80 1F 32 CC */ lwz r0, 0x32cc(r31)
/* 80130C80 0012DBC0  28 00 05 35 */ cmplwi r0, 0x535
/* 80130C84 0012DBC4  41 82 00 0C */ beq lbl_80130C90
/* 80130C88 0012DBC8  28 00 05 32 */ cmplwi r0, 0x532
/* 80130C8C 0012DBCC  40 82 00 3C */ bne lbl_80130CC8
lbl_80130C90:
/* 80130C90 0012DBD0  7F E3 FB 78 */ mr r3, r31
/* 80130C94 0012DBD4  38 80 00 5F */ li r4, 0x5f
/* 80130C98 0012DBD8  4B FF 7B 75 */ bl daAlink_c_NS_checkUnderMove0BckNoArcWolf
/* 80130C9C 0012DBDC  2C 03 00 00 */ cmpwi r3, 0
/* 80130CA0 0012DBE0  41 82 00 20 */ beq lbl_80130CC0
/* 80130CA4 0012DBE4  7F A3 EB 78 */ mr r3, r29
/* 80130CA8 0012DBE8  48 02 D8 25 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 80130CAC 0012DBEC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80130CB0 0012DBF0  41 82 00 10 */ beq lbl_80130CC0
/* 80130CB4 0012DBF4  7F E3 FB 78 */ mr r3, r31
/* 80130CB8 0012DBF8  38 80 00 80 */ li r4, 0x80
/* 80130CBC 0012DBFC  4B FF 89 BD */ bl daAlink_c_NS_setSingleAnimeWolfBase
lbl_80130CC0:
/* 80130CC0 0012DC00  38 60 00 01 */ li r3, 1
/* 80130CC4 0012DC04  48 00 05 E4 */ b lbl_801312A8
lbl_80130CC8:
/* 80130CC8 0012DC08  C0 3F 34 7C */ lfs f1, 0x347c(r31)
/* 80130CCC 0012DC0C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80130CD0 0012DC10  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80130CD4 0012DC14  40 80 00 64 */ bge lbl_80130D38
/* 80130CD8 0012DC18  7F A3 EB 78 */ mr r3, r29
/* 80130CDC 0012DC1C  48 02 D7 F1 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 80130CE0 0012DC20  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80130CE4 0012DC24  41 82 05 C0 */ beq lbl_801312A4
/* 80130CE8 0012DC28  A8 1F 30 10 */ lha r0, 0x3010(r31)
/* 80130CEC 0012DC2C  2C 00 00 00 */ cmpwi r0, 0
/* 80130CF0 0012DC30  41 82 00 20 */ beq lbl_80130D10
/* 80130CF4 0012DC34  7F E3 FB 78 */ mr r3, r31
/* 80130CF8 0012DC38  38 80 00 8C */ li r4, 0x8c
/* 80130CFC 0012DC3C  4B FF 89 7D */ bl daAlink_c_NS_setSingleAnimeWolfBase
/* 80130D00 0012DC40  7F E3 FB 78 */ mr r3, r31
/* 80130D04 0012DC44  38 80 00 A2 */ li r4, 0xa2
/* 80130D08 0012DC48  4B F7 EB 99 */ bl daAlink_c_NS_setFaceBasicTexture
/* 80130D0C 0012DC4C  48 00 00 20 */ b lbl_80130D2C
lbl_80130D10:
/* 80130D10 0012DC50  7F E3 FB 78 */ mr r3, r31
/* 80130D14 0012DC54  38 80 00 0E */ li r4, 0xe
/* 80130D18 0012DC58  3C A0 80 39 */ lis r5, lbl_8038F138@ha
/* 80130D1C 0012DC5C  38 A5 F1 38 */ addi r5, r5, lbl_8038F138@l
/* 80130D20 0012DC60  C0 25 00 44 */ lfs f1, 0x44(r5)
/* 80130D24 0012DC64  C0 45 00 48 */ lfs f2, 0x48(r5)
/* 80130D28 0012DC68  4B FF 89 B1 */ bl daAlink_c_NS_setSingleAnimeWolfBaseSpeed
lbl_80130D2C:
/* 80130D2C 0012DC6C  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80130D30 0012DC70  D0 1F 34 7C */ stfs f0, 0x347c(r31)
/* 80130D34 0012DC74  48 00 05 70 */ b lbl_801312A4
lbl_80130D38:
/* 80130D38 0012DC78  C0 02 93 2C */ lfs f0, lbl_80452D2C-_SDA2_BASE_(r2)
/* 80130D3C 0012DC7C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80130D40 0012DC80  40 81 00 14 */ ble lbl_80130D54
/* 80130D44 0012DC84  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 80130D48 0012DC88  EC 01 00 28 */ fsubs f0, f1, f0
/* 80130D4C 0012DC8C  D0 1F 34 7C */ stfs f0, 0x347c(r31)
/* 80130D50 0012DC90  48 00 05 54 */ b lbl_801312A4
lbl_80130D54:
/* 80130D54 0012DC94  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 80130D58 0012DC98  38 63 D2 E8 */ addi r3, r3, m_cpadInfo@l
/* 80130D5C 0012DC9C  80 03 00 30 */ lwz r0, 0x30(r3)
/* 80130D60 0012DCA0  54 1A C7 FE */ rlwinm r26, r0, 0x18, 0x1f, 0x1f
/* 80130D64 0012DCA4  A8 1F 30 10 */ lha r0, 0x3010(r31)
/* 80130D68 0012DCA8  2C 00 00 00 */ cmpwi r0, 0
/* 80130D6C 0012DCAC  41 82 00 14 */ beq lbl_80130D80
/* 80130D70 0012DCB0  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 80130D74 0012DCB4  2C 00 00 00 */ cmpwi r0, 0
/* 80130D78 0012DCB8  41 82 00 08 */ beq lbl_80130D80
/* 80130D7C 0012DCBC  3B 40 00 00 */ li r26, 0
lbl_80130D80:
/* 80130D80 0012DCC0  7F E3 FB 78 */ mr r3, r31
/* 80130D84 0012DCC4  38 80 00 5E */ li r4, 0x5e
/* 80130D88 0012DCC8  4B FF 7A 85 */ bl daAlink_c_NS_checkUnderMove0BckNoArcWolf
/* 80130D8C 0012DCCC  2C 03 00 00 */ cmpwi r3, 0
/* 80130D90 0012DCD0  41 82 00 28 */ beq lbl_80130DB8
/* 80130D94 0012DCD4  28 1C 00 00 */ cmplwi r28, 0
/* 80130D98 0012DCD8  40 82 01 B8 */ bne lbl_80130F50
/* 80130D9C 0012DCDC  7F C3 F3 78 */ mr r3, r30
/* 80130DA0 0012DCE0  7F E4 FB 78 */ mr r4, r31
/*.global dEv_noFinishSkipProc*/
/* 80130DA4 0012DCE4  3C A0 80 04 */ lis r5, dEv_noFinishSkipProc@ha
/*.global dEv_noFinishSkipProc*/
/* 80130DA8 0012DCE8  38 A5 28 DC */ addi r5, r5, dEv_noFinishSkipProc@l
/* 80130DAC 0012DCEC  38 C0 00 00 */ li r6, 0
/* 80130DB0 0012DCF0  4B F1 1B 65 */ bl dEvt_control_c_NS_setSkipProc
/* 80130DB4 0012DCF4  48 00 01 9C */ b lbl_80130F50
lbl_80130DB8:
/* 80130DB8 0012DCF8  7F E3 FB 78 */ mr r3, r31
/* 80130DBC 0012DCFC  38 80 00 5F */ li r4, 0x5f
/* 80130DC0 0012DD00  4B FF 7A 4D */ bl daAlink_c_NS_checkUnderMove0BckNoArcWolf
/* 80130DC4 0012DD04  2C 03 00 00 */ cmpwi r3, 0
/* 80130DC8 0012DD08  41 82 00 28 */ beq lbl_80130DF0
/* 80130DCC 0012DD0C  28 1C 00 00 */ cmplwi r28, 0
/* 80130DD0 0012DD10  40 82 01 80 */ bne lbl_80130F50
/* 80130DD4 0012DD14  7F C3 F3 78 */ mr r3, r30
/* 80130DD8 0012DD18  7F E4 FB 78 */ mr r4, r31
/*.global dEv_noFinishSkipProc*/
/* 80130DDC 0012DD1C  3C A0 80 04 */ lis r5, dEv_noFinishSkipProc@ha
/*.global dEv_noFinishSkipProc*/
/* 80130DE0 0012DD20  38 A5 28 DC */ addi r5, r5, dEv_noFinishSkipProc@l
/* 80130DE4 0012DD24  38 C0 00 00 */ li r6, 0
/* 80130DE8 0012DD28  4B F1 1B 2D */ bl dEvt_control_c_NS_setSkipProc
/* 80130DEC 0012DD2C  48 00 01 64 */ b lbl_80130F50
lbl_80130DF0:
/* 80130DF0 0012DD30  57 40 06 3F */ clrlwi. r0, r26, 0x18
/* 80130DF4 0012DD34  40 82 00 10 */ bne lbl_80130E04
/* 80130DF8 0012DD38  80 1F 2E 0C */ lwz r0, 0x2e0c(r31)
/* 80130DFC 0012DD3C  28 00 00 00 */ cmplwi r0, 0
/* 80130E00 0012DD40  41 82 00 A8 */ beq lbl_80130EA8
lbl_80130E04:
/* 80130E04 0012DD44  88 1F 2E 10 */ lbz r0, 0x2e10(r31)
/* 80130E08 0012DD48  28 00 00 1E */ cmplwi r0, 0x1e
/* 80130E0C 0012DD4C  41 82 00 9C */ beq lbl_80130EA8
/* 80130E10 0012DD50  7F E3 FB 78 */ mr r3, r31
/* 80130E14 0012DD54  38 80 00 5D */ li r4, 0x5d
/* 80130E18 0012DD58  4B FF 79 F5 */ bl daAlink_c_NS_checkUnderMove0BckNoArcWolf
/* 80130E1C 0012DD5C  2C 03 00 00 */ cmpwi r3, 0
/* 80130E20 0012DD60  41 82 00 10 */ beq lbl_80130E30
/* 80130E24 0012DD64  A8 1F 30 0A */ lha r0, 0x300a(r31)
/* 80130E28 0012DD68  2C 00 00 00 */ cmpwi r0, 0
/* 80130E2C 0012DD6C  40 82 00 28 */ bne lbl_80130E54
lbl_80130E30:
/* 80130E30 0012DD70  38 00 00 01 */ li r0, 1
/* 80130E34 0012DD74  B0 1F 30 0A */ sth r0, 0x300a(r31)
/* 80130E38 0012DD78  7F E3 FB 78 */ mr r3, r31
/* 80130E3C 0012DD7C  38 80 00 5D */ li r4, 0x5d
/* 80130E40 0012DD80  3C A0 80 39 */ lis r5, lbl_8038F048@ha
/* 80130E44 0012DD84  38 A5 F0 48 */ addi r5, r5, lbl_8038F048@l
/* 80130E48 0012DD88  38 A5 00 14 */ addi r5, r5, 0x14
/* 80130E4C 0012DD8C  4B FF 89 FD */ bl daAlink_c_NS_setSingleAnimeWolfParam
/* 80130E50 0012DD90  48 00 01 00 */ b lbl_80130F50
lbl_80130E54:
/* 80130E54 0012DD94  C0 5D 00 10 */ lfs f2, 0x10(r29)
/* 80130E58 0012DD98  C0 02 97 64 */ lfs f0, lbl_80453164-_SDA2_BASE_(r2)
/* 80130E5C 0012DD9C  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 80130E60 0012DDA0  40 81 00 14 */ ble lbl_80130E74
/* 80130E64 0012DDA4  C0 22 93 94 */ lfs f1, lbl_80452D94-_SDA2_BASE_(r2)
/* 80130E68 0012DDA8  EC 02 00 28 */ fsubs f0, f2, f0
/* 80130E6C 0012DDAC  EC 01 00 2A */ fadds f0, f1, f0
/* 80130E70 0012DDB0  D0 1D 00 10 */ stfs f0, 0x10(r29)
lbl_80130E74:
/* 80130E74 0012DDB4  C0 3D 00 10 */ lfs f1, 0x10(r29)
/* 80130E78 0012DDB8  C0 02 93 94 */ lfs f0, lbl_80452D94-_SDA2_BASE_(r2)
/* 80130E7C 0012DDBC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80130E80 0012DDC0  4C 41 13 82 */ cror 2, 1, 2
/* 80130E84 0012DDC4  40 82 00 CC */ bne lbl_80130F50
/* 80130E88 0012DDC8  C0 02 97 64 */ lfs f0, lbl_80453164-_SDA2_BASE_(r2)
/* 80130E8C 0012DDCC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80130E90 0012DDD0  4C 40 13 82 */ cror 2, 0, 2
/* 80130E94 0012DDD4  40 82 00 BC */ bne lbl_80130F50
/* 80130E98 0012DDD8  80 1F 05 80 */ lwz r0, 0x580(r31)
/* 80130E9C 0012DDDC  64 00 40 00 */ oris r0, r0, 0x4000
/* 80130EA0 0012DDE0  90 1F 05 80 */ stw r0, 0x580(r31)
/* 80130EA4 0012DDE4  48 00 00 AC */ b lbl_80130F50
lbl_80130EA8:
/* 80130EA8 0012DDE8  88 1F 2E 10 */ lbz r0, 0x2e10(r31)
/* 80130EAC 0012DDEC  28 00 00 1E */ cmplwi r0, 0x1e
/* 80130EB0 0012DDF0  40 82 00 20 */ bne lbl_80130ED0
/* 80130EB4 0012DDF4  C0 02 97 64 */ lfs f0, lbl_80453164-_SDA2_BASE_(r2)
/* 80130EB8 0012DDF8  D0 1D 00 10 */ stfs f0, 0x10(r29)
/* 80130EBC 0012DDFC  80 7F 20 60 */ lwz r3, 0x2060(r31)
/* 80130EC0 0012DE00  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 80130EC4 0012DE04  38 80 00 00 */ li r4, 0
/* 80130EC8 0012DE08  38 A0 00 28 */ li r5, 0x28
/* 80130ECC 0012DE0C  4B ED E9 7D */ bl mDoExt_MtxCalcOldFrame_NS_initOldFrameMorf
lbl_80130ED0:
/* 80130ED0 0012DE10  38 00 00 00 */ li r0, 0
/* 80130ED4 0012DE14  B0 1F 30 0A */ sth r0, 0x300a(r31)
/* 80130ED8 0012DE18  48 10 76 B1 */ bl dMsgObject_c_NS_isHowlHearingMode
/* 80130EDC 0012DE1C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80130EE0 0012DE20  41 82 00 44 */ beq lbl_80130F24
/* 80130EE4 0012DE24  7F A3 EB 78 */ mr r3, r29
/* 80130EE8 0012DE28  48 02 D5 E5 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 80130EEC 0012DE2C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80130EF0 0012DE30  40 82 00 18 */ bne lbl_80130F08
/* 80130EF4 0012DE34  7F E3 FB 78 */ mr r3, r31
/* 80130EF8 0012DE38  38 80 00 0E */ li r4, 0xe
/* 80130EFC 0012DE3C  4B FF 79 11 */ bl daAlink_c_NS_checkUnderMove0BckNoArcWolf
/* 80130F00 0012DE40  2C 03 00 00 */ cmpwi r3, 0
/* 80130F04 0012DE44  41 82 00 20 */ beq lbl_80130F24
lbl_80130F08:
/* 80130F08 0012DE48  7F E3 FB 78 */ mr r3, r31
/* 80130F0C 0012DE4C  38 80 00 8C */ li r4, 0x8c
/* 80130F10 0012DE50  4B FF 87 69 */ bl daAlink_c_NS_setSingleAnimeWolfBase
/* 80130F14 0012DE54  7F E3 FB 78 */ mr r3, r31
/* 80130F18 0012DE58  38 80 00 A2 */ li r4, 0xa2
/* 80130F1C 0012DE5C  4B F7 E9 85 */ bl daAlink_c_NS_setFaceBasicTexture
/* 80130F20 0012DE60  48 00 00 30 */ b lbl_80130F50
lbl_80130F24:
/* 80130F24 0012DE64  7F A3 EB 78 */ mr r3, r29
/* 80130F28 0012DE68  48 02 D5 A5 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 80130F2C 0012DE6C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80130F30 0012DE70  41 82 00 20 */ beq lbl_80130F50
/* 80130F34 0012DE74  7F E3 FB 78 */ mr r3, r31
/* 80130F38 0012DE78  38 80 00 0E */ li r4, 0xe
/* 80130F3C 0012DE7C  3C A0 80 39 */ lis r5, lbl_8038F138@ha
/* 80130F40 0012DE80  38 A5 F1 38 */ addi r5, r5, lbl_8038F138@l
/* 80130F44 0012DE84  C0 25 00 44 */ lfs f1, 0x44(r5)
/* 80130F48 0012DE88  C0 45 00 48 */ lfs f2, 0x48(r5)
/* 80130F4C 0012DE8C  4B FF 87 8D */ bl daAlink_c_NS_setSingleAnimeWolfBaseSpeed
lbl_80130F50:
/* 80130F50 0012DE90  AB 3F 30 0E */ lha r25, 0x300e(r31)
/* 80130F54 0012DE94  3C 60 80 3E */ lis r3, m_cpadInfo@ha
/* 80130F58 0012DE98  38 63 D2 E8 */ addi r3, r3, m_cpadInfo@l
/* 80130F5C 0012DE9C  C3 E3 00 04 */ lfs f31, 4(r3)
/* 80130F60 0012DEA0  38 7F 2D 84 */ addi r3, r31, 0x2d84
/* 80130F64 0012DEA4  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80130F68 0012DEA8  FC 40 F8 90 */ fmr f2, f31
/* 80130F6C 0012DEAC  7F 44 D3 78 */ mr r4, r26
/* 80130F70 0012DEB0  FC 60 08 90 */ fmr f3, f1
/* 80130F74 0012DEB4  48 19 9F 61 */ bl Z2WolfHowlMgr_NS_startWolfHowlSound
/* 80130F78 0012DEB8  7C 60 07 74 */ extsb r0, r3
/* 80130F7C 0012DEBC  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 80130F80 0012DEC0  3B 40 00 00 */ li r26, 0
/* 80130F84 0012DEC4  A8 1F 30 0E */ lha r0, 0x300e(r31)
/* 80130F88 0012DEC8  2C 00 FF FF */ cmpwi r0, -1
/* 80130F8C 0012DECC  41 82 00 0C */ beq lbl_80130F98
/* 80130F90 0012DED0  2C 1B 00 00 */ cmpwi r27, 0
/* 80130F94 0012DED4  41 82 02 58 */ beq lbl_801311EC
lbl_80130F98:
/* 80130F98 0012DED8  7F E3 FB 78 */ mr r3, r31
/* 80130F9C 0012DEDC  38 80 00 5F */ li r4, 0x5f
/* 80130FA0 0012DEE0  4B FF 78 6D */ bl daAlink_c_NS_checkUnderMove0BckNoArcWolf
/* 80130FA4 0012DEE4  2C 03 00 00 */ cmpwi r3, 0
/* 80130FA8 0012DEE8  40 82 00 0C */ bne lbl_80130FB4
/* 80130FAC 0012DEEC  2C 1B 00 00 */ cmpwi r27, 0
/* 80130FB0 0012DEF0  41 82 01 FC */ beq lbl_801311AC
lbl_80130FB4:
/* 80130FB4 0012DEF4  7F A3 EB 78 */ mr r3, r29
/* 80130FB8 0012DEF8  48 02 D5 15 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 80130FBC 0012DEFC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80130FC0 0012DF00  40 82 00 0C */ bne lbl_80130FCC
/* 80130FC4 0012DF04  2C 1B 00 00 */ cmpwi r27, 0
/* 80130FC8 0012DF08  41 82 02 C4 */ beq lbl_8013128C
lbl_80130FCC:
/* 80130FCC 0012DF0C  A8 7F 30 08 */ lha r3, 0x3008(r31)
/* 80130FD0 0012DF10  7C 60 07 35 */ extsh. r0, r3
/* 80130FD4 0012DF14  41 80 00 24 */ blt lbl_80130FF8
/* 80130FD8 0012DF18  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80130FDC 0012DF1C  38 80 00 00 */ li r4, 0
/* 80130FE0 0012DF20  88 1F 04 E2 */ lbz r0, 0x4e2(r31)
/* 80130FE4 0012DF24  7C 05 07 74 */ extsb r5, r0
/* 80130FE8 0012DF28  A8 DF 04 E6 */ lha r6, 0x4e6(r31)
/* 80130FEC 0012DF2C  38 E0 FF FF */ li r7, -1
/* 80130FF0 0012DF30  4B EF 61 81 */ bl dStage_changeScene
/* 80130FF4 0012DF34  48 00 01 A4 */ b lbl_80131198
lbl_80130FF8:
/* 80130FF8 0012DF38  38 00 00 00 */ li r0, 0
/* 80130FFC 0012DF3C  90 01 00 08 */ stw r0, 8(r1)
/* 80131000 0012DF40  28 1C 00 00 */ cmplwi r28, 0
/* 80131004 0012DF44  40 82 00 18 */ bne lbl_8013101C
/*.global daAlink_searchWolfHowl*/
/* 80131008 0012DF48  3C 60 80 13 */ lis r3, daAlink_searchWolfHowl@ha
/*.global daAlink_searchWolfHowl*/
/* 8013100C 0012DF4C  38 63 05 80 */ addi r3, r3, daAlink_searchWolfHowl@l
/* 80131010 0012DF50  38 81 00 08 */ addi r4, r1, 8
/* 80131014 0012DF54  4B EE 87 A9 */ bl fopAcIt_Executor
/* 80131018 0012DF58  48 00 00 08 */ b lbl_80131020
lbl_8013101C:
/* 8013101C 0012DF5C  93 81 00 08 */ stw r28, 8(r1)
lbl_80131020:
/* 80131020 0012DF60  38 80 00 00 */ li r4, 0
/* 80131024 0012DF64  B0 9F 30 B2 */ sth r4, 0x30b2(r31)
/* 80131028 0012DF68  B0 9F 30 B0 */ sth r4, 0x30b0(r31)
/* 8013102C 0012DF6C  80 61 00 08 */ lwz r3, 8(r1)
/* 80131030 0012DF70  28 03 00 00 */ cmplwi r3, 0
/* 80131034 0012DF74  41 82 01 1C */ beq lbl_80131150
/* 80131038 0012DF78  80 03 04 9C */ lwz r0, 0x49c(r3)
/* 8013103C 0012DF7C  60 00 08 00 */ ori r0, r0, 0x800
/* 80131040 0012DF80  90 03 04 9C */ stw r0, 0x49c(r3)
/* 80131044 0012DF84  80 61 00 08 */ lwz r3, 8(r1)
/* 80131048 0012DF88  A8 03 00 08 */ lha r0, 8(r3)
/* 8013104C 0012DF8C  2C 00 00 F4 */ cmpwi r0, 0xf4
/* 80131050 0012DF90  40 82 00 3C */ bne lbl_8013108C
/* 80131054 0012DF94  98 83 06 E1 */ stb r4, 0x6e1(r3)
/* 80131058 0012DF98  38 00 00 02 */ li r0, 2
/* 8013105C 0012DF9C  90 03 07 40 */ stw r0, 0x740(r3)
/* 80131060 0012DFA0  90 83 07 44 */ stw r4, 0x744(r3)
/* 80131064 0012DFA4  A8 1F 30 12 */ lha r0, 0x3012(r31)
/* 80131068 0012DFA8  54 03 06 3E */ clrlwi r3, r0, 0x18
/* 8013106C 0012DFAC  83 41 00 08 */ lwz r26, 8(r1)
/* 80131070 0012DFB0  28 03 00 FF */ cmplwi r3, 0xff
/* 80131074 0012DFB4  41 82 00 FC */ beq lbl_80131170
/* 80131078 0012DFB8  88 1A 04 E2 */ lbz r0, 0x4e2(r26)
/* 8013107C 0012DFBC  7C 04 07 74 */ extsb r4, r0
/* 80131080 0012DFC0  4B F2 07 6D */ bl dPath_GetRoomPath
/* 80131084 0012DFC4  90 7A 07 6C */ stw r3, 0x76c(r26)
/* 80131088 0012DFC8  48 00 00 E8 */ b lbl_80131170
lbl_8013108C:
/* 8013108C 0012DFCC  2C 00 00 20 */ cmpwi r0, 0x20
/* 80131090 0012DFD0  40 82 00 0C */ bne lbl_8013109C
/* 80131094 0012DFD4  48 00 02 35 */ bl daObj_Sekizoa_c_NS_setWolfHowling
/* 80131098 0012DFD8  48 00 00 D8 */ b lbl_80131170
lbl_8013109C:
/* 8013109C 0012DFDC  2C 00 01 D9 */ cmpwi r0, 0x1d9
/* 801310A0 0012DFE0  40 82 00 10 */ bne lbl_801310B0
/* 801310A4 0012DFE4  38 00 00 01 */ li r0, 1
/* 801310A8 0012DFE8  98 03 06 19 */ stb r0, 0x619(r3)
/* 801310AC 0012DFEC  48 00 00 C4 */ b lbl_80131170
lbl_801310B0:
/* 801310B0 0012DFF0  2C 00 00 EE */ cmpwi r0, 0xee
/* 801310B4 0012DFF4  40 82 00 60 */ bne lbl_80131114
/* 801310B8 0012DFF8  38 9F 04 D0 */ addi r4, r31, 0x4d0
/* 801310BC 0012DFFC  39 83 18 D4 */ addi r12, r3, 0x18d4
/* 801310C0 0012E000  48 23 0F C5 */ bl func_80362084
/* 801310C4 0012E004  60 00 00 00 */ nop
/* 801310C8 0012E008  7C 7A 1B 78 */ mr r26, r3
/* 801310CC 0012E00C  2C 1A 00 01 */ cmpwi r26, 1
/* 801310D0 0012E010  41 82 00 0C */ beq lbl_801310DC
/* 801310D4 0012E014  2C 1A 00 02 */ cmpwi r26, 2
/* 801310D8 0012E018  40 82 00 20 */ bne lbl_801310F8
lbl_801310DC:
/* 801310DC 0012E01C  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 801310E0 0012E020  38 63 03 D0 */ addi r3, r3, 0x3d0
/* 801310E4 0012E024  48 18 4D F1 */ bl Z2SeqMgr_NS_taktModeMuteOff
/* 801310E8 0012E028  7F E3 FB 78 */ mr r3, r31
/* 801310EC 0012E02C  7F 44 D3 78 */ mr r4, r26
/* 801310F0 0012E030  4B FE 0F 01 */ bl daAlink_c_NS_procCoHorseCallWaitInit
/* 801310F4 0012E034  48 00 01 B4 */ b lbl_801312A8
lbl_801310F8:
/* 801310F8 0012E038  2C 1A 00 03 */ cmpwi r26, 3
/* 801310FC 0012E03C  41 82 00 74 */ beq lbl_80131170
/* 80131100 0012E040  7F E3 FB 78 */ mr r3, r31
/* 80131104 0012E044  7F 64 DB 78 */ mr r4, r27
/* 80131108 0012E048  4B FF F5 4D */ bl daAlink_c_NS_setWolfHowlNotHappen
/* 8013110C 0012E04C  38 60 00 01 */ li r3, 1
/* 80131110 0012E050  48 00 01 98 */ b lbl_801312A8
lbl_80131114:
/* 80131114 0012E054  2C 00 01 00 */ cmpwi r0, 0x100
/* 80131118 0012E058  40 82 00 58 */ bne lbl_80131170
/* 8013111C 0012E05C  A0 03 06 BE */ lhz r0, 0x6be(r3)
/* 80131120 0012E060  60 00 00 80 */ ori r0, r0, 0x80
/* 80131124 0012E064  B0 03 06 BE */ sth r0, 0x6be(r3)
/* 80131128 0012E068  A8 1F 30 12 */ lha r0, 0x3012(r31)
/* 8013112C 0012E06C  54 03 06 3E */ clrlwi r3, r0, 0x18
/* 80131130 0012E070  83 41 00 08 */ lwz r26, 8(r1)
/* 80131134 0012E074  28 03 00 FF */ cmplwi r3, 0xff
/* 80131138 0012E078  41 82 00 38 */ beq lbl_80131170
/* 8013113C 0012E07C  88 1A 04 E2 */ lbz r0, 0x4e2(r26)
/* 80131140 0012E080  7C 04 07 74 */ extsb r4, r0
/* 80131144 0012E084  4B F2 06 A9 */ bl dPath_GetRoomPath
/* 80131148 0012E088  90 7A 06 C8 */ stw r3, 0x6c8(r26)
/* 8013114C 0012E08C  48 00 00 24 */ b lbl_80131170
lbl_80131150:
/* 80131150 0012E090  A8 1F 30 10 */ lha r0, 0x3010(r31)
/* 80131154 0012E094  2C 00 00 00 */ cmpwi r0, 0
/* 80131158 0012E098  40 82 00 18 */ bne lbl_80131170
/* 8013115C 0012E09C  7F E3 FB 78 */ mr r3, r31
/* 80131160 0012E0A0  7F 64 DB 78 */ mr r4, r27
/* 80131164 0012E0A4  4B FF F4 F1 */ bl daAlink_c_NS_setWolfHowlNotHappen
/* 80131168 0012E0A8  38 60 00 01 */ li r3, 1
/* 8013116C 0012E0AC  48 00 01 3C */ b lbl_801312A8
lbl_80131170:
/* 80131170 0012E0B0  28 1C 00 00 */ cmplwi r28, 0
/* 80131174 0012E0B4  40 82 00 10 */ bne lbl_80131184
/* 80131178 0012E0B8  7F E3 FB 78 */ mr r3, r31
/* 8013117C 0012E0BC  4B FE 6B 15 */ bl daAlink_c_NS_resetSpecialEvent
/* 80131180 0012E0C0  48 00 00 0C */ b lbl_8013118C
lbl_80131184:
/* 80131184 0012E0C4  7F E3 FB 78 */ mr r3, r31
/* 80131188 0012E0C8  4B FE 6B 71 */ bl daAlink_c_NS_endDemoMode
lbl_8013118C:
/* 8013118C 0012E0CC  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80131190 0012E0D0  38 63 03 D0 */ addi r3, r3, 0x3d0
/* 80131194 0012E0D4  48 18 4D 41 */ bl Z2SeqMgr_NS_taktModeMuteOff
lbl_80131198:
/* 80131198 0012E0D8  7F E3 FB 78 */ mr r3, r31
/* 8013119C 0012E0DC  38 80 00 02 */ li r4, 2
/* 801311A0 0012E0E0  4B FF BA 45 */ bl daAlink_c_NS_procWolfServiceWaitInit
/* 801311A4 0012E0E4  38 60 00 01 */ li r3, 1
/* 801311A8 0012E0E8  48 00 01 00 */ b lbl_801312A8
lbl_801311AC:
/* 801311AC 0012E0EC  2C 19 FF FF */ cmpwi r25, -1
/* 801311B0 0012E0F0  41 82 00 24 */ beq lbl_801311D4
/* 801311B4 0012E0F4  7F E3 FB 78 */ mr r3, r31
/* 801311B8 0012E0F8  38 80 00 5F */ li r4, 0x5f
/* 801311BC 0012E0FC  4B FF 84 BD */ bl daAlink_c_NS_setSingleAnimeWolfBase
/* 801311C0 0012E100  28 1C 00 00 */ cmplwi r28, 0
/* 801311C4 0012E104  41 82 00 C8 */ beq lbl_8013128C
/* 801311C8 0012E108  38 00 00 02 */ li r0, 2
/* 801311CC 0012E10C  98 1C 0E 1C */ stb r0, 0xe1c(r28)
/* 801311D0 0012E110  48 00 00 BC */ b lbl_8013128C
lbl_801311D4:
/* 801311D4 0012E114  C0 02 97 6C */ lfs f0, lbl_8045316C-_SDA2_BASE_(r2)
/* 801311D8 0012E118  EC 00 07 F2 */ fmuls f0, f0, f31
/* 801311DC 0012E11C  FC 00 00 1E */ fctiwz f0, f0
/* 801311E0 0012E120  D8 01 00 10 */ stfd f0, 0x10(r1)
/* 801311E4 0012E124  83 41 00 14 */ lwz r26, 0x14(r1)
/* 801311E8 0012E128  48 00 00 A4 */ b lbl_8013128C
lbl_801311EC:
/* 801311EC 0012E12C  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 801311F0 0012E130  2C 00 00 00 */ cmpwi r0, 0
/* 801311F4 0012E134  40 82 00 98 */ bne lbl_8013128C
/* 801311F8 0012E138  38 00 00 01 */ li r0, 1
/* 801311FC 0012E13C  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 80131200 0012E140  48 10 71 21 */ bl dMsgObject_c_NS_onMsgSend
/* 80131204 0012E144  7F E3 FB 78 */ mr r3, r31
/* 80131208 0012E148  38 80 00 5E */ li r4, 0x5e
/* 8013120C 0012E14C  4B FF 84 6D */ bl daAlink_c_NS_setSingleAnimeWolfBase
/* 80131210 0012E150  38 00 00 1B */ li r0, 0x1b
/* 80131214 0012E154  B0 1F 1F DA */ sth r0, 0x1fda(r31)
/* 80131218 0012E158  38 00 00 02 */ li r0, 2
/* 8013121C 0012E15C  98 1F 1F D4 */ stb r0, 0x1fd4(r31)
/* 80131220 0012E160  7F E3 FB 78 */ mr r3, r31
/* 80131224 0012E164  38 80 00 A1 */ li r4, 0xa1
/* 80131228 0012E168  4B F7 E6 79 */ bl daAlink_c_NS_setFaceBasicTexture
/* 8013122C 0012E16C  28 1C 00 00 */ cmplwi r28, 0
/* 80131230 0012E170  41 82 00 44 */ beq lbl_80131274
/* 80131234 0012E174  80 1C 04 9C */ lwz r0, 0x49c(r28)
/* 80131238 0012E178  60 00 08 00 */ ori r0, r0, 0x800
/* 8013123C 0012E17C  90 1C 04 9C */ stw r0, 0x49c(r28)
/* 80131240 0012E180  38 00 00 01 */ li r0, 1
/* 80131244 0012E184  98 1C 0E 1C */ stb r0, 0xe1c(r28)
/* 80131248 0012E188  7F C3 F3 78 */ mr r3, r30
/* 8013124C 0012E18C  4B F1 12 1D */ bl dEvt_control_c_NS_reset
/* 80131250 0012E190  28 1F 00 00 */ cmplwi r31, 0
/* 80131254 0012E194  41 82 00 0C */ beq lbl_80131260
/* 80131258 0012E198  83 7F 00 04 */ lwz r27, 4(r31)
/* 8013125C 0012E19C  48 00 00 08 */ b lbl_80131264
lbl_80131260:
/* 80131260 0012E1A0  3B 60 FF FF */ li r27, -1
lbl_80131264:
/* 80131264 0012E1A4  48 05 03 DD */ bl dCam_getBody
/* 80131268 0012E1A8  7F 64 DB 78 */ mr r4, r27
/* 8013126C 0012E1AC  4B F5 79 51 */ bl dCamera_c_NS_EndEventCamera
/* 80131270 0012E1B0  48 00 00 1C */ b lbl_8013128C
lbl_80131274:
/* 80131274 0012E1B4  7F C3 F3 78 */ mr r3, r30
/* 80131278 0012E1B8  7F E4 FB 78 */ mr r4, r31
/*.global dEv_noFinishSkipProc*/
/* 8013127C 0012E1BC  3C A0 80 04 */ lis r5, dEv_noFinishSkipProc@ha
/*.global dEv_noFinishSkipProc*/
/* 80131280 0012E1C0  38 A5 28 DC */ addi r5, r5, dEv_noFinishSkipProc@l
/* 80131284 0012E1C4  38 C0 00 00 */ li r6, 0
/* 80131288 0012E1C8  4B F1 16 8D */ bl dEvt_control_c_NS_setSkipProc
lbl_8013128C:
/* 8013128C 0012E1CC  38 7F 30 B2 */ addi r3, r31, 0x30b2
/* 80131290 0012E1D0  7F 44 D3 78 */ mr r4, r26
/* 80131294 0012E1D4  38 A0 00 05 */ li r5, 5
/* 80131298 0012E1D8  38 C0 08 00 */ li r6, 0x800
/* 8013129C 0012E1DC  38 E0 01 00 */ li r7, 0x100
/* 801312A0 0012E1E0  48 13 F2 A1 */ bl cLib_addCalcAngleS
lbl_801312A4:
/* 801312A4 0012E1E4  38 60 00 01 */ li r3, 1
lbl_801312A8:
/* 801312A8 0012E1E8  E3 E1 00 48 */ psq_l f31, 72(r1), 0, 0
/* 801312AC 0012E1EC  CB E1 00 40 */ lfd f31, 0x40(r1)
/* 801312B0 0012E1F0  39 61 00 40 */ addi r11, r1, 0x40
/* 801312B4 0012E1F4  48 23 0F 65 */ bl _restgpr_25
/* 801312B8 0012E1F8  80 01 00 54 */ lwz r0, 0x54(r1)
/* 801312BC 0012E1FC  7C 08 03 A6 */ mtlr r0
/* 801312C0 0012E200  38 21 00 50 */ addi r1, r1, 0x50
/* 801312C4 0012E204  4E 80 00 20 */ blr
