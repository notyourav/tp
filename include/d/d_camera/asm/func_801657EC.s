/* 801657EC 0016272C  94 21 FF 30 */ stwu r1, -0xd0(r1)
/* 801657F0 00162730  7C 08 02 A6 */ mflr r0
/* 801657F4 00162734  90 01 00 D4 */ stw r0, 0xd4(r1)
/* 801657F8 00162738  DB E1 00 C0 */ stfd f31, 0xc0(r1)
/* 801657FC 0016273C  F3 E1 00 C8 */ psq_st f31, 200(r1), 0, 0
/* 80165800 00162740  93 E1 00 BC */ stw r31, 0xbc(r1)
/* 80165804 00162744  93 C1 00 B8 */ stw r30, 0xb8(r1)
/* 80165808 00162748  7C 9E 23 78 */ mr r30, r4
/* 8016580C 0016274C  38 61 00 5C */ addi r3, r1, 0x5c
/* 80165810 00162750  4B F1 1D 6D */ bl dBgS_GndChk
/* 80165814 00162754  38 61 00 5C */ addi r3, r1, 0x5c
/* 80165818 00162758  7F C4 F3 78 */ mr r4, r30
/* 8016581C 0016275C  48 10 25 0D */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80165820 00162760  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80165824 00162764  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80165828 00162768  3B E3 0F 38 */ addi r31, r3, 0xf38
/* 8016582C 0016276C  7F E3 FB 78 */ mr r3, r31
/* 80165830 00162770  38 81 00 5C */ addi r4, r1, 0x5c
/* 80165834 00162774  4B F0 EC 6D */ bl cBgS_NS_GroundCross
/* 80165838 00162778  FF E0 08 90 */ fmr f31, f1
/* 8016583C 0016277C  38 61 00 08 */ addi r3, r1, 8
/* 80165840 00162780  4B F1 21 C1 */ bl dBgS_CamGndChk_Wtr
/* 80165844 00162784  38 61 00 08 */ addi r3, r1, 8
/* 80165848 00162788  7F C4 F3 78 */ mr r4, r30
/* 8016584C 0016278C  48 10 24 DD */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80165850 00162790  7F E3 FB 78 */ mr r3, r31
/* 80165854 00162794  38 81 00 08 */ addi r4, r1, 8
/* 80165858 00162798  4B F0 EC 49 */ bl cBgS_NS_GroundCross
/* 8016585C 0016279C  FC 1F 08 40 */ fcmpo cr0, f31, f1
/* 80165860 001627A0  4C 41 13 82 */ cror 2, 1, 2
/* 80165864 001627A4  40 82 00 08 */ bne lbl_8016586C
/* 80165868 001627A8  FC 20 F8 90 */ fmr f1, f31
lbl_8016586C:
/* 8016586C 001627AC  C0 02 9C AC */ lfs f0, lbl_804536AC-_SDA2_BASE_(r2)
/* 80165870 001627B0  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80165874 001627B4  40 82 00 0C */ bne lbl_80165880
/* 80165878 001627B8  C3 FE 00 04 */ lfs f31, 4(r30)
/* 8016587C 001627BC  48 00 00 08 */ b lbl_80165884
lbl_80165880:
/* 80165880 001627C0  FF E0 08 90 */ fmr f31, f1
lbl_80165884:
/* 80165884 001627C4  38 61 00 08 */ addi r3, r1, 8
/* 80165888 001627C8  38 80 FF FF */ li r4, -1
/* 8016588C 001627CC  4B F1 22 0D */ bl dBgS_CamGndChk_Wtr_NS_dtor
/* 80165890 001627D0  38 61 00 5C */ addi r3, r1, 0x5c
/* 80165894 001627D4  38 80 FF FF */ li r4, -1
/* 80165898 001627D8  4B F1 1D 59 */ bl dBgS_GndChk_NS_dtor
/* 8016589C 001627DC  FC 20 F8 90 */ fmr f1, f31
/* 801658A0 001627E0  E3 E1 00 C8 */ psq_l f31, 200(r1), 0, 0
/* 801658A4 001627E4  CB E1 00 C0 */ lfd f31, 0xc0(r1)
/* 801658A8 001627E8  83 E1 00 BC */ lwz r31, 0xbc(r1)
/* 801658AC 001627EC  83 C1 00 B8 */ lwz r30, 0xb8(r1)
/* 801658B0 001627F0  80 01 00 D4 */ lwz r0, 0xd4(r1)
/* 801658B4 001627F4  7C 08 03 A6 */ mtlr r0
/* 801658B8 001627F8  38 21 00 D0 */ addi r1, r1, 0xd0
/* 801658BC 001627FC  4E 80 00 20 */ blr
