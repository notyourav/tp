/* 8000DAA8 0000A9E8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8000DAAC 0000A9EC  7C 08 02 A6 */ mflr r0
/* 8000DAB0 0000A9F0  90 01 00 14 */ stw r0, 0x14(r1)
/* 8000DAB4 0000A9F4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8000DAB8 0000A9F8  93 C1 00 08 */ stw r30, 8(r1)
/* 8000DABC 0000A9FC  83 E3 00 04 */ lwz r31, 4(r3)
/* 8000DAC0 0000AA00  3B C0 00 00 */ li r30, 0
/* 8000DAC4 0000AA04  48 00 00 24 */ b lbl_8000DAE8
lbl_8000DAC8:
/* 8000DAC8 0000AA08  80 7F 00 60 */ lwz r3, 0x60(r31)
/* 8000DACC 0000AA0C  57 C0 13 BA */ rlwinm r0, r30, 2, 0xe, 0x1d
/* 8000DAD0 0000AA10  7C 63 00 2E */ lwzx r3, r3, r0
/* 8000DAD4 0000AA14  81 83 00 00 */ lwz r12, 0(r3)
/* 8000DAD8 0000AA18  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 8000DADC 0000AA1C  7D 89 03 A6 */ mtctr r12
/* 8000DAE0 0000AA20  4E 80 04 21 */ bctrl
/* 8000DAE4 0000AA24  3B DE 00 01 */ addi r30, r30, 1
lbl_8000DAE8:
/* 8000DAE8 0000AA28  57 C3 04 3E */ clrlwi r3, r30, 0x10
/* 8000DAEC 0000AA2C  A0 1F 00 5C */ lhz r0, 0x5c(r31)
/* 8000DAF0 0000AA30  7C 03 00 40 */ cmplw r3, r0
/* 8000DAF4 0000AA34  41 80 FF D4 */ blt lbl_8000DAC8
/* 8000DAF8 0000AA38  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8000DAFC 0000AA3C  83 C1 00 08 */ lwz r30, 8(r1)
/* 8000DB00 0000AA40  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8000DB04 0000AA44  7C 08 03 A6 */ mtlr r0
/* 8000DB08 0000AA48  38 21 00 10 */ addi r1, r1, 0x10
/* 8000DB0C 0000AA4C  4E 80 00 20 */ blr