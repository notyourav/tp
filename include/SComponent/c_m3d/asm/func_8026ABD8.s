/* 8026ABD8 00267B18  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8026ABDC 00267B1C  7C 08 02 A6 */ mflr r0
/* 8026ABE0 00267B20  90 01 00 44 */ stw r0, 0x44(r1)
/* 8026ABE4 00267B24  DB E1 00 30 */ stfd f31, 0x30(r1)
/* 8026ABE8 00267B28  F3 E1 00 38 */ psq_st f31, 56(r1), 0, 0
/* 8026ABEC 00267B2C  DB C1 00 20 */ stfd f30, 0x20(r1)
/* 8026ABF0 00267B30  F3 C1 00 28 */ psq_st f30, 40(r1), 0, 0
/* 8026ABF4 00267B34  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 8026ABF8 00267B38  93 C1 00 18 */ stw r30, 0x18(r1)
/* 8026ABFC 00267B3C  7C 7E 1B 78 */ mr r30, r3
/* 8026AC00 00267B40  7C 9F 23 78 */ mr r31, r4
/* 8026AC04 00267B44  FF C0 08 90 */ fmr f30, f1
/* 8026AC08 00267B48  C0 03 00 08 */ lfs f0, 8(r3)
/* 8026AC0C 00267B4C  FC 00 02 10 */ fabs f0, f0
/* 8026AC10 00267B50  FC 20 00 18 */ frsp f1, f0
/* 8026AC14 00267B54  C0 0D 8C 00 */ lfs f0, lbl_80451180-_SDA_BASE_(r13)
/* 8026AC18 00267B58  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026AC1C 00267B5C  40 80 00 0C */ bge lbl_8026AC28
/* 8026AC20 00267B60  38 60 00 00 */ li r3, 0
/* 8026AC24 00267B64  48 00 01 30 */ b lbl_8026AD54
lbl_8026AC28:
/* 8026AC28 00267B68  C0 02 B7 AC */ lfs f0, lbl_804551AC-_SDA2_BASE_(r2)
/* 8026AC2C 00267B6C  D0 01 00 08 */ stfs f0, 8(r1)
/* 8026AC30 00267B70  C0 3E 00 14 */ lfs f1, 0x14(r30)
/* 8026AC34 00267B74  C0 5E 00 18 */ lfs f2, 0x18(r30)
/* 8026AC38 00267B78  C0 7E 00 20 */ lfs f3, 0x20(r30)
/* 8026AC3C 00267B7C  C0 9E 00 24 */ lfs f4, 0x24(r30)
/* 8026AC40 00267B80  C0 BE 00 2C */ lfs f5, 0x2c(r30)
/* 8026AC44 00267B84  C0 DE 00 30 */ lfs f6, 0x30(r30)
/* 8026AC48 00267B88  C0 FF 00 00 */ lfs f7, 0(r31)
/* 8026AC4C 00267B8C  C1 1F 00 04 */ lfs f8, 4(r31)
/* 8026AC50 00267B90  4B FF F1 15 */ bl cM3d_InclusionCheckPosIn3PosBox2d__Ffffffffff
/* 8026AC54 00267B94  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8026AC58 00267B98  40 82 00 0C */ bne lbl_8026AC64
/* 8026AC5C 00267B9C  38 60 00 00 */ li r3, 0
/* 8026AC60 00267BA0  48 00 00 F4 */ b lbl_8026AD54
lbl_8026AC64:
/* 8026AC64 00267BA4  C0 3E 00 14 */ lfs f1, 0x14(r30)
/* 8026AC68 00267BA8  C0 5E 00 18 */ lfs f2, 0x18(r30)
/* 8026AC6C 00267BAC  C0 7E 00 20 */ lfs f3, 0x20(r30)
/* 8026AC70 00267BB0  C0 9E 00 24 */ lfs f4, 0x24(r30)
/* 8026AC74 00267BB4  C0 BF 00 00 */ lfs f5, 0(r31)
/* 8026AC78 00267BB8  C0 DF 00 04 */ lfs f6, 4(r31)
/* 8026AC7C 00267BBC  4B FF DC 19 */ bl cM3d_VectorProduct2d__Fffffff
/* 8026AC80 00267BC0  FF E0 08 90 */ fmr f31, f1
/* 8026AC84 00267BC4  FC 1F F0 40 */ fcmpo cr0, f31, f30
/* 8026AC88 00267BC8  4C 40 13 82 */ cror 2, 0, 2
/* 8026AC8C 00267BCC  40 82 00 5C */ bne lbl_8026ACE8
/* 8026AC90 00267BD0  C0 3E 00 20 */ lfs f1, 0x20(r30)
/* 8026AC94 00267BD4  C0 5E 00 24 */ lfs f2, 0x24(r30)
/* 8026AC98 00267BD8  C0 7E 00 2C */ lfs f3, 0x2c(r30)
/* 8026AC9C 00267BDC  C0 9E 00 30 */ lfs f4, 0x30(r30)
/* 8026ACA0 00267BE0  C0 BF 00 00 */ lfs f5, 0(r31)
/* 8026ACA4 00267BE4  C0 DF 00 04 */ lfs f6, 4(r31)
/* 8026ACA8 00267BE8  4B FF DB ED */ bl cM3d_VectorProduct2d__Fffffff
/* 8026ACAC 00267BEC  FC 01 F0 40 */ fcmpo cr0, f1, f30
/* 8026ACB0 00267BF0  4C 40 13 82 */ cror 2, 0, 2
/* 8026ACB4 00267BF4  40 82 00 34 */ bne lbl_8026ACE8
/* 8026ACB8 00267BF8  C0 3E 00 2C */ lfs f1, 0x2c(r30)
/* 8026ACBC 00267BFC  C0 5E 00 30 */ lfs f2, 0x30(r30)
/* 8026ACC0 00267C00  C0 7E 00 14 */ lfs f3, 0x14(r30)
/* 8026ACC4 00267C04  C0 9E 00 18 */ lfs f4, 0x18(r30)
/* 8026ACC8 00267C08  C0 BF 00 00 */ lfs f5, 0(r31)
/* 8026ACCC 00267C0C  C0 DF 00 04 */ lfs f6, 4(r31)
/* 8026ACD0 00267C10  4B FF DB C5 */ bl cM3d_VectorProduct2d__Fffffff
/* 8026ACD4 00267C14  FC 01 F0 40 */ fcmpo cr0, f1, f30
/* 8026ACD8 00267C18  4C 40 13 82 */ cror 2, 0, 2
/* 8026ACDC 00267C1C  40 82 00 0C */ bne lbl_8026ACE8
/* 8026ACE0 00267C20  38 60 00 01 */ li r3, 1
/* 8026ACE4 00267C24  48 00 00 70 */ b lbl_8026AD54
lbl_8026ACE8:
/* 8026ACE8 00267C28  FF C0 F0 50 */ fneg f30, f30
/* 8026ACEC 00267C2C  FC 1F F0 40 */ fcmpo cr0, f31, f30
/* 8026ACF0 00267C30  4C 41 13 82 */ cror 2, 1, 2
/* 8026ACF4 00267C34  40 82 00 5C */ bne lbl_8026AD50
/* 8026ACF8 00267C38  C0 3E 00 20 */ lfs f1, 0x20(r30)
/* 8026ACFC 00267C3C  C0 5E 00 24 */ lfs f2, 0x24(r30)
/* 8026AD00 00267C40  C0 7E 00 2C */ lfs f3, 0x2c(r30)
/* 8026AD04 00267C44  C0 9E 00 30 */ lfs f4, 0x30(r30)
/* 8026AD08 00267C48  C0 BF 00 00 */ lfs f5, 0(r31)
/* 8026AD0C 00267C4C  C0 DF 00 04 */ lfs f6, 4(r31)
/* 8026AD10 00267C50  4B FF DB 85 */ bl cM3d_VectorProduct2d__Fffffff
/* 8026AD14 00267C54  FC 01 F0 40 */ fcmpo cr0, f1, f30
/* 8026AD18 00267C58  4C 41 13 82 */ cror 2, 1, 2
/* 8026AD1C 00267C5C  40 82 00 34 */ bne lbl_8026AD50
/* 8026AD20 00267C60  C0 3E 00 2C */ lfs f1, 0x2c(r30)
/* 8026AD24 00267C64  C0 5E 00 30 */ lfs f2, 0x30(r30)
/* 8026AD28 00267C68  C0 7E 00 14 */ lfs f3, 0x14(r30)
/* 8026AD2C 00267C6C  C0 9E 00 18 */ lfs f4, 0x18(r30)
/* 8026AD30 00267C70  C0 BF 00 00 */ lfs f5, 0(r31)
/* 8026AD34 00267C74  C0 DF 00 04 */ lfs f6, 4(r31)
/* 8026AD38 00267C78  4B FF DB 5D */ bl cM3d_VectorProduct2d__Fffffff
/* 8026AD3C 00267C7C  FC 01 F0 40 */ fcmpo cr0, f1, f30
/* 8026AD40 00267C80  4C 41 13 82 */ cror 2, 1, 2
/* 8026AD44 00267C84  40 82 00 0C */ bne lbl_8026AD50
/* 8026AD48 00267C88  38 60 00 01 */ li r3, 1
/* 8026AD4C 00267C8C  48 00 00 08 */ b lbl_8026AD54
lbl_8026AD50:
/* 8026AD50 00267C90  38 60 00 00 */ li r3, 0
lbl_8026AD54:
/* 8026AD54 00267C94  E3 E1 00 38 */ psq_l f31, 56(r1), 0, 0
/* 8026AD58 00267C98  CB E1 00 30 */ lfd f31, 0x30(r1)
/* 8026AD5C 00267C9C  E3 C1 00 28 */ psq_l f30, 40(r1), 0, 0
/* 8026AD60 00267CA0  CB C1 00 20 */ lfd f30, 0x20(r1)
/* 8026AD64 00267CA4  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 8026AD68 00267CA8  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 8026AD6C 00267CAC  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8026AD70 00267CB0  7C 08 03 A6 */ mtlr r0
/* 8026AD74 00267CB4  38 21 00 40 */ addi r1, r1, 0x40
/* 8026AD78 00267CB8  4E 80 00 20 */ blr
