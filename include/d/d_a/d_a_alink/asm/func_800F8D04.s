/* 800F8D04 000F5C44  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F8D08 000F5C48  7C 08 02 A6 */ mflr r0
/* 800F8D0C 000F5C4C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F8D10 000F5C50  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F8D14 000F5C54  7C 7F 1B 78 */ mr r31, r3
/* 800F8D18 000F5C58  C0 23 1F DC */ lfs f1, 0x1fdc(r3)
/* 800F8D1C 000F5C5C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800F8D20 000F5C60  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 800F8D24 000F5C64  41 82 00 24 */ beq lbl_800F8D48
/* 800F8D28 000F5C68  38 7F 04 E6 */ addi r3, r31, 0x4e6
/* 800F8D2C 000F5C6C  A8 9F 30 0C */ lha r4, 0x300c(r31)
/* 800F8D30 000F5C70  38 A0 00 05 */ li r5, 5
/* 800F8D34 000F5C74  38 C0 10 00 */ li r6, 0x1000
/* 800F8D38 000F5C78  38 E0 08 00 */ li r7, 0x800
/* 800F8D3C 000F5C7C  48 17 78 05 */ bl cLib_addCalcAngleS__FPsssss
/* 800F8D40 000F5C80  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800F8D44 000F5C84  B0 1F 04 DE */ sth r0, 0x4de(r31)
lbl_800F8D48:
/* 800F8D48 000F5C88  C0 1F 04 D0 */ lfs f0, 0x4d0(r31)
/* 800F8D4C 000F5C8C  C0 3F 37 C8 */ lfs f1, 0x37c8(r31)
/* 800F8D50 000F5C90  EC 00 08 28 */ fsubs f0, f0, f1
/* 800F8D54 000F5C94  FC 00 02 10 */ fabs f0, f0
/* 800F8D58 000F5C98  FC 00 00 18 */ frsp f0, f0
/* 800F8D5C 000F5C9C  C0 82 92 B8 */ lfs f4, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800F8D60 000F5CA0  FC 00 20 40 */ fcmpo cr0, f0, f4
/* 800F8D64 000F5CA4  40 81 00 14 */ ble lbl_800F8D78
/* 800F8D68 000F5CA8  38 7F 04 D0 */ addi r3, r31, 0x4d0
/* 800F8D6C 000F5CAC  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800F8D70 000F5CB0  C0 62 93 30 */ lfs f3, lbl_80452D30-_SDA2_BASE_(r2)
/* 800F8D74 000F5CB4  48 17 6C 09 */ bl cLib_addCalc__FPfffff
lbl_800F8D78:
/* 800F8D78 000F5CB8  C0 1F 04 D8 */ lfs f0, 0x4d8(r31)
/* 800F8D7C 000F5CBC  C0 3F 37 D0 */ lfs f1, 0x37d0(r31)
/* 800F8D80 000F5CC0  EC 00 08 28 */ fsubs f0, f0, f1
/* 800F8D84 000F5CC4  FC 00 02 10 */ fabs f0, f0
/* 800F8D88 000F5CC8  FC 00 00 18 */ frsp f0, f0
/* 800F8D8C 000F5CCC  C0 82 92 B8 */ lfs f4, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800F8D90 000F5CD0  FC 00 20 40 */ fcmpo cr0, f0, f4
/* 800F8D94 000F5CD4  40 81 00 14 */ ble lbl_800F8DA8
/* 800F8D98 000F5CD8  38 7F 04 D8 */ addi r3, r31, 0x4d8
/* 800F8D9C 000F5CDC  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800F8DA0 000F5CE0  C0 62 93 30 */ lfs f3, lbl_80452D30-_SDA2_BASE_(r2)
/* 800F8DA4 000F5CE4  48 17 6B D9 */ bl cLib_addCalc__FPfffff
lbl_800F8DA8:
/* 800F8DA8 000F5CE8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F8DAC 000F5CEC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F8DB0 000F5CF0  7C 08 03 A6 */ mtlr r0
/* 800F8DB4 000F5CF4  38 21 00 10 */ addi r1, r1, 0x10
/* 800F8DB8 000F5CF8  4E 80 00 20 */ blr
