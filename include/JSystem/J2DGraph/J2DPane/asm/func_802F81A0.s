/* 802F81A0 002F50E0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802F81A4 002F50E4  7C 08 02 A6 */ mflr r0
/* 802F81A8 002F50E8  90 01 00 14 */ stw r0, 0x14(r1)
/* 802F81AC 002F50EC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 802F81B0 002F50F0  93 C1 00 08 */ stw r30, 8(r1)
/* 802F81B4 002F50F4  7C 7F 1B 78 */ mr r31, r3
/* 802F81B8 002F50F8  7C 9E 23 78 */ mr r30, r4
/* 802F81BC 002F50FC  81 83 00 00 */ lwz r12, 0(r3)
/* 802F81C0 002F5100  81 8C 00 8C */ lwz r12, 0x8c(r12)
/* 802F81C4 002F5104  7D 89 03 A6 */ mtctr r12
/* 802F81C8 002F5108  4E 80 04 21 */ bctrl
/* 802F81CC 002F510C  83 FF 00 DC */ lwz r31, 0xdc(r31)
/* 802F81D0 002F5110  28 1F 00 00 */ cmplwi r31, 0
/* 802F81D4 002F5114  41 82 00 34 */ beq lbl_802F8208
/* 802F81D8 002F5118  3B FF FF F4 */ addi r31, r31, -12
/* 802F81DC 002F511C  48 00 00 2C */ b lbl_802F8208
lbl_802F81E0:
/* 802F81E0 002F5120  80 7F 00 0C */ lwz r3, 0xc(r31)
/* 802F81E4 002F5124  7F C4 F3 78 */ mr r4, r30
/* 802F81E8 002F5128  81 83 00 00 */ lwz r12, 0(r3)
/* 802F81EC 002F512C  81 8C 00 88 */ lwz r12, 0x88(r12)
/* 802F81F0 002F5130  7D 89 03 A6 */ mtctr r12
/* 802F81F4 002F5134  4E 80 04 21 */ bctrl
/* 802F81F8 002F5138  83 FF 00 18 */ lwz r31, 0x18(r31)
/* 802F81FC 002F513C  28 1F 00 00 */ cmplwi r31, 0
/* 802F8200 002F5140  41 82 00 08 */ beq lbl_802F8208
/* 802F8204 002F5144  3B FF FF F4 */ addi r31, r31, -12
lbl_802F8208:
/* 802F8208 002F5148  28 1F 00 00 */ cmplwi r31, 0
/* 802F820C 002F514C  40 82 FF D4 */ bne lbl_802F81E0
/* 802F8210 002F5150  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802F8214 002F5154  83 C1 00 08 */ lwz r30, 8(r1)
/* 802F8218 002F5158  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802F821C 002F515C  7C 08 03 A6 */ mtlr r0
/* 802F8220 002F5160  38 21 00 10 */ addi r1, r1, 0x10
/* 802F8224 002F5164  4E 80 00 20 */ blr
