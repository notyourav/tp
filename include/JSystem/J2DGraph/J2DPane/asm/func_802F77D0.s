/* 802F77D0 002F4710  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 802F77D4 002F4714  7C 08 02 A6 */ mflr r0
/* 802F77D8 002F4718  90 01 00 54 */ stw r0, 0x54(r1)
/* 802F77DC 002F471C  DB E1 00 40 */ stfd f31, 0x40(r1)
/* 802F77E0 002F4720  F3 E1 00 48 */ psq_st f31, 72(r1), 0, 0
/* 802F77E4 002F4724  DB C1 00 30 */ stfd f30, 0x30(r1)
/* 802F77E8 002F4728  F3 C1 00 38 */ psq_st f30, 56(r1), 0, 0
/* 802F77EC 002F472C  39 61 00 30 */ addi r11, r1, 0x30
/* 802F77F0 002F4730  48 06 A9 E9 */ bl _savegpr_28
/* 802F77F4 002F4734  7C 7E 1B 78 */ mr r30, r3
/* 802F77F8 002F4738  7C 9F 23 78 */ mr r31, r4
/* 802F77FC 002F473C  54 A0 06 3F */ clrlwi. r0, r5, 0x18
/* 802F7800 002F4740  41 82 01 7C */ beq lbl_802F797C
/* 802F7804 002F4744  88 9E 00 B4 */ lbz r4, 0xb4(r30)
/* 802F7808 002F4748  57 E0 06 3E */ clrlwi r0, r31, 0x18
/* 802F780C 002F474C  7C 04 00 40 */ cmplw r4, r0
/* 802F7810 002F4750  41 82 01 6C */ beq lbl_802F797C
/* 802F7814 002F4754  48 00 02 E9 */ bl getParentPane__7J2DPaneFv
/* 802F7818 002F4758  3B 80 00 FF */ li r28, 0xff
/* 802F781C 002F475C  CB C2 C8 00 */ lfd f30, lbl_80456200-_SDA2_BASE_(r2)
/* 802F7820 002F4760  3F A0 43 30 */ lis r29, 0x4330
/* 802F7824 002F4764  C3 E2 C8 10 */ lfs f31, lbl_80456210-_SDA2_BASE_(r2)
/* 802F7828 002F4768  48 00 00 64 */ b lbl_802F788C
lbl_802F782C:
/* 802F782C 002F476C  88 83 00 B2 */ lbz r4, 0xb2(r3)
/* 802F7830 002F4770  28 04 00 00 */ cmplwi r4, 0
/* 802F7834 002F4774  40 82 00 0C */ bne lbl_802F7840
/* 802F7838 002F4778  3B 80 00 00 */ li r28, 0
/* 802F783C 002F477C  48 00 00 58 */ b lbl_802F7894
lbl_802F7840:
/* 802F7840 002F4780  57 80 06 3E */ clrlwi r0, r28, 0x18
/* 802F7844 002F4784  90 01 00 0C */ stw r0, 0xc(r1)
/* 802F7848 002F4788  93 A1 00 08 */ stw r29, 8(r1)
/* 802F784C 002F478C  C8 01 00 08 */ lfd f0, 8(r1)
/* 802F7850 002F4790  EC 20 F0 28 */ fsubs f1, f0, f30
/* 802F7854 002F4794  54 80 06 3E */ clrlwi r0, r4, 0x18
/* 802F7858 002F4798  90 01 00 14 */ stw r0, 0x14(r1)
/* 802F785C 002F479C  93 A1 00 10 */ stw r29, 0x10(r1)
/* 802F7860 002F47A0  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 802F7864 002F47A4  EC 00 F0 28 */ fsubs f0, f0, f30
/* 802F7868 002F47A8  EC 01 00 32 */ fmuls f0, f1, f0
/* 802F786C 002F47AC  EC 00 F8 24 */ fdivs f0, f0, f31
/* 802F7870 002F47B0  FC 00 00 1E */ fctiwz f0, f0
/* 802F7874 002F47B4  D8 01 00 18 */ stfd f0, 0x18(r1)
/* 802F7878 002F47B8  83 81 00 1C */ lwz r28, 0x1c(r1)
/* 802F787C 002F47BC  88 03 00 B4 */ lbz r0, 0xb4(r3)
/* 802F7880 002F47C0  28 00 00 00 */ cmplwi r0, 0
/* 802F7884 002F47C4  41 82 00 10 */ beq lbl_802F7894
/* 802F7888 002F47C8  48 00 02 75 */ bl getParentPane__7J2DPaneFv
lbl_802F788C:
/* 802F788C 002F47CC  28 03 00 00 */ cmplwi r3, 0
/* 802F7890 002F47D0  40 82 FF 9C */ bne lbl_802F782C
lbl_802F7894:
/* 802F7894 002F47D4  57 E0 06 3F */ clrlwi. r0, r31, 0x18
/* 802F7898 002F47D8  41 82 00 94 */ beq lbl_802F792C
/* 802F789C 002F47DC  57 83 06 3F */ clrlwi. r3, r28, 0x18
/* 802F78A0 002F47E0  40 82 00 20 */ bne lbl_802F78C0
/* 802F78A4 002F47E4  7F C3 F3 78 */ mr r3, r30
/* 802F78A8 002F47E8  38 80 00 00 */ li r4, 0
/* 802F78AC 002F47EC  81 9E 00 00 */ lwz r12, 0(r30)
/* 802F78B0 002F47F0  81 8C 00 24 */ lwz r12, 0x24(r12)
/* 802F78B4 002F47F4  7D 89 03 A6 */ mtctr r12
/* 802F78B8 002F47F8  4E 80 04 21 */ bctrl
/* 802F78BC 002F47FC  48 00 00 C0 */ b lbl_802F797C
lbl_802F78C0:
/* 802F78C0 002F4800  C0 62 C8 10 */ lfs f3, lbl_80456210-_SDA2_BASE_(r2)
/* 802F78C4 002F4804  88 1E 00 B2 */ lbz r0, 0xb2(r30)
/* 802F78C8 002F4808  C8 42 C8 00 */ lfd f2, lbl_80456200-_SDA2_BASE_(r2)
/* 802F78CC 002F480C  90 01 00 1C */ stw r0, 0x1c(r1)
/* 802F78D0 002F4810  3C 00 43 30 */ lis r0, 0x4330
/* 802F78D4 002F4814  90 01 00 18 */ stw r0, 0x18(r1)
/* 802F78D8 002F4818  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 802F78DC 002F481C  EC 20 10 28 */ fsubs f1, f0, f2
/* 802F78E0 002F4820  90 61 00 14 */ stw r3, 0x14(r1)
/* 802F78E4 002F4824  90 01 00 10 */ stw r0, 0x10(r1)
/* 802F78E8 002F4828  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 802F78EC 002F482C  EC 00 10 28 */ fsubs f0, f0, f2
/* 802F78F0 002F4830  EC 01 00 24 */ fdivs f0, f1, f0
/* 802F78F4 002F4834  EC 03 00 32 */ fmuls f0, f3, f0
/* 802F78F8 002F4838  7F C3 F3 78 */ mr r3, r30
/* 802F78FC 002F483C  FC 00 18 40 */ fcmpo cr0, f0, f3
/* 802F7900 002F4840  40 81 00 0C */ ble lbl_802F790C
/* 802F7904 002F4844  38 80 00 FF */ li r4, 0xff
/* 802F7908 002F4848  48 00 00 10 */ b lbl_802F7918
lbl_802F790C:
/* 802F790C 002F484C  FC 00 00 1E */ fctiwz f0, f0
/* 802F7910 002F4850  D8 01 00 08 */ stfd f0, 8(r1)
/* 802F7914 002F4854  80 81 00 0C */ lwz r4, 0xc(r1)
lbl_802F7918:
/* 802F7918 002F4858  81 83 00 00 */ lwz r12, 0(r3)
/* 802F791C 002F485C  81 8C 00 24 */ lwz r12, 0x24(r12)
/* 802F7920 002F4860  7D 89 03 A6 */ mtctr r12
/* 802F7924 002F4864  4E 80 04 21 */ bctrl
/* 802F7928 002F4868  48 00 00 54 */ b lbl_802F797C
lbl_802F792C:
/* 802F792C 002F486C  7F C3 F3 78 */ mr r3, r30
/* 802F7930 002F4870  57 84 06 3E */ clrlwi r4, r28, 0x18
/* 802F7934 002F4874  88 1E 00 B2 */ lbz r0, 0xb2(r30)
/* 802F7938 002F4878  7C 04 01 D6 */ mullw r0, r4, r0
/* 802F793C 002F487C  C8 22 C7 F8 */ lfd f1, lbl_804561F8-_SDA2_BASE_(r2)
/* 802F7940 002F4880  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 802F7944 002F4884  90 01 00 1C */ stw r0, 0x1c(r1)
/* 802F7948 002F4888  3C 00 43 30 */ lis r0, 0x4330
/* 802F794C 002F488C  90 01 00 18 */ stw r0, 0x18(r1)
/* 802F7950 002F4890  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 802F7954 002F4894  EC 20 08 28 */ fsubs f1, f0, f1
/* 802F7958 002F4898  C0 02 C8 10 */ lfs f0, lbl_80456210-_SDA2_BASE_(r2)
/* 802F795C 002F489C  EC 01 00 24 */ fdivs f0, f1, f0
/* 802F7960 002F48A0  FC 00 00 1E */ fctiwz f0, f0
/* 802F7964 002F48A4  D8 01 00 10 */ stfd f0, 0x10(r1)
/* 802F7968 002F48A8  80 81 00 14 */ lwz r4, 0x14(r1)
/* 802F796C 002F48AC  81 9E 00 00 */ lwz r12, 0(r30)
/* 802F7970 002F48B0  81 8C 00 24 */ lwz r12, 0x24(r12)
/* 802F7974 002F48B4  7D 89 03 A6 */ mtctr r12
/* 802F7978 002F48B8  4E 80 04 21 */ bctrl
lbl_802F797C:
/* 802F797C 002F48BC  9B FE 00 B4 */ stb r31, 0xb4(r30)
/* 802F7980 002F48C0  E3 E1 00 48 */ psq_l f31, 72(r1), 0, 0
/* 802F7984 002F48C4  CB E1 00 40 */ lfd f31, 0x40(r1)
/* 802F7988 002F48C8  E3 C1 00 38 */ psq_l f30, 56(r1), 0, 0
/* 802F798C 002F48CC  CB C1 00 30 */ lfd f30, 0x30(r1)
/* 802F7990 002F48D0  39 61 00 30 */ addi r11, r1, 0x30
/* 802F7994 002F48D4  48 06 A8 91 */ bl _restgpr_28
/* 802F7998 002F48D8  80 01 00 54 */ lwz r0, 0x54(r1)
/* 802F799C 002F48DC  7C 08 03 A6 */ mtlr r0
/* 802F79A0 002F48E0  38 21 00 50 */ addi r1, r1, 0x50
/* 802F79A4 002F48E4  4E 80 00 20 */ blr
