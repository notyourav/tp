/* 80263970 002608B0  88 03 00 16 */ lbz r0, 0x16(r3)
/* 80263974 002608B4  7C 00 20 00 */ cmpw r0, r4
/* 80263978 002608B8  4C 80 00 20 */ bgelr
/* 8026397C 002608BC  98 83 00 16 */ stb r4, 0x16(r3)
/* 80263980 002608C0  4E 80 00 20 */ blr
