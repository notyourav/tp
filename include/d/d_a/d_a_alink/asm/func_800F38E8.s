/* 800F38E8 000F0828  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F38EC 000F082C  7C 08 02 A6 */ mflr r0
/* 800F38F0 000F0830  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F38F4 000F0834  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F38F8 000F0838  7C 7F 1B 78 */ mr r31, r3
/* 800F38FC 000F083C  38 80 00 53 */ li r4, 0x53
/* 800F3900 000F0840  4B FC E6 6D */ bl daAlink_c_NS_commonProcInit
/* 800F3904 000F0844  7F E3 FB 78 */ mr r3, r31
/* 800F3908 000F0848  38 80 00 02 */ li r4, 2
/* 800F390C 000F084C  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800F3910 000F0850  4B FB 9E 15 */ bl daAlink_c_NS_resetUpperAnime
/* 800F3914 000F0854  7F E3 FB 78 */ mr r3, r31
/* 800F3918 000F0858  38 80 00 02 */ li r4, 2
/* 800F391C 000F085C  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800F3920 000F0860  4B FB A1 CD */ bl daAlink_c_NS_resetUnderAnime
/* 800F3924 000F0864  38 00 00 00 */ li r0, 0
/* 800F3928 000F0868  B0 1F 30 10 */ sth r0, 0x3010(r31)
/* 800F392C 000F086C  B0 1F 30 12 */ sth r0, 0x3012(r31)
/* 800F3930 000F0870  C0 22 95 0C */ lfs f1, lbl_80452F0C-_SDA2_BASE_(r2)
/* 800F3934 000F0874  48 17 40 21 */ bl cM_rndF__Ff
/* 800F3938 000F0878  C0 02 95 08 */ lfs f0, lbl_80452F08-_SDA2_BASE_(r2)
/* 800F393C 000F087C  EC 00 08 28 */ fsubs f0, f0, f1
/* 800F3940 000F0880  D0 1F 34 78 */ stfs f0, 0x3478(r31)
/* 800F3944 000F0884  7F E3 FB 78 */ mr r3, r31
/* 800F3948 000F0888  38 80 00 61 */ li r4, 0x61
/* 800F394C 000F088C  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800F3950 000F0890  C0 42 93 24 */ lfs f2, lbl_80452D24-_SDA2_BASE_(r2)
/* 800F3954 000F0894  4B FB 96 8D */ bl daAlink_c_NS_setSingleAnimeBaseSpeed
/* 800F3958 000F0898  38 00 00 00 */ li r0, 0
/* 800F395C 000F089C  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 800F3960 000F08A0  7F E3 FB 78 */ mr r3, r31
/* 800F3964 000F08A4  4B FF 9E 29 */ bl daAlink_c_NS_setSyncBoarPos
/* 800F3968 000F08A8  38 00 00 00 */ li r0, 0
/* 800F396C 000F08AC  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800F3970 000F08B0  7F E3 FB 78 */ mr r3, r31
/* 800F3974 000F08B4  38 80 00 00 */ li r4, 0
/* 800F3978 000F08B8  38 A0 00 00 */ li r5, 0
/* 800F397C 000F08BC  4B FC D9 61 */ bl daAlink_c_NS_deleteEquipItem
/* 800F3980 000F08C0  38 60 00 01 */ li r3, 1
/* 800F3984 000F08C4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F3988 000F08C8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F398C 000F08CC  7C 08 03 A6 */ mtlr r0
/* 800F3990 000F08D0  38 21 00 10 */ addi r1, r1, 0x10
/* 800F3994 000F08D4  4E 80 00 20 */ blr