/* 800E01CC 000DD10C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800E01D0 000DD110  7C 08 02 A6 */ mflr r0
/* 800E01D4 000DD114  90 01 00 14 */ stw r0, 0x14(r1)
/* 800E01D8 000DD118  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E01DC 000DD11C  7C 9F 23 78 */ mr r31, r4
/* 800E01E0 000DD120  48 00 00 31 */ bl daAlink_c_NS_getBoomerangActor
/* 800E01E4 000DD124  28 03 00 00 */ cmplwi r3, 0
/* 800E01E8 000DD128  41 82 00 14 */ beq lbl_800E01FC
/* 800E01EC 000DD12C  7F E4 FB 78 */ mr r4, r31
/* 800E01F0 000DD130  39 83 0D D8 */ addi r12, r3, 0xdd8
/* 800E01F4 000DD134  48 28 1E 91 */ bl func_80362084
/* 800E01F8 000DD138  60 00 00 00 */ nop
lbl_800E01FC:
/* 800E01FC 000DD13C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E0200 000DD140  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800E0204 000DD144  7C 08 03 A6 */ mtlr r0
/* 800E0208 000DD148  38 21 00 10 */ addi r1, r1, 0x10
/* 800E020C 000DD14C  4E 80 00 20 */ blr
