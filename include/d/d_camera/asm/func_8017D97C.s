/* 8017D97C 0017A8BC  94 21 FE D0 */ stwu r1, -0x130(r1)
/* 8017D980 0017A8C0  7C 08 02 A6 */ mflr r0
/* 8017D984 0017A8C4  90 01 01 34 */ stw r0, 0x134(r1)
/* 8017D988 0017A8C8  DB E1 01 20 */ stfd f31, 0x120(r1)
/* 8017D98C 0017A8CC  F3 E1 01 28 */ psq_st f31, 296(r1), 0, 0
/* 8017D990 0017A8D0  DB C1 01 10 */ stfd f30, 0x110(r1)
/* 8017D994 0017A8D4  F3 C1 01 18 */ psq_st f30, 280(r1), 0, 0
/* 8017D998 0017A8D8  DB A1 01 00 */ stfd f29, 0x100(r1)
/* 8017D99C 0017A8DC  F3 A1 01 08 */ psq_st f29, 264(r1), 0, 0
/* 8017D9A0 0017A8E0  DB 81 00 F0 */ stfd f28, 0xf0(r1)
/* 8017D9A4 0017A8E4  F3 81 00 F8 */ psq_st f28, 248(r1), 0, 0
/* 8017D9A8 0017A8E8  39 61 00 F0 */ addi r11, r1, 0xf0
/* 8017D9AC 0017A8EC  48 1E 48 31 */ bl _savegpr_29
/* 8017D9B0 0017A8F0  7C 7D 1B 78 */ mr r29, r3
/* 8017D9B4 0017A8F4  7C 9E 23 78 */ mr r30, r4
/* 8017D9B8 0017A8F8  C3 E3 09 BC */ lfs f31, 0x9bc(r3)
/* 8017D9BC 0017A8FC  80 03 0A F4 */ lwz r0, 0xaf4(r3)
/* 8017D9C0 0017A900  1F FE 00 78 */ mulli r31, r30, 0x78
/* 8017D9C4 0017A904  7C 80 FA 14 */ add r4, r0, r31
/* 8017D9C8 0017A908  C3 C4 00 08 */ lfs f30, 8(r4)
/* 8017D9CC 0017A90C  C3 A4 00 4C */ lfs f29, 0x4c(r4)
/* 8017D9D0 0017A910  38 61 00 58 */ addi r3, r1, 0x58
/* 8017D9D4 0017A914  C0 24 00 48 */ lfs f1, 0x48(r4)
/* 8017D9D8 0017A918  48 0F 35 F1 */ bl cSAngle_X3_
/* 8017D9DC 0017A91C  38 61 00 54 */ addi r3, r1, 0x54
/* 8017D9E0 0017A920  80 1D 0A F4 */ lwz r0, 0xaf4(r29)
/* 8017D9E4 0017A924  7C 80 FA 14 */ add r4, r0, r31
/* 8017D9E8 0017A928  C0 24 00 68 */ lfs f1, 0x68(r4)
/* 8017D9EC 0017A92C  48 0F 35 DD */ bl cSAngle_X3_
/* 8017D9F0 0017A930  80 1D 01 74 */ lwz r0, 0x174(r29)
/* 8017D9F4 0017A934  28 00 00 00 */ cmplwi r0, 0
/* 8017D9F8 0017A938  40 82 02 54 */ bne lbl_8017DC4C
/* 8017D9FC 0017A93C  3C 60 4F 42 */ lis r3, 0x4F425356@ha
/* 8017DA00 0017A940  38 03 53 56 */ addi r0, r3, 0x4F425356@l
/* 8017DA04 0017A944  90 1D 03 E8 */ stw r0, 0x3e8(r29)
/* 8017DA08 0017A948  38 00 00 01 */ li r0, 1
/* 8017DA0C 0017A94C  98 1D 01 58 */ stb r0, 0x158(r29)
/* 8017DA10 0017A950  80 1D 07 DC */ lwz r0, 0x7dc(r29)
/* 8017DA14 0017A954  2C 00 00 FF */ cmpwi r0, 0xff
/* 8017DA18 0017A958  41 82 00 80 */ beq lbl_8017DA98
/* 8017DA1C 0017A95C  80 1D 0A F4 */ lwz r0, 0xaf4(r29)
/* 8017DA20 0017A960  7C 60 FA 14 */ add r3, r0, r31
/* 8017DA24 0017A964  A0 03 00 06 */ lhz r0, 6(r3)
/* 8017DA28 0017A968  54 00 05 AD */ rlwinm. r0, r0, 0, 0x16, 0x16
/* 8017DA2C 0017A96C  41 82 00 6C */ beq lbl_8017DA98
/* 8017DA30 0017A970  88 1D 07 BD */ lbz r0, 0x7bd(r29)
/* 8017DA34 0017A974  98 1D 0A EC */ stb r0, 0xaec(r29)
/* 8017DA38 0017A978  88 1D 07 BE */ lbz r0, 0x7be(r29)
/* 8017DA3C 0017A97C  98 1D 0A ED */ stb r0, 0xaed(r29)
/* 8017DA40 0017A980  88 1D 07 BF */ lbz r0, 0x7bf(r29)
/* 8017DA44 0017A984  98 1D 0A EE */ stb r0, 0xaee(r29)
/* 8017DA48 0017A988  A0 1D 07 C0 */ lhz r0, 0x7c0(r29)
/* 8017DA4C 0017A98C  7C 00 07 34 */ extsh r0, r0
/* 8017DA50 0017A990  90 1D 0A F0 */ stw r0, 0xaf0(r29)
/* 8017DA54 0017A994  80 7D 06 84 */ lwz r3, 0x684(r29)
/* 8017DA58 0017A998  80 1D 06 8C */ lwz r0, 0x68c(r29)
/* 8017DA5C 0017A99C  1C 00 00 44 */ mulli r0, r0, 0x44
/* 8017DA60 0017A9A0  7C 63 02 14 */ add r3, r3, r0
/* 8017DA64 0017A9A4  80 1D 01 90 */ lwz r0, 0x190(r29)
/* 8017DA68 0017A9A8  1C 00 00 16 */ mulli r0, r0, 0x16
/* 8017DA6C 0017A9AC  7C 63 02 14 */ add r3, r3, r0
/* 8017DA70 0017A9B0  80 1D 01 A4 */ lwz r0, 0x1a4(r29)
/* 8017DA74 0017A9B4  54 00 08 3C */ slwi r0, r0, 1
/* 8017DA78 0017A9B8  7C 63 02 14 */ add r3, r3, r0
/* 8017DA7C 0017A9BC  A8 03 00 18 */ lha r0, 0x18(r3)
/* 8017DA80 0017A9C0  7C 1E 00 00 */ cmpw r30, r0
/* 8017DA84 0017A9C4  40 82 00 6C */ bne lbl_8017DAF0
/* 8017DA88 0017A9C8  38 7D 0A EC */ addi r3, r29, 0xaec
/* 8017DA8C 0017A9CC  7F C4 F3 78 */ mr r4, r30
/* 8017DA90 0017A9D0  4B F0 AB 45 */ bl dCamParam_c_NS_Change
/* 8017DA94 0017A9D4  48 00 00 5C */ b lbl_8017DAF0
lbl_8017DA98:
/* 8017DA98 0017A9D8  38 00 00 FF */ li r0, 0xff
/* 8017DA9C 0017A9DC  98 1D 0A EC */ stb r0, 0xaec(r29)
/* 8017DAA0 0017A9E0  98 1D 0A ED */ stb r0, 0xaed(r29)
/* 8017DAA4 0017A9E4  98 1D 0A EE */ stb r0, 0xaee(r29)
/* 8017DAA8 0017A9E8  38 00 FF FF */ li r0, -1
/* 8017DAAC 0017A9EC  90 1D 0A F0 */ stw r0, 0xaf0(r29)
/* 8017DAB0 0017A9F0  80 7D 06 84 */ lwz r3, 0x684(r29)
/* 8017DAB4 0017A9F4  80 1D 06 8C */ lwz r0, 0x68c(r29)
/* 8017DAB8 0017A9F8  1C 00 00 44 */ mulli r0, r0, 0x44
/* 8017DABC 0017A9FC  7C 63 02 14 */ add r3, r3, r0
/* 8017DAC0 0017AA00  80 1D 01 90 */ lwz r0, 0x190(r29)
/* 8017DAC4 0017AA04  1C 00 00 16 */ mulli r0, r0, 0x16
/* 8017DAC8 0017AA08  7C 63 02 14 */ add r3, r3, r0
/* 8017DACC 0017AA0C  80 1D 01 A4 */ lwz r0, 0x1a4(r29)
/* 8017DAD0 0017AA10  54 00 08 3C */ slwi r0, r0, 1
/* 8017DAD4 0017AA14  7C 63 02 14 */ add r3, r3, r0
/* 8017DAD8 0017AA18  A8 03 00 18 */ lha r0, 0x18(r3)
/* 8017DADC 0017AA1C  7C 1E 00 00 */ cmpw r30, r0
/* 8017DAE0 0017AA20  40 82 00 10 */ bne lbl_8017DAF0
/* 8017DAE4 0017AA24  38 7D 0A EC */ addi r3, r29, 0xaec
/* 8017DAE8 0017AA28  7F C4 F3 78 */ mr r4, r30
/* 8017DAEC 0017AA2C  4B F0 AA E9 */ bl dCamParam_c_NS_Change
lbl_8017DAF0:
/* 8017DAF0 0017AA30  80 1D 07 D8 */ lwz r0, 0x7d8(r29)
/* 8017DAF4 0017AA34  2C 00 00 FF */ cmpwi r0, 0xff
/* 8017DAF8 0017AA38  41 82 00 7C */ beq lbl_8017DB74
/* 8017DAFC 0017AA3C  C0 5D 07 CC */ lfs f2, 0x7cc(r29)
/* 8017DB00 0017AA40  C0 3D 07 C8 */ lfs f1, 0x7c8(r29)
/* 8017DB04 0017AA44  C0 1D 07 C4 */ lfs f0, 0x7c4(r29)
/* 8017DB08 0017AA48  D0 01 00 C0 */ stfs f0, 0xc0(r1)
/* 8017DB0C 0017AA4C  D0 21 00 C4 */ stfs f1, 0xc4(r1)
/* 8017DB10 0017AA50  D0 41 00 C8 */ stfs f2, 0xc8(r1)
/* 8017DB14 0017AA54  D0 1D 03 EC */ stfs f0, 0x3ec(r29)
/* 8017DB18 0017AA58  D0 3D 03 F0 */ stfs f1, 0x3f0(r29)
/* 8017DB1C 0017AA5C  D0 5D 03 F4 */ stfs f2, 0x3f4(r29)
/* 8017DB20 0017AA60  38 61 00 64 */ addi r3, r1, 0x64
/* 8017DB24 0017AA64  C0 22 9D 88 */ lfs f1, lbl_80453788-_SDA2_BASE_(r2)
/* 8017DB28 0017AA68  A8 1D 07 D0 */ lha r0, 0x7d0(r29)
/* 8017DB2C 0017AA6C  7C 00 00 D0 */ neg r0, r0
/* 8017DB30 0017AA70  7C 04 07 34 */ extsh r4, r0
/* 8017DB34 0017AA74  A8 BD 07 D2 */ lha r5, 0x7d2(r29)
/* 8017DB38 0017AA78  48 0F 3C E9 */ bl cSGlobe_X2_
/* 8017DB3C 0017AA7C  38 61 00 B4 */ addi r3, r1, 0xb4
/* 8017DB40 0017AA80  38 81 00 64 */ addi r4, r1, 0x64
/* 8017DB44 0017AA84  48 0F 3F 71 */ bl cSGlobe_NS_Xyz
/* 8017DB48 0017AA88  38 61 00 A8 */ addi r3, r1, 0xa8
/* 8017DB4C 0017AA8C  38 9D 03 EC */ addi r4, r29, 0x3ec
/* 8017DB50 0017AA90  38 A1 00 B4 */ addi r5, r1, 0xb4
/* 8017DB54 0017AA94  48 0E 8F 91 */ bl cXyz_NS___pl
/* 8017DB58 0017AA98  C0 01 00 A8 */ lfs f0, 0xa8(r1)
/* 8017DB5C 0017AA9C  D0 1D 04 10 */ stfs f0, 0x410(r29)
/* 8017DB60 0017AAA0  C0 01 00 AC */ lfs f0, 0xac(r1)
/* 8017DB64 0017AAA4  D0 1D 04 14 */ stfs f0, 0x414(r29)
/* 8017DB68 0017AAA8  C0 01 00 B0 */ lfs f0, 0xb0(r1)
/* 8017DB6C 0017AAAC  D0 1D 04 18 */ stfs f0, 0x418(r29)
/* 8017DB70 0017AAB0  48 00 00 78 */ b lbl_8017DBE8
lbl_8017DB74:
/* 8017DB74 0017AAB4  C0 1D 00 70 */ lfs f0, 0x70(r29)
/* 8017DB78 0017AAB8  D0 1D 03 EC */ stfs f0, 0x3ec(r29)
/* 8017DB7C 0017AABC  C0 1D 00 74 */ lfs f0, 0x74(r29)
/* 8017DB80 0017AAC0  D0 1D 03 F0 */ stfs f0, 0x3f0(r29)
/* 8017DB84 0017AAC4  C0 1D 00 78 */ lfs f0, 0x78(r29)
/* 8017DB88 0017AAC8  D0 1D 03 F4 */ stfs f0, 0x3f4(r29)
/* 8017DB8C 0017AACC  38 7D 00 62 */ addi r3, r29, 0x62
/* 8017DB90 0017AAD0  48 0F 35 59 */ bl cSAngle_NS_Inv
/* 8017DB94 0017AAD4  7C 7E 1B 78 */ mr r30, r3
/* 8017DB98 0017AAD8  38 7D 00 60 */ addi r3, r29, 0x60
/* 8017DB9C 0017AADC  48 0F 35 4D */ bl cSAngle_NS_Inv
/* 8017DBA0 0017AAE0  7C 64 1B 78 */ mr r4, r3
/* 8017DBA4 0017AAE4  38 61 00 5C */ addi r3, r1, 0x5c
/* 8017DBA8 0017AAE8  C0 22 9D 88 */ lfs f1, lbl_80453788-_SDA2_BASE_(r2)
/* 8017DBAC 0017AAEC  7F C5 F3 78 */ mr r5, r30
/* 8017DBB0 0017AAF0  48 0F 3C 71 */ bl cSGlobe_X2_
/* 8017DBB4 0017AAF4  38 61 00 9C */ addi r3, r1, 0x9c
/* 8017DBB8 0017AAF8  38 81 00 5C */ addi r4, r1, 0x5c
/* 8017DBBC 0017AAFC  48 0F 3E F9 */ bl cSGlobe_NS_Xyz
/* 8017DBC0 0017AB00  38 61 00 90 */ addi r3, r1, 0x90
/* 8017DBC4 0017AB04  38 9D 03 EC */ addi r4, r29, 0x3ec
/* 8017DBC8 0017AB08  38 A1 00 9C */ addi r5, r1, 0x9c
/* 8017DBCC 0017AB0C  48 0E 8F 19 */ bl cXyz_NS___pl
/* 8017DBD0 0017AB10  C0 01 00 90 */ lfs f0, 0x90(r1)
/* 8017DBD4 0017AB14  D0 1D 04 10 */ stfs f0, 0x410(r29)
/* 8017DBD8 0017AB18  C0 01 00 94 */ lfs f0, 0x94(r1)
/* 8017DBDC 0017AB1C  D0 1D 04 14 */ stfs f0, 0x414(r29)
/* 8017DBE0 0017AB20  C0 01 00 98 */ lfs f0, 0x98(r1)
/* 8017DBE4 0017AB24  D0 1D 04 18 */ stfs f0, 0x418(r29)
lbl_8017DBE8:
/* 8017DBE8 0017AB28  38 61 00 84 */ addi r3, r1, 0x84
/* 8017DBEC 0017AB2C  38 9D 03 EC */ addi r4, r29, 0x3ec
/* 8017DBF0 0017AB30  38 BD 04 10 */ addi r5, r29, 0x410
/* 8017DBF4 0017AB34  48 0E 8F 41 */ bl cXyz_NS___mi
/* 8017DBF8 0017AB38  38 7D 03 F8 */ addi r3, r29, 0x3f8
/* 8017DBFC 0017AB3C  38 81 00 84 */ addi r4, r1, 0x84
/* 8017DC00 0017AB40  48 0F 3E 71 */ bl cSGlobe_NS_Val_X3_
/* 8017DC04 0017AB44  C0 1D 04 10 */ lfs f0, 0x410(r29)
/* 8017DC08 0017AB48  D0 1D 00 64 */ stfs f0, 0x64(r29)
/* 8017DC0C 0017AB4C  C0 1D 04 14 */ lfs f0, 0x414(r29)
/* 8017DC10 0017AB50  D0 1D 00 68 */ stfs f0, 0x68(r29)
/* 8017DC14 0017AB54  C0 1D 04 18 */ lfs f0, 0x418(r29)
/* 8017DC18 0017AB58  D0 1D 00 6C */ stfs f0, 0x6c(r29)
/* 8017DC1C 0017AB5C  C0 1D 03 EC */ lfs f0, 0x3ec(r29)
/* 8017DC20 0017AB60  D0 1D 00 70 */ stfs f0, 0x70(r29)
/* 8017DC24 0017AB64  C0 1D 03 F0 */ lfs f0, 0x3f0(r29)
/* 8017DC28 0017AB68  D0 1D 00 74 */ stfs f0, 0x74(r29)
/* 8017DC2C 0017AB6C  C0 1D 03 F4 */ lfs f0, 0x3f4(r29)
/* 8017DC30 0017AB70  D0 1D 00 78 */ stfs f0, 0x78(r29)
/* 8017DC34 0017AB74  C0 1D 03 F8 */ lfs f0, 0x3f8(r29)
/* 8017DC38 0017AB78  D0 1D 00 5C */ stfs f0, 0x5c(r29)
/* 8017DC3C 0017AB7C  A8 1D 03 FC */ lha r0, 0x3fc(r29)
/* 8017DC40 0017AB80  B0 1D 00 60 */ sth r0, 0x60(r29)
/* 8017DC44 0017AB84  A8 1D 03 FE */ lha r0, 0x3fe(r29)
/* 8017DC48 0017AB88  B0 1D 00 62 */ sth r0, 0x62(r29)
lbl_8017DC4C:
/* 8017DC4C 0017AB8C  80 1D 0A F4 */ lwz r0, 0xaf4(r29)
/* 8017DC50 0017AB90  7C 60 FA 14 */ add r3, r0, r31
/* 8017DC54 0017AB94  A0 03 00 06 */ lhz r0, 6(r3)
/* 8017DC58 0017AB98  54 00 05 AD */ rlwinm. r0, r0, 0, 0x16, 0x16
/* 8017DC5C 0017AB9C  41 82 00 A8 */ beq lbl_8017DD04
/* 8017DC60 0017ABA0  88 1D 0A EC */ lbz r0, 0xaec(r29)
/* 8017DC64 0017ABA4  28 00 00 FF */ cmplwi r0, 0xff
/* 8017DC68 0017ABA8  41 82 00 24 */ beq lbl_8017DC8C
/* 8017DC6C 0017ABAC  7C 00 07 74 */ extsb r0, r0
/* 8017DC70 0017ABB0  C8 22 9C 98 */ lfd f1, lbl_80453698-_SDA2_BASE_(r2)
/* 8017DC74 0017ABB4  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8017DC78 0017ABB8  90 01 00 D4 */ stw r0, 0xd4(r1)
/* 8017DC7C 0017ABBC  3C 00 43 30 */ lis r0, 0x4330
/* 8017DC80 0017ABC0  90 01 00 D0 */ stw r0, 0xd0(r1)
/* 8017DC84 0017ABC4  C8 01 00 D0 */ lfd f0, 0xd0(r1)
/* 8017DC88 0017ABC8  EF A0 08 28 */ fsubs f29, f0, f1
lbl_8017DC8C:
/* 8017DC8C 0017ABCC  88 1D 0A ED */ lbz r0, 0xaed(r29)
/* 8017DC90 0017ABD0  28 00 00 FF */ cmplwi r0, 0xff
/* 8017DC94 0017ABD4  41 82 00 34 */ beq lbl_8017DCC8
/* 8017DC98 0017ABD8  38 61 00 44 */ addi r3, r1, 0x44
/* 8017DC9C 0017ABDC  7C 00 07 74 */ extsb r0, r0
/* 8017DCA0 0017ABE0  C8 22 9C 98 */ lfd f1, lbl_80453698-_SDA2_BASE_(r2)
/* 8017DCA4 0017ABE4  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8017DCA8 0017ABE8  90 01 00 D4 */ stw r0, 0xd4(r1)
/* 8017DCAC 0017ABEC  3C 00 43 30 */ lis r0, 0x4330
/* 8017DCB0 0017ABF0  90 01 00 D0 */ stw r0, 0xd0(r1)
/* 8017DCB4 0017ABF4  C8 01 00 D0 */ lfd f0, 0xd0(r1)
/* 8017DCB8 0017ABF8  EC 20 08 28 */ fsubs f1, f0, f1
/* 8017DCBC 0017ABFC  48 0F 33 0D */ bl cSAngle_X3_
/* 8017DCC0 0017AC00  A8 01 00 44 */ lha r0, 0x44(r1)
/* 8017DCC4 0017AC04  B0 01 00 58 */ sth r0, 0x58(r1)
lbl_8017DCC8:
/* 8017DCC8 0017AC08  88 1D 0A EE */ lbz r0, 0xaee(r29)
/* 8017DCCC 0017AC0C  28 00 00 FF */ cmplwi r0, 0xff
/* 8017DCD0 0017AC10  41 82 00 34 */ beq lbl_8017DD04
/* 8017DCD4 0017AC14  38 61 00 40 */ addi r3, r1, 0x40
/* 8017DCD8 0017AC18  7C 00 07 74 */ extsb r0, r0
/* 8017DCDC 0017AC1C  C8 22 9C 98 */ lfd f1, lbl_80453698-_SDA2_BASE_(r2)
/* 8017DCE0 0017AC20  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 8017DCE4 0017AC24  90 01 00 D4 */ stw r0, 0xd4(r1)
/* 8017DCE8 0017AC28  3C 00 43 30 */ lis r0, 0x4330
/* 8017DCEC 0017AC2C  90 01 00 D0 */ stw r0, 0xd0(r1)
/* 8017DCF0 0017AC30  C8 01 00 D0 */ lfd f0, 0xd0(r1)
/* 8017DCF4 0017AC34  EC 20 08 28 */ fsubs f1, f0, f1
/* 8017DCF8 0017AC38  48 0F 32 D1 */ bl cSAngle_X3_
/* 8017DCFC 0017AC3C  A8 01 00 40 */ lha r0, 0x40(r1)
/* 8017DD00 0017AC40  B0 01 00 54 */ sth r0, 0x54(r1)
lbl_8017DD04:
/* 8017DD04 0017AC44  C0 3D 01 BC */ lfs f1, 0x1bc(r29)
/* 8017DD08 0017AC48  C0 02 9D 24 */ lfs f0, lbl_80453724-_SDA2_BASE_(r2)
/* 8017DD0C 0017AC4C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8017DD10 0017AC50  4C 41 13 82 */ cror 2, 1, 2
/* 8017DD14 0017AC54  40 82 00 0C */ bne lbl_8017DD20
/* 8017DD18 0017AC58  C3 82 9C A8 */ lfs f28, lbl_804536A8-_SDA2_BASE_(r2)
/* 8017DD1C 0017AC5C  48 00 00 30 */ b lbl_8017DD4C
lbl_8017DD20:
/* 8017DD20 0017AC60  C0 02 9F 00 */ lfs f0, lbl_80453900-_SDA2_BASE_(r2)
/* 8017DD24 0017AC64  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8017DD28 0017AC68  4C 40 13 82 */ cror 2, 0, 2
/* 8017DD2C 0017AC6C  40 82 00 0C */ bne lbl_8017DD38
/* 8017DD30 0017AC70  C3 82 9E 9C */ lfs f28, lbl_8045389C-_SDA2_BASE_(r2)
/* 8017DD34 0017AC74  48 00 00 18 */ b lbl_8017DD4C
lbl_8017DD38:
/* 8017DD38 0017AC78  C0 02 9F 04 */ lfs f0, lbl_80453904-_SDA2_BASE_(r2)
/* 8017DD3C 0017AC7C  EC 20 00 72 */ fmuls f1, f0, f1
/* 8017DD40 0017AC80  FC 40 F8 90 */ fmr f2, f31
/* 8017DD44 0017AC84  4B F0 A3 F9 */ bl dCamMath_NS_rationalBezierRatio
/* 8017DD48 0017AC88  FF 80 08 90 */ fmr f28, f1
lbl_8017DD4C:
/* 8017DD4C 0017AC8C  C0 3D 01 C0 */ lfs f1, 0x1c0(r29)
/* 8017DD50 0017AC90  C0 02 9D 24 */ lfs f0, lbl_80453724-_SDA2_BASE_(r2)
/* 8017DD54 0017AC94  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8017DD58 0017AC98  4C 41 13 82 */ cror 2, 1, 2
/* 8017DD5C 0017AC9C  40 82 00 0C */ bne lbl_8017DD68
/* 8017DD60 0017ACA0  C0 22 9C A8 */ lfs f1, lbl_804536A8-_SDA2_BASE_(r2)
/* 8017DD64 0017ACA4  48 00 00 2C */ b lbl_8017DD90
lbl_8017DD68:
/* 8017DD68 0017ACA8  C0 02 9F 00 */ lfs f0, lbl_80453900-_SDA2_BASE_(r2)
/* 8017DD6C 0017ACAC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8017DD70 0017ACB0  4C 40 13 82 */ cror 2, 0, 2
/* 8017DD74 0017ACB4  40 82 00 0C */ bne lbl_8017DD80
/* 8017DD78 0017ACB8  C0 22 9E 9C */ lfs f1, lbl_8045389C-_SDA2_BASE_(r2)
/* 8017DD7C 0017ACBC  48 00 00 14 */ b lbl_8017DD90
lbl_8017DD80:
/* 8017DD80 0017ACC0  C0 02 9F 04 */ lfs f0, lbl_80453904-_SDA2_BASE_(r2)
/* 8017DD84 0017ACC4  EC 20 00 72 */ fmuls f1, f0, f1
/* 8017DD88 0017ACC8  FC 40 F8 90 */ fmr f2, f31
/* 8017DD8C 0017ACCC  4B F0 A3 B1 */ bl dCamMath_NS_rationalBezierRatio
lbl_8017DD90:
/* 8017DD90 0017ACD0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8017DD94 0017ACD4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8017DD98 0017ACD8  88 03 01 EA */ lbz r0, 0x1ea(r3)
/* 8017DD9C 0017ACDC  28 00 00 00 */ cmplwi r0, 0
/* 8017DDA0 0017ACE0  41 82 00 08 */ beq lbl_8017DDA8
/* 8017DDA4 0017ACE4  FC 20 08 50 */ fneg f1, f1
lbl_8017DDA8:
/* 8017DDA8 0017ACE8  38 61 00 3C */ addi r3, r1, 0x3c
/* 8017DDAC 0017ACEC  EC 3E 00 72 */ fmuls f1, f30, f1
/* 8017DDB0 0017ACF0  48 0F 32 19 */ bl cSAngle_X3_
/* 8017DDB4 0017ACF4  38 61 00 38 */ addi r3, r1, 0x38
/* 8017DDB8 0017ACF8  38 9D 00 60 */ addi r4, r29, 0x60
/* 8017DDBC 0017ACFC  38 A1 00 3C */ addi r5, r1, 0x3c
/* 8017DDC0 0017AD00  48 0F 33 B5 */ bl cSAngle_NS___pl
/* 8017DDC4 0017AD04  38 61 00 4C */ addi r3, r1, 0x4c
/* 8017DDC8 0017AD08  38 81 00 38 */ addi r4, r1, 0x38
/* 8017DDCC 0017AD0C  48 0F 31 9D */ bl cSAngle_X1_
/* 8017DDD0 0017AD10  38 61 00 34 */ addi r3, r1, 0x34
/* 8017DDD4 0017AD14  38 81 00 4C */ addi r4, r1, 0x4c
/* 8017DDD8 0017AD18  3B DD 03 FC */ addi r30, r29, 0x3fc
/* 8017DDDC 0017AD1C  7F C5 F3 78 */ mr r5, r30
/* 8017DDE0 0017AD20  48 0F 33 C5 */ bl cSAngle_NS___mi_X1_
/* 8017DDE4 0017AD24  A8 01 00 34 */ lha r0, 0x34(r1)
/* 8017DDE8 0017AD28  B0 01 00 50 */ sth r0, 0x50(r1)
/* 8017DDEC 0017AD2C  7C 03 07 34 */ extsh r3, r0
/* 8017DDF0 0017AD30  A8 01 00 58 */ lha r0, 0x58(r1)
/* 8017DDF4 0017AD34  7C 03 00 00 */ cmpw r3, r0
/* 8017DDF8 0017AD38  40 81 00 20 */ ble lbl_8017DE18
/* 8017DDFC 0017AD3C  38 61 00 30 */ addi r3, r1, 0x30
/* 8017DE00 0017AD40  7F C4 F3 78 */ mr r4, r30
/* 8017DE04 0017AD44  38 A1 00 58 */ addi r5, r1, 0x58
/* 8017DE08 0017AD48  48 0F 33 6D */ bl cSAngle_NS___pl
/* 8017DE0C 0017AD4C  A8 01 00 30 */ lha r0, 0x30(r1)
/* 8017DE10 0017AD50  B0 01 00 4C */ sth r0, 0x4c(r1)
/* 8017DE14 0017AD54  48 00 00 48 */ b lbl_8017DE5C
lbl_8017DE18:
/* 8017DE18 0017AD58  38 61 00 2C */ addi r3, r1, 0x2c
/* 8017DE1C 0017AD5C  38 81 00 58 */ addi r4, r1, 0x58
/* 8017DE20 0017AD60  48 0F 33 29 */ bl cSAngle_NS___mi
/* 8017DE24 0017AD64  A8 01 00 50 */ lha r0, 0x50(r1)
/* 8017DE28 0017AD68  A8 81 00 2C */ lha r4, 0x2c(r1)
/* 8017DE2C 0017AD6C  7C 80 02 78 */ xor r0, r4, r0
/* 8017DE30 0017AD70  7C 03 0E 70 */ srawi r3, r0, 1
/* 8017DE34 0017AD74  7C 00 20 38 */ and r0, r0, r4
/* 8017DE38 0017AD78  7C 00 18 50 */ subf r0, r0, r3
/* 8017DE3C 0017AD7C  54 00 0F FF */ rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8017DE40 0017AD80  41 82 00 1C */ beq lbl_8017DE5C
/* 8017DE44 0017AD84  38 61 00 28 */ addi r3, r1, 0x28
/* 8017DE48 0017AD88  7F C4 F3 78 */ mr r4, r30
/* 8017DE4C 0017AD8C  38 A1 00 58 */ addi r5, r1, 0x58
/* 8017DE50 0017AD90  48 0F 33 55 */ bl cSAngle_NS___mi_X1_
/* 8017DE54 0017AD94  A8 01 00 28 */ lha r0, 0x28(r1)
/* 8017DE58 0017AD98  B0 01 00 4C */ sth r0, 0x4c(r1)
lbl_8017DE5C:
/* 8017DE5C 0017AD9C  38 61 00 0C */ addi r3, r1, 0xc
/* 8017DE60 0017ADA0  A8 81 00 4C */ lha r4, 0x4c(r1)
/* 8017DE64 0017ADA4  48 0F 31 35 */ bl cSAngle_X2_
/* 8017DE68 0017ADA8  A8 01 00 0C */ lha r0, 0xc(r1)
/* 8017DE6C 0017ADAC  B0 1D 00 60 */ sth r0, 0x60(r29)
/* 8017DE70 0017ADB0  38 61 00 24 */ addi r3, r1, 0x24
/* 8017DE74 0017ADB4  EC 3E 07 32 */ fmuls f1, f30, f28
/* 8017DE78 0017ADB8  48 0F 31 51 */ bl cSAngle_X3_
/* 8017DE7C 0017ADBC  38 61 00 20 */ addi r3, r1, 0x20
/* 8017DE80 0017ADC0  38 9D 00 62 */ addi r4, r29, 0x62
/* 8017DE84 0017ADC4  38 A1 00 24 */ addi r5, r1, 0x24
/* 8017DE88 0017ADC8  48 0F 33 1D */ bl cSAngle_NS___mi_X1_
/* 8017DE8C 0017ADCC  38 61 00 48 */ addi r3, r1, 0x48
/* 8017DE90 0017ADD0  38 81 00 20 */ addi r4, r1, 0x20
/* 8017DE94 0017ADD4  48 0F 30 D5 */ bl cSAngle_X1_
/* 8017DE98 0017ADD8  38 61 00 1C */ addi r3, r1, 0x1c
/* 8017DE9C 0017ADDC  38 81 00 48 */ addi r4, r1, 0x48
/* 8017DEA0 0017ADE0  3B DD 03 FE */ addi r30, r29, 0x3fe
/* 8017DEA4 0017ADE4  7F C5 F3 78 */ mr r5, r30
/* 8017DEA8 0017ADE8  48 0F 32 FD */ bl cSAngle_NS___mi_X1_
/* 8017DEAC 0017ADEC  A8 01 00 1C */ lha r0, 0x1c(r1)
/* 8017DEB0 0017ADF0  B0 01 00 50 */ sth r0, 0x50(r1)
/* 8017DEB4 0017ADF4  7C 03 07 34 */ extsh r3, r0
/* 8017DEB8 0017ADF8  A8 01 00 54 */ lha r0, 0x54(r1)
/* 8017DEBC 0017ADFC  7C 03 00 00 */ cmpw r3, r0
/* 8017DEC0 0017AE00  40 81 00 20 */ ble lbl_8017DEE0
/* 8017DEC4 0017AE04  38 61 00 18 */ addi r3, r1, 0x18
/* 8017DEC8 0017AE08  7F C4 F3 78 */ mr r4, r30
/* 8017DECC 0017AE0C  38 A1 00 54 */ addi r5, r1, 0x54
/* 8017DED0 0017AE10  48 0F 32 A5 */ bl cSAngle_NS___pl
/* 8017DED4 0017AE14  A8 01 00 18 */ lha r0, 0x18(r1)
/* 8017DED8 0017AE18  B0 01 00 48 */ sth r0, 0x48(r1)
/* 8017DEDC 0017AE1C  48 00 00 48 */ b lbl_8017DF24
lbl_8017DEE0:
/* 8017DEE0 0017AE20  38 61 00 14 */ addi r3, r1, 0x14
/* 8017DEE4 0017AE24  38 81 00 54 */ addi r4, r1, 0x54
/* 8017DEE8 0017AE28  48 0F 32 61 */ bl cSAngle_NS___mi
/* 8017DEEC 0017AE2C  A8 01 00 50 */ lha r0, 0x50(r1)
/* 8017DEF0 0017AE30  A8 81 00 14 */ lha r4, 0x14(r1)
/* 8017DEF4 0017AE34  7C 80 02 78 */ xor r0, r4, r0
/* 8017DEF8 0017AE38  7C 03 0E 70 */ srawi r3, r0, 1
/* 8017DEFC 0017AE3C  7C 00 20 38 */ and r0, r0, r4
/* 8017DF00 0017AE40  7C 00 18 50 */ subf r0, r0, r3
/* 8017DF04 0017AE44  54 00 0F FF */ rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8017DF08 0017AE48  41 82 00 1C */ beq lbl_8017DF24
/* 8017DF0C 0017AE4C  38 61 00 10 */ addi r3, r1, 0x10
/* 8017DF10 0017AE50  7F C4 F3 78 */ mr r4, r30
/* 8017DF14 0017AE54  38 A1 00 54 */ addi r5, r1, 0x54
/* 8017DF18 0017AE58  48 0F 32 8D */ bl cSAngle_NS___mi_X1_
/* 8017DF1C 0017AE5C  A8 01 00 10 */ lha r0, 0x10(r1)
/* 8017DF20 0017AE60  B0 01 00 48 */ sth r0, 0x48(r1)
lbl_8017DF24:
/* 8017DF24 0017AE64  38 61 00 08 */ addi r3, r1, 8
/* 8017DF28 0017AE68  A8 81 00 48 */ lha r4, 0x48(r1)
/* 8017DF2C 0017AE6C  48 0F 30 6D */ bl cSAngle_X2_
/* 8017DF30 0017AE70  A8 01 00 08 */ lha r0, 8(r1)
/* 8017DF34 0017AE74  B0 1D 00 62 */ sth r0, 0x62(r29)
/* 8017DF38 0017AE78  38 61 00 78 */ addi r3, r1, 0x78
/* 8017DF3C 0017AE7C  38 9D 00 5C */ addi r4, r29, 0x5c
/* 8017DF40 0017AE80  48 0F 3B 75 */ bl cSGlobe_NS_Xyz
/* 8017DF44 0017AE84  38 61 00 6C */ addi r3, r1, 0x6c
/* 8017DF48 0017AE88  38 9D 00 64 */ addi r4, r29, 0x64
/* 8017DF4C 0017AE8C  38 A1 00 78 */ addi r5, r1, 0x78
/* 8017DF50 0017AE90  48 0E 8B 95 */ bl cXyz_NS___pl
/* 8017DF54 0017AE94  C0 01 00 6C */ lfs f0, 0x6c(r1)
/* 8017DF58 0017AE98  D0 1D 00 70 */ stfs f0, 0x70(r29)
/* 8017DF5C 0017AE9C  C0 01 00 70 */ lfs f0, 0x70(r1)
/* 8017DF60 0017AEA0  D0 1D 00 74 */ stfs f0, 0x74(r29)
/* 8017DF64 0017AEA4  C0 01 00 74 */ lfs f0, 0x74(r1)
/* 8017DF68 0017AEA8  D0 1D 00 78 */ stfs f0, 0x78(r29)
/* 8017DF6C 0017AEAC  D3 BD 00 80 */ stfs f29, 0x80(r29)
/* 8017DF70 0017AEB0  38 60 00 01 */ li r3, 1
/* 8017DF74 0017AEB4  E3 E1 01 28 */ psq_l f31, 296(r1), 0, 0
/* 8017DF78 0017AEB8  CB E1 01 20 */ lfd f31, 0x120(r1)
/* 8017DF7C 0017AEBC  E3 C1 01 18 */ psq_l f30, 280(r1), 0, 0
/* 8017DF80 0017AEC0  CB C1 01 10 */ lfd f30, 0x110(r1)
/* 8017DF84 0017AEC4  E3 A1 01 08 */ psq_l f29, 264(r1), 0, 0
/* 8017DF88 0017AEC8  CB A1 01 00 */ lfd f29, 0x100(r1)
/* 8017DF8C 0017AECC  E3 81 00 F8 */ psq_l f28, 248(r1), 0, 0
/* 8017DF90 0017AED0  CB 81 00 F0 */ lfd f28, 0xf0(r1)
/* 8017DF94 0017AED4  39 61 00 F0 */ addi r11, r1, 0xf0
/* 8017DF98 0017AED8  48 1E 42 91 */ bl _restgpr_29
/* 8017DF9C 0017AEDC  80 01 01 34 */ lwz r0, 0x134(r1)
/* 8017DFA0 0017AEE0  7C 08 03 A6 */ mtlr r0
/* 8017DFA4 0017AEE4  38 21 01 30 */ addi r1, r1, 0x130
/* 8017DFA8 0017AEE8  4E 80 00 20 */ blr