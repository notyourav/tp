/* 800DB5B0 000D84F0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800DB5B4 000D84F4  7C 08 02 A6 */ mflr r0
/* 800DB5B8 000D84F8  90 01 00 14 */ stw r0, 0x14(r1)
/* 800DB5BC 000D84FC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800DB5C0 000D8500  7C 7F 1B 78 */ mr r31, r3
/* 800DB5C4 000D8504  38 80 00 77 */ li r4, 0x77
/* 800DB5C8 000D8508  4B FE 69 A5 */ bl daAlink_c_NS_commonProcInit
/* 800DB5CC 000D850C  7F E3 FB 78 */ mr r3, r31
/* 800DB5D0 000D8510  38 80 00 BA */ li r4, 0xba
/* 800DB5D4 000D8514  3C A0 80 39 */ lis r5, lbl_8038E49C@ha
/* 800DB5D8 000D8518  38 A5 E4 9C */ addi r5, r5, lbl_8038E49C@l
/* 800DB5DC 000D851C  4B FD 1B 19 */ bl daAlink_c_NS_setSingleAnimeParam
/* 800DB5E0 000D8520  C0 02 93 74 */ lfs f0, lbl_80452D74-_SDA2_BASE_(r2)
/* 800DB5E4 000D8524  D0 1F 1F E0 */ stfs f0, 0x1fe0(r31)
/* 800DB5E8 000D8528  80 7F 1F 2C */ lwz r3, 0x1f2c(r31)
/* 800DB5EC 000D852C  D0 03 00 08 */ stfs f0, 8(r3)
/* 800DB5F0 000D8530  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DB5F4 000D8534  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800DB5F8 000D8538  38 60 00 01 */ li r3, 1
/* 800DB5FC 000D853C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800DB600 000D8540  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800DB604 000D8544  7C 08 03 A6 */ mtlr r0
/* 800DB608 000D8548  38 21 00 10 */ addi r1, r1, 0x10
/* 800DB60C 000D854C  4E 80 00 20 */ blr