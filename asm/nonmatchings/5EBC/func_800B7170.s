nonmatching func_800B7170, 0x134

glabel func_800B7170
    /* A7970 800B7170 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* A7974 800B7174 1400B1AF */  sw         $s1, 0x14($sp)
    /* A7978 800B7178 2188A000 */  addu       $s1, $a1, $zero
    /* A797C 800B717C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A7980 800B7180 21988000 */  addu       $s3, $a0, $zero
    /* A7984 800B7184 1000B0AF */  sw         $s0, 0x10($sp)
    /* A7988 800B7188 03001024 */  addiu      $s0, $zero, 0x3
    /* A798C 800B718C 3000BEAF */  sw         $fp, 0x30($sp)
    /* A7990 800B7190 01001E24 */  addiu      $fp, $zero, 0x1
    /* A7994 800B7194 1800B2AF */  sw         $s2, 0x18($sp)
    /* A7998 800B7198 FF007232 */  andi       $s2, $s3, 0xFF
    /* A799C 800B719C 0D80033C */  lui        $v1, %hi(D_800D38C4)
    /* A79A0 800B71A0 C4386324 */  addiu      $v1, $v1, %lo(D_800D38C4)
    /* A79A4 800B71A4 2000B4AF */  sw         $s4, 0x20($sp)
    /* A79A8 800B71A8 0D80143C */  lui        $s4, %hi(D_800D394C)
    /* A79AC 800B71AC 4C39948E */  lw         $s4, %lo(D_800D394C)($s4)
    /* A79B0 800B71B0 80101200 */  sll        $v0, $s2, 2
    /* A79B4 800B71B4 2400B5AF */  sw         $s5, 0x24($sp)
    /* A79B8 800B71B8 21A84300 */  addu       $s5, $v0, $v1
    /* A79BC 800B71BC 2800B6AF */  sw         $s6, 0x28($sp)
    /* A79C0 800B71C0 21B00000 */  addu       $s6, $zero, $zero
    /* A79C4 800B71C4 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* A79C8 800B71C8 FFFF1724 */  addiu      $s7, $zero, -0x1
    /* A79CC 800B71CC 3400BFAF */  sw         $ra, 0x34($sp)
  .L800B71D0:
    /* A79D0 800B71D0 0D80013C */  lui        $at, %hi(D_800D394C)
    /* A79D4 800B71D4 0B005E12 */  beq        $s2, $fp, .L800B7204
    /* A79D8 800B71D8 4C3920AC */   sw        $zero, %lo(D_800D394C)($at)
    /* A79DC 800B71DC 0D80023C */  lui        $v0, %hi(D_800D395C)
    /* A79E0 800B71E0 5C394290 */  lbu        $v0, %lo(D_800D395C)($v0)
    /* A79E4 800B71E4 00000000 */  nop
    /* A79E8 800B71E8 10004230 */  andi       $v0, $v0, 0x10
    /* A79EC 800B71EC 05004010 */  beqz       $v0, .L800B7204
    /* A79F0 800B71F0 01000424 */   addiu     $a0, $zero, 0x1
    /* A79F4 800B71F4 21280000 */  addu       $a1, $zero, $zero
    /* A79F8 800B71F8 21300000 */  addu       $a2, $zero, $zero
    /* A79FC 800B71FC 2FE0020C */  jal        func_800B80BC
    /* A7A00 800B7200 21380000 */   addu      $a3, $zero, $zero
  .L800B7204:
    /* A7A04 800B7204 0B002012 */  beqz       $s1, .L800B7234
    /* A7A08 800B7208 00000000 */   nop
    /* A7A0C 800B720C 0000A28E */  lw         $v0, 0x0($s5)
    /* A7A10 800B7210 00000000 */  nop
    /* A7A14 800B7214 07004010 */  beqz       $v0, .L800B7234
    /* A7A18 800B7218 02000424 */   addiu     $a0, $zero, 0x2
    /* A7A1C 800B721C 21282002 */  addu       $a1, $s1, $zero
    /* A7A20 800B7220 21300000 */  addu       $a2, $zero, $zero
    /* A7A24 800B7224 2FE0020C */  jal        func_800B80BC
    /* A7A28 800B7228 21380000 */   addu      $a3, $zero, $zero
    /* A7A2C 800B722C 0A004014 */  bnez       $v0, .L800B7258
    /* A7A30 800B7230 00000000 */   nop
  .L800B7234:
    /* A7A34 800B7234 0D80013C */  lui        $at, %hi(D_800D394C)
    /* A7A38 800B7238 4C3934AC */  sw         $s4, %lo(D_800D394C)($at)
    /* A7A3C 800B723C FF006432 */  andi       $a0, $s3, 0xFF
    /* A7A40 800B7240 21282002 */  addu       $a1, $s1, $zero
    /* A7A44 800B7244 21300000 */  addu       $a2, $zero, $zero
    /* A7A48 800B7248 2FE0020C */  jal        func_800B80BC
    /* A7A4C 800B724C 01000724 */   addiu     $a3, $zero, 0x1
    /* A7A50 800B7250 08004010 */  beqz       $v0, .L800B7274
    /* A7A54 800B7254 0100C226 */   addiu     $v0, $s6, 0x1
  .L800B7258:
    /* A7A58 800B7258 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A7A5C 800B725C DCFF1716 */  bne        $s0, $s7, .L800B71D0
    /* A7A60 800B7260 00000000 */   nop
    /* A7A64 800B7264 0D80013C */  lui        $at, %hi(D_800D394C)
    /* A7A68 800B7268 4C3934AC */  sw         $s4, %lo(D_800D394C)($at)
    /* A7A6C 800B726C FFFF1624 */  addiu      $s6, $zero, -0x1
    /* A7A70 800B7270 0100C226 */  addiu      $v0, $s6, 0x1
  .L800B7274:
    /* A7A74 800B7274 3400BF8F */  lw         $ra, 0x34($sp)
    /* A7A78 800B7278 3000BE8F */  lw         $fp, 0x30($sp)
    /* A7A7C 800B727C 2C00B78F */  lw         $s7, 0x2C($sp)
    /* A7A80 800B7280 2800B68F */  lw         $s6, 0x28($sp)
    /* A7A84 800B7284 2400B58F */  lw         $s5, 0x24($sp)
    /* A7A88 800B7288 2000B48F */  lw         $s4, 0x20($sp)
    /* A7A8C 800B728C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A7A90 800B7290 1800B28F */  lw         $s2, 0x18($sp)
    /* A7A94 800B7294 1400B18F */  lw         $s1, 0x14($sp)
    /* A7A98 800B7298 1000B08F */  lw         $s0, 0x10($sp)
    /* A7A9C 800B729C 0800E003 */  jr         $ra
    /* A7AA0 800B72A0 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800B7170
