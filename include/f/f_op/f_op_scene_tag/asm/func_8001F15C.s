/* 8001F15C 0001C09C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001F160 0001C0A0  7C 08 02 A6 */ mflr r0
/* 8001F164 0001C0A4  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001F168 0001C0A8  7C 64 1B 78 */ mr r4, r3
/* 8001F16C 0001C0AC  3C 60 80 3A */ lis r3, lbl_803A3918@ha
/* 8001F170 0001C0B0  38 63 39 18 */ addi r3, r3, lbl_803A3918@l
/* 8001F174 0001C0B4  48 24 78 71 */ bl cTg_Addition
/* 8001F178 0001C0B8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001F17C 0001C0BC  7C 08 03 A6 */ mtlr r0
/* 8001F180 0001C0C0  38 21 00 10 */ addi r1, r1, 0x10
/* 8001F184 0001C0C4  4E 80 00 20 */ blr
