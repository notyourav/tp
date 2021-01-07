.include "macros.inc"

.section .text, "ax" # 8001f660


.global fopKyM_CreateAppend
fopKyM_CreateAppend:
/* 8001F660 0001C5A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F664 0001C5A4  7C 08 02 A6 */	mflr r0
/* 8001F668 0001C5A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F66C 0001C5AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001F670 0001C5B0  38 60 FF FC */	li r3, -4
/* 8001F674 0001C5B4  38 80 00 1C */	li r4, 0x1c
/* 8001F678 0001C5B8  48 24 3B B1 */	bl memalignB__3cMlFiUl
/* 8001F67C 0001C5BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001F680 0001C5C0  41 82 00 20 */	beq lbl_8001F6A0
/* 8001F684 0001C5C4  38 80 00 00 */	li r4, 0
/* 8001F688 0001C5C8  38 A0 00 1C */	li r5, 0x1c
/* 8001F68C 0001C5CC  48 25 02 D1 */	bl cLib_memSet__FPviUl
/* 8001F690 0001C5D0  C0 02 82 68 */	lfs f0, lbl_80451C68-_SDA2_BASE_(r2)
/* 8001F694 0001C5D4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8001F698 0001C5D8  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8001F69C 0001C5DC  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_8001F6A0:
/* 8001F6A0 0001C5E0  7F E3 FB 78 */	mr r3, r31
/* 8001F6A4 0001C5E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001F6A8 0001C5E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F6AC 0001C5EC  7C 08 03 A6 */	mtlr r0
/* 8001F6B0 0001C5F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F6B4 0001C5F4  4E 80 00 20 */	blr 

.global createAppend_X1_
createAppend_X1_:
/* 8001F6B8 0001C5F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001F6BC 0001C5FC  7C 08 02 A6 */	mflr r0
/* 8001F6C0 0001C600  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001F6C4 0001C604  39 61 00 20 */	addi r11, r1, 0x20
/* 8001F6C8 0001C608  48 34 2B 15 */	bl _savegpr_29
/* 8001F6CC 0001C60C  7C 7D 1B 78 */	mr r29, r3
/* 8001F6D0 0001C610  7C 9E 23 78 */	mr r30, r4
/* 8001F6D4 0001C614  7C BF 2B 78 */	mr r31, r5
/* 8001F6D8 0001C618  4B FF FF 89 */	bl fopKyM_CreateAppend
/* 8001F6DC 0001C61C  28 03 00 00 */	cmplwi r3, 0
/* 8001F6E0 0001C620  40 82 00 0C */	bne lbl_8001F6EC
/* 8001F6E4 0001C624  38 60 00 00 */	li r3, 0
/* 8001F6E8 0001C628  48 00 00 48 */	b lbl_8001F730
lbl_8001F6EC:
/* 8001F6EC 0001C62C  28 1E 00 00 */	cmplwi r30, 0
/* 8001F6F0 0001C630  41 82 00 1C */	beq lbl_8001F70C
/* 8001F6F4 0001C634  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8001F6F8 0001C638  D0 03 00 00 */	stfs f0, 0(r3)
/* 8001F6FC 0001C63C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8001F700 0001C640  D0 03 00 04 */	stfs f0, 4(r3)
/* 8001F704 0001C644  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8001F708 0001C648  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8001F70C:
/* 8001F70C 0001C64C  28 1F 00 00 */	cmplwi r31, 0
/* 8001F710 0001C650  41 82 00 1C */	beq lbl_8001F72C
/* 8001F714 0001C654  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8001F718 0001C658  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8001F71C 0001C65C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8001F720 0001C660  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8001F724 0001C664  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8001F728 0001C668  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_8001F72C:
/* 8001F72C 0001C66C  93 A3 00 18 */	stw r29, 0x18(r3)
lbl_8001F730:
/* 8001F730 0001C670  39 61 00 20 */	addi r11, r1, 0x20
/* 8001F734 0001C674  48 34 2A F5 */	bl _restgpr_29
/* 8001F738 0001C678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001F73C 0001C67C  7C 08 03 A6 */	mtlr r0
/* 8001F740 0001C680  38 21 00 20 */	addi r1, r1, 0x20
/* 8001F744 0001C684  4E 80 00 20 */	blr 

.global fopKyM_Delete
fopKyM_Delete:
/* 8001F748 0001C688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F74C 0001C68C  7C 08 02 A6 */	mflr r0
/* 8001F750 0001C690  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F754 0001C694  48 00 29 C5 */	bl fpcM_Delete
/* 8001F758 0001C698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F75C 0001C69C  7C 08 03 A6 */	mtlr r0
/* 8001F760 0001C6A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F764 0001C6A4  4E 80 00 20 */	blr 

.global fopKyM_Create
fopKyM_Create:
/* 8001F768 0001C6A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001F76C 0001C6AC  7C 08 02 A6 */	mflr r0
/* 8001F770 0001C6B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001F774 0001C6B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8001F778 0001C6B8  48 34 2A 65 */	bl _savegpr_29
/* 8001F77C 0001C6BC  7C 7D 1B 78 */	mr r29, r3
/* 8001F780 0001C6C0  7C 9E 23 78 */	mr r30, r4
/* 8001F784 0001C6C4  7C BF 2B 78 */	mr r31, r5
/* 8001F788 0001C6C8  48 00 1F 6D */	bl fpcLy_CurrentLayer
/* 8001F78C 0001C6CC  7F A4 EB 78 */	mr r4, r29
/* 8001F790 0001C6D0  7F C5 F3 78 */	mr r5, r30
/* 8001F794 0001C6D4  38 C0 00 00 */	li r6, 0
/* 8001F798 0001C6D8  7F E7 FB 78 */	mr r7, r31
/* 8001F79C 0001C6DC  48 00 45 F9 */	bl fpcSCtRq_Request
/* 8001F7A0 0001C6E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8001F7A4 0001C6E4  48 34 2A 85 */	bl _restgpr_29
/* 8001F7A8 0001C6E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001F7AC 0001C6EC  7C 08 03 A6 */	mtlr r0
/* 8001F7B0 0001C6F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8001F7B4 0001C6F4  4E 80 00 20 */	blr 

.global fopKyM_create
fopKyM_create:
/* 8001F7B8 0001C6F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F7BC 0001C6FC  7C 08 02 A6 */	mflr r0
/* 8001F7C0 0001C700  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F7C4 0001C704  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001F7C8 0001C708  93 C1 00 08 */	stw r30, 8(r1)
/* 8001F7CC 0001C70C  7C 7E 1B 78 */	mr r30, r3
/* 8001F7D0 0001C710  7C FF 3B 78 */	mr r31, r7
/* 8001F7D4 0001C714  7C 83 23 78 */	mr r3, r4
/* 8001F7D8 0001C718  7C A4 2B 78 */	mr r4, r5
/* 8001F7DC 0001C71C  7C C5 33 78 */	mr r5, r6
/* 8001F7E0 0001C720  4B FF FE D9 */	bl createAppend_X1_
/* 8001F7E4 0001C724  7C 65 1B 79 */	or. r5, r3, r3
/* 8001F7E8 0001C728  40 82 00 0C */	bne lbl_8001F7F4
/* 8001F7EC 0001C72C  38 60 FF FF */	li r3, -1
/* 8001F7F0 0001C730  48 00 00 10 */	b lbl_8001F800
lbl_8001F7F4:
/* 8001F7F4 0001C734  7F C3 F3 78 */	mr r3, r30
/* 8001F7F8 0001C738  7F E4 FB 78 */	mr r4, r31
/* 8001F7FC 0001C73C  4B FF FF 6D */	bl fopKyM_Create
lbl_8001F800:
/* 8001F800 0001C740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001F804 0001C744  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001F808 0001C748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F80C 0001C74C  7C 08 03 A6 */	mtlr r0
/* 8001F810 0001C750  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F814 0001C754  4E 80 00 20 */	blr 

.global fopKyM_fastCreate
fopKyM_fastCreate:
/* 8001F818 0001C758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F81C 0001C75C  7C 08 02 A6 */	mflr r0
/* 8001F820 0001C760  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F824 0001C764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001F828 0001C768  93 C1 00 08 */	stw r30, 8(r1)
/* 8001F82C 0001C76C  7C 7E 1B 78 */	mr r30, r3
/* 8001F830 0001C770  7C FF 3B 78 */	mr r31, r7
/* 8001F834 0001C774  7C 83 23 78 */	mr r3, r4
/* 8001F838 0001C778  7C A4 2B 78 */	mr r4, r5
/* 8001F83C 0001C77C  7C C5 33 78 */	mr r5, r6
/* 8001F840 0001C780  4B FF FE 79 */	bl createAppend_X1_
/* 8001F844 0001C784  7C 66 1B 79 */	or. r6, r3, r3
/* 8001F848 0001C788  40 82 00 0C */	bne lbl_8001F854
/* 8001F84C 0001C78C  38 60 00 00 */	li r3, 0
/* 8001F850 0001C790  48 00 00 14 */	b lbl_8001F864
lbl_8001F854:
/* 8001F854 0001C794  7F C3 F3 78 */	mr r3, r30
/* 8001F858 0001C798  7F E4 FB 78 */	mr r4, r31
/* 8001F85C 0001C79C  38 A0 00 00 */	li r5, 0
/* 8001F860 0001C7A0  48 00 2A 95 */	bl fpcM_FastCreate
lbl_8001F864:
/* 8001F864 0001C7A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001F868 0001C7A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001F86C 0001C7AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F870 0001C7B0  7C 08 03 A6 */	mtlr r0
/* 8001F874 0001C7B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F878 0001C7B8  4E 80 00 20 */	blr 

.global fopKyM_createWpillar
fopKyM_createWpillar:
/* 8001F87C 0001C7BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001F880 0001C7C0  7C 08 02 A6 */	mflr r0
/* 8001F884 0001C7C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001F888 0001C7C8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8001F88C 0001C7CC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8001F890 0001C7D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001F894 0001C7D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8001F898 0001C7D8  7C 7E 1B 78 */	mr r30, r3
/* 8001F89C 0001C7DC  FF E0 08 90 */	fmr f31, f1
/* 8001F8A0 0001C7E0  7C 9F 23 78 */	mr r31, r4
/* 8001F8A4 0001C7E4  4B FF FD BD */	bl fopKyM_CreateAppend
/* 8001F8A8 0001C7E8  7C 65 1B 79 */	or. r5, r3, r3
/* 8001F8AC 0001C7EC  40 82 00 0C */	bne lbl_8001F8B8
/* 8001F8B0 0001C7F0  38 60 FF FF */	li r3, -1
/* 8001F8B4 0001C7F4  48 00 00 38 */	b lbl_8001F8EC
lbl_8001F8B8:
/* 8001F8B8 0001C7F8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8001F8BC 0001C7FC  D0 05 00 00 */	stfs f0, 0(r5)
/* 8001F8C0 0001C800  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8001F8C4 0001C804  D0 05 00 04 */	stfs f0, 4(r5)
/* 8001F8C8 0001C808  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8001F8CC 0001C80C  D0 05 00 08 */	stfs f0, 8(r5)
/* 8001F8D0 0001C810  D3 E5 00 0C */	stfs f31, 0xc(r5)
/* 8001F8D4 0001C814  D3 E5 00 10 */	stfs f31, 0x10(r5)
/* 8001F8D8 0001C818  D3 E5 00 14 */	stfs f31, 0x14(r5)
/* 8001F8DC 0001C81C  93 E5 00 18 */	stw r31, 0x18(r5)
/* 8001F8E0 0001C820  38 60 03 02 */	li r3, 0x302
/* 8001F8E4 0001C824  38 80 00 00 */	li r4, 0
/* 8001F8E8 0001C828  4B FF FE 81 */	bl fopKyM_Create
lbl_8001F8EC:
/* 8001F8EC 0001C82C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8001F8F0 0001C830  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8001F8F4 0001C834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001F8F8 0001C838  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001F8FC 0001C83C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001F900 0001C840  7C 08 03 A6 */	mtlr r0
/* 8001F904 0001C844  38 21 00 20 */	addi r1, r1, 0x20
/* 8001F908 0001C848  4E 80 00 20 */	blr 
/* 8001F90C 0001C84C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8001F910 0001C850  7C 08 02 A6 */	mflr r0
/* 8001F914 0001C854  90 01 00 44 */	stw r0, 0x44(r1)
/* 8001F918 0001C858  39 61 00 40 */	addi r11, r1, 0x40
/* 8001F91C 0001C85C  48 34 28 BD */	bl _savegpr_28
/* 8001F920 0001C860  7C 7C 1B 78 */	mr r28, r3
/* 8001F924 0001C864  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8001F928 0001C868  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8001F92C 0001C86C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8001F930 0001C870  3B A0 00 00 */	li r29, 0
/* 8001F934 0001C874  3B E0 00 00 */	li r31, 0
/* 8001F938 0001C878  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001F93C 0001C87C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
lbl_8001F940:
/* 8001F940 0001C880  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8001F944 0001C884  38 80 00 00 */	li r4, 0
/* 8001F948 0001C888  90 81 00 08 */	stw r4, 8(r1)
/* 8001F94C 0001C88C  38 00 FF FF */	li r0, -1
/* 8001F950 0001C890  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001F954 0001C894  90 81 00 10 */	stw r4, 0x10(r1)
/* 8001F958 0001C898  90 81 00 14 */	stw r4, 0x14(r1)
/* 8001F95C 0001C89C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8001F960 0001C8A0  38 80 00 00 */	li r4, 0
/* 8001F964 0001C8A4  38 AD 80 40 */	addi r5, r13, lbl_804505C0-_SDA_BASE_
/* 8001F968 0001C8A8  7C A5 FA 2E */	lhzx r5, r5, r31
/* 8001F96C 0001C8AC  7F 86 E3 78 */	mr r6, r28
/* 8001F970 0001C8B0  38 E0 00 00 */	li r7, 0
/* 8001F974 0001C8B4  39 00 00 00 */	li r8, 0
/* 8001F978 0001C8B8  39 21 00 20 */	addi r9, r1, 0x20
/* 8001F97C 0001C8BC  39 40 00 FF */	li r10, 0xff
/* 8001F980 0001C8C0  C0 22 82 68 */	lfs f1, lbl_80451C68-_SDA2_BASE_(r2)
/* 8001F984 0001C8C4  48 02 D1 0D */	bl dPa_control_c_NS_set
/* 8001F988 0001C8C8  3B BD 00 01 */	addi r29, r29, 1
/* 8001F98C 0001C8CC  2C 1D 00 02 */	cmpwi r29, 2
/* 8001F990 0001C8D0  3B FF 00 02 */	addi r31, r31, 2
/* 8001F994 0001C8D4  41 80 FF AC */	blt lbl_8001F940
/* 8001F998 0001C8D8  38 60 FF FF */	li r3, -1
/* 8001F99C 0001C8DC  39 61 00 40 */	addi r11, r1, 0x40
/* 8001F9A0 0001C8E0  48 34 28 85 */	bl _restgpr_28
/* 8001F9A4 0001C8E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8001F9A8 0001C8E8  7C 08 03 A6 */	mtlr r0
/* 8001F9AC 0001C8EC  38 21 00 40 */	addi r1, r1, 0x40
/* 8001F9B0 0001C8F0  4E 80 00 20 */	blr 

