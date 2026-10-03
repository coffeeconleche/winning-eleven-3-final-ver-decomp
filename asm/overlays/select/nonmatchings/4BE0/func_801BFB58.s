nonmatching func_801BFB58, 0x184

glabel func_801BFB58
    /* 36BE0 801BFB58 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 36BE4 801BFB5C 3000B2AF */  sw         $s2, 0x30($sp)
    /* 36BE8 801BFB60 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 36BEC 801BFB64 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 36BF0 801BFB68 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 36BF4 801BFB6C 801F153C */  lui        $s5, (0x1F800290 >> 16)
    /* 36BF8 801BFB70 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 36BFC 801BFB74 21880000 */  addu       $s1, $zero, $zero
    /* 36C00 801BFB78 3800B4AF */  sw         $s4, 0x38($sp)
    /* 36C04 801BFB7C 80AB1434 */  ori        $s4, $zero, 0xAB80
    /* 36C08 801BFB80 2800B0AF */  sw         $s0, 0x28($sp)
    /* 36C0C 801BFB84 21800000 */  addu       $s0, $zero, $zero
    /* 36C10 801BFB88 3400B3AF */  sw         $s3, 0x34($sp)
    /* 36C14 801BFB8C 60001324 */  addiu      $s3, $zero, 0x60
    /* 36C18 801BFB90 4000BFAF */  sw         $ra, 0x40($sp)
  .L801BFB94:
    /* 36C1C 801BFB94 1E80023C */  lui        $v0, %hi(D_801DA2F0)
    /* 36C20 801BFB98 F0A24290 */  lbu        $v0, %lo(D_801DA2F0)($v0)
    /* 36C24 801BFB9C 00000000 */  nop
    /* 36C28 801BFBA0 32004010 */  beqz       $v0, .L801BFC6C
    /* 36C2C 801BFBA4 21105102 */   addu      $v0, $s2, $s1
    /* 36C30 801BFBA8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 36C34 801BFBAC 21084100 */  addu       $at, $v0, $at
    /* 36C38 801BFBB0 50AB2290 */  lbu        $v0, -0x54B0($at)
    /* 36C3C 801BFBB4 00000000 */  nop
    /* 36C40 801BFBB8 21104202 */  addu       $v0, $s2, $v0
    /* 36C44 801BFBBC 21105400 */  addu       $v0, $v0, $s4
    /* 36C48 801BFBC0 00004290 */  lbu        $v0, 0x0($v0)
    /* 36C4C 801BFBC4 00000000 */  nop
    /* 36C50 801BFBC8 C0180200 */  sll        $v1, $v0, 3
    /* 36C54 801BFBCC 21186200 */  addu       $v1, $v1, $v0
    /* 36C58 801BFBD0 80180300 */  sll        $v1, $v1, 2
    /* 36C5C 801BFBD4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 36C60 801BFBD8 21084102 */  addu       $at, $s2, $at
    /* 36C64 801BFBDC 218F2290 */  lbu        $v0, -0x70DF($at)
    /* 36C68 801BFBE0 21184302 */  addu       $v1, $s2, $v1
    /* 36C6C 801BFBE4 21104202 */  addu       $v0, $s2, $v0
    /* 36C70 801BFBE8 21105400 */  addu       $v0, $v0, $s4
    /* 36C74 801BFBEC 00004490 */  lbu        $a0, 0x0($v0)
    /* 36C78 801BFBF0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 36C7C 801BFBF4 21086100 */  addu       $at, $v1, $at
    /* 36C80 801BFBF8 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 36C84 801BFBFC C0100400 */  sll        $v0, $a0, 3
    /* 36C88 801BFC00 21104400 */  addu       $v0, $v0, $a0
    /* 36C8C 801BFC04 80100200 */  sll        $v0, $v0, 2
    /* 36C90 801BFC08 21104202 */  addu       $v0, $s2, $v0
    /* 36C94 801BFC0C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 36C98 801BFC10 21084100 */  addu       $at, $v0, $at
    /* 36C9C 801BFC14 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 36CA0 801BFC18 00000000 */  nop
    /* 36CA4 801BFC1C 13006214 */  bne        $v1, $v0, .L801BFC6C
    /* 36CA8 801BFC20 00000000 */   nop
    /* 36CAC 801BFC24 9002A28E */  lw         $v0, (0x1F800290 & 0xFFFF)($s5)
    /* 36CB0 801BFC28 00000000 */  nop
    /* 36CB4 801BFC2C 42110200 */  srl        $v0, $v0, 5
    /* 36CB8 801BFC30 01004230 */  andi       $v0, $v0, 0x1
    /* 36CBC 801BFC34 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 36CC0 801BFC38 21083300 */  addu       $at, $at, $s3
    /* 36CC4 801BFC3C A08F22A0 */  sb         $v0, %lo(D_801D8FA0)($at)
    /* 36CC8 801BFC40 0174000C */  jal        func_8001D004
    /* 36CCC 801BFC44 0B310424 */   addiu     $a0, $zero, 0x310B
    /* 36CD0 801BFC48 9002A38E */  lw         $v1, (0x1F800290 & 0xFFFF)($s5)
    /* 36CD4 801BFC4C 00000000 */  nop
    /* 36CD8 801BFC50 20006330 */  andi       $v1, $v1, 0x20
    /* 36CDC 801BFC54 03006010 */  beqz       $v1, .L801BFC64
    /* 36CE0 801BFC58 21180202 */   addu      $v1, $s0, $v0
    /* 36CE4 801BFC5C 1AFF0608 */  j          .L801BFC68
    /* 36CE8 801BFC60 95000224 */   addiu     $v0, $zero, 0x95
  .L801BFC64:
    /* 36CEC 801BFC64 5B000224 */  addiu      $v0, $zero, 0x5B
  .L801BFC68:
    /* 36CF0 801BFC68 0A0062A0 */  sb         $v0, 0xA($v1)
  .L801BFC6C:
    /* 36CF4 801BFC6C 0C001026 */  addiu      $s0, $s0, 0xC
    /* 36CF8 801BFC70 01003126 */  addiu      $s1, $s1, 0x1
    /* 36CFC 801BFC74 1000222A */  slti       $v0, $s1, 0x10
    /* 36D00 801BFC78 C6FF4014 */  bnez       $v0, .L801BFB94
    /* 36D04 801BFC7C 18007326 */   addiu     $s3, $s3, 0x18
    /* 36D08 801BFC80 21200000 */  addu       $a0, $zero, $zero
    /* 36D0C 801BFC84 60010224 */  addiu      $v0, $zero, 0x160
    /* 36D10 801BFC88 1000A2AF */  sw         $v0, 0x10($sp)
    /* 36D14 801BFC8C 20000224 */  addiu      $v0, $zero, 0x20
    /* 36D18 801BFC90 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 36D1C 801BFC94 05000224 */  addiu      $v0, $zero, 0x5
    /* 36D20 801BFC98 B7FF0524 */  addiu      $a1, $zero, -0x49
    /* 36D24 801BFC9C 5FFF0624 */  addiu      $a2, $zero, -0xA1
    /* 36D28 801BFCA0 12000724 */  addiu      $a3, $zero, 0x12
    /* 36D2C 801BFCA4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 36D30 801BFCA8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 36D34 801BFCAC 005A060C */  jal        func_80196800
    /* 36D38 801BFCB0 2000A2AF */   sw        $v0, 0x20($sp)
    /* 36D3C 801BFCB4 4000BF8F */  lw         $ra, 0x40($sp)
    /* 36D40 801BFCB8 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 36D44 801BFCBC 3800B48F */  lw         $s4, 0x38($sp)
    /* 36D48 801BFCC0 3400B38F */  lw         $s3, 0x34($sp)
    /* 36D4C 801BFCC4 3000B28F */  lw         $s2, 0x30($sp)
    /* 36D50 801BFCC8 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 36D54 801BFCCC 2800B08F */  lw         $s0, 0x28($sp)
    /* 36D58 801BFCD0 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 36D5C 801BFCD4 0800E003 */  jr         $ra
    /* 36D60 801BFCD8 00000000 */   nop
endlabel func_801BFB58
