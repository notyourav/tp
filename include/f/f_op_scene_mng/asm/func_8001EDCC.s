/* 8001EDCC 0001BD0C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001EDD0 0001BD10  7C 08 02 A6 */ mflr r0
/* 8001EDD4 0001BD14  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001EDD8 0001BD18  7C 66 1B 78 */ mr r6, r3
/* 8001EDDC 0001BD1C  7C 85 23 78 */ mr r5, r4
/* 8001EDE0 0001BD20  80 6D 80 38 */ lwz r3, lbl_804505B8-_SDA_BASE_(r13)
/* 8001EDE4 0001BD24  3C 03 00 01 */ addis r0, r3, 1
/* 8001EDE8 0001BD28  28 00 FF FF */ cmplwi r0, 0xffff
/* 8001EDEC 0001BD2C  40 82 00 0C */ bne lbl_8001EDF8
/* 8001EDF0 0001BD30  38 60 00 00 */ li r3, 0
/* 8001EDF4 0001BD34  48 00 00 0C */ b lbl_8001EE00
lbl_8001EDF8:
/* 8001EDF8 0001BD38  7C C4 33 78 */ mr r4, r6
/* 8001EDFC 0001BD3C  48 00 03 01 */ bl fopScnRq_ReRequest
lbl_8001EE00:
/* 8001EE00 0001BD40  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001EE04 0001BD44  7C 08 03 A6 */ mtlr r0
/* 8001EE08 0001BD48  38 21 00 10 */ addi r1, r1, 0x10
/* 8001EE0C 0001BD4C  4E 80 00 20 */ blr
