/* 80129B44 00126A84  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80129B48 00126A88  7C 08 02 A6 */ mflr r0
/* 80129B4C 00126A8C  90 01 00 24 */ stw r0, 0x24(r1)
/* 80129B50 00126A90  39 61 00 20 */ addi r11, r1, 0x20
/* 80129B54 00126A94  48 23 86 89 */ bl _savegpr_29
/* 80129B58 00126A98  7C 7D 1B 78 */ mr r29, r3
/* 80129B5C 00126A9C  7C 9E 23 78 */ mr r30, r4
/* 80129B60 00126AA0  3C 80 80 39 */ lis r4, lbl_8038D658@ha
/* 80129B64 00126AA4  3B E4 D6 58 */ addi r31, r4, lbl_8038D658@l
/* 80129B68 00126AA8  38 80 00 01 */ li r4, 1
/* 80129B6C 00126AAC  4B FE F2 11 */ bl daAlink_c_NS_checkDeadAction
/* 80129B70 00126AB0  2C 03 00 00 */ cmpwi r3, 0
/* 80129B74 00126AB4  41 82 00 0C */ beq lbl_80129B80
/* 80129B78 00126AB8  38 60 00 01 */ li r3, 1
/* 80129B7C 00126ABC  48 00 04 98 */ b lbl_8012A014
lbl_80129B80:
/* 80129B80 00126AC0  80 1D 05 8C */ lwz r0, 0x58c(r29)
/* 80129B84 00126AC4  54 00 06 73 */ rlwinm. r0, r0, 0, 0x19, 0x19
/* 80129B88 00126AC8  41 82 00 5C */ beq lbl_80129BE4
/* 80129B8C 00126ACC  A0 1D 2F E8 */ lhz r0, 0x2fe8(r29)
/* 80129B90 00126AD0  28 00 00 F1 */ cmplwi r0, 0xf1
/* 80129B94 00126AD4  41 82 00 44 */ beq lbl_80129BD8
/* 80129B98 00126AD8  28 00 00 EE */ cmplwi r0, 0xee
/* 80129B9C 00126ADC  41 82 00 3C */ beq lbl_80129BD8
/* 80129BA0 00126AE0  28 00 00 EF */ cmplwi r0, 0xef
/* 80129BA4 00126AE4  41 82 00 34 */ beq lbl_80129BD8
/* 80129BA8 00126AE8  C0 3D 33 AC */ lfs f1, 0x33ac(r29)
/* 80129BAC 00126AEC  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 80129BB0 00126AF0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80129BB4 00126AF4  41 81 00 0C */ bgt lbl_80129BC0
/* 80129BB8 00126AF8  28 00 00 F2 */ cmplwi r0, 0xf2
/* 80129BBC 00126AFC  41 82 00 1C */ beq lbl_80129BD8
lbl_80129BC0:
/* 80129BC0 00126B00  28 00 01 00 */ cmplwi r0, 0x100
/* 80129BC4 00126B04  41 82 00 14 */ beq lbl_80129BD8
/* 80129BC8 00126B08  28 00 01 01 */ cmplwi r0, 0x101
/* 80129BCC 00126B0C  41 82 00 0C */ beq lbl_80129BD8
/* 80129BD0 00126B10  28 00 00 F6 */ cmplwi r0, 0xf6
/* 80129BD4 00126B14  40 82 00 10 */ bne lbl_80129BE4
lbl_80129BD8:
/* 80129BD8 00126B18  7F A3 EB 78 */ mr r3, r29
/* 80129BDC 00126B1C  48 00 34 75 */ bl daAlink_c_NS_procWolfMidnaRideShockInit
/* 80129BE0 00126B20  48 00 04 34 */ b lbl_8012A014
lbl_80129BE4:
/* 80129BE4 00126B24  7F A3 EB 78 */ mr r3, r29
/* 80129BE8 00126B28  4B F8 99 19 */ bl daAlink_c_NS_checkAttentionState
/* 80129BEC 00126B2C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80129BF0 00126B30  41 82 00 18 */ beq lbl_80129C08
/* 80129BF4 00126B34  A0 1D 2F E8 */ lhz r0, 0x2fe8(r29)
/* 80129BF8 00126B38  28 00 01 20 */ cmplwi r0, 0x120
/* 80129BFC 00126B3C  41 82 00 54 */ beq lbl_80129C50
/* 80129C00 00126B40  28 00 01 1F */ cmplwi r0, 0x11f
/* 80129C04 00126B44  41 82 00 4C */ beq lbl_80129C50
lbl_80129C08:
/* 80129C08 00126B48  A0 1D 2F E8 */ lhz r0, 0x2fe8(r29)
/* 80129C0C 00126B4C  28 00 01 11 */ cmplwi r0, 0x111
/* 80129C10 00126B50  41 82 00 0C */ beq lbl_80129C1C
/* 80129C14 00126B54  2C 1E 00 00 */ cmpwi r30, 0
/* 80129C18 00126B58  41 82 00 14 */ beq lbl_80129C2C
lbl_80129C1C:
/* 80129C1C 00126B5C  C0 3D 33 AC */ lfs f1, 0x33ac(r29)
/* 80129C20 00126B60  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 80129C24 00126B64  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80129C28 00126B68  40 81 00 28 */ ble lbl_80129C50
lbl_80129C2C:
/* 80129C2C 00126B6C  7F A3 EB 78 */ mr r3, r29
/* 80129C30 00126B70  4B F8 98 D1 */ bl daAlink_c_NS_checkAttentionState
/* 80129C34 00126B74  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80129C38 00126B78  41 82 00 10 */ beq lbl_80129C48
/* 80129C3C 00126B7C  7F A3 EB 78 */ mr r3, r29
/* 80129C40 00126B80  4B FF E8 39 */ bl daAlink_c_NS_setSpeedAndAngleWolfAtn
/* 80129C44 00126B84  48 00 00 0C */ b lbl_80129C50
lbl_80129C48:
/* 80129C48 00126B88  7F A3 EB 78 */ mr r3, r29
/* 80129C4C 00126B8C  4B FF E3 05 */ bl daAlink_c_NS_setSpeedAndAngleWolf
lbl_80129C50:
/* 80129C50 00126B90  7F A3 EB 78 */ mr r3, r29
/* 80129C54 00126B94  4B F8 66 69 */ bl daAlink_c_NS_setFrontWallType
/* 80129C58 00126B98  7F A3 EB 78 */ mr r3, r29
/* 80129C5C 00126B9C  4B F8 85 91 */ bl daAlink_c_NS_checkSlope
/* 80129C60 00126BA0  2C 03 00 00 */ cmpwi r3, 0
/* 80129C64 00126BA4  41 82 00 30 */ beq lbl_80129C94
/* 80129C68 00126BA8  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 80129C6C 00126BAC  54 00 02 53 */ rlwinm. r0, r0, 0, 9, 9
/* 80129C70 00126BB0  41 82 00 14 */ beq lbl_80129C84
/* 80129C74 00126BB4  38 7F 1D 98 */ addi r3, r31, 0x1d98
/* 80129C78 00126BB8  C0 03 00 68 */ lfs f0, 0x68(r3)
/* 80129C7C 00126BBC  D0 1D 05 94 */ stfs f0, 0x594(r29)
/* 80129C80 00126BC0  48 00 00 FC */ b lbl_80129D7C
lbl_80129C84:
/* 80129C84 00126BC4  38 7F 1D 98 */ addi r3, r31, 0x1d98
/* 80129C88 00126BC8  C0 03 00 70 */ lfs f0, 0x70(r3)
/* 80129C8C 00126BCC  D0 1D 05 94 */ stfs f0, 0x594(r29)
/* 80129C90 00126BD0  48 00 00 EC */ b lbl_80129D7C
lbl_80129C94:
/* 80129C94 00126BD4  38 60 00 00 */ li r3, 0
/* 80129C98 00126BD8  A0 1D 1F BC */ lhz r0, 0x1fbc(r29)
/* 80129C9C 00126BDC  28 00 00 62 */ cmplwi r0, 0x62
/* 80129CA0 00126BE0  41 82 00 10 */ beq lbl_80129CB0
/* 80129CA4 00126BE4  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 80129CA8 00126BE8  28 00 02 A0 */ cmplwi r0, 0x2a0
/* 80129CAC 00126BEC  40 82 00 08 */ bne lbl_80129CB4
lbl_80129CB0:
/* 80129CB0 00126BF0  38 60 00 01 */ li r3, 1
lbl_80129CB4:
/* 80129CB4 00126BF4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80129CB8 00126BF8  41 82 00 10 */ beq lbl_80129CC8
/* 80129CBC 00126BFC  C0 02 93 84 */ lfs f0, lbl_80452D84-_SDA2_BASE_(r2)
/* 80129CC0 00126C00  D0 1D 05 94 */ stfs f0, 0x594(r29)
/* 80129CC4 00126C04  48 00 00 B8 */ b lbl_80129D7C
lbl_80129CC8:
/* 80129CC8 00126C08  80 1D 27 EC */ lwz r0, 0x27ec(r29)
/* 80129CCC 00126C0C  28 00 00 00 */ cmplwi r0, 0
/* 80129CD0 00126C10  41 82 00 14 */ beq lbl_80129CE4
/* 80129CD4 00126C14  38 7F 19 18 */ addi r3, r31, 0x1918
/* 80129CD8 00126C18  C0 03 00 18 */ lfs f0, 0x18(r3)
/* 80129CDC 00126C1C  D0 1D 05 94 */ stfs f0, 0x594(r29)
/* 80129CE0 00126C20  48 00 00 9C */ b lbl_80129D7C
lbl_80129CE4:
/* 80129CE4 00126C24  7F A3 EB 78 */ mr r3, r29
/* 80129CE8 00126C28  4B F8 98 19 */ bl daAlink_c_NS_checkAttentionState
/* 80129CEC 00126C2C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80129CF0 00126C30  41 82 00 14 */ beq lbl_80129D04
/* 80129CF4 00126C34  38 7F 17 D0 */ addi r3, r31, 0x17d0
/* 80129CF8 00126C38  C0 03 00 B4 */ lfs f0, 0xb4(r3)
/* 80129CFC 00126C3C  D0 1D 05 94 */ stfs f0, 0x594(r29)
/* 80129D00 00126C40  48 00 00 7C */ b lbl_80129D7C
lbl_80129D04:
/* 80129D04 00126C44  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 80129D08 00126C48  54 00 02 53 */ rlwinm. r0, r0, 0, 9, 9
/* 80129D0C 00126C4C  41 82 00 50 */ beq lbl_80129D5C
/* 80129D10 00126C50  7F A3 EB 78 */ mr r3, r29
/* 80129D14 00126C54  4B FF E2 0D */ bl daAlink_c_NS_checkWolfSlowDash
/* 80129D18 00126C58  2C 03 00 00 */ cmpwi r3, 0
/* 80129D1C 00126C5C  41 82 00 14 */ beq lbl_80129D30
/* 80129D20 00126C60  38 7F 17 D0 */ addi r3, r31, 0x17d0
/* 80129D24 00126C64  C0 03 00 E0 */ lfs f0, 0xe0(r3)
/* 80129D28 00126C68  D0 1D 05 94 */ stfs f0, 0x594(r29)
/* 80129D2C 00126C6C  48 00 00 50 */ b lbl_80129D7C
lbl_80129D30:
/* 80129D30 00126C70  88 1D 2F C7 */ lbz r0, 0x2fc7(r29)
/* 80129D34 00126C74  28 00 00 02 */ cmplwi r0, 2
/* 80129D38 00126C78  40 82 00 14 */ bne lbl_80129D4C
/* 80129D3C 00126C7C  38 7F 17 D0 */ addi r3, r31, 0x17d0
/* 80129D40 00126C80  C0 03 00 F0 */ lfs f0, 0xf0(r3)
/* 80129D44 00126C84  D0 1D 05 94 */ stfs f0, 0x594(r29)
/* 80129D48 00126C88  48 00 00 34 */ b lbl_80129D7C
lbl_80129D4C:
/* 80129D4C 00126C8C  38 7F 17 D0 */ addi r3, r31, 0x17d0
/* 80129D50 00126C90  C0 03 00 C8 */ lfs f0, 0xc8(r3)
/* 80129D54 00126C94  D0 1D 05 94 */ stfs f0, 0x594(r29)
/* 80129D58 00126C98  48 00 00 24 */ b lbl_80129D7C
lbl_80129D5C:
/* 80129D5C 00126C9C  41 82 00 14 */ beq lbl_80129D70
/* 80129D60 00126CA0  38 7F 17 D0 */ addi r3, r31, 0x17d0
/* 80129D64 00126CA4  C0 03 00 64 */ lfs f0, 0x64(r3)
/* 80129D68 00126CA8  D0 1D 05 94 */ stfs f0, 0x594(r29)
/* 80129D6C 00126CAC  48 00 00 10 */ b lbl_80129D7C
lbl_80129D70:
/* 80129D70 00126CB0  38 7F 18 D0 */ addi r3, r31, 0x18d0
/* 80129D74 00126CB4  C0 03 00 08 */ lfs f0, 8(r3)
/* 80129D78 00126CB8  D0 1D 05 94 */ stfs f0, 0x594(r29)
lbl_80129D7C:
/* 80129D7C 00126CBC  7F A3 EB 78 */ mr r3, r29
/* 80129D80 00126CC0  4B FF FD 01 */ bl daAlink_c_NS_checkWolfGroundSpecialMode
/* 80129D84 00126CC4  2C 03 00 00 */ cmpwi r3, 0
/* 80129D88 00126CC8  41 82 00 0C */ beq lbl_80129D94
/* 80129D8C 00126CCC  38 60 00 01 */ li r3, 1
/* 80129D90 00126CD0  48 00 02 84 */ b lbl_8012A014
lbl_80129D94:
/* 80129D94 00126CD4  7F A3 EB 78 */ mr r3, r29
/* 80129D98 00126CD8  38 80 00 00 */ li r4, 0
/* 80129D9C 00126CDC  48 00 D4 61 */ bl daAlink_c_NS_checkWolfLieContinue
/* 80129DA0 00126CE0  2C 03 00 00 */ cmpwi r3, 0
/* 80129DA4 00126CE4  41 82 00 14 */ beq lbl_80129DB8
/* 80129DA8 00126CE8  7F A3 EB 78 */ mr r3, r29
/* 80129DAC 00126CEC  38 80 00 00 */ li r4, 0
/* 80129DB0 00126CF0  48 00 D6 71 */ bl daAlink_c_NS_procWolfLieStartInit
/* 80129DB4 00126CF4  48 00 02 60 */ b lbl_8012A014
lbl_80129DB8:
/* 80129DB8 00126CF8  7F A3 EB 78 */ mr r3, r29
/* 80129DBC 00126CFC  4B F8 FF 71 */ bl daAlink_c_NS_checkNextActionFromButton
/* 80129DC0 00126D00  2C 03 00 00 */ cmpwi r3, 0
/* 80129DC4 00126D04  41 82 00 0C */ beq lbl_80129DD0
/* 80129DC8 00126D08  38 60 00 01 */ li r3, 1
/* 80129DCC 00126D0C  48 00 02 48 */ b lbl_8012A014
lbl_80129DD0:
/* 80129DD0 00126D10  7F A3 EB 78 */ mr r3, r29
/* 80129DD4 00126D14  38 9D 08 50 */ addi r4, r29, 0x850
/* 80129DD8 00126D18  38 BD 09 74 */ addi r5, r29, 0x974
/* 80129DDC 00126D1C  38 C0 00 00 */ li r6, 0
/* 80129DE0 00126D20  48 00 76 71 */ bl daAlink_c_NS_checkWolfRopeHit
/* 80129DE4 00126D24  7C 64 1B 79 */ or. r4, r3, r3
/* 80129DE8 00126D28  40 82 00 1C */ bne lbl_80129E04
/* 80129DEC 00126D2C  7F A3 EB 78 */ mr r3, r29
/* 80129DF0 00126D30  38 9D 09 8C */ addi r4, r29, 0x98c
/* 80129DF4 00126D34  38 BD 04 D0 */ addi r5, r29, 0x4d0
/* 80129DF8 00126D38  38 C0 00 00 */ li r6, 0
/* 80129DFC 00126D3C  48 00 76 55 */ bl daAlink_c_NS_checkWolfRopeHit
/* 80129E00 00126D40  7C 64 1B 78 */ mr r4, r3
lbl_80129E04:
/* 80129E04 00126D44  28 04 00 00 */ cmplwi r4, 0
/* 80129E08 00126D48  41 82 00 20 */ beq lbl_80129E28
/* 80129E0C 00126D4C  38 7D 28 0C */ addi r3, r29, 0x280c
/* 80129E10 00126D50  48 03 4E A9 */ bl daPy_actorKeep_c_NS_setData
/* 80129E14 00126D54  7F A3 EB 78 */ mr r3, r29
/* 80129E18 00126D58  38 80 00 00 */ li r4, 0
/* 80129E1C 00126D5C  38 A0 00 01 */ li r5, 1
/* 80129E20 00126D60  48 00 7E 55 */ bl daAlink_c_NS_procWolfRopeMoveInit
/* 80129E24 00126D64  48 00 01 F0 */ b lbl_8012A014
lbl_80129E28:
/* 80129E28 00126D68  2C 1E 00 00 */ cmpwi r30, 0
/* 80129E2C 00126D6C  41 82 00 1C */ beq lbl_80129E48
/* 80129E30 00126D70  C0 3D 33 AC */ lfs f1, 0x33ac(r29)
/* 80129E34 00126D74  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 80129E38 00126D78  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80129E3C 00126D7C  41 81 00 0C */ bgt lbl_80129E48
/* 80129E40 00126D80  38 60 00 00 */ li r3, 0
/* 80129E44 00126D84  48 00 01 D0 */ b lbl_8012A014
lbl_80129E48:
/* 80129E48 00126D88  C0 3D 33 AC */ lfs f1, 0x33ac(r29)
/* 80129E4C 00126D8C  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 80129E50 00126D90  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80129E54 00126D94  41 81 00 28 */ bgt lbl_80129E7C
/* 80129E58 00126D98  A0 1D 2F E8 */ lhz r0, 0x2fe8(r29)
/* 80129E5C 00126D9C  28 00 01 11 */ cmplwi r0, 0x111
/* 80129E60 00126DA0  40 82 00 1C */ bne lbl_80129E7C
/* 80129E64 00126DA4  7F A3 EB 78 */ mr r3, r29
/* 80129E68 00126DA8  48 00 21 41 */ bl daAlink_c_NS_checkWolfWaitSlipPolygon
/* 80129E6C 00126DAC  2C 03 00 00 */ cmpwi r3, 0
/* 80129E70 00126DB0  41 82 00 0C */ beq lbl_80129E7C
/* 80129E74 00126DB4  3B C0 00 00 */ li r30, 0
/* 80129E78 00126DB8  48 00 01 98 */ b lbl_8012A010
lbl_80129E7C:
/* 80129E7C 00126DBC  7F A3 EB 78 */ mr r3, r29
/* 80129E80 00126DC0  4B F8 96 81 */ bl daAlink_c_NS_checkAttentionState
/* 80129E84 00126DC4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80129E88 00126DC8  41 82 00 14 */ beq lbl_80129E9C
/* 80129E8C 00126DCC  7F A3 EB 78 */ mr r3, r29
/* 80129E90 00126DD0  48 00 3D 19 */ bl daAlink_c_NS_procWolfAtnActorMoveInit
/* 80129E94 00126DD4  7C 7E 1B 78 */ mr r30, r3
/* 80129E98 00126DD8  48 00 01 78 */ b lbl_8012A010
lbl_80129E9C:
/* 80129E9C 00126DDC  38 00 00 04 */ li r0, 4
/* 80129EA0 00126DE0  98 1D 2F 98 */ stb r0, 0x2f98(r29)
/* 80129EA4 00126DE4  7F A3 EB 78 */ mr r3, r29
/* 80129EA8 00126DE8  4B F8 9A 5D */ bl daAlink_c_NS_checkZeroSpeedF
/* 80129EAC 00126DEC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80129EB0 00126DF0  41 82 00 B8 */ beq lbl_80129F68
/* 80129EB4 00126DF4  7F A3 EB 78 */ mr r3, r29
/* 80129EB8 00126DF8  4B FE BD 69 */ bl daAlink_c_NS_checkEventRun
/* 80129EBC 00126DFC  2C 03 00 00 */ cmpwi r3, 0
/* 80129EC0 00126E00  40 82 00 98 */ bne lbl_80129F58
/* 80129EC4 00126E04  C0 3D 33 A8 */ lfs f1, 0x33a8(r29)
/* 80129EC8 00126E08  C0 02 95 DC */ lfs f0, lbl_80452FDC-_SDA2_BASE_(r2)
/* 80129ECC 00126E0C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80129ED0 00126E10  40 81 00 88 */ ble lbl_80129F58
/* 80129ED4 00126E14  80 7D 31 80 */ lwz r3, 0x3180(r29)
/* 80129ED8 00126E18  48 23 B1 F9 */ bl abs
/* 80129EDC 00126E1C  2C 03 50 00 */ cmpwi r3, 0x5000
/* 80129EE0 00126E20  40 80 00 78 */ bge lbl_80129F58
/* 80129EE4 00126E24  A0 1D 2F E8 */ lhz r0, 0x2fe8(r29)
/* 80129EE8 00126E28  28 00 00 F1 */ cmplwi r0, 0xf1
/* 80129EEC 00126E2C  41 82 00 0C */ beq lbl_80129EF8
/* 80129EF0 00126E30  28 00 00 F2 */ cmplwi r0, 0xf2
/* 80129EF4 00126E34  40 82 00 64 */ bne lbl_80129F58
lbl_80129EF8:
/* 80129EF8 00126E38  A8 7D 2F E2 */ lha r3, 0x2fe2(r29)
/* 80129EFC 00126E3C  A8 9D 04 DE */ lha r4, 0x4de(r29)
/* 80129F00 00126E40  48 14 6F 25 */ bl cLib_distanceAngleS__Fss
/* 80129F04 00126E44  2C 03 70 00 */ cmpwi r3, 0x7000
/* 80129F08 00126E48  40 81 00 50 */ ble lbl_80129F58
/* 80129F0C 00126E4C  80 1D 05 8C */ lwz r0, 0x58c(r29)
/* 80129F10 00126E50  54 00 02 95 */ rlwinm. r0, r0, 0, 0xa, 0xa
/* 80129F14 00126E54  41 82 00 14 */ beq lbl_80129F28
/* 80129F18 00126E58  7F A3 EB 78 */ mr r3, r29
/* 80129F1C 00126E5C  38 80 00 00 */ li r4, 0
/* 80129F20 00126E60  48 00 59 21 */ bl daAlink_c_NS_procWolfSlipTurnInit
/* 80129F24 00126E64  48 00 00 08 */ b lbl_80129F2C
lbl_80129F28:
/* 80129F28 00126E68  38 60 00 00 */ li r3, 0
lbl_80129F2C:
/* 80129F2C 00126E6C  7C 7E 1B 78 */ mr r30, r3
/* 80129F30 00126E70  2C 03 00 00 */ cmpwi r3, 0
/* 80129F34 00126E74  40 82 00 DC */ bne lbl_8012A010
/* 80129F38 00126E78  7F A3 EB 78 */ mr r3, r29
/* 80129F3C 00126E7C  4B FE BC E5 */ bl daAlink_c_NS_checkEventRun
/* 80129F40 00126E80  2C 03 00 00 */ cmpwi r3, 0
/* 80129F44 00126E84  40 82 00 CC */ bne lbl_8012A010
/* 80129F48 00126E88  7F A3 EB 78 */ mr r3, r29
/* 80129F4C 00126E8C  4B F8 B9 A1 */ bl daAlink_c_NS_checkWaitAction
/* 80129F50 00126E90  7C 7E 1B 78 */ mr r30, r3
/* 80129F54 00126E94  48 00 00 BC */ b lbl_8012A010
lbl_80129F58:
/* 80129F58 00126E98  7F A3 EB 78 */ mr r3, r29
/* 80129F5C 00126E9C  4B F8 B9 91 */ bl daAlink_c_NS_checkWaitAction
/* 80129F60 00126EA0  7C 7E 1B 78 */ mr r30, r3
/* 80129F64 00126EA4  48 00 00 AC */ b lbl_8012A010
lbl_80129F68:
/* 80129F68 00126EA8  C0 3D 33 AC */ lfs f1, 0x33ac(r29)
/* 80129F6C 00126EAC  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 80129F70 00126EB0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80129F74 00126EB4  40 81 00 90 */ ble lbl_8012A004
/* 80129F78 00126EB8  88 1D 2F A8 */ lbz r0, 0x2fa8(r29)
/* 80129F7C 00126EBC  28 00 00 08 */ cmplwi r0, 8
/* 80129F80 00126EC0  41 82 00 84 */ beq lbl_8012A004
/* 80129F84 00126EC4  80 7D 31 80 */ lwz r3, 0x3180(r29)
/* 80129F88 00126EC8  48 23 B1 49 */ bl abs
/* 80129F8C 00126ECC  2C 03 50 00 */ cmpwi r3, 0x5000
/* 80129F90 00126ED0  40 80 00 74 */ bge lbl_8012A004
/* 80129F94 00126ED4  A8 7D 2F E2 */ lha r3, 0x2fe2(r29)
/* 80129F98 00126ED8  A8 9D 04 DE */ lha r4, 0x4de(r29)
/* 80129F9C 00126EDC  48 14 6E 89 */ bl cLib_distanceAngleS__Fss
/* 80129FA0 00126EE0  2C 03 70 00 */ cmpwi r3, 0x7000
/* 80129FA4 00126EE4  40 81 00 60 */ ble lbl_8012A004
/* 80129FA8 00126EE8  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 80129FAC 00126EEC  54 00 02 53 */ rlwinm. r0, r0, 0, 9, 9
/* 80129FB0 00126EF0  41 82 00 20 */ beq lbl_80129FD0
/* 80129FB4 00126EF4  C0 3D 05 2C */ lfs f1, 0x52c(r29)
/* 80129FB8 00126EF8  C0 1D 05 94 */ lfs f0, 0x594(r29)
/* 80129FBC 00126EFC  EC 21 00 24 */ fdivs f1, f1, f0
/* 80129FC0 00126F00  38 7F 17 D0 */ addi r3, r31, 0x17d0
/* 80129FC4 00126F04  C0 03 00 A0 */ lfs f0, 0xa0(r3)
/* 80129FC8 00126F08  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80129FCC 00126F0C  41 81 00 28 */ bgt lbl_80129FF4
lbl_80129FD0:
/* 80129FD0 00126F10  28 00 00 00 */ cmplwi r0, 0
/* 80129FD4 00126F14  40 82 00 30 */ bne lbl_8012A004
/* 80129FD8 00126F18  C0 3D 05 2C */ lfs f1, 0x52c(r29)
/* 80129FDC 00126F1C  C0 1D 05 94 */ lfs f0, 0x594(r29)
/* 80129FE0 00126F20  EC 21 00 24 */ fdivs f1, f1, f0
/* 80129FE4 00126F24  38 7F 18 D0 */ addi r3, r31, 0x18d0
/* 80129FE8 00126F28  C0 03 00 38 */ lfs f0, 0x38(r3)
/* 80129FEC 00126F2C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80129FF0 00126F30  40 81 00 14 */ ble lbl_8012A004
lbl_80129FF4:
/* 80129FF4 00126F34  7F A3 EB 78 */ mr r3, r29
/* 80129FF8 00126F38  48 00 56 3D */ bl daAlink_c_NS_procWolfSlipInit
/* 80129FFC 00126F3C  7C 7E 1B 78 */ mr r30, r3
/* 8012A000 00126F40  48 00 00 10 */ b lbl_8012A010
lbl_8012A004:
/* 8012A004 00126F44  7F A3 EB 78 */ mr r3, r29
/* 8012A008 00126F48  48 00 33 79 */ bl daAlink_c_NS_procWolfMoveInit
/* 8012A00C 00126F4C  7C 7E 1B 78 */ mr r30, r3
lbl_8012A010:
/* 8012A010 00126F50  7F C3 F3 78 */ mr r3, r30
lbl_8012A014:
/* 8012A014 00126F54  39 61 00 20 */ addi r11, r1, 0x20
/* 8012A018 00126F58  48 23 82 11 */ bl _restgpr_29
/* 8012A01C 00126F5C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8012A020 00126F60  7C 08 03 A6 */ mtlr r0
/* 8012A024 00126F64  38 21 00 20 */ addi r1, r1, 0x20
/* 8012A028 00126F68  4E 80 00 20 */ blr
