/* 802F666C 002F35AC  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 802F6670 002F35B0  7C 08 02 A6 */ mflr r0
/* 802F6674 002F35B4  90 01 00 24 */ stw r0, 0x24(r1)
/* 802F6678 002F35B8  39 61 00 20 */ addi r11, r1, 0x20
/* 802F667C 002F35BC  48 06 BB 5D */ bl _savegpr_28
/* 802F6680 002F35C0  7C 7C 1B 78 */ mr r28, r3
/* 802F6684 002F35C4  7C 9D 23 79 */ or. r29, r4, r4
/* 802F6688 002F35C8  40 82 00 0C */ bne lbl_802F6694
/* 802F668C 002F35CC  38 60 00 00 */ li r3, 0
/* 802F6690 002F35D0  48 00 00 6C */ b lbl_802F66FC
lbl_802F6694:
/* 802F6694 002F35D4  7F A3 EB 78 */ mr r3, r29
/* 802F6698 002F35D8  48 00 14 65 */ bl J2DPane_NS_getParentPane
/* 802F669C 002F35DC  7C 7F 1B 78 */ mr r31, r3
/* 802F66A0 002F35E0  34 9D 00 DC */ addic. r4, r29, 0xdc
/* 802F66A4 002F35E4  41 82 00 08 */ beq lbl_802F66AC
/* 802F66A8 002F35E8  38 84 00 0C */ addi r4, r4, 0xc
lbl_802F66AC:
/* 802F66AC 002F35EC  38 7C 00 DC */ addi r3, r28, 0xdc
/* 802F66B0 002F35F0  4B FE 58 9D */ bl append__10JSUPtrListFP10JSUPtrLink
/* 802F66B4 002F35F4  7C 7E 1B 78 */ mr r30, r3
/* 802F66B8 002F35F8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 802F66BC 002F35FC  41 82 00 3C */ beq lbl_802F66F8
/* 802F66C0 002F3600  28 1F 00 00 */ cmplwi r31, 0
/* 802F66C4 002F3604  40 82 00 34 */ bne lbl_802F66F8
/* 802F66C8 002F3608  7F A3 EB 78 */ mr r3, r29
/* 802F66CC 002F360C  C0 3C 00 20 */ lfs f1, 0x20(r28)
/* 802F66D0 002F3610  C0 5C 00 24 */ lfs f2, 0x24(r28)
/* 802F66D4 002F3614  81 9D 00 00 */ lwz r12, 0(r29)
/* 802F66D8 002F3618  81 8C 00 14 */ lwz r12, 0x14(r12)
/* 802F66DC 002F361C  7D 89 03 A6 */ mtctr r12
/* 802F66E0 002F3620  4E 80 04 21 */ bctrl
/* 802F66E4 002F3624  7F A3 EB 78 */ mr r3, r29
/* 802F66E8 002F3628  81 9D 00 00 */ lwz r12, 0(r29)
/* 802F66EC 002F362C  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 802F66F0 002F3630  7D 89 03 A6 */ mtctr r12
/* 802F66F4 002F3634  4E 80 04 21 */ bctrl
lbl_802F66F8:
/* 802F66F8 002F3638  7F C3 F3 78 */ mr r3, r30
lbl_802F66FC:
/* 802F66FC 002F363C  39 61 00 20 */ addi r11, r1, 0x20
/* 802F6700 002F3640  48 06 BB 25 */ bl _restgpr_28
/* 802F6704 002F3644  80 01 00 24 */ lwz r0, 0x24(r1)
/* 802F6708 002F3648  7C 08 03 A6 */ mtlr r0
/* 802F670C 002F364C  38 21 00 20 */ addi r1, r1, 0x20
/* 802F6710 002F3650  4E 80 00 20 */ blr
