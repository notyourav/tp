/* 8000DBD8 0000AB18  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8000DBDC 0000AB1C  7C 08 02 A6 */ mflr r0
/* 8000DBE0 0000AB20  90 01 00 14 */ stw r0, 0x14(r1)
/* 8000DBE4 0000AB24  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8000DBE8 0000AB28  7C 7F 1B 78 */ mr r31, r3
/* 8000DBEC 0000AB2C  81 83 00 00 */ lwz r12, 0(r3)
/* 8000DBF0 0000AB30  81 8C 00 14 */ lwz r12, 0x14(r12)
/* 8000DBF4 0000AB34  7D 89 03 A6 */ mtctr r12
/* 8000DBF8 0000AB38  4E 80 04 21 */ bctrl
/* 8000DBFC 0000AB3C  7F E3 FB 78 */ mr r3, r31
/* 8000DC00 0000AB40  48 31 9D A1 */ bl J3DModel_NS_diff
/* 8000DC04 0000AB44  7F E3 FB 78 */ mr r3, r31
/* 8000DC08 0000AB48  81 9F 00 00 */ lwz r12, 0(r31)
/* 8000DC0C 0000AB4C  81 8C 00 0C */ lwz r12, 0xc(r12)
/* 8000DC10 0000AB50  7D 89 03 A6 */ mtctr r12
/* 8000DC14 0000AB54  4E 80 04 21 */ bctrl
/* 8000DC18 0000AB58  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8000DC1C 0000AB5C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8000DC20 0000AB60  7C 08 03 A6 */ mtlr r0
/* 8000DC24 0000AB64  38 21 00 10 */ addi r1, r1, 0x10
/* 8000DC28 0000AB68  4E 80 00 20 */ blr