/* 801767F8 00173738  94 21 FE 10 */ stwu r1, -0x1f0(r1)
/* 801767FC 0017373C  7C 08 02 A6 */ mflr r0
/* 80176800 00173740  90 01 01 F4 */ stw r0, 0x1f4(r1)
/* 80176804 00173744  DB E1 01 E0 */ stfd f31, 0x1e0(r1)
/* 80176808 00173748  F3 E1 01 E8 */ psq_st f31, 488(r1), 0, 0
/* 8017680C 0017374C  DB C1 01 D0 */ stfd f30, 0x1d0(r1)
/* 80176810 00173750  F3 C1 01 D8 */ psq_st f30, 472(r1), 0, 0
/* 80176814 00173754  DB A1 01 C0 */ stfd f29, 0x1c0(r1)
/* 80176818 00173758  F3 A1 01 C8 */ psq_st f29, 456(r1), 0, 0
/* 8017681C 0017375C  DB 81 01 B0 */ stfd f28, 0x1b0(r1)
/* 80176820 00173760  F3 81 01 B8 */ psq_st f28, 440(r1), 0, 0
/* 80176824 00173764  DB 61 01 A0 */ stfd f27, 0x1a0(r1)
/* 80176828 00173768  F3 61 01 A8 */ psq_st f27, 424(r1), 0, 0
/* 8017682C 0017376C  DB 41 01 90 */ stfd f26, 0x190(r1)
/* 80176830 00173770  F3 41 01 98 */ psq_st f26, 408(r1), 0, 0
/* 80176834 00173774  DB 21 01 80 */ stfd f25, 0x180(r1)
/* 80176838 00173778  F3 21 01 88 */ psq_st f25, 392(r1), 0, 0
/* 8017683C 0017377C  DB 01 01 70 */ stfd f24, 0x170(r1)
/* 80176840 00173780  F3 01 01 78 */ psq_st f24, 376(r1), 0, 0
/* 80176844 00173784  DA E1 01 60 */ stfd f23, 0x160(r1)
/* 80176848 00173788  F2 E1 01 68 */ psq_st f23, 360(r1), 0, 0
/* 8017684C 0017378C  DA C1 01 50 */ stfd f22, 0x150(r1)
/* 80176850 00173790  F2 C1 01 58 */ psq_st f22, 344(r1), 0, 0
/* 80176854 00173794  DA A1 01 40 */ stfd f21, 0x140(r1)
/* 80176858 00173798  F2 A1 01 48 */ psq_st f21, 328(r1), 0, 0
/* 8017685C 0017379C  DA 81 01 30 */ stfd f20, 0x130(r1)
/* 80176860 001737A0  F2 81 01 38 */ psq_st f20, 312(r1), 0, 0
/* 80176864 001737A4  39 61 01 30 */ addi r11, r1, 0x130
/* 80176868 001737A8  48 1E B9 75 */ bl _savegpr_29
/* 8017686C 001737AC  7C 7D 1B 78 */ mr r29, r3
/* 80176870 001737B0  80 03 0A F4 */ lwz r0, 0xaf4(r3)
/* 80176874 001737B4  1F E4 00 78 */ mulli r31, r4, 0x78
/* 80176878 001737B8  7C 60 FA 14 */ add r3, r0, r31
/* 8017687C 001737BC  C3 E3 00 08 */ lfs f31, 8(r3)
/* 80176880 001737C0  C3 C3 00 10 */ lfs f30, 0x10(r3)
/* 80176884 001737C4  C3 A3 00 0C */ lfs f29, 0xc(r3)
/* 80176888 001737C8  C3 83 00 14 */ lfs f28, 0x14(r3)
/* 8017688C 001737CC  C3 63 00 24 */ lfs f27, 0x24(r3)
/* 80176890 001737D0  C3 43 00 28 */ lfs f26, 0x28(r3)
/* 80176894 001737D4  C3 23 00 34 */ lfs f25, 0x34(r3)
/* 80176898 001737D8  C3 03 00 30 */ lfs f24, 0x30(r3)
/* 8017689C 001737DC  C2 E3 00 38 */ lfs f23, 0x38(r3)
/* 801768A0 001737E0  C2 C3 00 3C */ lfs f22, 0x3c(r3)
/* 801768A4 001737E4  C2 A3 00 4C */ lfs f21, 0x4c(r3)
/* 801768A8 001737E8  C2 83 00 50 */ lfs f20, 0x50(r3)
/* 801768AC 001737EC  80 0D 8A A0 */ lwz r0, lbl_80451020-_SDA_BASE_(r13)
/* 801768B0 001737F0  2C 00 00 6B */ cmpwi r0, 0x6b
/* 801768B4 001737F4  40 82 00 54 */ bne lbl_80176908
/* 801768B8 001737F8  38 61 00 D8 */ addi r3, r1, 0xd8
/* 801768BC 001737FC  7F A4 EB 78 */ mr r4, r29
/* 801768C0 00173800  80 BD 01 80 */ lwz r5, 0x180(r29)
/* 801768C4 00173804  4B F2 0E 99 */ bl dCamera_c_NS_positionOf
/* 801768C8 00173808  C0 21 00 DC */ lfs f1, 0xdc(r1)
/* 801768CC 0017380C  C0 02 9E 9C */ lfs f0, lbl_8045389C-_SDA2_BASE_(r2)
/* 801768D0 00173810  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801768D4 00173814  40 80 00 34 */ bge lbl_80176908
/* 801768D8 00173818  80 9D 06 84 */ lwz r4, 0x684(r29)
/* 801768DC 0017381C  3C 60 80 43 */ lis r3, lbl_8042C8F8@ha
/* 801768E0 00173820  80 03 C8 F8 */ lwz r0, lbl_8042C8F8@l(r3)
/* 801768E4 00173824  1C 00 00 44 */ mulli r0, r0, 0x44
/* 801768E8 00173828  7C 64 02 14 */ add r3, r4, r0
/* 801768EC 0017382C  80 1D 01 90 */ lwz r0, 0x190(r29)
/* 801768F0 00173830  1C 00 00 16 */ mulli r0, r0, 0x16
/* 801768F4 00173834  7C 63 02 14 */ add r3, r3, r0
/* 801768F8 00173838  A8 83 00 18 */ lha r4, 0x18(r3)
/* 801768FC 0017383C  7F A3 EB 78 */ mr r3, r29
/* 80176900 00173840  4B FF 1E 45 */ bl dCamera_c_NS_chaseCamera
/* 80176904 00173844  48 00 04 74 */ b lbl_80176D78
lbl_80176908:
/* 80176908 00173848  80 1D 01 74 */ lwz r0, 0x174(r29)
/* 8017690C 0017384C  28 00 00 00 */ cmplwi r0, 0
/* 80176910 00173850  40 82 00 CC */ bne lbl_801769DC
/* 80176914 00173854  C0 02 9C A0 */ lfs f0, lbl_804536A0-_SDA2_BASE_(r2)
/* 80176918 00173858  D0 1D 03 FC */ stfs f0, 0x3fc(r29)
/* 8017691C 0017385C  38 00 00 28 */ li r0, 0x28
/* 80176920 00173860  90 1D 04 00 */ stw r0, 0x400(r29)
/* 80176924 00173864  80 1D 07 DC */ lwz r0, 0x7dc(r29)
/* 80176928 00173868  2C 00 00 FF */ cmpwi r0, 0xff
/* 8017692C 0017386C  41 82 00 34 */ beq lbl_80176960
/* 80176930 00173870  80 1D 0A F4 */ lwz r0, 0xaf4(r29)
/* 80176934 00173874  7C 60 FA 14 */ add r3, r0, r31
/* 80176938 00173878  A0 03 00 06 */ lhz r0, 6(r3)
/* 8017693C 0017387C  54 00 05 AD */ rlwinm. r0, r0, 0, 0x16, 0x16
/* 80176940 00173880  41 82 00 20 */ beq lbl_80176960
/* 80176944 00173884  C0 1D 07 C4 */ lfs f0, 0x7c4(r29)
/* 80176948 00173888  D0 1D 03 F0 */ stfs f0, 0x3f0(r29)
/* 8017694C 0017388C  C0 1D 07 C8 */ lfs f0, 0x7c8(r29)
/* 80176950 00173890  D0 1D 03 F4 */ stfs f0, 0x3f4(r29)
/* 80176954 00173894  C0 1D 07 CC */ lfs f0, 0x7cc(r29)
/* 80176958 00173898  D0 1D 03 F8 */ stfs f0, 0x3f8(r29)
/* 8017695C 0017389C  48 00 00 70 */ b lbl_801769CC
lbl_80176960:
/* 80176960 001738A0  80 1D 0A F4 */ lwz r0, 0xaf4(r29)
/* 80176964 001738A4  7C 60 FA 14 */ add r3, r0, r31
/* 80176968 001738A8  A0 03 00 06 */ lhz r0, 6(r3)
/* 8017696C 001738AC  54 00 04 A5 */ rlwinm. r0, r0, 0, 0x12, 0x12
/* 80176970 001738B0  41 82 00 5C */ beq lbl_801769CC
/* 80176974 001738B4  7F A3 EB 78 */ mr r3, r29
/* 80176978 001738B8  80 9D 06 8C */ lwz r4, 0x68c(r29)
/* 8017697C 001738BC  4B FE DE FD */ bl dCamera_c_NS_getParamTargetActor
/* 80176980 001738C0  7C 7E 1B 78 */ mr r30, r3
/* 80176984 001738C4  38 61 00 CC */ addi r3, r1, 0xcc
/* 80176988 001738C8  7F A4 EB 78 */ mr r4, r29
/* 8017698C 001738CC  7F C5 F3 78 */ mr r5, r30
/* 80176990 001738D0  4B F2 0D CD */ bl dCamera_c_NS_positionOf
/* 80176994 001738D4  C0 01 00 CC */ lfs f0, 0xcc(r1)
/* 80176998 001738D8  D0 1D 03 F0 */ stfs f0, 0x3f0(r29)
/* 8017699C 001738DC  38 61 00 C0 */ addi r3, r1, 0xc0
/* 801769A0 001738E0  7F A4 EB 78 */ mr r4, r29
/* 801769A4 001738E4  80 BD 01 80 */ lwz r5, 0x180(r29)
/* 801769A8 001738E8  4B F2 0D 75 */ bl dCamera_c_NS_attentionPos
/* 801769AC 001738EC  C0 01 00 C4 */ lfs f0, 0xc4(r1)
/* 801769B0 001738F0  D0 1D 03 F4 */ stfs f0, 0x3f4(r29)
/* 801769B4 001738F4  38 61 00 B4 */ addi r3, r1, 0xb4
/* 801769B8 001738F8  7F A4 EB 78 */ mr r4, r29
/* 801769BC 001738FC  7F C5 F3 78 */ mr r5, r30
/* 801769C0 00173900  4B F2 0D 9D */ bl dCamera_c_NS_positionOf
/* 801769C4 00173904  C0 01 00 BC */ lfs f0, 0xbc(r1)
/* 801769C8 00173908  D0 1D 03 F8 */ stfs f0, 0x3f8(r29)
lbl_801769CC:
/* 801769CC 0017390C  38 7D 05 D8 */ addi r3, r29, 0x5d8
/* 801769D0 00173910  38 80 00 05 */ li r4, 5
/* 801769D4 00173914  38 A0 00 64 */ li r5, 0x64
/* 801769D8 00173918  4B F2 0E A1 */ bl d2DBSplinePath_NS_Init
lbl_801769DC:
/* 801769DC 0017391C  C0 7D 03 FC */ lfs f3, 0x3fc(r29)
/* 801769E0 00173920  C0 02 9E A8 */ lfs f0, lbl_804538A8-_SDA2_BASE_(r2)
/* 801769E4 00173924  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 801769E8 00173928  40 80 00 38 */ bge lbl_80176A20
/* 801769EC 0017392C  C0 42 9C A8 */ lfs f2, lbl_804536A8-_SDA2_BASE_(r2)
/* 801769F0 00173930  80 1D 04 00 */ lwz r0, 0x400(r29)
/* 801769F4 00173934  C8 22 9C 98 */ lfd f1, lbl_80453698-_SDA2_BASE_(r2)
/* 801769F8 00173938  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 801769FC 0017393C  90 01 01 1C */ stw r0, 0x11c(r1)
/* 80176A00 00173940  3C 00 43 30 */ lis r0, 0x4330
/* 80176A04 00173944  90 01 01 18 */ stw r0, 0x118(r1)
/* 80176A08 00173948  C8 01 01 18 */ lfd f0, 0x118(r1)
/* 80176A0C 0017394C  EC 00 08 28 */ fsubs f0, f0, f1
/* 80176A10 00173950  EC 02 00 24 */ fdivs f0, f2, f0
/* 80176A14 00173954  EC 03 00 2A */ fadds f0, f3, f0
/* 80176A18 00173958  D0 1D 03 FC */ stfs f0, 0x3fc(r29)
/* 80176A1C 0017395C  48 00 00 14 */ b lbl_80176A30
lbl_80176A20:
/* 80176A20 00173960  38 00 00 01 */ li r0, 1
/* 80176A24 00173964  98 1D 01 58 */ stb r0, 0x158(r29)
/* 80176A28 00173968  C0 02 9C A8 */ lfs f0, lbl_804536A8-_SDA2_BASE_(r2)
/* 80176A2C 0017396C  D0 1D 03 FC */ stfs f0, 0x3fc(r29)
lbl_80176A30:
/* 80176A30 00173970  C0 1D 03 F0 */ lfs f0, 0x3f0(r29)
/* 80176A34 00173974  D0 01 01 08 */ stfs f0, 0x108(r1)
/* 80176A38 00173978  C0 1D 03 F4 */ lfs f0, 0x3f4(r29)
/* 80176A3C 0017397C  D0 01 01 0C */ stfs f0, 0x10c(r1)
/* 80176A40 00173980  C0 1D 03 F8 */ lfs f0, 0x3f8(r29)
/* 80176A44 00173984  D0 01 01 10 */ stfs f0, 0x110(r1)
/* 80176A48 00173988  80 1D 0A F4 */ lwz r0, 0xaf4(r29)
/* 80176A4C 0017398C  7C 60 FA 14 */ add r3, r0, r31
/* 80176A50 00173990  A0 03 00 06 */ lhz r0, 6(r3)
/* 80176A54 00173994  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 80176A58 00173998  40 82 00 1C */ bne lbl_80176A74
/* 80176A5C 0017399C  38 61 00 A8 */ addi r3, r1, 0xa8
/* 80176A60 001739A0  7F A4 EB 78 */ mr r4, r29
/* 80176A64 001739A4  80 BD 01 80 */ lwz r5, 0x180(r29)
/* 80176A68 001739A8  4B F2 0C B5 */ bl dCamera_c_NS_attentionPos
/* 80176A6C 001739AC  C0 01 00 AC */ lfs f0, 0xac(r1)
/* 80176A70 001739B0  D0 01 01 0C */ stfs f0, 0x10c(r1)
lbl_80176A74:
/* 80176A74 001739B4  D3 E1 00 FC */ stfs f31, 0xfc(r1)
/* 80176A78 001739B8  C0 02 9C A0 */ lfs f0, lbl_804536A0-_SDA2_BASE_(r2)
/* 80176A7C 001739BC  D0 01 01 00 */ stfs f0, 0x100(r1)
/* 80176A80 001739C0  D3 A1 01 04 */ stfs f29, 0x104(r1)
/* 80176A84 001739C4  3B DD 00 62 */ addi r30, r29, 0x62
/* 80176A88 001739C8  7F C3 F3 78 */ mr r3, r30
/* 80176A8C 001739CC  48 0F A6 5D */ bl cSAngle_NS_Inv
/* 80176A90 001739D0  7C 64 1B 78 */ mr r4, r3
/* 80176A94 001739D4  38 61 00 28 */ addi r3, r1, 0x28
/* 80176A98 001739D8  48 0F A5 01 */ bl cSAngle_X2_
/* 80176A9C 001739DC  38 61 00 9C */ addi r3, r1, 0x9c
/* 80176AA0 001739E0  38 81 00 FC */ addi r4, r1, 0xfc
/* 80176AA4 001739E4  38 A1 00 28 */ addi r5, r1, 0x28
/* 80176AA8 001739E8  4B F1 18 DD */ bl dCamMath_NS_xyzRotateY
/* 80176AAC 001739EC  C0 01 00 9C */ lfs f0, 0x9c(r1)
/* 80176AB0 001739F0  D0 01 00 F0 */ stfs f0, 0xf0(r1)
/* 80176AB4 001739F4  C0 01 00 A0 */ lfs f0, 0xa0(r1)
/* 80176AB8 001739F8  D0 01 00 F4 */ stfs f0, 0xf4(r1)
/* 80176ABC 001739FC  C0 01 00 A4 */ lfs f0, 0xa4(r1)
/* 80176AC0 00173A00  D0 01 00 F8 */ stfs f0, 0xf8(r1)
/* 80176AC4 00173A04  38 61 00 90 */ addi r3, r1, 0x90
/* 80176AC8 00173A08  7F A4 EB 78 */ mr r4, r29
/* 80176ACC 00173A0C  80 BD 01 80 */ lwz r5, 0x180(r29)
/* 80176AD0 00173A10  4B F2 0C 4D */ bl dCamera_c_NS_attentionPos
/* 80176AD4 00173A14  38 61 00 F0 */ addi r3, r1, 0xf0
/* 80176AD8 00173A18  38 81 00 90 */ addi r4, r1, 0x90
/* 80176ADC 00173A1C  7C 65 1B 78 */ mr r5, r3
/* 80176AE0 00173A20  48 1D 05 B1 */ bl PSVECAdd
/* 80176AE4 00173A24  38 61 00 84 */ addi r3, r1, 0x84
/* 80176AE8 00173A28  38 81 00 F0 */ addi r4, r1, 0xf0
/* 80176AEC 00173A2C  38 A1 01 08 */ addi r5, r1, 0x108
/* 80176AF0 00173A30  48 0F 00 45 */ bl cXyz_NS___mi
/* 80176AF4 00173A34  38 61 00 34 */ addi r3, r1, 0x34
/* 80176AF8 00173A38  38 81 00 84 */ addi r4, r1, 0x84
/* 80176AFC 00173A3C  48 0F AD 85 */ bl cSGlobe_X4_
/* 80176B00 00173A40  C0 01 00 34 */ lfs f0, 0x34(r1)
/* 80176B04 00173A44  FC 00 C0 40 */ fcmpo cr0, f0, f24
/* 80176B08 00173A48  40 80 00 10 */ bge lbl_80176B18
/* 80176B0C 00173A4C  C0 22 9C A0 */ lfs f1, lbl_804536A0-_SDA2_BASE_(r2)
/* 80176B10 00173A50  D3 01 00 34 */ stfs f24, 0x34(r1)
/* 80176B14 00173A54  48 00 00 30 */ b lbl_80176B44
lbl_80176B18:
/* 80176B18 00173A58  FC 00 C8 40 */ fcmpo cr0, f0, f25
/* 80176B1C 00173A5C  40 81 00 10 */ ble lbl_80176B2C
/* 80176B20 00173A60  C0 22 9C A8 */ lfs f1, lbl_804536A8-_SDA2_BASE_(r2)
/* 80176B24 00173A64  D3 21 00 34 */ stfs f25, 0x34(r1)
/* 80176B28 00173A68  48 00 00 1C */ b lbl_80176B44
lbl_80176B2C:
/* 80176B2C 00173A6C  EC 00 C0 28 */ fsubs f0, f0, f24
/* 80176B30 00173A70  EC 59 C0 28 */ fsubs f2, f25, f24
/* 80176B34 00173A74  EC 20 10 24 */ fdivs f1, f0, f2
/* 80176B38 00173A78  EC 01 00 B2 */ fmuls f0, f1, f2
/* 80176B3C 00173A7C  EC 18 00 2A */ fadds f0, f24, f0
/* 80176B40 00173A80  D0 01 00 34 */ stfs f0, 0x34(r1)
lbl_80176B44:
/* 80176B44 00173A84  38 7D 05 D8 */ addi r3, r29, 0x5d8
/* 80176B48 00173A88  3C 80 80 3C */ lis r4, lbl_803BA4A4@ha
/* 80176B4C 00173A8C  38 84 A4 A4 */ addi r4, r4, lbl_803BA4A4@l
/* 80176B50 00173A90  4B F2 10 19 */ bl d2DBSplinePath_NS_Spot
/* 80176B54 00173A94  FF E0 08 90 */ fmr f31, f1
/* 80176B58 00173A98  38 61 00 78 */ addi r3, r1, 0x78
/* 80176B5C 00173A9C  38 81 00 34 */ addi r4, r1, 0x34
/* 80176B60 00173AA0  48 0F AF 55 */ bl cSGlobe_NS_Xyz
/* 80176B64 00173AA4  38 61 00 6C */ addi r3, r1, 0x6c
/* 80176B68 00173AA8  38 81 01 08 */ addi r4, r1, 0x108
/* 80176B6C 00173AAC  38 A1 00 78 */ addi r5, r1, 0x78
/* 80176B70 00173AB0  48 0E FF 75 */ bl cXyz_NS___pl
/* 80176B74 00173AB4  C0 01 00 6C */ lfs f0, 0x6c(r1)
/* 80176B78 00173AB8  D0 01 00 E4 */ stfs f0, 0xe4(r1)
/* 80176B7C 00173ABC  C0 01 00 70 */ lfs f0, 0x70(r1)
/* 80176B80 00173AC0  D0 01 00 E8 */ stfs f0, 0xe8(r1)
/* 80176B84 00173AC4  C0 01 00 74 */ lfs f0, 0x74(r1)
/* 80176B88 00173AC8  D0 01 00 EC */ stfs f0, 0xec(r1)
/* 80176B8C 00173ACC  80 1D 0A F4 */ lwz r0, 0xaf4(r29)
/* 80176B90 00173AD0  7C 60 FA 14 */ add r3, r0, r31
/* 80176B94 00173AD4  A0 03 00 06 */ lhz r0, 6(r3)
/* 80176B98 00173AD8  54 00 05 29 */ rlwinm. r0, r0, 0, 0x14, 0x14
/* 80176B9C 00173ADC  40 82 00 0C */ bne lbl_80176BA8
/* 80176BA0 00173AE0  C0 02 9C A0 */ lfs f0, lbl_804536A0-_SDA2_BASE_(r2)
/* 80176BA4 00173AE4  D0 01 00 E8 */ stfs f0, 0xe8(r1)
lbl_80176BA8:
/* 80176BA8 00173AE8  C0 21 00 E8 */ lfs f1, 0xe8(r1)
/* 80176BAC 00173AEC  EC 1E E0 28 */ fsubs f0, f30, f28
/* 80176BB0 00173AF0  EC 1F 00 32 */ fmuls f0, f31, f0
/* 80176BB4 00173AF4  EC 1C 00 2A */ fadds f0, f28, f0
/* 80176BB8 00173AF8  EC 01 00 2A */ fadds f0, f1, f0
/* 80176BBC 00173AFC  D0 01 00 E8 */ stfs f0, 0xe8(r1)
/* 80176BC0 00173B00  EC 1B D0 28 */ fsubs f0, f27, f26
/* 80176BC4 00173B04  EC 1F 00 32 */ fmuls f0, f31, f0
/* 80176BC8 00173B08  EF 1A 00 2A */ fadds f24, f26, f0
/* 80176BCC 00173B0C  38 61 00 30 */ addi r3, r1, 0x30
/* 80176BD0 00173B10  EC 17 B0 28 */ fsubs f0, f23, f22
/* 80176BD4 00173B14  EC 1F 00 32 */ fmuls f0, f31, f0
/* 80176BD8 00173B18  EC 36 00 2A */ fadds f1, f22, f0
/* 80176BDC 00173B1C  48 0F A3 ED */ bl cSAngle_X3_
/* 80176BE0 00173B20  80 1D 0A F4 */ lwz r0, 0xaf4(r29)
/* 80176BE4 00173B24  7C 60 FA 14 */ add r3, r0, r31
/* 80176BE8 00173B28  A0 03 00 06 */ lhz r0, 6(r3)
/* 80176BEC 00173B2C  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 80176BF0 00173B30  41 82 00 10 */ beq lbl_80176C00
/* 80176BF4 00173B34  38 61 00 30 */ addi r3, r1, 0x30
/* 80176BF8 00173B38  38 81 00 38 */ addi r4, r1, 0x38
/* 80176BFC 00173B3C  48 0F A5 D9 */ bl cSAngle_NS___apl
lbl_80176C00:
/* 80176C00 00173B40  38 61 00 2C */ addi r3, r1, 0x2c
/* 80176C04 00173B44  38 81 00 3A */ addi r4, r1, 0x3a
/* 80176C08 00173B48  48 0F A3 61 */ bl cSAngle_X1_
/* 80176C0C 00173B4C  88 1D 01 58 */ lbz r0, 0x158(r29)
/* 80176C10 00173B50  28 00 00 00 */ cmplwi r0, 0
/* 80176C14 00173B54  40 82 00 DC */ bne lbl_80176CF0
/* 80176C18 00173B58  38 61 00 60 */ addi r3, r1, 0x60
/* 80176C1C 00173B5C  38 81 00 E4 */ addi r4, r1, 0xe4
/* 80176C20 00173B60  38 BD 00 64 */ addi r5, r29, 0x64
/* 80176C24 00173B64  48 0E FF 11 */ bl cXyz_NS___mi
/* 80176C28 00173B68  38 61 00 54 */ addi r3, r1, 0x54
/* 80176C2C 00173B6C  38 81 00 60 */ addi r4, r1, 0x60
/* 80176C30 00173B70  C0 3D 03 FC */ lfs f1, 0x3fc(r29)
/* 80176C34 00173B74  48 0E FF 51 */ bl cXyz_NS___ml
/* 80176C38 00173B78  38 7D 00 64 */ addi r3, r29, 0x64
/* 80176C3C 00173B7C  38 81 00 54 */ addi r4, r1, 0x54
/* 80176C40 00173B80  7C 65 1B 78 */ mr r5, r3
/* 80176C44 00173B84  48 1D 04 4D */ bl PSVECAdd
/* 80176C48 00173B88  C0 5D 00 5C */ lfs f2, 0x5c(r29)
/* 80176C4C 00173B8C  C0 3D 03 FC */ lfs f1, 0x3fc(r29)
/* 80176C50 00173B90  EC 18 10 28 */ fsubs f0, f24, f2
/* 80176C54 00173B94  EC 01 00 32 */ fmuls f0, f1, f0
/* 80176C58 00173B98  EC 02 00 2A */ fadds f0, f2, f0
/* 80176C5C 00173B9C  D0 1D 00 5C */ stfs f0, 0x5c(r29)
/* 80176C60 00173BA0  38 61 00 24 */ addi r3, r1, 0x24
/* 80176C64 00173BA4  38 81 00 30 */ addi r4, r1, 0x30
/* 80176C68 00173BA8  3B FD 00 60 */ addi r31, r29, 0x60
/* 80176C6C 00173BAC  7F E5 FB 78 */ mr r5, r31
/* 80176C70 00173BB0  48 0F A5 35 */ bl cSAngle_NS___mi_X1_
/* 80176C74 00173BB4  38 61 00 20 */ addi r3, r1, 0x20
/* 80176C78 00173BB8  38 81 00 24 */ addi r4, r1, 0x24
/* 80176C7C 00173BBC  C0 3D 03 FC */ lfs f1, 0x3fc(r29)
/* 80176C80 00173BC0  48 0F A5 E5 */ bl cSAngle_NS___ml
/* 80176C84 00173BC4  38 61 00 1C */ addi r3, r1, 0x1c
/* 80176C88 00173BC8  7F E4 FB 78 */ mr r4, r31
/* 80176C8C 00173BCC  38 A1 00 20 */ addi r5, r1, 0x20
/* 80176C90 00173BD0  48 0F A4 E5 */ bl cSAngle_NS___pl
/* 80176C94 00173BD4  38 61 00 0C */ addi r3, r1, 0xc
/* 80176C98 00173BD8  A8 81 00 1C */ lha r4, 0x1c(r1)
/* 80176C9C 00173BDC  48 0F A2 FD */ bl cSAngle_X2_
/* 80176CA0 00173BE0  A8 01 00 0C */ lha r0, 0xc(r1)
/* 80176CA4 00173BE4  B0 1D 00 60 */ sth r0, 0x60(r29)
/* 80176CA8 00173BE8  38 61 00 18 */ addi r3, r1, 0x18
/* 80176CAC 00173BEC  38 81 00 2C */ addi r4, r1, 0x2c
/* 80176CB0 00173BF0  7F C5 F3 78 */ mr r5, r30
/* 80176CB4 00173BF4  48 0F A4 F1 */ bl cSAngle_NS___mi_X1_
/* 80176CB8 00173BF8  38 61 00 14 */ addi r3, r1, 0x14
/* 80176CBC 00173BFC  38 81 00 18 */ addi r4, r1, 0x18
/* 80176CC0 00173C00  C0 3D 03 FC */ lfs f1, 0x3fc(r29)
/* 80176CC4 00173C04  48 0F A5 A1 */ bl cSAngle_NS___ml
/* 80176CC8 00173C08  38 61 00 10 */ addi r3, r1, 0x10
/* 80176CCC 00173C0C  7F C4 F3 78 */ mr r4, r30
/* 80176CD0 00173C10  38 A1 00 14 */ addi r5, r1, 0x14
/* 80176CD4 00173C14  48 0F A4 A1 */ bl cSAngle_NS___pl
/* 80176CD8 00173C18  38 61 00 08 */ addi r3, r1, 8
/* 80176CDC 00173C1C  A8 81 00 10 */ lha r4, 0x10(r1)
/* 80176CE0 00173C20  48 0F A2 B9 */ bl cSAngle_X2_
/* 80176CE4 00173C24  A8 01 00 08 */ lha r0, 8(r1)
/* 80176CE8 00173C28  B0 1D 00 62 */ sth r0, 0x62(r29)
/* 80176CEC 00173C2C  48 00 00 30 */ b lbl_80176D1C
lbl_80176CF0:
/* 80176CF0 00173C30  C0 01 00 E4 */ lfs f0, 0xe4(r1)
/* 80176CF4 00173C34  D0 1D 00 64 */ stfs f0, 0x64(r29)
/* 80176CF8 00173C38  C0 01 00 E8 */ lfs f0, 0xe8(r1)
/* 80176CFC 00173C3C  D0 1D 00 68 */ stfs f0, 0x68(r29)
/* 80176D00 00173C40  C0 01 00 EC */ lfs f0, 0xec(r1)
/* 80176D04 00173C44  D0 1D 00 6C */ stfs f0, 0x6c(r29)
/* 80176D08 00173C48  38 7D 00 5C */ addi r3, r29, 0x5c
/* 80176D0C 00173C4C  FC 20 C0 90 */ fmr f1, f24
/* 80176D10 00173C50  38 81 00 30 */ addi r4, r1, 0x30
/* 80176D14 00173C54  38 A1 00 2C */ addi r5, r1, 0x2c
/* 80176D18 00173C58  48 0F AC F1 */ bl cSGlobe_NS_Val_X2_
lbl_80176D1C:
/* 80176D1C 00173C5C  38 61 00 48 */ addi r3, r1, 0x48
/* 80176D20 00173C60  38 9D 00 5C */ addi r4, r29, 0x5c
/* 80176D24 00173C64  48 0F AD 91 */ bl cSGlobe_NS_Xyz
/* 80176D28 00173C68  38 61 00 3C */ addi r3, r1, 0x3c
/* 80176D2C 00173C6C  38 9D 00 64 */ addi r4, r29, 0x64
/* 80176D30 00173C70  38 A1 00 48 */ addi r5, r1, 0x48
/* 80176D34 00173C74  48 0E FD B1 */ bl cXyz_NS___pl
/* 80176D38 00173C78  C0 01 00 3C */ lfs f0, 0x3c(r1)
/* 80176D3C 00173C7C  D0 1D 00 70 */ stfs f0, 0x70(r29)
/* 80176D40 00173C80  C0 01 00 40 */ lfs f0, 0x40(r1)
/* 80176D44 00173C84  D0 1D 00 74 */ stfs f0, 0x74(r29)
/* 80176D48 00173C88  C0 01 00 44 */ lfs f0, 0x44(r1)
/* 80176D4C 00173C8C  D0 1D 00 78 */ stfs f0, 0x78(r29)
/* 80176D50 00173C90  C0 5D 00 80 */ lfs f2, 0x80(r29)
/* 80176D54 00173C94  C0 3D 03 FC */ lfs f1, 0x3fc(r29)
/* 80176D58 00173C98  EC 15 A0 28 */ fsubs f0, f21, f20
/* 80176D5C 00173C9C  EC 1F 00 32 */ fmuls f0, f31, f0
/* 80176D60 00173CA0  EC 14 00 2A */ fadds f0, f20, f0
/* 80176D64 00173CA4  EC 00 10 28 */ fsubs f0, f0, f2
/* 80176D68 00173CA8  EC 01 00 32 */ fmuls f0, f1, f0
/* 80176D6C 00173CAC  EC 02 00 2A */ fadds f0, f2, f0
/* 80176D70 00173CB0  D0 1D 00 80 */ stfs f0, 0x80(r29)
/* 80176D74 00173CB4  38 60 00 01 */ li r3, 1
lbl_80176D78:
/* 80176D78 00173CB8  E3 E1 01 E8 */ psq_l f31, 488(r1), 0, 0
/* 80176D7C 00173CBC  CB E1 01 E0 */ lfd f31, 0x1e0(r1)
/* 80176D80 00173CC0  E3 C1 01 D8 */ psq_l f30, 472(r1), 0, 0
/* 80176D84 00173CC4  CB C1 01 D0 */ lfd f30, 0x1d0(r1)
/* 80176D88 00173CC8  E3 A1 01 C8 */ psq_l f29, 456(r1), 0, 0
/* 80176D8C 00173CCC  CB A1 01 C0 */ lfd f29, 0x1c0(r1)
/* 80176D90 00173CD0  E3 81 01 B8 */ psq_l f28, 440(r1), 0, 0
/* 80176D94 00173CD4  CB 81 01 B0 */ lfd f28, 0x1b0(r1)
/* 80176D98 00173CD8  E3 61 01 A8 */ psq_l f27, 424(r1), 0, 0
/* 80176D9C 00173CDC  CB 61 01 A0 */ lfd f27, 0x1a0(r1)
/* 80176DA0 00173CE0  E3 41 01 98 */ psq_l f26, 408(r1), 0, 0
/* 80176DA4 00173CE4  CB 41 01 90 */ lfd f26, 0x190(r1)
/* 80176DA8 00173CE8  E3 21 01 88 */ psq_l f25, 392(r1), 0, 0
/* 80176DAC 00173CEC  CB 21 01 80 */ lfd f25, 0x180(r1)
/* 80176DB0 00173CF0  E3 01 01 78 */ psq_l f24, 376(r1), 0, 0
/* 80176DB4 00173CF4  CB 01 01 70 */ lfd f24, 0x170(r1)
/* 80176DB8 00173CF8  E2 E1 01 68 */ psq_l f23, 360(r1), 0, 0
/* 80176DBC 00173CFC  CA E1 01 60 */ lfd f23, 0x160(r1)
/* 80176DC0 00173D00  E2 C1 01 58 */ psq_l f22, 344(r1), 0, 0
/* 80176DC4 00173D04  CA C1 01 50 */ lfd f22, 0x150(r1)
/* 80176DC8 00173D08  E2 A1 01 48 */ psq_l f21, 328(r1), 0, 0
/* 80176DCC 00173D0C  CA A1 01 40 */ lfd f21, 0x140(r1)
/* 80176DD0 00173D10  E2 81 01 38 */ psq_l f20, 312(r1), 0, 0
/* 80176DD4 00173D14  CA 81 01 30 */ lfd f20, 0x130(r1)
/* 80176DD8 00173D18  39 61 01 30 */ addi r11, r1, 0x130
/* 80176DDC 00173D1C  48 1E B4 4D */ bl _restgpr_29
/* 80176DE0 00173D20  80 01 01 F4 */ lwz r0, 0x1f4(r1)
/* 80176DE4 00173D24  7C 08 03 A6 */ mtlr r0
/* 80176DE8 00173D28  38 21 01 F0 */ addi r1, r1, 0x1f0
/* 80176DEC 00173D2C  4E 80 00 20 */ blr