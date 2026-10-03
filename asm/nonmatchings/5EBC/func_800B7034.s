nonmatching func_800B7034, 0x13C

glabel func_800B7034
    /* A7834 800B7034 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* A7838 800B7038 1400B1AF */  sw         $s1, 0x14($sp)
    /* A783C 800B703C 2188A000 */  addu       $s1, $a1, $zero
    /* A7840 800B7040 1800B2AF */  sw         $s2, 0x18($sp)
    /* A7844 800B7044 2190C000 */  addu       $s2, $a2, $zero
    /* A7848 800B7048 2000B4AF */  sw         $s4, 0x20($sp)
    /* A784C 800B704C 21A08000 */  addu       $s4, $a0, $zero
    /* A7850 800B7050 1000B0AF */  sw         $s0, 0x10($sp)
    /* A7854 800B7054 03001024 */  addiu      $s0, $zero, 0x3
    /* A7858 800B7058 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A785C 800B705C FF009332 */  andi       $s3, $s4, 0xFF
    /* A7860 800B7060 0D80033C */  lui        $v1, %hi(D_800D38C4)
    /* A7864 800B7064 C4386324 */  addiu      $v1, $v1, %lo(D_800D38C4)
    /* A7868 800B7068 2400B5AF */  sw         $s5, 0x24($sp)
    /* A786C 800B706C 0D80153C */  lui        $s5, %hi(D_800D394C)
    /* A7870 800B7070 4C39B58E */  lw         $s5, %lo(D_800D394C)($s5)
    /* A7874 800B7074 80101300 */  sll        $v0, $s3, 2
    /* A7878 800B7078 2800B6AF */  sw         $s6, 0x28($sp)
    /* A787C 800B707C 21B04300 */  addu       $s6, $v0, $v1
    /* A7880 800B7080 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* A7884 800B7084 21B80000 */  addu       $s7, $zero, $zero
    /* A7888 800B7088 3000BEAF */  sw         $fp, 0x30($sp)
    /* A788C 800B708C FFFF1E24 */  addiu      $fp, $zero, -0x1
    /* A7890 800B7090 3400BFAF */  sw         $ra, 0x34($sp)
  .L800B7094:
    /* A7894 800B7094 0D80013C */  lui        $at, %hi(D_800D394C)
    /* A7898 800B7098 4C3920AC */  sw         $zero, %lo(D_800D394C)($at)
    /* A789C 800B709C 01000824 */  addiu      $t0, $zero, 0x1
    /* A78A0 800B70A0 0B006812 */  beq        $s3, $t0, .L800B70D0
    /* A78A4 800B70A4 00000000 */   nop
    /* A78A8 800B70A8 0D80023C */  lui        $v0, %hi(D_800D395C)
    /* A78AC 800B70AC 5C394290 */  lbu        $v0, %lo(D_800D395C)($v0)
    /* A78B0 800B70B0 00000000 */  nop
    /* A78B4 800B70B4 10004230 */  andi       $v0, $v0, 0x10
    /* A78B8 800B70B8 05004010 */  beqz       $v0, .L800B70D0
    /* A78BC 800B70BC 01000424 */   addiu     $a0, $zero, 0x1
    /* A78C0 800B70C0 21280000 */  addu       $a1, $zero, $zero
    /* A78C4 800B70C4 21300000 */  addu       $a2, $zero, $zero
    /* A78C8 800B70C8 2FE0020C */  jal        func_800B80BC
    /* A78CC 800B70CC 21380000 */   addu      $a3, $zero, $zero
  .L800B70D0:
    /* A78D0 800B70D0 0B002012 */  beqz       $s1, .L800B7100
    /* A78D4 800B70D4 00000000 */   nop
    /* A78D8 800B70D8 0000C28E */  lw         $v0, 0x0($s6)
    /* A78DC 800B70DC 00000000 */  nop
    /* A78E0 800B70E0 07004010 */  beqz       $v0, .L800B7100
    /* A78E4 800B70E4 02000424 */   addiu     $a0, $zero, 0x2
    /* A78E8 800B70E8 21282002 */  addu       $a1, $s1, $zero
    /* A78EC 800B70EC 21304002 */  addu       $a2, $s2, $zero
    /* A78F0 800B70F0 2FE0020C */  jal        func_800B80BC
    /* A78F4 800B70F4 21380000 */   addu      $a3, $zero, $zero
    /* A78F8 800B70F8 0A004014 */  bnez       $v0, .L800B7124
    /* A78FC 800B70FC 00000000 */   nop
  .L800B7100:
    /* A7900 800B7100 0D80013C */  lui        $at, %hi(D_800D394C)
    /* A7904 800B7104 4C3935AC */  sw         $s5, %lo(D_800D394C)($at)
    /* A7908 800B7108 FF008432 */  andi       $a0, $s4, 0xFF
    /* A790C 800B710C 21282002 */  addu       $a1, $s1, $zero
    /* A7910 800B7110 21304002 */  addu       $a2, $s2, $zero
    /* A7914 800B7114 2FE0020C */  jal        func_800B80BC
    /* A7918 800B7118 21380000 */   addu      $a3, $zero, $zero
    /* A791C 800B711C 08004010 */  beqz       $v0, .L800B7140
    /* A7920 800B7120 0100E226 */   addiu     $v0, $s7, 0x1
  .L800B7124:
    /* A7924 800B7124 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A7928 800B7128 DAFF1E16 */  bne        $s0, $fp, .L800B7094
    /* A792C 800B712C 00000000 */   nop
    /* A7930 800B7130 0D80013C */  lui        $at, %hi(D_800D394C)
    /* A7934 800B7134 4C3935AC */  sw         $s5, %lo(D_800D394C)($at)
    /* A7938 800B7138 FFFF1724 */  addiu      $s7, $zero, -0x1
    /* A793C 800B713C 0100E226 */  addiu      $v0, $s7, 0x1
  .L800B7140:
    /* A7940 800B7140 3400BF8F */  lw         $ra, 0x34($sp)
    /* A7944 800B7144 3000BE8F */  lw         $fp, 0x30($sp)
    /* A7948 800B7148 2C00B78F */  lw         $s7, 0x2C($sp)
    /* A794C 800B714C 2800B68F */  lw         $s6, 0x28($sp)
    /* A7950 800B7150 2400B58F */  lw         $s5, 0x24($sp)
    /* A7954 800B7154 2000B48F */  lw         $s4, 0x20($sp)
    /* A7958 800B7158 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A795C 800B715C 1800B28F */  lw         $s2, 0x18($sp)
    /* A7960 800B7160 1400B18F */  lw         $s1, 0x14($sp)
    /* A7964 800B7164 1000B08F */  lw         $s0, 0x10($sp)
    /* A7968 800B7168 0800E003 */  jr         $ra
    /* A796C 800B716C 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800B7034
