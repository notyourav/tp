/* 8002FEF8 0002CE38  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002FEFC 0002CE3C  7C 08 02 A6 */ mflr r0
/* 8002FF00 0002CE40  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002FF04 0002CE44  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8002FF08 0002CE48  7C 7F 1B 79 */ or. r31, r3, r3
/* 8002FF0C 0002CE4C  41 82 00 1C */ beq lbl_8002FF28
/* 8002FF10 0002CE50  3C A0 80 3B */ lis r5, lbl_803AB630@ha
/* 8002FF14 0002CE54  38 05 B6 30 */ addi r0, r5, lbl_803AB630@l
/* 8002FF18 0002CE58  90 1F 00 10 */ stw r0, 0x10(r31)
/* 8002FF1C 0002CE5C  7C 80 07 35 */ extsh. r0, r4
/* 8002FF20 0002CE60  40 81 00 08 */ ble lbl_8002FF28
/* 8002FF24 0002CE64  48 29 EE 19 */ bl __dl__FPv
lbl_8002FF28:
/* 8002FF28 0002CE68  7F E3 FB 78 */ mr r3, r31
/* 8002FF2C 0002CE6C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8002FF30 0002CE70  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002FF34 0002CE74  7C 08 03 A6 */ mtlr r0
/* 8002FF38 0002CE78  38 21 00 10 */ addi r1, r1, 0x10
/* 8002FF3C 0002CE7C  4E 80 00 20 */ blr
