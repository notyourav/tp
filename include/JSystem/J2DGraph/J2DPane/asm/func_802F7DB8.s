/* 802F7DB8 002F4CF8  94 21 FE E0 */ stwu r1, -0x120(r1)
/* 802F7DBC 002F4CFC  7C 08 02 A6 */ mflr r0
/* 802F7DC0 002F4D00  90 01 01 24 */ stw r0, 0x124(r1)
/* 802F7DC4 002F4D04  39 61 01 20 */ addi r11, r1, 0x120
/* 802F7DC8 002F4D08  48 06 A4 11 */ bl _savegpr_28
/* 802F7DCC 002F4D0C  7C 9C 23 78 */ mr r28, r4
/* 802F7DD0 002F4D10  7C BD 2B 78 */ mr r29, r5
/* 802F7DD4 002F4D14  7C DE 33 79 */ or. r30, r6, r6
/* 802F7DD8 002F4D18  38 00 00 00 */ li r0, 0
/* 802F7DDC 002F4D1C  98 01 00 08 */ stb r0, 8(r1)
/* 802F7DE0 002F4D20  40 82 00 74 */ bne lbl_802F7E54
/* 802F7DE4 002F4D24  80 0D 90 10 */ lwz r0, lbl_80451590-_SDA_BASE_(r13)
/* 802F7DE8 002F4D28  28 00 00 00 */ cmplwi r0, 0
/* 802F7DEC 002F4D2C  40 82 00 14 */ bne lbl_802F7E00
/* 802F7DF0 002F4D30  38 61 00 08 */ addi r3, r1, 8
/* 802F7DF4 002F4D34  38 C0 00 00 */ li r6, 0
/* 802F7DF8 002F4D38  4B FE 62 81 */ bl JUTResReference_NS_getResource
/* 802F7DFC 002F4D3C  48 00 00 E0 */ b lbl_802F7EDC
lbl_802F7E00:
/* 802F7E00 002F4D40  7F 83 E3 78 */ mr r3, r28
/* 802F7E04 002F4D44  81 9C 00 00 */ lwz r12, 0(r28)
/* 802F7E08 002F4D48  81 8C 00 1C */ lwz r12, 0x1c(r12)
/* 802F7E0C 002F4D4C  7D 89 03 A6 */ mtctr r12
/* 802F7E10 002F4D50  4E 80 04 21 */ bctrl
/* 802F7E14 002F4D54  7C 7F 1B 78 */ mr r31, r3
/* 802F7E18 002F4D58  38 61 00 08 */ addi r3, r1, 8
/* 802F7E1C 002F4D5C  7F 84 E3 78 */ mr r4, r28
/* 802F7E20 002F4D60  7F A5 EB 78 */ mr r5, r29
/* 802F7E24 002F4D64  38 C0 00 00 */ li r6, 0
/* 802F7E28 002F4D68  4B FE 62 51 */ bl JUTResReference_NS_getResource
/* 802F7E2C 002F4D6C  28 03 00 00 */ cmplwi r3, 0
/* 802F7E30 002F4D70  40 82 00 AC */ bne lbl_802F7EDC
/* 802F7E34 002F4D74  7F 83 E3 78 */ mr r3, r28
/* 802F7E38 002F4D78  7F E4 FB 78 */ mr r4, r31
/* 802F7E3C 002F4D7C  38 A0 00 00 */ li r5, 0
/* 802F7E40 002F4D80  4B FE 46 9D */ bl JSURandomInputStream_NS_seek
/* 802F7E44 002F4D84  80 6D 90 10 */ lwz r3, lbl_80451590-_SDA_BASE_(r13)
/* 802F7E48 002F4D88  7F 84 E3 78 */ mr r4, r28
/* 802F7E4C 002F4D8C  48 01 50 31 */ bl J2DDataManage_NS_get_X1_
/* 802F7E50 002F4D90  48 00 00 8C */ b lbl_802F7EDC
lbl_802F7E54:
/* 802F7E54 002F4D94  7F 83 E3 78 */ mr r3, r28
/* 802F7E58 002F4D98  81 9C 00 00 */ lwz r12, 0(r28)
/* 802F7E5C 002F4D9C  81 8C 00 1C */ lwz r12, 0x1c(r12)
/* 802F7E60 002F4DA0  7D 89 03 A6 */ mtctr r12
/* 802F7E64 002F4DA4  4E 80 04 21 */ bctrl
/* 802F7E68 002F4DA8  7C 7F 1B 78 */ mr r31, r3
/* 802F7E6C 002F4DAC  38 61 00 08 */ addi r3, r1, 8
/* 802F7E70 002F4DB0  7F 84 E3 78 */ mr r4, r28
/* 802F7E74 002F4DB4  7F A5 EB 78 */ mr r5, r29
/* 802F7E78 002F4DB8  7F C6 F3 78 */ mr r6, r30
/* 802F7E7C 002F4DBC  4B FE 61 FD */ bl JUTResReference_NS_getResource
/* 802F7E80 002F4DC0  28 03 00 00 */ cmplwi r3, 0
/* 802F7E84 002F4DC4  40 82 00 28 */ bne lbl_802F7EAC
/* 802F7E88 002F4DC8  7F 83 E3 78 */ mr r3, r28
/* 802F7E8C 002F4DCC  7F E4 FB 78 */ mr r4, r31
/* 802F7E90 002F4DD0  38 A0 00 00 */ li r5, 0
/* 802F7E94 002F4DD4  4B FE 46 49 */ bl JSURandomInputStream_NS_seek
/* 802F7E98 002F4DD8  38 61 00 08 */ addi r3, r1, 8
/* 802F7E9C 002F4DDC  7F 84 E3 78 */ mr r4, r28
/* 802F7EA0 002F4DE0  7F A5 EB 78 */ mr r5, r29
/* 802F7EA4 002F4DE4  38 C0 00 00 */ li r6, 0
/* 802F7EA8 002F4DE8  4B FE 61 D1 */ bl JUTResReference_NS_getResource
lbl_802F7EAC:
/* 802F7EAC 002F4DEC  28 03 00 00 */ cmplwi r3, 0
/* 802F7EB0 002F4DF0  40 82 00 2C */ bne lbl_802F7EDC
/* 802F7EB4 002F4DF4  80 0D 90 10 */ lwz r0, lbl_80451590-_SDA_BASE_(r13)
/* 802F7EB8 002F4DF8  28 00 00 00 */ cmplwi r0, 0
/* 802F7EBC 002F4DFC  41 82 00 20 */ beq lbl_802F7EDC
/* 802F7EC0 002F4E00  7F 83 E3 78 */ mr r3, r28
/* 802F7EC4 002F4E04  7F E4 FB 78 */ mr r4, r31
/* 802F7EC8 002F4E08  38 A0 00 00 */ li r5, 0
/* 802F7ECC 002F4E0C  4B FE 46 11 */ bl JSURandomInputStream_NS_seek
/* 802F7ED0 002F4E10  80 6D 90 10 */ lwz r3, lbl_80451590-_SDA_BASE_(r13)
/* 802F7ED4 002F4E14  7F 84 E3 78 */ mr r4, r28
/* 802F7ED8 002F4E18  48 01 4F A5 */ bl J2DDataManage_NS_get_X1_
lbl_802F7EDC:
/* 802F7EDC 002F4E1C  39 61 01 20 */ addi r11, r1, 0x120
/* 802F7EE0 002F4E20  48 06 A3 45 */ bl _restgpr_28
/* 802F7EE4 002F4E24  80 01 01 24 */ lwz r0, 0x124(r1)
/* 802F7EE8 002F4E28  7C 08 03 A6 */ mtlr r0
/* 802F7EEC 002F4E2C  38 21 01 20 */ addi r1, r1, 0x120
/* 802F7EF0 002F4E30  4E 80 00 20 */ blr
