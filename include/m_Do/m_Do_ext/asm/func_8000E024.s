/* 8000E024 0000AF64  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8000E028 0000AF68  7C 08 02 A6 */ mflr r0
/* 8000E02C 0000AF6C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8000E030 0000AF70  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8000E034 0000AF74  7C 7F 1B 79 */ or. r31, r3, r3
/* 8000E038 0000AF78  41 82 00 10 */ beq lbl_8000E048
/* 8000E03C 0000AF7C  7C 80 07 35 */ extsh. r0, r4
/* 8000E040 0000AF80  40 81 00 08 */ ble lbl_8000E048
/* 8000E044 0000AF84  48 2C 0C F9 */ bl __dl__FPv
lbl_8000E048:
/* 8000E048 0000AF88  7F E3 FB 78 */ mr r3, r31
/* 8000E04C 0000AF8C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8000E050 0000AF90  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8000E054 0000AF94  7C 08 03 A6 */ mtlr r0
/* 8000E058 0000AF98  38 21 00 10 */ addi r1, r1, 0x10
/* 8000E05C 0000AF9C  4E 80 00 20 */ blr