/* 8002FD08 0002CC48  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 8002FD0C 0002CC4C  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 8002FD10 0002CC50  88 63 13 0C */ lbz r3, 0x130c(r3)
/* 8002FD14 0002CC54  4E 80 00 20 */ blr