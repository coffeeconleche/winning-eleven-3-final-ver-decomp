nonmatching func_800B6F30, 0x9C

glabel func_800B6F30
    /* A7730 800B6F30 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A7734 800B6F34 1000BFAF */  sw         $ra, 0x10($sp)
    /* A7738 800B6F38 54E1020C */  jal        func_800B8550
    /* A773C 800B6F3C 00000000 */   nop
    /* A7740 800B6F40 1000BF8F */  lw         $ra, 0x10($sp)
    /* A7744 800B6F44 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A7748 800B6F48 0800E003 */  jr         $ra
    /* A774C 800B6F4C 00000000 */   nop
    /* A7750 800B6F50 0D80023C */  lui        $v0, %hi(D_800D3958)
    /* A7754 800B6F54 5839428C */  lw         $v0, %lo(D_800D3958)($v0)
    /* A7758 800B6F58 0D80013C */  lui        $at, %hi(D_800D3958)
    /* A775C 800B6F5C 0800E003 */  jr         $ra
    /* A7760 800B6F60 583924AC */   sw        $a0, %lo(D_800D3958)($at)
    /* A7764 800B6F64 FF008430 */  andi       $a0, $a0, 0xFF
    /* A7768 800B6F68 1C00822C */  sltiu      $v0, $a0, 0x1C
    /* A776C 800B6F6C 06004010 */  beqz       $v0, .L800B6F88
    /* A7770 800B6F70 80100400 */   sll       $v0, $a0, 2
    /* A7774 800B6F74 0D80013C */  lui        $at, %hi(D_800D3974)
    /* A7778 800B6F78 21082200 */  addu       $at, $at, $v0
    /* A777C 800B6F7C 7439228C */  lw         $v0, %lo(D_800D3974)($at)
    /* A7780 800B6F80 E4DB0208 */  j          .L800B6F90
    /* A7784 800B6F84 00000000 */   nop
  .L800B6F88:
    /* A7788 800B6F88 0180023C */  lui        $v0, %hi(D_8001517C)
    /* A778C 800B6F8C 7C514224 */  addiu      $v0, $v0, %lo(D_8001517C)
  .L800B6F90:
    /* A7790 800B6F90 0800E003 */  jr         $ra
    /* A7794 800B6F94 00000000 */   nop
    /* A7798 800B6F98 FF008430 */  andi       $a0, $a0, 0xFF
    /* A779C 800B6F9C 0700822C */  sltiu      $v0, $a0, 0x7
    /* A77A0 800B6FA0 06004010 */  beqz       $v0, .L800B6FBC
    /* A77A4 800B6FA4 80100400 */   sll       $v0, $a0, 2
    /* A77A8 800B6FA8 0D80013C */  lui        $at, %hi(D_800D39F4)
    /* A77AC 800B6FAC 21082200 */  addu       $at, $at, $v0
    /* A77B0 800B6FB0 F439228C */  lw         $v0, %lo(D_800D39F4)($at)
    /* A77B4 800B6FB4 F1DB0208 */  j          .L800B6FC4
    /* A77B8 800B6FB8 00000000 */   nop
  .L800B6FBC:
    /* A77BC 800B6FBC 0180023C */  lui        $v0, %hi(D_8001517C)
    /* A77C0 800B6FC0 7C514224 */  addiu      $v0, $v0, %lo(D_8001517C)
  .L800B6FC4:
    /* A77C4 800B6FC4 0800E003 */  jr         $ra
    /* A77C8 800B6FC8 00000000 */   nop
endlabel func_800B6F30
