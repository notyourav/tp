/* 80030BDC 0002DB1C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80030BE0 0002DB20  7C 08 02 A6 */ mflr r0
/* 80030BE4 0002DB24  90 01 00 14 */ stw r0, 0x14(r1)
/* 80030BE8 0002DB28  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80030BEC 0002DB2C  7C 7F 1B 79 */ or. r31, r3, r3
/* 80030BF0 0002DB30  41 82 00 48 */ beq lbl_80030C38
/* 80030BF4 0002DB34  3C 60 80 3C */ lis r3, lbl_803C3748@ha
/* 80030BF8 0002DB38  38 03 37 48 */ addi r0, r3, lbl_803C3748@l
/* 80030BFC 0002DB3C  90 1F 28 48 */ stw r0, 0x2848(r31)
/* 80030C00 0002DB40  34 1F 28 08 */ addic. r0, r31, 0x2808
/* 80030C04 0002DB44  41 82 00 24 */ beq lbl_80030C28
/* 80030C08 0002DB48  3C 60 80 3A */ lis r3, lbl_803A7200@ha
/* 80030C0C 0002DB4C  38 03 72 00 */ addi r0, r3, lbl_803A7200@l
/* 80030C10 0002DB50  90 1F 28 20 */ stw r0, 0x2820(r31)
/* 80030C14 0002DB54  34 1F 28 08 */ addic. r0, r31, 0x2808
/* 80030C18 0002DB58  41 82 00 10 */ beq lbl_80030C28
/* 80030C1C 0002DB5C  3C 60 80 3A */ lis r3, lbl_803A7218@ha
/* 80030C20 0002DB60  38 03 72 18 */ addi r0, r3, lbl_803A7218@l
/* 80030C24 0002DB64  90 1F 28 20 */ stw r0, 0x2820(r31)
lbl_80030C28:
/* 80030C28 0002DB68  7C 80 07 35 */ extsh. r0, r4
/* 80030C2C 0002DB6C  40 81 00 0C */ ble lbl_80030C38
/* 80030C30 0002DB70  7F E3 FB 78 */ mr r3, r31
/* 80030C34 0002DB74  48 29 E1 09 */ bl __dl__FPv
lbl_80030C38:
/* 80030C38 0002DB78  7F E3 FB 78 */ mr r3, r31
/* 80030C3C 0002DB7C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80030C40 0002DB80  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80030C44 0002DB84  7C 08 03 A6 */ mtlr r0
/* 80030C48 0002DB88  38 21 00 10 */ addi r1, r1, 0x10
/* 80030C4C 0002DB8C  4E 80 00 20 */ blr