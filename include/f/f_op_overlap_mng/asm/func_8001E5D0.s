/* 8001E5D0 0001B510  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001E5D4 0001B514  7C 08 02 A6 */ mflr r0
/* 8001E5D8 0001B518  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001E5DC 0001B51C  80 6D 80 30 */ lwz r3, l_fopOvlpM_overlap-_SDA_BASE_(r13)
/* 8001E5E0 0001B520  28 03 00 00 */ cmplwi r3, 0
/* 8001E5E4 0001B524  41 82 00 0C */ beq lbl_8001E5F0
/* 8001E5E8 0001B528  48 00 04 F1 */ bl fopOvlpReq_OverlapClr__FP21overlap_request_class
/* 8001E5EC 0001B52C  48 00 00 08 */ b lbl_8001E5F4
lbl_8001E5F0:
/* 8001E5F0 0001B530  38 60 00 00 */ li r3, 0
lbl_8001E5F4:
/* 8001E5F4 0001B534  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001E5F8 0001B538  7C 08 03 A6 */ mtlr r0
/* 8001E5FC 0001B53C  38 21 00 10 */ addi r1, r1, 0x10
/* 8001E600 0001B540  4E 80 00 20 */ blr
