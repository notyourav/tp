/* 800D0110 000CD050  38 80 00 00 */ li r4, 0
/* 800D0114 000CD054  A0 03 1F BC */ lhz r0, 0x1fbc(r3)
/* 800D0118 000CD058  28 00 02 BD */ cmplwi r0, 0x2bd
/* 800D011C 000CD05C  41 82 00 10 */ beq lbl_800D012C
/* 800D0120 000CD060  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800D0124 000CD064  28 00 02 BE */ cmplwi r0, 0x2be
/* 800D0128 000CD068  40 82 00 08 */ bne lbl_800D0130
lbl_800D012C:
/* 800D012C 000CD06C  38 80 00 01 */ li r4, 1
lbl_800D0130:
/* 800D0130 000CD070  54 83 06 3E */ clrlwi r3, r4, 0x18
/* 800D0134 000CD074  4E 80 00 20 */ blr
