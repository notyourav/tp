/* 800CF2C8 000CC208  88 03 2F AA */ lbz r0, 0x2faa(r3)
/* 800CF2CC 000CC20C  20 00 00 05 */ subfic r0, r0, 5
/* 800CF2D0 000CC210  7C 00 00 34 */ cntlzw r0, r0
/* 800CF2D4 000CC214  54 03 DE 3E */ rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800CF2D8 000CC218  4E 80 00 20 */ blr