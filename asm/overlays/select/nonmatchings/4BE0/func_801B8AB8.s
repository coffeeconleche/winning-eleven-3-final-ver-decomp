nonmatching func_801B8AB8, 0xF8

glabel func_801B8AB8
    /* 2FB40 801B8AB8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2FB44 801B8ABC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2FB48 801B8AC0 21888000 */  addu       $s1, $a0, $zero
    /* 2FB4C 801B8AC4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2FB50 801B8AC8 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 2FB54 801B8ACC 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 2FB58 801B8AD0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2FB5C 801B8AD4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2FB60 801B8AD8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FB64 801B8ADC 04002292 */  lbu        $v0, 0x4($s1)
    /* 2FB68 801B8AE0 FF001224 */  addiu      $s2, $zero, 0xFF
    /* 2FB6C 801B8AE4 2A005210 */  beq        $v0, $s2, .L801B8B90
    /* 2FB70 801B8AE8 00000000 */   nop
    /* 2FB74 801B8AEC 0000308E */  lw         $s0, 0x0($s1)
    /* 2FB78 801B8AF0 AEE2060C */  jal        func_801B8AB8
    /* 2FB7C 801B8AF4 21200002 */   addu      $a0, $s0, $zero
    /* 2FB80 801B8AF8 06002392 */  lbu        $v1, 0x6($s1)
    /* 2FB84 801B8AFC 03000224 */  addiu      $v0, $zero, 0x3
    /* 2FB88 801B8B00 23006214 */  bne        $v1, $v0, .L801B8B90
    /* 2FB8C 801B8B04 05000424 */   addiu     $a0, $zero, 0x5
    /* 2FB90 801B8B08 06000292 */  lbu        $v0, 0x6($s0)
    /* 2FB94 801B8B0C 00000000 */  nop
    /* 2FB98 801B8B10 04004414 */  bne        $v0, $a0, .L801B8B24
    /* 2FB9C 801B8B14 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 2FBA0 801B8B18 07002392 */  lbu        $v1, 0x7($s1)
    /* 2FBA4 801B8B1C 080002A2 */  sb         $v0, 0x8($s0)
    /* 2FBA8 801B8B20 070003A2 */  sb         $v1, 0x7($s0)
  .L801B8B24:
    /* 2FBAC 801B8B24 07000292 */  lbu        $v0, 0x7($s0)
    /* 2FBB0 801B8B28 00000000 */  nop
    /* 2FBB4 801B8B2C 04005214 */  bne        $v0, $s2, .L801B8B40
    /* 2FBB8 801B8B30 00000000 */   nop
    /* 2FBBC 801B8B34 07002292 */  lbu        $v0, 0x7($s1)
    /* 2FBC0 801B8B38 D7E20608 */  j          .L801B8B5C
    /* 2FBC4 801B8B3C 070002A2 */   sb        $v0, 0x7($s0)
  .L801B8B40:
    /* 2FBC8 801B8B40 06000292 */  lbu        $v0, 0x6($s0)
    /* 2FBCC 801B8B44 00000000 */  nop
    /* 2FBD0 801B8B48 0A004410 */  beq        $v0, $a0, .L801B8B74
    /* 2FBD4 801B8B4C 04000224 */   addiu     $v0, $zero, 0x4
    /* 2FBD8 801B8B50 07002292 */  lbu        $v0, 0x7($s1)
    /* 2FBDC 801B8B54 00000000 */  nop
    /* 2FBE0 801B8B58 080002A2 */  sb         $v0, 0x8($s0)
  .L801B8B5C:
    /* 2FBE4 801B8B5C 06000392 */  lbu        $v1, 0x6($s0)
    /* 2FBE8 801B8B60 05000224 */  addiu      $v0, $zero, 0x5
    /* 2FBEC 801B8B64 02006210 */  beq        $v1, $v0, .L801B8B70
    /* 2FBF0 801B8B68 01000224 */   addiu     $v0, $zero, 0x1
    /* 2FBF4 801B8B6C 060002A2 */  sb         $v0, 0x6($s0)
  .L801B8B70:
    /* 2FBF8 801B8B70 04000224 */  addiu      $v0, $zero, 0x4
  .L801B8B74:
    /* 2FBFC 801B8B74 060022A2 */  sb         $v0, 0x6($s1)
    /* 2FC00 801B8B78 05000292 */  lbu        $v0, 0x5($s0)
    /* 2FC04 801B8B7C 00000000 */  nop
    /* 2FC08 801B8B80 00110200 */  sll        $v0, $v0, 4
    /* 2FC0C 801B8B84 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2FC10 801B8B88 21086102 */  addu       $at, $s3, $at
    /* 2FC14 801B8B8C 228F22A0 */  sb         $v0, -0x70DE($at)
  .L801B8B90:
    /* 2FC18 801B8B90 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2FC1C 801B8B94 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2FC20 801B8B98 1800B28F */  lw         $s2, 0x18($sp)
    /* 2FC24 801B8B9C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2FC28 801B8BA0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FC2C 801B8BA4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2FC30 801B8BA8 0800E003 */  jr         $ra
    /* 2FC34 801B8BAC 00000000 */   nop
endlabel func_801B8AB8
