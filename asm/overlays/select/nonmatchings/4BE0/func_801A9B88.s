nonmatching func_801A9B88, 0xCC

glabel func_801A9B88
    /* 20C10 801A9B88 1180023C */  lui        $v0, %hi(D_8010A2E8)
    /* 20C14 801A9B8C E8A24290 */  lbu        $v0, %lo(D_8010A2E8)($v0)
    /* 20C18 801A9B90 1180043C */  lui        $a0, %hi(D_8010A2E9)
    /* 20C1C 801A9B94 E9A28490 */  lbu        $a0, %lo(D_8010A2E9)($a0)
    /* 20C20 801A9B98 1180013C */  lui        $at, %hi(D_8010A2C8)
    /* 20C24 801A9B9C 21082200 */  addu       $at, $at, $v0
    /* 20C28 801A9BA0 C8A22390 */  lbu        $v1, %lo(D_8010A2C8)($at)
    /* 20C2C 801A9BA4 1180013C */  lui        $at, %hi(D_8010A2C8)
    /* 20C30 801A9BA8 21082400 */  addu       $at, $at, $a0
    /* 20C34 801A9BAC C8A22490 */  lbu        $a0, %lo(D_8010A2C8)($at)
    /* 20C38 801A9BB0 C0100300 */  sll        $v0, $v1, 3
    /* 20C3C 801A9BB4 21104300 */  addu       $v0, $v0, $v1
    /* 20C40 801A9BB8 80100200 */  sll        $v0, $v0, 2
    /* 20C44 801A9BBC 1180013C */  lui        $at, %hi(D_8010866C)
    /* 20C48 801A9BC0 21082200 */  addu       $at, $at, $v0
    /* 20C4C 801A9BC4 6C862390 */  lbu        $v1, %lo(D_8010866C)($at)
    /* 20C50 801A9BC8 C0100400 */  sll        $v0, $a0, 3
    /* 20C54 801A9BCC 21104400 */  addu       $v0, $v0, $a0
    /* 20C58 801A9BD0 80100200 */  sll        $v0, $v0, 2
    /* 20C5C 801A9BD4 1180013C */  lui        $at, %hi(D_8010866C)
    /* 20C60 801A9BD8 21082200 */  addu       $at, $at, $v0
    /* 20C64 801A9BDC 6C862290 */  lbu        $v0, %lo(D_8010866C)($at)
    /* 20C68 801A9BE0 C0006330 */  andi       $v1, $v1, 0xC0
    /* 20C6C 801A9BE4 001A0300 */  sll        $v1, $v1, 8
    /* 20C70 801A9BE8 C0004230 */  andi       $v0, $v0, 0xC0
    /* 20C74 801A9BEC 25186200 */  or         $v1, $v1, $v0
    /* 20C78 801A9BF0 40000224 */  addiu      $v0, $zero, 0x40
    /* 20C7C 801A9BF4 0F006210 */  beq        $v1, $v0, .L801A9C34
    /* 20C80 801A9BF8 E0FFBD27 */   addiu     $sp, $sp, -0x20
    /* 20C84 801A9BFC 41006228 */  slti       $v0, $v1, 0x41
    /* 20C88 801A9C00 05004010 */  beqz       $v0, .L801A9C18
    /* 20C8C 801A9C04 00000000 */   nop
    /* 20C90 801A9C08 0A006010 */  beqz       $v1, .L801A9C34
    /* 20C94 801A9C0C 00000000 */   nop
    /* 20C98 801A9C10 12A70608 */  j          .L801A9C48
    /* 20C9C 801A9C14 00000000 */   nop
  .L801A9C18:
    /* 20CA0 801A9C18 00400224 */  addiu      $v0, $zero, 0x4000
    /* 20CA4 801A9C1C 07006210 */  beq        $v1, $v0, .L801A9C3C
    /* 20CA8 801A9C20 40400224 */   addiu     $v0, $zero, 0x4040
    /* 20CAC 801A9C24 07006210 */  beq        $v1, $v0, .L801A9C44
    /* 20CB0 801A9C28 00000000 */   nop
    /* 20CB4 801A9C2C 12A70608 */  j          .L801A9C48
    /* 20CB8 801A9C30 00000000 */   nop
  .L801A9C34:
    /* 20CBC 801A9C34 12A70608 */  j          .L801A9C48
    /* 20CC0 801A9C38 21100000 */   addu      $v0, $zero, $zero
  .L801A9C3C:
    /* 20CC4 801A9C3C 12A70608 */  j          .L801A9C48
    /* 20CC8 801A9C40 01000224 */   addiu     $v0, $zero, 0x1
  .L801A9C44:
    /* 20CCC 801A9C44 21100000 */  addu       $v0, $zero, $zero
  .L801A9C48:
    /* 20CD0 801A9C48 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 20CD4 801A9C4C 0800E003 */  jr         $ra
    /* 20CD8 801A9C50 00000000 */   nop
endlabel func_801A9B88
