/* 80030190 0002D0D0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80030194 0002D0D4  7C 08 02 A6 */ mflr r0
/* 80030198 0002D0D8  90 01 00 14 */ stw r0, 0x14(r1)
/* 8003019C 0002D0DC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800301A0 0002D0E0  7C 7F 1B 79 */ or. r31, r3, r3
/* 800301A4 0002D0E4  41 82 00 10 */ beq lbl_800301B4
/* 800301A8 0002D0E8  7C 80 07 35 */ extsh. r0, r4
/* 800301AC 0002D0EC  40 81 00 08 */ ble lbl_800301B4
/* 800301B0 0002D0F0  48 29 EB 8D */ bl __dl__FPv
lbl_800301B4:
/* 800301B4 0002D0F4  7F E3 FB 78 */ mr r3, r31
/* 800301B8 0002D0F8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800301BC 0002D0FC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800301C0 0002D100  7C 08 03 A6 */ mtlr r0
/* 800301C4 0002D104  38 21 00 10 */ addi r1, r1, 0x10
/* 800301C8 0002D108  4E 80 00 20 */ blr