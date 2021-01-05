.include "macros.inc"

.section .text, "ax" # 80358c90


.global UpdateIconOffsets
UpdateIconOffsets:
/* 80358C90 00355BD0  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 80358C94 00355BD4  3C 08 00 01 */	addis r0, r8, 1
/* 80358C98 00355BD8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80358C9C 00355BDC  40 82 00 18 */	bne lbl_80358CB4
/* 80358CA0 00355BE0  38 00 00 00 */	li r0, 0
/* 80358CA4 00355BE4  98 04 00 2E */	stb r0, 0x2e(r4)
/* 80358CA8 00355BE8  39 00 00 00 */	li r8, 0
/* 80358CAC 00355BEC  B0 04 00 34 */	sth r0, 0x34(r4)
/* 80358CB0 00355BF0  B0 04 00 36 */	sth r0, 0x36(r4)
lbl_80358CB4:
/* 80358CB4 00355BF4  88 03 00 07 */	lbz r0, 7(r3)
/* 80358CB8 00355BF8  39 20 00 00 */	li r9, 0
/* 80358CBC 00355BFC  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 80358CC0 00355C00  2C 00 00 02 */	cmpwi r0, 2
/* 80358CC4 00355C04  41 82 00 28 */	beq lbl_80358CEC
/* 80358CC8 00355C08  40 80 00 38 */	bge lbl_80358D00
/* 80358CCC 00355C0C  2C 00 00 01 */	cmpwi r0, 1
/* 80358CD0 00355C10  40 80 00 08 */	bge lbl_80358CD8
/* 80358CD4 00355C14  48 00 00 2C */	b lbl_80358D00
lbl_80358CD8:
/* 80358CD8 00355C18  91 04 00 3C */	stw r8, 0x3c(r4)
/* 80358CDC 00355C1C  38 08 0C 00 */	addi r0, r8, 0xc00
/* 80358CE0 00355C20  39 08 0E 00 */	addi r8, r8, 0xe00
/* 80358CE4 00355C24  90 04 00 40 */	stw r0, 0x40(r4)
/* 80358CE8 00355C28  48 00 00 24 */	b lbl_80358D0C
lbl_80358CEC:
/* 80358CEC 00355C2C  91 04 00 3C */	stw r8, 0x3c(r4)
/* 80358CF0 00355C30  38 00 FF FF */	li r0, -1
/* 80358CF4 00355C34  39 08 18 00 */	addi r8, r8, 0x1800
/* 80358CF8 00355C38  90 04 00 40 */	stw r0, 0x40(r4)
/* 80358CFC 00355C3C  48 00 00 10 */	b lbl_80358D0C
lbl_80358D00:
/* 80358D00 00355C40  38 00 FF FF */	li r0, -1
/* 80358D04 00355C44  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80358D08 00355C48  90 04 00 40 */	stw r0, 0x40(r4)
lbl_80358D0C:
/* 80358D0C 00355C4C  38 00 00 02 */	li r0, 2
/* 80358D10 00355C50  7C 09 03 A6 */	mtctr r0
/* 80358D14 00355C54  38 E4 00 00 */	addi r7, r4, 0
/* 80358D18 00355C58  39 40 00 00 */	li r10, 0
/* 80358D1C 00355C5C  38 C0 00 00 */	li r6, 0
/* 80358D20 00355C60  38 00 FF FF */	li r0, -1
lbl_80358D24:
/* 80358D24 00355C64  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 80358D28 00355C68  7C A5 36 30 */	sraw r5, r5, r6
/* 80358D2C 00355C6C  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 80358D30 00355C70  2C 05 00 02 */	cmpwi r5, 2
/* 80358D34 00355C74  41 82 00 24 */	beq lbl_80358D58
/* 80358D38 00355C78  40 80 00 2C */	bge lbl_80358D64
/* 80358D3C 00355C7C  2C 05 00 01 */	cmpwi r5, 1
/* 80358D40 00355C80  40 80 00 08 */	bge lbl_80358D48
/* 80358D44 00355C84  48 00 00 20 */	b lbl_80358D64
lbl_80358D48:
/* 80358D48 00355C88  91 07 00 44 */	stw r8, 0x44(r7)
/* 80358D4C 00355C8C  39 20 00 01 */	li r9, 1
/* 80358D50 00355C90  39 08 04 00 */	addi r8, r8, 0x400
/* 80358D54 00355C94  48 00 00 14 */	b lbl_80358D68
lbl_80358D58:
/* 80358D58 00355C98  91 07 00 44 */	stw r8, 0x44(r7)
/* 80358D5C 00355C9C  39 08 08 00 */	addi r8, r8, 0x800
/* 80358D60 00355CA0  48 00 00 08 */	b lbl_80358D68
lbl_80358D64:
/* 80358D64 00355CA4  90 07 00 44 */	stw r0, 0x44(r7)
lbl_80358D68:
/* 80358D68 00355CA8  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 80358D6C 00355CAC  38 C6 00 02 */	addi r6, r6, 2
/* 80358D70 00355CB0  38 E7 00 04 */	addi r7, r7, 4
/* 80358D74 00355CB4  7C A5 36 30 */	sraw r5, r5, r6
/* 80358D78 00355CB8  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 80358D7C 00355CBC  2C 05 00 02 */	cmpwi r5, 2
/* 80358D80 00355CC0  41 82 00 24 */	beq lbl_80358DA4
/* 80358D84 00355CC4  40 80 00 2C */	bge lbl_80358DB0
/* 80358D88 00355CC8  2C 05 00 01 */	cmpwi r5, 1
/* 80358D8C 00355CCC  40 80 00 08 */	bge lbl_80358D94
/* 80358D90 00355CD0  48 00 00 20 */	b lbl_80358DB0
lbl_80358D94:
/* 80358D94 00355CD4  91 07 00 44 */	stw r8, 0x44(r7)
/* 80358D98 00355CD8  39 20 00 01 */	li r9, 1
/* 80358D9C 00355CDC  39 08 04 00 */	addi r8, r8, 0x400
/* 80358DA0 00355CE0  48 00 00 14 */	b lbl_80358DB4
lbl_80358DA4:
/* 80358DA4 00355CE4  91 07 00 44 */	stw r8, 0x44(r7)
/* 80358DA8 00355CE8  39 08 08 00 */	addi r8, r8, 0x800
/* 80358DAC 00355CEC  48 00 00 08 */	b lbl_80358DB4
lbl_80358DB0:
/* 80358DB0 00355CF0  90 07 00 44 */	stw r0, 0x44(r7)
lbl_80358DB4:
/* 80358DB4 00355CF4  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 80358DB8 00355CF8  38 C6 00 02 */	addi r6, r6, 2
/* 80358DBC 00355CFC  39 4A 00 01 */	addi r10, r10, 1
/* 80358DC0 00355D00  7C A5 36 30 */	sraw r5, r5, r6
/* 80358DC4 00355D04  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 80358DC8 00355D08  2C 05 00 02 */	cmpwi r5, 2
/* 80358DCC 00355D0C  38 E7 00 04 */	addi r7, r7, 4
/* 80358DD0 00355D10  41 82 00 24 */	beq lbl_80358DF4
/* 80358DD4 00355D14  40 80 00 2C */	bge lbl_80358E00
/* 80358DD8 00355D18  2C 05 00 01 */	cmpwi r5, 1
/* 80358DDC 00355D1C  40 80 00 08 */	bge lbl_80358DE4
/* 80358DE0 00355D20  48 00 00 20 */	b lbl_80358E00
lbl_80358DE4:
/* 80358DE4 00355D24  91 07 00 44 */	stw r8, 0x44(r7)
/* 80358DE8 00355D28  39 20 00 01 */	li r9, 1
/* 80358DEC 00355D2C  39 08 04 00 */	addi r8, r8, 0x400
/* 80358DF0 00355D30  48 00 00 14 */	b lbl_80358E04
lbl_80358DF4:
/* 80358DF4 00355D34  91 07 00 44 */	stw r8, 0x44(r7)
/* 80358DF8 00355D38  39 08 08 00 */	addi r8, r8, 0x800
/* 80358DFC 00355D3C  48 00 00 08 */	b lbl_80358E04
lbl_80358E00:
/* 80358E00 00355D40  90 07 00 44 */	stw r0, 0x44(r7)
lbl_80358E04:
/* 80358E04 00355D44  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 80358E08 00355D48  38 C6 00 02 */	addi r6, r6, 2
/* 80358E0C 00355D4C  39 4A 00 01 */	addi r10, r10, 1
/* 80358E10 00355D50  7C A5 36 30 */	sraw r5, r5, r6
/* 80358E14 00355D54  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 80358E18 00355D58  2C 05 00 02 */	cmpwi r5, 2
/* 80358E1C 00355D5C  38 E7 00 04 */	addi r7, r7, 4
/* 80358E20 00355D60  41 82 00 24 */	beq lbl_80358E44
/* 80358E24 00355D64  40 80 00 2C */	bge lbl_80358E50
/* 80358E28 00355D68  2C 05 00 01 */	cmpwi r5, 1
/* 80358E2C 00355D6C  40 80 00 08 */	bge lbl_80358E34
/* 80358E30 00355D70  48 00 00 20 */	b lbl_80358E50
lbl_80358E34:
/* 80358E34 00355D74  91 07 00 44 */	stw r8, 0x44(r7)
/* 80358E38 00355D78  39 20 00 01 */	li r9, 1
/* 80358E3C 00355D7C  39 08 04 00 */	addi r8, r8, 0x400
/* 80358E40 00355D80  48 00 00 14 */	b lbl_80358E54
lbl_80358E44:
/* 80358E44 00355D84  91 07 00 44 */	stw r8, 0x44(r7)
/* 80358E48 00355D88  39 08 08 00 */	addi r8, r8, 0x800
/* 80358E4C 00355D8C  48 00 00 08 */	b lbl_80358E54
lbl_80358E50:
/* 80358E50 00355D90  90 07 00 44 */	stw r0, 0x44(r7)
lbl_80358E54:
/* 80358E54 00355D94  38 C6 00 02 */	addi r6, r6, 2
/* 80358E58 00355D98  38 E7 00 04 */	addi r7, r7, 4
/* 80358E5C 00355D9C  39 4A 00 01 */	addi r10, r10, 1
/* 80358E60 00355DA0  42 00 FE C4 */	bdnz lbl_80358D24
/* 80358E64 00355DA4  2C 09 00 00 */	cmpwi r9, 0
/* 80358E68 00355DA8  41 82 00 10 */	beq lbl_80358E78
/* 80358E6C 00355DAC  91 04 00 64 */	stw r8, 0x64(r4)
/* 80358E70 00355DB0  39 08 02 00 */	addi r8, r8, 0x200
/* 80358E74 00355DB4  48 00 00 0C */	b lbl_80358E80
lbl_80358E78:
/* 80358E78 00355DB8  38 00 FF FF */	li r0, -1
/* 80358E7C 00355DBC  90 04 00 64 */	stw r0, 0x64(r4)
lbl_80358E80:
/* 80358E80 00355DC0  91 04 00 68 */	stw r8, 0x68(r4)
/* 80358E84 00355DC4  4E 80 00 20 */	blr 

.global CARDGetStatus
CARDGetStatus:
/* 80358E88 00355DC8  7C 08 02 A6 */	mflr r0
/* 80358E8C 00355DCC  90 01 00 04 */	stw r0, 4(r1)
/* 80358E90 00355DD0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80358E94 00355DD4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80358E98 00355DD8  3B E5 00 00 */	addi r31, r5, 0
/* 80358E9C 00355DDC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80358EA0 00355DE0  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80358EA4 00355DE4  7C 9D 23 79 */	or. r29, r4, r4
/* 80358EA8 00355DE8  41 80 00 0C */	blt lbl_80358EB4
/* 80358EAC 00355DEC  2C 1D 00 7F */	cmpwi r29, 0x7f
/* 80358EB0 00355DF0  41 80 00 0C */	blt lbl_80358EBC
lbl_80358EB4:
/* 80358EB4 00355DF4  38 60 FF 80 */	li r3, -128
/* 80358EB8 00355DF8  48 00 00 C8 */	b lbl_80358F80
lbl_80358EBC:
/* 80358EBC 00355DFC  38 81 00 14 */	addi r4, r1, 0x14
/* 80358EC0 00355E00  4B FF AC F5 */	bl __CARDGetControlBlock
/* 80358EC4 00355E04  2C 03 00 00 */	cmpwi r3, 0
/* 80358EC8 00355E08  40 80 00 08 */	bge lbl_80358ED0
/* 80358ECC 00355E0C  48 00 00 B4 */	b lbl_80358F80
lbl_80358ED0:
/* 80358ED0 00355E10  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80358ED4 00355E14  4B FF C8 A9 */	bl __CARDGetDirBlock
/* 80358ED8 00355E18  57 A0 30 32 */	slwi r0, r29, 6
/* 80358EDC 00355E1C  7F A3 02 14 */	add r29, r3, r0
/* 80358EE0 00355E20  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80358EE4 00355E24  7F A4 EB 78 */	mr r4, r29
/* 80358EE8 00355E28  4B FF EF BD */	bl __CARDIsReadable
/* 80358EEC 00355E2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80358EF0 00355E30  41 80 00 84 */	blt lbl_80358F74
/* 80358EF4 00355E34  38 9D 00 00 */	addi r4, r29, 0
/* 80358EF8 00355E38  38 7F 00 28 */	addi r3, r31, 0x28
/* 80358EFC 00355E3C  38 A0 00 04 */	li r5, 4
/* 80358F00 00355E40  4B CA A6 41 */	bl memcpy
/* 80358F04 00355E44  38 7F 00 2C */	addi r3, r31, 0x2c
/* 80358F08 00355E48  38 9D 00 04 */	addi r4, r29, 4
/* 80358F0C 00355E4C  38 A0 00 02 */	li r5, 2
/* 80358F10 00355E50  4B CA A6 31 */	bl memcpy
/* 80358F14 00355E54  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80358F18 00355E58  7F E3 FB 78 */	mr r3, r31
/* 80358F1C 00355E5C  A0 DD 00 38 */	lhz r6, 0x38(r29)
/* 80358F20 00355E60  38 9D 00 08 */	addi r4, r29, 8
/* 80358F24 00355E64  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80358F28 00355E68  38 A0 00 20 */	li r5, 0x20
/* 80358F2C 00355E6C  7C 06 01 D6 */	mullw r0, r6, r0
/* 80358F30 00355E70  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80358F34 00355E74  4B CA A6 0D */	bl memcpy
/* 80358F38 00355E78  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 80358F3C 00355E7C  38 7D 00 00 */	addi r3, r29, 0
/* 80358F40 00355E80  38 9F 00 00 */	addi r4, r31, 0
/* 80358F44 00355E84  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80358F48 00355E88  88 1D 00 07 */	lbz r0, 7(r29)
/* 80358F4C 00355E8C  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 80358F50 00355E90  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 80358F54 00355E94  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80358F58 00355E98  A0 1D 00 30 */	lhz r0, 0x30(r29)
/* 80358F5C 00355E9C  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 80358F60 00355EA0  A0 1D 00 32 */	lhz r0, 0x32(r29)
/* 80358F64 00355EA4  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80358F68 00355EA8  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 80358F6C 00355EAC  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80358F70 00355EB0  4B FF FD 21 */	bl UpdateIconOffsets
lbl_80358F74:
/* 80358F74 00355EB4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80358F78 00355EB8  7F C4 F3 78 */	mr r4, r30
/* 80358F7C 00355EBC  4B FF AC F1 */	bl __CARDPutControlBlock
lbl_80358F80:
/* 80358F80 00355EC0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80358F84 00355EC4  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80358F88 00355EC8  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80358F8C 00355ECC  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80358F90 00355ED0  38 21 00 28 */	addi r1, r1, 0x28
/* 80358F94 00355ED4  7C 08 03 A6 */	mtlr r0
/* 80358F98 00355ED8  4E 80 00 20 */	blr 

.global CARDSetStatusAsync
CARDSetStatusAsync:
/* 80358F9C 00355EDC  7C 08 02 A6 */	mflr r0
/* 80358FA0 00355EE0  90 01 00 04 */	stw r0, 4(r1)
/* 80358FA4 00355EE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80358FA8 00355EE8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80358FAC 00355EEC  7C 9F 23 79 */	or. r31, r4, r4
/* 80358FB0 00355EF0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80358FB4 00355EF4  3B C6 00 00 */	addi r30, r6, 0
/* 80358FB8 00355EF8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80358FBC 00355EFC  3B A5 00 00 */	addi r29, r5, 0
/* 80358FC0 00355F00  93 81 00 20 */	stw r28, 0x20(r1)
/* 80358FC4 00355F04  3B 83 00 00 */	addi r28, r3, 0
/* 80358FC8 00355F08  41 80 00 40 */	blt lbl_80359008
/* 80358FCC 00355F0C  2C 1F 00 7F */	cmpwi r31, 0x7f
/* 80358FD0 00355F10  40 80 00 38 */	bge lbl_80359008
/* 80358FD4 00355F14  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 80358FD8 00355F18  3C 03 00 01 */	addis r0, r3, 1
/* 80358FDC 00355F1C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80358FE0 00355F20  41 82 00 0C */	beq lbl_80358FEC
/* 80358FE4 00355F24  28 03 02 00 */	cmplwi r3, 0x200
/* 80358FE8 00355F28  40 80 00 20 */	bge lbl_80359008
lbl_80358FEC:
/* 80358FEC 00355F2C  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 80358FF0 00355F30  3C 03 00 01 */	addis r0, r3, 1
/* 80358FF4 00355F34  28 00 FF FF */	cmplwi r0, 0xffff
/* 80358FF8 00355F38  41 82 00 18 */	beq lbl_80359010
/* 80358FFC 00355F3C  54 60 04 FE */	clrlwi r0, r3, 0x13
/* 80359000 00355F40  28 00 1F C0 */	cmplwi r0, 0x1fc0
/* 80359004 00355F44  40 81 00 0C */	ble lbl_80359010
lbl_80359008:
/* 80359008 00355F48  38 60 FF 80 */	li r3, -128
/* 8035900C 00355F4C  48 00 00 E4 */	b lbl_803590F0
lbl_80359010:
/* 80359010 00355F50  38 7C 00 00 */	addi r3, r28, 0
/* 80359014 00355F54  38 81 00 18 */	addi r4, r1, 0x18
/* 80359018 00355F58  4B FF AB 9D */	bl __CARDGetControlBlock
/* 8035901C 00355F5C  2C 03 00 00 */	cmpwi r3, 0
/* 80359020 00355F60  40 80 00 08 */	bge lbl_80359028
/* 80359024 00355F64  48 00 00 CC */	b lbl_803590F0
lbl_80359028:
/* 80359028 00355F68  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8035902C 00355F6C  4B FF C7 51 */	bl __CARDGetDirBlock
/* 80359030 00355F70  57 E0 30 32 */	slwi r0, r31, 6
/* 80359034 00355F74  7F E3 02 14 */	add r31, r3, r0
/* 80359038 00355F78  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8035903C 00355F7C  7F E4 FB 78 */	mr r4, r31
/* 80359040 00355F80  4B FF ED 31 */	bl __CARDIsWritable
/* 80359044 00355F84  7C 64 1B 79 */	or. r4, r3, r3
/* 80359048 00355F88  40 80 00 10 */	bge lbl_80359058
/* 8035904C 00355F8C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80359050 00355F90  4B FF AC 1D */	bl __CARDPutControlBlock
/* 80359054 00355F94  48 00 00 9C */	b lbl_803590F0
lbl_80359058:
/* 80359058 00355F98  88 1D 00 2E */	lbz r0, 0x2e(r29)
/* 8035905C 00355F9C  38 7F 00 00 */	addi r3, r31, 0
/* 80359060 00355FA0  38 9D 00 00 */	addi r4, r29, 0
/* 80359064 00355FA4  98 1F 00 07 */	stb r0, 7(r31)
/* 80359068 00355FA8  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8035906C 00355FAC  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80359070 00355FB0  A0 1D 00 34 */	lhz r0, 0x34(r29)
/* 80359074 00355FB4  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 80359078 00355FB8  A0 1D 00 36 */	lhz r0, 0x36(r29)
/* 8035907C 00355FBC  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 80359080 00355FC0  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 80359084 00355FC4  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80359088 00355FC8  4B FF FC 09 */	bl UpdateIconOffsets
/* 8035908C 00355FCC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80359090 00355FD0  3C 03 00 01 */	addis r0, r3, 1
/* 80359094 00355FD4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80359098 00355FD8  40 82 00 14 */	bne lbl_803590AC
/* 8035909C 00355FDC  A0 1F 00 32 */	lhz r0, 0x32(r31)
/* 803590A0 00355FE0  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 803590A4 00355FE4  60 00 00 01 */	ori r0, r0, 1
/* 803590A8 00355FE8  B0 1F 00 32 */	sth r0, 0x32(r31)
lbl_803590AC:
/* 803590AC 00355FEC  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 803590B0 00355FF0  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 803590B4 00355FF4  54 1D F0 BE */	srwi r29, r0, 2
/* 803590B8 00355FF8  4B FE 96 45 */	bl OSGetTime
/* 803590BC 00355FFC  38 DD 00 00 */	addi r6, r29, 0
/* 803590C0 00356000  38 A0 00 00 */	li r5, 0
/* 803590C4 00356004  48 00 92 61 */	bl func_80362324
/* 803590C8 00356008  90 9F 00 28 */	stw r4, 0x28(r31)
/* 803590CC 0035600C  38 7C 00 00 */	addi r3, r28, 0
/* 803590D0 00356010  38 9E 00 00 */	addi r4, r30, 0
/* 803590D4 00356014  4B FF C8 49 */	bl __CARDUpdateDir
/* 803590D8 00356018  7C 7C 1B 79 */	or. r28, r3, r3
/* 803590DC 0035601C  40 80 00 10 */	bge lbl_803590EC
/* 803590E0 00356020  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803590E4 00356024  7F 84 E3 78 */	mr r4, r28
/* 803590E8 00356028  4B FF AB 85 */	bl __CARDPutControlBlock
lbl_803590EC:
/* 803590EC 0035602C  7F 83 E3 78 */	mr r3, r28
lbl_803590F0:
/* 803590F0 00356030  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803590F4 00356034  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803590F8 00356038  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803590FC 0035603C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80359100 00356040  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80359104 00356044  38 21 00 30 */	addi r1, r1, 0x30
/* 80359108 00356048  7C 08 03 A6 */	mtlr r0
/* 8035910C 0035604C  4E 80 00 20 */	blr 

.global CARDSetStatus
CARDSetStatus:
/* 80359110 00356050  7C 08 02 A6 */	mflr r0
.global __CARDSyncCallback
/* 80359114 00356054  3C C0 80 35 */	lis r6, __CARDSyncCallback@ha
/* 80359118 00356058  90 01 00 04 */	stw r0, 4(r1)
.global __CARDSyncCallback
/* 8035911C 0035605C  38 C6 2A 34 */	addi r6, r6, __CARDSyncCallback@l
/* 80359120 00356060  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80359124 00356064  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80359128 00356068  3B E3 00 00 */	addi r31, r3, 0
/* 8035912C 0035606C  4B FF FE 71 */	bl CARDSetStatusAsync
/* 80359130 00356070  2C 03 00 00 */	cmpwi r3, 0
/* 80359134 00356074  40 80 00 08 */	bge lbl_8035913C
/* 80359138 00356078  48 00 00 0C */	b lbl_80359144
lbl_8035913C:
/* 8035913C 0035607C  7F E3 FB 78 */	mr r3, r31
/* 80359140 00356080  4B FF AC E1 */	bl __CARDSync
lbl_80359144:
/* 80359144 00356084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80359148 00356088  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035914C 0035608C  38 21 00 20 */	addi r1, r1, 0x20
/* 80359150 00356090  7C 08 03 A6 */	mtlr r0
/* 80359154 00356094  4E 80 00 20 */	blr 

