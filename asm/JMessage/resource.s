.include "macros.inc"

.section .text, "ax" # 802a8cdc


.global JMessage_NS_TResource_NS_toMessageIndex_messageID
JMessage_NS_TResource_NS_toMessageIndex_messageID:
/* 802A8CDC 002A5C1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A8CE0 002A5C20  7C 08 02 A6 */	mflr r0
/* 802A8CE4 002A5C24  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A8CE8 002A5C28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A8CEC 002A5C2C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A8CF0 002A5C30  80 E3 00 18 */	lwz r7, 0x18(r3)
/* 802A8CF4 002A5C34  28 07 00 00 */	cmplwi r7, 0
/* 802A8CF8 002A5C38  40 82 00 10 */	bne lbl_802A8D08
/* 802A8CFC 002A5C3C  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 802A8D00 002A5C40  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 802A8D04 002A5C44  48 00 01 A4 */	b lbl_802A8EA8
lbl_802A8D08:
/* 802A8D08 002A5C48  38 00 FF FF */	li r0, -1
/* 802A8D0C 002A5C4C  90 01 00 08 */	stw r0, 8(r1)
/* 802A8D10 002A5C50  39 00 00 01 */	li r8, 1
/* 802A8D14 002A5C54  88 07 00 0B */	lbz r0, 0xb(r7)
/* 802A8D18 002A5C58  2C 00 00 02 */	cmpwi r0, 2
/* 802A8D1C 002A5C5C  41 82 00 64 */	beq lbl_802A8D80
/* 802A8D20 002A5C60  40 80 00 14 */	bge lbl_802A8D34
/* 802A8D24 002A5C64  2C 00 00 00 */	cmpwi r0, 0
/* 802A8D28 002A5C68  41 82 00 1C */	beq lbl_802A8D44
/* 802A8D2C 002A5C6C  40 80 00 2C */	bge lbl_802A8D58
/* 802A8D30 002A5C70  48 00 00 AC */	b lbl_802A8DDC
lbl_802A8D34:
/* 802A8D34 002A5C74  2C 00 00 04 */	cmpwi r0, 4
/* 802A8D38 002A5C78  41 82 00 90 */	beq lbl_802A8DC8
/* 802A8D3C 002A5C7C  40 80 00 A0 */	bge lbl_802A8DDC
/* 802A8D40 002A5C80  48 00 00 60 */	b lbl_802A8DA0
lbl_802A8D44:
/* 802A8D44 002A5C84  28 05 00 00 */	cmplwi r5, 0
/* 802A8D48 002A5C88  41 82 00 08 */	beq lbl_802A8D50
/* 802A8D4C 002A5C8C  39 00 00 00 */	li r8, 0
lbl_802A8D50:
/* 802A8D50 002A5C90  90 81 00 08 */	stw r4, 8(r1)
/* 802A8D54 002A5C94  48 00 00 94 */	b lbl_802A8DE8
lbl_802A8D58:
/* 802A8D58 002A5C98  3C E0 01 00 */	lis r7, 0x00FFFFFF@ha
/* 802A8D5C 002A5C9C  38 07 FF FF */	addi r0, r7, 0x00FFFFFF@l
/* 802A8D60 002A5CA0  7C 04 00 40 */	cmplw r4, r0
/* 802A8D64 002A5CA4  41 81 00 0C */	bgt lbl_802A8D70
/* 802A8D68 002A5CA8  28 05 00 FF */	cmplwi r5, 0xff
/* 802A8D6C 002A5CAC  40 81 00 08 */	ble lbl_802A8D74
lbl_802A8D70:
/* 802A8D70 002A5CB0  39 00 00 00 */	li r8, 0
lbl_802A8D74:
/* 802A8D74 002A5CB4  50 85 40 2E */	rlwimi r5, r4, 8, 0, 0x17
/* 802A8D78 002A5CB8  90 A1 00 08 */	stw r5, 8(r1)
/* 802A8D7C 002A5CBC  48 00 00 6C */	b lbl_802A8DE8
lbl_802A8D80:
/* 802A8D80 002A5CC0  28 04 FF FF */	cmplwi r4, 0xffff
/* 802A8D84 002A5CC4  41 81 00 0C */	bgt lbl_802A8D90
/* 802A8D88 002A5CC8  28 05 FF FF */	cmplwi r5, 0xffff
/* 802A8D8C 002A5CCC  40 81 00 08 */	ble lbl_802A8D94
lbl_802A8D90:
/* 802A8D90 002A5CD0  39 00 00 00 */	li r8, 0
lbl_802A8D94:
/* 802A8D94 002A5CD4  50 85 80 1E */	rlwimi r5, r4, 0x10, 0, 0xf
/* 802A8D98 002A5CD8  90 A1 00 08 */	stw r5, 8(r1)
/* 802A8D9C 002A5CDC  48 00 00 4C */	b lbl_802A8DE8
lbl_802A8DA0:
/* 802A8DA0 002A5CE0  28 04 00 FF */	cmplwi r4, 0xff
/* 802A8DA4 002A5CE4  41 81 00 14 */	bgt lbl_802A8DB8
/* 802A8DA8 002A5CE8  3C E0 01 00 */	lis r7, 0x00FFFFFF@ha
/* 802A8DAC 002A5CEC  38 07 FF FF */	addi r0, r7, 0x00FFFFFF@l
/* 802A8DB0 002A5CF0  7C 05 00 40 */	cmplw r5, r0
/* 802A8DB4 002A5CF4  40 81 00 08 */	ble lbl_802A8DBC
lbl_802A8DB8:
/* 802A8DB8 002A5CF8  39 00 00 00 */	li r8, 0
lbl_802A8DBC:
/* 802A8DBC 002A5CFC  50 85 C0 0E */	rlwimi r5, r4, 0x18, 0, 7
/* 802A8DC0 002A5D00  90 A1 00 08 */	stw r5, 8(r1)
/* 802A8DC4 002A5D04  48 00 00 24 */	b lbl_802A8DE8
lbl_802A8DC8:
/* 802A8DC8 002A5D08  28 04 00 00 */	cmplwi r4, 0
/* 802A8DCC 002A5D0C  41 82 00 08 */	beq lbl_802A8DD4
/* 802A8DD0 002A5D10  39 00 00 00 */	li r8, 0
lbl_802A8DD4:
/* 802A8DD4 002A5D14  90 A1 00 08 */	stw r5, 8(r1)
/* 802A8DD8 002A5D18  48 00 00 10 */	b lbl_802A8DE8
lbl_802A8DDC:
/* 802A8DDC 002A5D1C  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 802A8DE0 002A5D20  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 802A8DE4 002A5D24  48 00 00 C4 */	b lbl_802A8EA8
lbl_802A8DE8:
/* 802A8DE8 002A5D28  28 06 00 00 */	cmplwi r6, 0
/* 802A8DEC 002A5D2C  41 82 00 08 */	beq lbl_802A8DF4
/* 802A8DF0 002A5D30  99 06 00 00 */	stb r8, 0(r6)
lbl_802A8DF4:
/* 802A8DF4 002A5D34  80 81 00 08 */	lwz r4, 8(r1)
/* 802A8DF8 002A5D38  3C 04 00 01 */	addis r0, r4, 1
/* 802A8DFC 002A5D3C  28 00 FF FF */	cmplwi r0, 0xffff
/* 802A8E00 002A5D40  40 82 00 10 */	bne lbl_802A8E10
/* 802A8E04 002A5D44  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 802A8E08 002A5D48  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 802A8E0C 002A5D4C  48 00 00 9C */	b lbl_802A8EA8
lbl_802A8E10:
/* 802A8E10 002A5D50  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802A8E14 002A5D54  A0 03 00 08 */	lhz r0, 8(r3)
/* 802A8E18 002A5D58  3B E3 00 10 */	addi r31, r3, 0x10
/* 802A8E1C 002A5D5C  54 00 10 3A */	slwi r0, r0, 2
/* 802A8E20 002A5D60  7F DF 02 14 */	add r30, r31, r0
/* 802A8E24 002A5D64  88 03 00 0A */	lbz r0, 0xa(r3)
/* 802A8E28 002A5D68  54 00 06 37 */	rlwinm. r0, r0, 0, 0x18, 0x1b
/* 802A8E2C 002A5D6C  41 82 00 38 */	beq lbl_802A8E64
/* 802A8E30 002A5D70  7F E3 FB 78 */	mr r3, r31
/* 802A8E34 002A5D74  7F C4 F3 78 */	mr r4, r30
/* 802A8E38 002A5D78  38 A1 00 08 */	addi r5, r1, 8
/* 802A8E3C 002A5D7C  48 00 06 99 */	bl std_NS_lower_bound
/* 802A8E40 002A5D80  7C 03 F0 40 */	cmplw r3, r30
/* 802A8E44 002A5D84  41 82 00 14 */	beq lbl_802A8E58
/* 802A8E48 002A5D88  80 83 00 00 */	lwz r4, 0(r3)
/* 802A8E4C 002A5D8C  80 01 00 08 */	lwz r0, 8(r1)
/* 802A8E50 002A5D90  7C 04 00 40 */	cmplw r4, r0
/* 802A8E54 002A5D94  41 82 00 44 */	beq lbl_802A8E98
lbl_802A8E58:
/* 802A8E58 002A5D98  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 802A8E5C 002A5D9C  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 802A8E60 002A5DA0  48 00 00 48 */	b lbl_802A8EA8
lbl_802A8E64:
/* 802A8E64 002A5DA4  7F E3 FB 78 */	mr r3, r31
/* 802A8E68 002A5DA8  48 00 00 08 */	b lbl_802A8E70
lbl_802A8E6C:
/* 802A8E6C 002A5DAC  38 63 00 04 */	addi r3, r3, 4
lbl_802A8E70:
/* 802A8E70 002A5DB0  7C 03 F0 40 */	cmplw r3, r30
/* 802A8E74 002A5DB4  41 82 00 10 */	beq lbl_802A8E84
/* 802A8E78 002A5DB8  80 03 00 00 */	lwz r0, 0(r3)
/* 802A8E7C 002A5DBC  7C 00 20 40 */	cmplw r0, r4
/* 802A8E80 002A5DC0  40 82 FF EC */	bne lbl_802A8E6C
lbl_802A8E84:
/* 802A8E84 002A5DC4  7C 03 F0 40 */	cmplw r3, r30
/* 802A8E88 002A5DC8  40 82 00 10 */	bne lbl_802A8E98
/* 802A8E8C 002A5DCC  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 802A8E90 002A5DD0  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 802A8E94 002A5DD4  48 00 00 14 */	b lbl_802A8EA8
lbl_802A8E98:
/* 802A8E98 002A5DD8  7C 1F 18 50 */	subf r0, r31, r3
/* 802A8E9C 002A5DDC  7C 00 16 70 */	srawi r0, r0, 2
/* 802A8EA0 002A5DE0  7C 00 01 94 */	addze r0, r0
/* 802A8EA4 002A5DE4  54 03 04 3E */	clrlwi r3, r0, 0x10
lbl_802A8EA8:
/* 802A8EA8 002A5DE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A8EAC 002A5DEC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A8EB0 002A5DF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A8EB4 002A5DF4  7C 08 03 A6 */	mtlr r0
/* 802A8EB8 002A5DF8  38 21 00 20 */	addi r1, r1, 0x20
/* 802A8EBC 002A5DFC  4E 80 00 20 */	blr 

.global JMessage_NS_TResourceContainer_NS_TCResource
JMessage_NS_TResourceContainer_NS_TCResource:
/* 802A8EC0 002A5E00  38 00 00 00 */	li r0, 0
/* 802A8EC4 002A5E04  90 03 00 04 */	stw r0, 4(r3)
/* 802A8EC8 002A5E08  90 03 00 08 */	stw r0, 8(r3)
/* 802A8ECC 002A5E0C  90 03 00 00 */	stw r0, 0(r3)
/* 802A8ED0 002A5E10  38 03 00 04 */	addi r0, r3, 4
/* 802A8ED4 002A5E14  90 03 00 04 */	stw r0, 4(r3)
/* 802A8ED8 002A5E18  90 03 00 08 */	stw r0, 8(r3)
/* 802A8EDC 002A5E1C  3C 80 80 3D */	lis r4, lbl_803C9CBC@ha
/* 802A8EE0 002A5E20  38 04 9C BC */	addi r0, r4, lbl_803C9CBC@l
/* 802A8EE4 002A5E24  90 03 00 0C */	stw r0, 0xc(r3)
/* 802A8EE8 002A5E28  3C 80 80 3D */	lis r4, lbl_803C9CA8@ha
/* 802A8EEC 002A5E2C  38 04 9C A8 */	addi r0, r4, lbl_803C9CA8@l
/* 802A8EF0 002A5E30  90 03 00 0C */	stw r0, 0xc(r3)
/* 802A8EF4 002A5E34  4E 80 00 20 */	blr 

.global JMessage_NS_TResourceContainer_NS_TCResource_NS_dtor
JMessage_NS_TResourceContainer_NS_TCResource_NS_dtor:
/* 802A8EF8 002A5E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8EFC 002A5E3C  7C 08 02 A6 */	mflr r0
/* 802A8F00 002A5E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8F04 002A5E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8F08 002A5E48  93 C1 00 08 */	stw r30, 8(r1)
/* 802A8F0C 002A5E4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A8F10 002A5E50  7C 9F 23 78 */	mr r31, r4
/* 802A8F14 002A5E54  41 82 00 3C */	beq lbl_802A8F50
/* 802A8F18 002A5E58  3C 80 80 3D */	lis r4, lbl_803C9CA8@ha
/* 802A8F1C 002A5E5C  38 04 9C A8 */	addi r0, r4, lbl_803C9CA8@l
/* 802A8F20 002A5E60  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802A8F24 002A5E64  41 82 00 1C */	beq lbl_802A8F40
/* 802A8F28 002A5E68  3C 80 80 3D */	lis r4, lbl_803C9CBC@ha
/* 802A8F2C 002A5E6C  38 04 9C BC */	addi r0, r4, lbl_803C9CBC@l
/* 802A8F30 002A5E70  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802A8F34 002A5E74  41 82 00 0C */	beq lbl_802A8F40
/* 802A8F38 002A5E78  38 80 00 00 */	li r4, 0
/* 802A8F3C 002A5E7C  48 03 3A E1 */	bl __dt__Q27JGadget13TNodeLinkListFv
lbl_802A8F40:
/* 802A8F40 002A5E80  7F E0 07 35 */	extsh. r0, r31
/* 802A8F44 002A5E84  40 81 00 0C */	ble lbl_802A8F50
/* 802A8F48 002A5E88  7F C3 F3 78 */	mr r3, r30
/* 802A8F4C 002A5E8C  48 02 5D F1 */	bl __dl__FPv
lbl_802A8F50:
/* 802A8F50 002A5E90  7F C3 F3 78 */	mr r3, r30
/* 802A8F54 002A5E94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8F58 002A5E98  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A8F5C 002A5E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8F60 002A5EA0  7C 08 03 A6 */	mtlr r0
/* 802A8F64 002A5EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8F68 002A5EA8  4E 80 00 20 */	blr 

.global JMessage_NS_TResourceContainer_NS_TCResource_NS_Get_groupID
JMessage_NS_TResourceContainer_NS_TCResource_NS_Get_groupID:
/* 802A8F6C 002A5EAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A8F70 002A5EB0  38 03 00 04 */	addi r0, r3, 4
/* 802A8F74 002A5EB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A8F78 002A5EB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 802A8F7C 002A5EBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A8F80 002A5EC0  90 01 00 30 */	stw r0, 0x30(r1)
/* 802A8F84 002A5EC4  80 63 00 04 */	lwz r3, 4(r3)
/* 802A8F88 002A5EC8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802A8F8C 002A5ECC  90 61 00 18 */	stw r3, 0x18(r1)
/* 802A8F90 002A5ED0  90 61 00 2C */	stw r3, 0x2c(r1)
/* 802A8F94 002A5ED4  90 61 00 28 */	stw r3, 0x28(r1)
/* 802A8F98 002A5ED8  90 61 00 38 */	stw r3, 0x38(r1)
/* 802A8F9C 002A5EDC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802A8FA0 002A5EE0  48 00 00 24 */	b lbl_802A8FC4
lbl_802A8FA4:
/* 802A8FA4 002A5EE4  80 61 00 38 */	lwz r3, 0x38(r1)
/* 802A8FA8 002A5EE8  80 03 00 00 */	lwz r0, 0(r3)
/* 802A8FAC 002A5EEC  90 01 00 38 */	stw r0, 0x38(r1)
/* 802A8FB0 002A5EF0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802A8FB4 002A5EF4  A0 04 00 0C */	lhz r0, 0xc(r4)
/* 802A8FB8 002A5EF8  7C 05 00 40 */	cmplw r5, r0
/* 802A8FBC 002A5EFC  40 82 00 0C */	bne lbl_802A8FC8
/* 802A8FC0 002A5F00  48 00 00 34 */	b lbl_802A8FF4
lbl_802A8FC4:
/* 802A8FC4 002A5F04  54 85 04 3E */	clrlwi r5, r4, 0x10
lbl_802A8FC8:
/* 802A8FC8 002A5F08  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 802A8FCC 002A5F0C  90 61 00 14 */	stw r3, 0x14(r1)
/* 802A8FD0 002A5F10  80 01 00 38 */	lwz r0, 0x38(r1)
/* 802A8FD4 002A5F14  90 01 00 10 */	stw r0, 0x10(r1)
/* 802A8FD8 002A5F18  90 61 00 0C */	stw r3, 0xc(r1)
/* 802A8FDC 002A5F1C  90 01 00 08 */	stw r0, 8(r1)
/* 802A8FE0 002A5F20  7C 00 18 50 */	subf r0, r0, r3
/* 802A8FE4 002A5F24  7C 00 00 34 */	cntlzw r0, r0
/* 802A8FE8 002A5F28  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 802A8FEC 002A5F2C  41 82 FF B8 */	beq lbl_802A8FA4
/* 802A8FF0 002A5F30  38 60 00 00 */	li r3, 0
lbl_802A8FF4:
/* 802A8FF4 002A5F34  38 21 00 40 */	addi r1, r1, 0x40
/* 802A8FF8 002A5F38  4E 80 00 20 */	blr 
/* 802A8FFC 002A5F3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9000 002A5F40  7C 08 02 A6 */	mflr r0
/* 802A9004 002A5F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9008 002A5F48  38 60 00 1C */	li r3, 0x1c
/* 802A900C 002A5F4C  48 02 5C 41 */	bl __nw__FUl
/* 802A9010 002A5F50  28 03 00 00 */	cmplwi r3, 0
/* 802A9014 002A5F54  41 82 00 24 */	beq lbl_802A9038
/* 802A9018 002A5F58  38 00 00 00 */	li r0, 0
/* 802A901C 002A5F5C  90 03 00 00 */	stw r0, 0(r3)
/* 802A9020 002A5F60  90 03 00 04 */	stw r0, 4(r3)
/* 802A9024 002A5F64  90 03 00 08 */	stw r0, 8(r3)
/* 802A9028 002A5F68  90 03 00 0C */	stw r0, 0xc(r3)
/* 802A902C 002A5F6C  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A9030 002A5F70  90 03 00 14 */	stw r0, 0x14(r3)
/* 802A9034 002A5F74  90 03 00 18 */	stw r0, 0x18(r3)
lbl_802A9038:
/* 802A9038 002A5F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A903C 002A5F7C  7C 08 03 A6 */	mtlr r0
/* 802A9040 002A5F80  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9044 002A5F84  4E 80 00 20 */	blr 
/* 802A9048 002A5F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A904C 002A5F8C  7C 08 02 A6 */	mflr r0
/* 802A9050 002A5F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9054 002A5F94  7C 83 23 78 */	mr r3, r4
/* 802A9058 002A5F98  48 02 5C E5 */	bl __dl__FPv
/* 802A905C 002A5F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9060 002A5FA0  7C 08 03 A6 */	mtlr r0
/* 802A9064 002A5FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9068 002A5FA8  4E 80 00 20 */	blr 

.global JMessage_NS_TResourceContainer
JMessage_NS_TResourceContainer:
/* 802A906C 002A5FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9070 002A5FB0  7C 08 02 A6 */	mflr r0
/* 802A9074 002A5FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9078 002A5FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A907C 002A5FBC  7C 7F 1B 78 */	mr r31, r3
/* 802A9080 002A5FC0  38 00 00 00 */	li r0, 0
/* 802A9084 002A5FC4  98 03 00 00 */	stb r0, 0(r3)
/* 802A9088 002A5FC8  90 03 00 04 */	stw r0, 4(r3)
/* 802A908C 002A5FCC  38 7F 00 08 */	addi r3, r31, 8
/* 802A9090 002A5FD0  4B FF FE 31 */	bl JMessage_NS_TResourceContainer_NS_TCResource
/* 802A9094 002A5FD4  38 00 00 00 */	li r0, 0
/* 802A9098 002A5FD8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802A909C 002A5FDC  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 802A90A0 002A5FE0  7F E3 FB 78 */	mr r3, r31
/* 802A90A4 002A5FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A90A8 002A5FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A90AC 002A5FEC  7C 08 03 A6 */	mtlr r0
/* 802A90B0 002A5FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A90B4 002A5FF4  4E 80 00 20 */	blr 

.global JMessage_NS_TResourceContainer_NS_setEncoding
JMessage_NS_TResourceContainer_NS_setEncoding:
/* 802A90B8 002A5FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A90BC 002A5FFC  7C 08 02 A6 */	mflr r0
/* 802A90C0 002A6000  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A90C4 002A6004  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802A90C8 002A6008  40 82 00 14 */	bne lbl_802A90DC
/* 802A90CC 002A600C  98 83 00 00 */	stb r4, 0(r3)
/* 802A90D0 002A6010  38 00 00 00 */	li r0, 0
/* 802A90D4 002A6014  90 03 00 04 */	stw r0, 4(r3)
/* 802A90D8 002A6018  48 00 00 08 */	b lbl_802A90E0
lbl_802A90DC:
/* 802A90DC 002A601C  48 00 00 15 */	bl JMessage_NS_TResourceContainer_NS_setEncoding_
lbl_802A90E0:
/* 802A90E0 002A6020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A90E4 002A6024  7C 08 03 A6 */	mtlr r0
/* 802A90E8 002A6028  38 21 00 10 */	addi r1, r1, 0x10
/* 802A90EC 002A602C  4E 80 00 20 */	blr 

.global JMessage_NS_TResourceContainer_NS_setEncoding_
JMessage_NS_TResourceContainer_NS_setEncoding_:
/* 802A90F0 002A6030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A90F4 002A6034  98 83 00 00 */	stb r4, 0(r3)
/* 802A90F8 002A6038  38 00 00 00 */	li r0, 0
/* 802A90FC 002A603C  90 01 00 08 */	stw r0, 8(r1)
/* 802A9100 002A6040  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802A9104 002A6044  28 00 00 05 */	cmplwi r0, 5
/* 802A9108 002A6048  54 85 15 BA */	rlwinm r5, r4, 2, 0x16, 0x1d
/* 802A910C 002A604C  3C 80 80 3D */	lis r4, lbl_803C9C80@ha
/* 802A9110 002A6050  38 04 9C 80 */	addi r0, r4, lbl_803C9C80@l
/* 802A9114 002A6054  7C 80 2A 14 */	add r4, r0, r5
/* 802A9118 002A6058  41 80 00 08 */	blt lbl_802A9120
/* 802A911C 002A605C  38 81 00 08 */	addi r4, r1, 8
lbl_802A9120:
/* 802A9120 002A6060  80 04 00 00 */	lwz r0, 0(r4)
/* 802A9124 002A6064  90 03 00 04 */	stw r0, 4(r3)
/* 802A9128 002A6068  38 21 00 10 */	addi r1, r1, 0x10
/* 802A912C 002A606C  4E 80 00 20 */	blr 

.global JMessage_NS_TParse
JMessage_NS_TParse:
/* 802A9130 002A6070  3C A0 80 3C */	lis r5, lbl_803C488C@ha
/* 802A9134 002A6074  38 05 48 8C */	addi r0, r5, lbl_803C488C@l
/* 802A9138 002A6078  90 03 00 00 */	stw r0, 0(r3)
/* 802A913C 002A607C  3C A0 80 3D */	lis r5, lbl_803C9C94@ha
/* 802A9140 002A6080  38 05 9C 94 */	addi r0, r5, lbl_803C9C94@l
/* 802A9144 002A6084  90 03 00 00 */	stw r0, 0(r3)
/* 802A9148 002A6088  90 83 00 04 */	stw r4, 4(r3)
/* 802A914C 002A608C  38 00 00 00 */	li r0, 0
/* 802A9150 002A6090  90 03 00 08 */	stw r0, 8(r3)
/* 802A9154 002A6094  4E 80 00 20 */	blr 
/* 802A9158 002A6098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A915C 002A609C  7C 08 02 A6 */	mflr r0
/* 802A9160 002A60A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9164 002A60A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9168 002A60A8  93 C1 00 08 */	stw r30, 8(r1)
/* 802A916C 002A60AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A9170 002A60B0  7C 9F 23 78 */	mr r31, r4
/* 802A9174 002A60B4  41 82 00 28 */	beq lbl_802A919C
/* 802A9178 002A60B8  3C 80 80 3D */	lis r4, lbl_803C9C94@ha
/* 802A917C 002A60BC  38 04 9C 94 */	addi r0, r4, lbl_803C9C94@l
/* 802A9180 002A60C0  90 1E 00 00 */	stw r0, 0(r30)
/* 802A9184 002A60C4  38 80 00 00 */	li r4, 0
/* 802A9188 002A60C8  48 03 37 41 */	bl __dt__Q37JGadget6binary19TParse_header_blockFv
/* 802A918C 002A60CC  7F E0 07 35 */	extsh. r0, r31
/* 802A9190 002A60D0  40 81 00 0C */	ble lbl_802A919C
/* 802A9194 002A60D4  7F C3 F3 78 */	mr r3, r30
/* 802A9198 002A60D8  48 02 5B A5 */	bl __dl__FPv
lbl_802A919C:
/* 802A919C 002A60DC  7F C3 F3 78 */	mr r3, r30
/* 802A91A0 002A60E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A91A4 002A60E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A91A8 002A60E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A91AC 002A60EC  7C 08 03 A6 */	mtlr r0
/* 802A91B0 002A60F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A91B4 002A60F4  4E 80 00 20 */	blr 
/* 802A91B8 002A60F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A91BC 002A60FC  7C 08 02 A6 */	mflr r0
/* 802A91C0 002A6100  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A91C4 002A6104  39 61 00 30 */	addi r11, r1, 0x30
/* 802A91C8 002A6108  48 0B 90 11 */	bl _savegpr_28
/* 802A91CC 002A610C  7C 7F 1B 78 */	mr r31, r3
/* 802A91D0 002A6110  7C DC 33 78 */	mr r28, r6
/* 802A91D4 002A6114  83 C4 00 00 */	lwz r30, 0(r4)
/* 802A91D8 002A6118  38 1E 00 20 */	addi r0, r30, 0x20
/* 802A91DC 002A611C  90 04 00 00 */	stw r0, 0(r4)
/* 802A91E0 002A6120  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802A91E4 002A6124  90 05 00 00 */	stw r0, 0(r5)
/* 802A91E8 002A6128  7F C3 F3 78 */	mr r3, r30
/* 802A91EC 002A612C  38 82 BE 18 */	addi r4, r2, lbl_80455818-_SDA2_BASE_
/* 802A91F0 002A6130  38 A0 00 04 */	li r5, 4
/* 802A91F4 002A6134  48 0B CE 99 */	bl func_8036608C
/* 802A91F8 002A6138  2C 03 00 00 */	cmpwi r3, 0
/* 802A91FC 002A613C  41 82 00 0C */	beq lbl_802A9208
/* 802A9200 002A6140  38 60 00 00 */	li r3, 0
/* 802A9204 002A6144  48 00 00 D8 */	b lbl_802A92DC
lbl_802A9208:
/* 802A9208 002A6148  80 7E 00 04 */	lwz r3, 4(r30)
/* 802A920C 002A614C  3C 03 9D 93 */	addis r0, r3, 0x9d93
/* 802A9210 002A6150  28 00 67 31 */	cmplwi r0, 0x6731
/* 802A9214 002A6154  41 82 00 0C */	beq lbl_802A9220
/* 802A9218 002A6158  38 60 00 00 */	li r3, 0
/* 802A921C 002A615C  48 00 00 C0 */	b lbl_802A92DC
lbl_802A9220:
/* 802A9220 002A6160  88 9E 00 10 */	lbz r4, 0x10(r30)
/* 802A9224 002A6164  28 04 00 00 */	cmplwi r4, 0
/* 802A9228 002A6168  41 82 00 3C */	beq lbl_802A9264
/* 802A922C 002A616C  80 7F 00 04 */	lwz r3, 4(r31)
/* 802A9230 002A6170  38 00 00 00 */	li r0, 0
/* 802A9234 002A6174  88 A3 00 00 */	lbz r5, 0(r3)
/* 802A9238 002A6178  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 802A923C 002A617C  7C 05 20 40 */	cmplw r5, r4
/* 802A9240 002A6180  41 82 00 0C */	beq lbl_802A924C
/* 802A9244 002A6184  28 05 00 00 */	cmplwi r5, 0
/* 802A9248 002A6188  40 82 00 08 */	bne lbl_802A9250
lbl_802A924C:
/* 802A924C 002A618C  38 00 00 01 */	li r0, 1
lbl_802A9250:
/* 802A9250 002A6190  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802A9254 002A6194  40 82 00 0C */	bne lbl_802A9260
/* 802A9258 002A6198  38 60 00 00 */	li r3, 0
/* 802A925C 002A619C  48 00 00 80 */	b lbl_802A92DC
lbl_802A9260:
/* 802A9260 002A61A0  4B FF FE 59 */	bl JMessage_NS_TResourceContainer_NS_setEncoding
lbl_802A9264:
/* 802A9264 002A61A4  57 80 06 F7 */	rlwinm. r0, r28, 0, 0x1b, 0x1b
/* 802A9268 002A61A8  41 82 00 0C */	beq lbl_802A9274
/* 802A926C 002A61AC  38 60 00 01 */	li r3, 1
/* 802A9270 002A61B0  48 00 00 6C */	b lbl_802A92DC
lbl_802A9274:
/* 802A9274 002A61B4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802A9278 002A61B8  3B A3 00 08 */	addi r29, r3, 8
/* 802A927C 002A61BC  7F A3 EB 78 */	mr r3, r29
/* 802A9280 002A61C0  81 9D 00 0C */	lwz r12, 0xc(r29)
/* 802A9284 002A61C4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A9288 002A61C8  7D 89 03 A6 */	mtctr r12
/* 802A928C 002A61CC  4E 80 04 21 */	bctrl 
/* 802A9290 002A61D0  90 7F 00 08 */	stw r3, 8(r31)
/* 802A9294 002A61D4  80 DF 00 08 */	lwz r6, 8(r31)
/* 802A9298 002A61D8  28 06 00 00 */	cmplwi r6, 0
/* 802A929C 002A61DC  40 82 00 0C */	bne lbl_802A92A8
/* 802A92A0 002A61E0  57 83 DF FE */	rlwinm r3, r28, 0x1b, 0x1f, 0x1f
/* 802A92A4 002A61E4  48 00 00 38 */	b lbl_802A92DC
lbl_802A92A8:
/* 802A92A8 002A61E8  38 1D 00 04 */	addi r0, r29, 4
/* 802A92AC 002A61EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A92B0 002A61F0  90 01 00 08 */	stw r0, 8(r1)
/* 802A92B4 002A61F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802A92B8 002A61F8  90 01 00 18 */	stw r0, 0x18(r1)
/* 802A92BC 002A61FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A92C0 002A6200  38 61 00 10 */	addi r3, r1, 0x10
/* 802A92C4 002A6204  7F A4 EB 78 */	mr r4, r29
/* 802A92C8 002A6208  38 A1 00 14 */	addi r5, r1, 0x14
/* 802A92CC 002A620C  48 03 38 DD */	bl Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
/* 802A92D0 002A6210  80 7F 00 08 */	lwz r3, 8(r31)
/* 802A92D4 002A6214  93 C3 00 08 */	stw r30, 8(r3)
/* 802A92D8 002A6218  38 60 00 01 */	li r3, 1
lbl_802A92DC:
/* 802A92DC 002A621C  39 61 00 30 */	addi r11, r1, 0x30
/* 802A92E0 002A6220  48 0B 8F 45 */	bl _restgpr_28
/* 802A92E4 002A6224  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A92E8 002A6228  7C 08 03 A6 */	mtlr r0
/* 802A92EC 002A622C  38 21 00 30 */	addi r1, r1, 0x30
/* 802A92F0 002A6230  4E 80 00 20 */	blr 
/* 802A92F4 002A6234  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A92F8 002A6238  7C 08 02 A6 */	mflr r0
/* 802A92FC 002A623C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A9300 002A6240  39 61 00 30 */	addi r11, r1, 0x30
/* 802A9304 002A6244  48 0B 8E D5 */	bl _savegpr_28
/* 802A9308 002A6248  7C 7E 1B 78 */	mr r30, r3
/* 802A930C 002A624C  80 E4 00 00 */	lwz r7, 0(r4)
/* 802A9310 002A6250  80 07 00 04 */	lwz r0, 4(r7)
/* 802A9314 002A6254  7C 07 02 14 */	add r0, r7, r0
/* 802A9318 002A6258  90 04 00 00 */	stw r0, 0(r4)
/* 802A931C 002A625C  80 07 00 04 */	lwz r0, 4(r7)
/* 802A9320 002A6260  90 05 00 00 */	stw r0, 0(r5)
/* 802A9324 002A6264  80 63 00 04 */	lwz r3, 4(r3)
/* 802A9328 002A6268  3B E3 00 08 */	addi r31, r3, 8
/* 802A932C 002A626C  80 87 00 00 */	lwz r4, 0(r7)
/* 802A9330 002A6270  3C 60 49 4E */	lis r3, 0x494E4631@ha
/* 802A9334 002A6274  38 03 46 31 */	addi r0, r3, 0x494E4631@l
/* 802A9338 002A6278  7C 04 00 00 */	cmpw r4, r0
/* 802A933C 002A627C  41 82 00 68 */	beq lbl_802A93A4
/* 802A9340 002A6280  40 80 00 3C */	bge lbl_802A937C
/* 802A9344 002A6284  3C 60 46 4C */	lis r3, 0x464C4931@ha
/* 802A9348 002A6288  38 03 49 31 */	addi r0, r3, 0x464C4931@l
/* 802A934C 002A628C  7C 04 00 00 */	cmpw r4, r0
/* 802A9350 002A6290  41 82 01 24 */	beq lbl_802A9474
/* 802A9354 002A6294  40 80 00 18 */	bge lbl_802A936C
/* 802A9358 002A6298  3C 60 44 41 */	lis r3, 0x44415431@ha
/* 802A935C 002A629C  38 03 54 31 */	addi r0, r3, 0x44415431@l
/* 802A9360 002A62A0  7C 04 00 00 */	cmpw r4, r0
/* 802A9364 002A62A4  41 82 00 4C */	beq lbl_802A93B0
/* 802A9368 002A62A8  48 00 00 FC */	b lbl_802A9464
lbl_802A936C:
/* 802A936C 002A62AC  38 03 57 31 */	addi r0, r3, 0x5731
/* 802A9370 002A62B0  7C 04 00 00 */	cmpw r4, r0
/* 802A9374 002A62B4  41 82 01 00 */	beq lbl_802A9474
/* 802A9378 002A62B8  48 00 00 EC */	b lbl_802A9464
lbl_802A937C:
/* 802A937C 002A62BC  3C 60 53 54 */	lis r3, 0x53545231@ha
/* 802A9380 002A62C0  38 03 52 31 */	addi r0, r3, 0x53545231@l
/* 802A9384 002A62C4  7C 04 00 00 */	cmpw r4, r0
/* 802A9388 002A62C8  41 82 00 BC */	beq lbl_802A9444
/* 802A938C 002A62CC  40 80 00 D8 */	bge lbl_802A9464
/* 802A9390 002A62D0  3C 60 4D 49 */	lis r3, 0x4D494431@ha
/* 802A9394 002A62D4  38 03 44 31 */	addi r0, r3, 0x4D494431@l
/* 802A9398 002A62D8  7C 04 00 00 */	cmpw r4, r0
/* 802A939C 002A62DC  41 82 00 BC */	beq lbl_802A9458
/* 802A93A0 002A62E0  48 00 00 C4 */	b lbl_802A9464
lbl_802A93A4:
/* 802A93A4 002A62E4  80 7E 00 08 */	lwz r3, 8(r30)
/* 802A93A8 002A62E8  90 E3 00 0C */	stw r7, 0xc(r3)
/* 802A93AC 002A62EC  48 00 00 C8 */	b lbl_802A9474
lbl_802A93B0:
/* 802A93B0 002A62F0  80 7E 00 08 */	lwz r3, 8(r30)
/* 802A93B4 002A62F4  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 802A93B8 002A62F8  38 07 00 08 */	addi r0, r7, 8
/* 802A93BC 002A62FC  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A93C0 002A6300  80 7E 00 08 */	lwz r3, 8(r30)
/* 802A93C4 002A6304  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A93C8 002A6308  A0 63 00 0C */	lhz r3, 0xc(r3)
/* 802A93CC 002A630C  54 C0 06 31 */	rlwinm. r0, r6, 0, 0x18, 0x18
/* 802A93D0 002A6310  41 82 00 A4 */	beq lbl_802A9474
/* 802A93D4 002A6314  83 9F 00 04 */	lwz r28, 4(r31)
/* 802A93D8 002A6318  93 81 00 14 */	stw r28, 0x14(r1)
/* 802A93DC 002A631C  93 81 00 10 */	stw r28, 0x10(r1)
/* 802A93E0 002A6320  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 802A93E4 002A6324  48 00 00 50 */	b lbl_802A9434
lbl_802A93E8:
/* 802A93E8 002A6328  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 802A93EC 002A632C  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 802A93F0 002A6330  7C 1D 00 40 */	cmplw r29, r0
/* 802A93F4 002A6334  41 82 00 0C */	beq lbl_802A9400
/* 802A93F8 002A6338  83 9C 00 00 */	lwz r28, 0(r28)
/* 802A93FC 002A633C  48 00 00 38 */	b lbl_802A9434
lbl_802A9400:
/* 802A9400 002A6340  38 61 00 0C */	addi r3, r1, 0xc
/* 802A9404 002A6344  7F E4 FB 78 */	mr r4, r31
/* 802A9408 002A6348  7F 85 E3 78 */	mr r5, r28
/* 802A940C 002A634C  48 03 37 C9 */	bl JGadget_NS_TNodeLinkList_NS_Erase
/* 802A9410 002A6350  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802A9414 002A6354  90 01 00 08 */	stw r0, 8(r1)
/* 802A9418 002A6358  7F E3 FB 78 */	mr r3, r31
/* 802A941C 002A635C  7F 84 E3 78 */	mr r4, r28
/* 802A9420 002A6360  81 9F 00 0C */	lwz r12, 0xc(r31)
/* 802A9424 002A6364  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A9428 002A6368  7D 89 03 A6 */	mtctr r12
/* 802A942C 002A636C  4E 80 04 21 */	bctrl 
/* 802A9430 002A6370  83 81 00 08 */	lwz r28, 8(r1)
lbl_802A9434:
/* 802A9434 002A6374  80 1E 00 08 */	lwz r0, 8(r30)
/* 802A9438 002A6378  7C 1C 00 40 */	cmplw r28, r0
/* 802A943C 002A637C  40 82 FF AC */	bne lbl_802A93E8
/* 802A9440 002A6380  48 00 00 34 */	b lbl_802A9474
lbl_802A9444:
/* 802A9444 002A6384  80 7E 00 08 */	lwz r3, 8(r30)
/* 802A9448 002A6388  90 E1 00 18 */	stw r7, 0x18(r1)
/* 802A944C 002A638C  38 07 00 08 */	addi r0, r7, 8
/* 802A9450 002A6390  90 03 00 14 */	stw r0, 0x14(r3)
/* 802A9454 002A6394  48 00 00 20 */	b lbl_802A9474
lbl_802A9458:
/* 802A9458 002A6398  80 7E 00 08 */	lwz r3, 8(r30)
/* 802A945C 002A639C  90 E3 00 18 */	stw r7, 0x18(r3)
/* 802A9460 002A63A0  48 00 00 14 */	b lbl_802A9474
lbl_802A9464:
/* 802A9464 002A63A4  54 C0 06 73 */	rlwinm. r0, r6, 0, 0x19, 0x19
/* 802A9468 002A63A8  40 82 00 0C */	bne lbl_802A9474
/* 802A946C 002A63AC  38 60 00 00 */	li r3, 0
/* 802A9470 002A63B0  48 00 00 08 */	b lbl_802A9478
lbl_802A9474:
/* 802A9474 002A63B4  38 60 00 01 */	li r3, 1
lbl_802A9478:
/* 802A9478 002A63B8  39 61 00 30 */	addi r11, r1, 0x30
/* 802A947C 002A63BC  48 0B 8D A9 */	bl _restgpr_28
/* 802A9480 002A63C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A9484 002A63C4  7C 08 03 A6 */	mtlr r0
/* 802A9488 002A63C8  38 21 00 30 */	addi r1, r1, 0x30
/* 802A948C 002A63CC  4E 80 00 20 */	blr 
/* 802A9490 002A63D0  80 A3 00 00 */	lwz r5, 0(r3)
/* 802A9494 002A63D4  88 85 00 00 */	lbz r4, 0(r5)
/* 802A9498 002A63D8  38 05 00 01 */	addi r0, r5, 1
/* 802A949C 002A63DC  90 03 00 00 */	stw r0, 0(r3)
/* 802A94A0 002A63E0  7C 83 23 78 */	mr r3, r4
/* 802A94A4 002A63E4  4E 80 00 20 */	blr 
/* 802A94A8 002A63E8  80 83 00 00 */	lwz r4, 0(r3)
/* 802A94AC 002A63EC  88 A4 00 00 */	lbz r5, 0(r4)
/* 802A94B0 002A63F0  38 04 00 01 */	addi r0, r4, 1
/* 802A94B4 002A63F4  90 03 00 00 */	stw r0, 0(r3)
/* 802A94B8 002A63F8  80 83 00 00 */	lwz r4, 0(r3)
/* 802A94BC 002A63FC  88 C4 00 00 */	lbz r6, 0(r4)
/* 802A94C0 002A6400  50 A6 44 2E */	rlwimi r6, r5, 8, 0x10, 0x17
/* 802A94C4 002A6404  38 04 00 01 */	addi r0, r4, 1
/* 802A94C8 002A6408  90 03 00 00 */	stw r0, 0(r3)
/* 802A94CC 002A640C  7C C3 33 78 */	mr r3, r6
/* 802A94D0 002A6410  4E 80 00 20 */	blr 

.global std_NS_lower_bound
std_NS_lower_bound:
/* 802A94D4 002A6414  7C 03 20 50 */	subf r0, r3, r4
/* 802A94D8 002A6418  7C 00 16 70 */	srawi r0, r0, 2
/* 802A94DC 002A641C  7C 00 01 94 */	addze r0, r0
/* 802A94E0 002A6420  7C 06 03 78 */	mr r6, r0
/* 802A94E4 002A6424  80 85 00 00 */	lwz r4, 0(r5)
/* 802A94E8 002A6428  48 00 00 34 */	b lbl_802A951C
lbl_802A94EC:
/* 802A94EC 002A642C  7C C0 0E 70 */	srawi r0, r6, 1
/* 802A94F0 002A6430  7C E0 01 94 */	addze r7, r0
/* 802A94F4 002A6434  54 E0 10 3A */	slwi r0, r7, 2
/* 802A94F8 002A6438  7C A3 02 14 */	add r5, r3, r0
/* 802A94FC 002A643C  80 05 00 00 */	lwz r0, 0(r5)
/* 802A9500 002A6440  7C 00 20 40 */	cmplw r0, r4
/* 802A9504 002A6444  40 80 00 14 */	bge lbl_802A9518
/* 802A9508 002A6448  38 65 00 04 */	addi r3, r5, 4
/* 802A950C 002A644C  38 07 00 01 */	addi r0, r7, 1
/* 802A9510 002A6450  7C C0 30 50 */	subf r6, r0, r6
/* 802A9514 002A6454  48 00 00 08 */	b lbl_802A951C
lbl_802A9518:
/* 802A9518 002A6458  7C E6 3B 78 */	mr r6, r7
lbl_802A951C:
/* 802A951C 002A645C  2C 06 00 00 */	cmpwi r6, 0
/* 802A9520 002A6460  41 81 FF CC */	bgt lbl_802A94EC
/* 802A9524 002A6464  4E 80 00 20 */	blr 
