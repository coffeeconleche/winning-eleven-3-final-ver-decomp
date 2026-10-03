nonmatching func_801A6FC8, 0x1C0

glabel func_801A6FC8
    /* 1E050 801A6FC8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1E054 801A6FCC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1E058 801A6FD0 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 1E05C 801A6FD4 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 1E060 801A6FD8 485E6426 */  addiu      $a0, $s3, 0x5E48
    /* 1E064 801A6FDC 21280000 */  addu       $a1, $zero, $zero
    /* 1E068 801A6FE0 20000624 */  addiu      $a2, $zero, 0x20
    /* 1E06C 801A6FE4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 1E070 801A6FE8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1E074 801A6FEC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1E078 801A6FF0 653A060C */  jal        func_8018E994
    /* 1E07C 801A6FF4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1E080 801A6FF8 01005130 */  andi       $s1, $v0, 0x1
    /* 1E084 801A6FFC 985E6426 */  addiu      $a0, $s3, 0x5E98
    /* 1E088 801A7000 21280000 */  addu       $a1, $zero, $zero
    /* 1E08C 801A7004 653A060C */  jal        func_8018E994
    /* 1E090 801A7008 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E094 801A700C 24882202 */  and        $s1, $s1, $v0
    /* 1E098 801A7010 C05E6426 */  addiu      $a0, $s3, 0x5EC0
    /* 1E09C 801A7014 21280000 */  addu       $a1, $zero, $zero
    /* 1E0A0 801A7018 653A060C */  jal        func_8018E994
    /* 1E0A4 801A701C 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E0A8 801A7020 24882202 */  and        $s1, $s1, $v0
    /* 1E0AC 801A7024 E85E6426 */  addiu      $a0, $s3, 0x5EE8
    /* 1E0B0 801A7028 21280000 */  addu       $a1, $zero, $zero
    /* 1E0B4 801A702C 653A060C */  jal        func_8018E994
    /* 1E0B8 801A7030 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E0BC 801A7034 24882202 */  and        $s1, $s1, $v0
    /* 1E0C0 801A7038 105F6426 */  addiu      $a0, $s3, 0x5F10
    /* 1E0C4 801A703C 21280000 */  addu       $a1, $zero, $zero
    /* 1E0C8 801A7040 653A060C */  jal        func_8018E994
    /* 1E0CC 801A7044 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E0D0 801A7048 24882202 */  and        $s1, $s1, $v0
    /* 1E0D4 801A704C D85F6426 */  addiu      $a0, $s3, 0x5FD8
    /* 1E0D8 801A7050 21280000 */  addu       $a1, $zero, $zero
    /* 1E0DC 801A7054 653A060C */  jal        func_8018E994
    /* 1E0E0 801A7058 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E0E4 801A705C 24882202 */  and        $s1, $s1, $v0
    /* 1E0E8 801A7060 00606426 */  addiu      $a0, $s3, 0x6000
    /* 1E0EC 801A7064 21280000 */  addu       $a1, $zero, $zero
    /* 1E0F0 801A7068 653A060C */  jal        func_8018E994
    /* 1E0F4 801A706C 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E0F8 801A7070 24882202 */  and        $s1, $s1, $v0
    /* 1E0FC 801A7074 885F6426 */  addiu      $a0, $s3, 0x5F88
    /* 1E100 801A7078 21280000 */  addu       $a1, $zero, $zero
    /* 1E104 801A707C 653A060C */  jal        func_8018E994
    /* 1E108 801A7080 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E10C 801A7084 24882202 */  and        $s1, $s1, $v0
    /* 1E110 801A7088 B05F6426 */  addiu      $a0, $s3, 0x5FB0
    /* 1E114 801A708C 21280000 */  addu       $a1, $zero, $zero
    /* 1E118 801A7090 653A060C */  jal        func_8018E994
    /* 1E11C 801A7094 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E120 801A7098 24882202 */  and        $s1, $s1, $v0
    /* 1E124 801A709C 385F6426 */  addiu      $a0, $s3, 0x5F38
    /* 1E128 801A70A0 5A000524 */  addiu      $a1, $zero, 0x5A
    /* 1E12C 801A70A4 653A060C */  jal        func_8018E994
    /* 1E130 801A70A8 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E134 801A70AC 24882202 */  and        $s1, $s1, $v0
    /* 1E138 801A70B0 605F6426 */  addiu      $a0, $s3, 0x5F60
    /* 1E13C 801A70B4 9F000524 */  addiu      $a1, $zero, 0x9F
    /* 1E140 801A70B8 653A060C */  jal        func_8018E994
    /* 1E144 801A70BC 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E148 801A70C0 24882202 */  and        $s1, $s1, $v0
    /* 1E14C 801A70C4 1E80103C */  lui        $s0, %hi(D_801D92A8)
    /* 1E150 801A70C8 A8921026 */  addiu      $s0, $s0, %lo(D_801D92A8)
    /* 1E154 801A70CC 21200002 */  addu       $a0, $s0, $zero
    /* 1E158 801A70D0 1E000524 */  addiu      $a1, $zero, 0x1E
    /* 1E15C 801A70D4 653A060C */  jal        func_8018E994
    /* 1E160 801A70D8 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E164 801A70DC 24882202 */  and        $s1, $s1, $v0
    /* 1E168 801A70E0 1C000426 */  addiu      $a0, $s0, 0x1C
    /* 1E16C 801A70E4 1E000524 */  addiu      $a1, $zero, 0x1E
    /* 1E170 801A70E8 653A060C */  jal        func_8018E994
    /* 1E174 801A70EC 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E178 801A70F0 24882202 */  and        $s1, $s1, $v0
    /* 1E17C 801A70F4 0F001024 */  addiu      $s0, $zero, 0xF
    /* 1E180 801A70F8 18601224 */  addiu      $s2, $zero, 0x6018
  .L801A70FC:
    /* 1E184 801A70FC 21207202 */  addu       $a0, $s3, $s2
    /* 1E188 801A7100 10008424 */  addiu      $a0, $a0, 0x10
    /* 1E18C 801A7104 21280000 */  addu       $a1, $zero, $zero
    /* 1E190 801A7108 653A060C */  jal        func_8018E994
    /* 1E194 801A710C 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E198 801A7110 24882202 */  and        $s1, $s1, $v0
    /* 1E19C 801A7114 01001026 */  addiu      $s0, $s0, 0x1
    /* 1E1A0 801A7118 1700022A */  slti       $v0, $s0, 0x17
    /* 1E1A4 801A711C F7FF4014 */  bnez       $v0, .L801A70FC
    /* 1E1A8 801A7120 28005226 */   addiu     $s2, $s2, 0x28
    /* 1E1AC 801A7124 17001024 */  addiu      $s0, $zero, 0x17
    /* 1E1B0 801A7128 58611224 */  addiu      $s2, $zero, 0x6158
  .L801A712C:
    /* 1E1B4 801A712C 21207202 */  addu       $a0, $s3, $s2
    /* 1E1B8 801A7130 10008424 */  addiu      $a0, $a0, 0x10
    /* 1E1BC 801A7134 21280000 */  addu       $a1, $zero, $zero
    /* 1E1C0 801A7138 653A060C */  jal        func_8018E994
    /* 1E1C4 801A713C 20000624 */   addiu     $a2, $zero, 0x20
    /* 1E1C8 801A7140 24882202 */  and        $s1, $s1, $v0
    /* 1E1CC 801A7144 01001026 */  addiu      $s0, $s0, 0x1
    /* 1E1D0 801A7148 2100022A */  slti       $v0, $s0, 0x21
    /* 1E1D4 801A714C F7FF4014 */  bnez       $v0, .L801A712C
    /* 1E1D8 801A7150 28005226 */   addiu     $s2, $s2, 0x28
    /* 1E1DC 801A7154 04002012 */  beqz       $s1, .L801A7168
    /* 1E1E0 801A7158 21102002 */   addu      $v0, $s1, $zero
    /* 1E1E4 801A715C D79C060C */  jal        func_801A735C
    /* 1E1E8 801A7160 21200000 */   addu      $a0, $zero, $zero
    /* 1E1EC 801A7164 21102002 */  addu       $v0, $s1, $zero
  .L801A7168:
    /* 1E1F0 801A7168 2000BF8F */  lw         $ra, 0x20($sp)
    /* 1E1F4 801A716C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1E1F8 801A7170 1800B28F */  lw         $s2, 0x18($sp)
    /* 1E1FC 801A7174 1400B18F */  lw         $s1, 0x14($sp)
    /* 1E200 801A7178 1000B08F */  lw         $s0, 0x10($sp)
    /* 1E204 801A717C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1E208 801A7180 0800E003 */  jr         $ra
    /* 1E20C 801A7184 00000000 */   nop
endlabel func_801A6FC8
