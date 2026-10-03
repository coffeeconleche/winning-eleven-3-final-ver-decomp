nonmatching func_800C53D8, 0x94

glabel func_800C53D8
    /* B5BD8 800C53D8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B5BDC 800C53DC 0D80033C */  lui        $v1, %hi(D_800D5A20)
    /* B5BE0 800C53E0 205A638C */  lw         $v1, %lo(D_800D5A20)($v1)
    /* B5BE4 800C53E4 1000023C */  lui        $v0, (0x100000 >> 16)
    /* B5BE8 800C53E8 1800BFAF */  sw         $ra, 0x18($sp)
    /* B5BEC 800C53EC 1000A2AF */  sw         $v0, 0x10($sp)
    /* B5BF0 800C53F0 0000628C */  lw         $v0, 0x0($v1)
    /* B5BF4 800C53F4 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* B5BF8 800C53F8 24104300 */  and        $v0, $v0, $v1
    /* B5BFC 800C53FC 17004010 */  beqz       $v0, .L800C545C
    /* B5C00 800C5400 21100000 */   addu      $v0, $zero, $zero
    /* B5C04 800C5404 FFFF0424 */  addiu      $a0, $zero, -0x1
  .L800C5408:
    /* B5C08 800C5408 1000A28F */  lw         $v0, 0x10($sp)
    /* B5C0C 800C540C 00000000 */  nop
    /* B5C10 800C5410 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* B5C14 800C5414 1000A2AF */  sw         $v0, 0x10($sp)
    /* B5C18 800C5418 1000A28F */  lw         $v0, 0x10($sp)
    /* B5C1C 800C541C 00000000 */  nop
    /* B5C20 800C5420 06004414 */  bne        $v0, $a0, .L800C543C
    /* B5C24 800C5424 00000000 */   nop
    /* B5C28 800C5428 0180043C */  lui        $a0, %hi(D_80015618)
    /* B5C2C 800C542C 2115030C */  jal        func_800C5484
    /* B5C30 800C5430 18568424 */   addiu     $a0, $a0, %lo(D_80015618)
    /* B5C34 800C5434 17150308 */  j          .L800C545C
    /* B5C38 800C5438 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800C543C:
    /* B5C3C 800C543C 0D80023C */  lui        $v0, %hi(D_800D5A20)
    /* B5C40 800C5440 205A428C */  lw         $v0, %lo(D_800D5A20)($v0)
    /* B5C44 800C5444 00000000 */  nop
    /* B5C48 800C5448 0000428C */  lw         $v0, 0x0($v0)
    /* B5C4C 800C544C 00000000 */  nop
    /* B5C50 800C5450 24104300 */  and        $v0, $v0, $v1
    /* B5C54 800C5454 ECFF4014 */  bnez       $v0, .L800C5408
    /* B5C58 800C5458 21100000 */   addu      $v0, $zero, $zero
  .L800C545C:
    /* B5C5C 800C545C 1800BF8F */  lw         $ra, 0x18($sp)
    /* B5C60 800C5460 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B5C64 800C5464 0800E003 */  jr         $ra
    /* B5C68 800C5468 00000000 */   nop
endlabel func_800C53D8
