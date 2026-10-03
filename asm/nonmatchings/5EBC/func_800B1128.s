/* Handwritten function */
nonmatching func_800B1128, 0x84

glabel func_800B1128
    /* A1928 800B1128 00F08448 */  mtc2       $a0, $30 /* handwritten instruction */
    /* A192C 800B112C 00000000 */  nop
    /* A1930 800B1130 00000000 */  nop
    /* A1934 800B1134 00F80248 */  mfc2       $v0, $31 /* handwritten instruction */
    /* A1938 800B1138 20000124 */  addiu      $at, $zero, 0x20
    /* A193C 800B113C 19004110 */  beq        $v0, $at, .L800B11A4
    /* A1940 800B1140 00000000 */   nop
    /* A1944 800B1144 01004830 */  andi       $t0, $v0, 0x1
    /* A1948 800B1148 FEFF0124 */  addiu      $at, $zero, -0x2
    /* A194C 800B114C 24504100 */  and        $t2, $v0, $at
    /* A1950 800B1150 1F000924 */  addiu      $t1, $zero, 0x1F
    /* A1954 800B1154 22482A01 */  sub        $t1, $t1, $t2 /* handwritten instruction */
    /* A1958 800B1158 43480900 */  sra        $t1, $t1, 1
    /* A195C 800B115C E8FF4B21 */  addi       $t3, $t2, -0x18 /* handwritten instruction */
    /* A1960 800B1160 03006005 */  bltz       $t3, .L800B1170
    /* A1964 800B1164 00000000 */   nop
    /* A1968 800B1168 04606401 */  sllv       $t4, $a0, $t3
    /* A196C 800B116C 03000010 */  b          .L800B117C
  .L800B1170:
    /* A1970 800B1170 18000B24 */   addiu     $t3, $zero, 0x18
    /* A1974 800B1174 22586A01 */  sub        $t3, $t3, $t2 /* handwritten instruction */
    /* A1978 800B1178 07606401 */  srav       $t4, $a0, $t3
  .L800B117C:
    /* A197C 800B117C C0FF8C21 */  addi       $t4, $t4, -0x40 /* handwritten instruction */
    /* A1980 800B1180 40600C00 */  sll        $t4, $t4, 1
    /* A1984 800B1184 0D800D3C */  lui        $t5, %hi(D_800CEBE4)
    /* A1988 800B1188 2168AC01 */  addu       $t5, $t5, $t4
    /* A198C 800B118C E4EBAD85 */  lh         $t5, %lo(D_800CEBE4)($t5)
    /* A1990 800B1190 00000000 */  nop
    /* A1994 800B1194 04682D01 */  sllv       $t5, $t5, $t1
    /* A1998 800B1198 02130D00 */  srl        $v0, $t5, 12
    /* A199C 800B119C 0800E003 */  jr         $ra
    /* A19A0 800B11A0 00000000 */   nop
  .L800B11A4:
    /* A19A4 800B11A4 0800E003 */  jr         $ra
    /* A19A8 800B11A8 00000224 */   addiu     $v0, $zero, 0x0
endlabel func_800B1128
    /* A19AC 800B11AC 00000000 */  nop
    /* A19B0 800B11B0 00000000 */  nop
    /* A19B4 800B11B4 00000000 */  nop
