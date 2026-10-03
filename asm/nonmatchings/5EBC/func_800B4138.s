nonmatching func_800B4138, 0x74

glabel func_800B4138
    /* A4938 800B4138 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A493C 800B413C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A4940 800B4140 FFFF9130 */  andi       $s1, $a0, 0xFFFF
    /* A4944 800B4144 21202002 */  addu       $a0, $s1, $zero
    /* A4948 800B4148 1800B0AF */  sw         $s0, 0x18($sp)
    /* A494C 800B414C FFFFB030 */  andi       $s0, $a1, 0xFFFF
    /* A4950 800B4150 21280002 */  addu       $a1, $s0, $zero
    /* A4954 800B4154 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* A4958 800B4158 3800A297 */  lhu        $v0, 0x38($sp)
    /* A495C 800B415C FFFFE730 */  andi       $a3, $a3, 0xFFFF
    /* A4960 800B4160 2000BFAF */  sw         $ra, 0x20($sp)
    /* A4964 800B4164 6BD0020C */  jal        func_800B41AC
    /* A4968 800B4168 1000A2AF */   sw        $v0, 0x10($sp)
    /* A496C 800B416C DED6020C */  jal        func_800B5B78
    /* A4970 800B4170 00000000 */   nop
    /* A4974 800B4174 21202002 */  addu       $a0, $s1, $zero
    /* A4978 800B4178 1180013C */  lui        $at, %hi(D_8010CD54)
    /* A497C 800B417C 54CD20A4 */  sh         $zero, %lo(D_8010CD54)($at)
    /* A4980 800B4180 CCD0020C */  jal        func_800B4330
    /* A4984 800B4184 21280002 */   addu      $a1, $s0, $zero
    /* A4988 800B4188 F2D1020C */  jal        func_800B47C8
    /* A498C 800B418C 00000000 */   nop
    /* A4990 800B4190 A6D1020C */  jal        func_800B4698
    /* A4994 800B4194 00000000 */   nop
    /* A4998 800B4198 2000BF8F */  lw         $ra, 0x20($sp)
    /* A499C 800B419C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A49A0 800B41A0 1800B08F */  lw         $s0, 0x18($sp)
    /* A49A4 800B41A4 0800E003 */  jr         $ra
    /* A49A8 800B41A8 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800B4138
