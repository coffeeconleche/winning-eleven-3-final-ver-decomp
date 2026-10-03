nonmatching func_8019E3EC, 0x68

glabel func_8019E3EC
    /* 15474 8019E3EC FF00A530 */  andi       $a1, $a1, 0xFF
    /* 15478 8019E3F0 0600A22C */  sltiu      $v0, $a1, 0x6
    /* 1547C 8019E3F4 07004010 */  beqz       $v0, .L8019E414
    /* 15480 8019E3F8 80100500 */   sll       $v0, $a1, 2
    /* 15484 8019E3FC 1980013C */  lui        $at, %hi(jtbl_80189FD8)
    /* 15488 8019E400 21082200 */  addu       $at, $at, $v0
    /* 1548C 8019E404 D89F228C */  lw         $v0, %lo(jtbl_80189FD8)($at)
    /* 15490 8019E408 00000000 */  nop
    /* 15494 8019E40C 08004000 */  jr         $v0
    /* 15498 8019E410 00000000 */   nop
  jlabel .L8019E414
    /* 1549C 8019E414 13790608 */  j          .L8019E44C
    /* 154A0 8019E418 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L8019E41C
    /* 154A4 8019E41C FF008230 */  andi       $v0, $a0, 0xFF
    /* 154A8 8019E420 13790608 */  j          .L8019E44C
    /* 154AC 8019E424 1600422C */   sltiu     $v0, $v0, 0x16
  jlabel .L8019E428
    /* 154B0 8019E428 11790608 */  j          .L8019E444
    /* 154B4 8019E42C EAFF8224 */   addiu     $v0, $a0, -0x16
  jlabel .L8019E430
    /* 154B8 8019E430 E5FF8224 */  addiu      $v0, $a0, -0x1B
    /* 154BC 8019E434 FF004230 */  andi       $v0, $v0, 0xFF
    /* 154C0 8019E438 13790608 */  j          .L8019E44C
    /* 154C4 8019E43C 0800422C */   sltiu     $v0, $v0, 0x8
  jlabel .L8019E440
    /* 154C8 8019E440 DDFF8224 */  addiu      $v0, $a0, -0x23
  .L8019E444:
    /* 154CC 8019E444 FF004230 */  andi       $v0, $v0, 0xFF
    /* 154D0 8019E448 0500422C */  sltiu      $v0, $v0, 0x5
  .L8019E44C:
    /* 154D4 8019E44C 0800E003 */  jr         $ra
    /* 154D8 8019E450 00000000 */   nop
endlabel func_8019E3EC
