nonmatching func_8001E778, 0x9C

glabel func_8001E778
    /* EF78 8001E778 801F033C */  lui        $v1, (0x1F80029C >> 16)
    /* EF7C 8001E77C 9C026390 */  lbu        $v1, (0x1F80029C & 0xFFFF)($v1)
    /* EF80 8001E780 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* EF84 8001E784 0600622C */  sltiu      $v0, $v1, 0x6
    /* EF88 8001E788 1E004010 */  beqz       $v0, .L8001E804
    /* EF8C 8001E78C 1000BFAF */   sw        $ra, 0x10($sp)
    /* EF90 8001E790 80100300 */  sll        $v0, $v1, 2
    /* EF94 8001E794 0180013C */  lui        $at, %hi(jtbl_80010604)
    /* EF98 8001E798 21082200 */  addu       $at, $at, $v0
    /* EF9C 8001E79C 0406228C */  lw         $v0, %lo(jtbl_80010604)($at)
    /* EFA0 8001E7A0 00000000 */  nop
    /* EFA4 8001E7A4 08004000 */  jr         $v0
    /* EFA8 8001E7A8 00000000 */   nop
  jlabel .L8001E7AC
    /* EFAC 8001E7AC 057A000C */  jal        func_8001E814
    /* EFB0 8001E7B0 00000000 */   nop
    /* EFB4 8001E7B4 017A0008 */  j          .L8001E804
    /* EFB8 8001E7B8 00000000 */   nop
  jlabel .L8001E7BC
    /* EFBC 8001E7BC C47A000C */  jal        func_8001EB10
    /* EFC0 8001E7C0 00000000 */   nop
    /* EFC4 8001E7C4 017A0008 */  j          .L8001E804
    /* EFC8 8001E7C8 00000000 */   nop
  jlabel .L8001E7CC
    /* EFCC 8001E7CC A17B000C */  jal        func_8001EE84
    /* EFD0 8001E7D0 00000000 */   nop
    /* EFD4 8001E7D4 017A0008 */  j          .L8001E804
    /* EFD8 8001E7D8 00000000 */   nop
  jlabel .L8001E7DC
    /* EFDC 8001E7DC 4D7C000C */  jal        func_8001F134
    /* EFE0 8001E7E0 00000000 */   nop
    /* EFE4 8001E7E4 017A0008 */  j          .L8001E804
    /* EFE8 8001E7E8 00000000 */   nop
  jlabel .L8001E7EC
    /* EFEC 8001E7EC B47C000C */  jal        func_8001F2D0
    /* EFF0 8001E7F0 00000000 */   nop
    /* EFF4 8001E7F4 017A0008 */  j          .L8001E804
    /* EFF8 8001E7F8 00000000 */   nop
  jlabel .L8001E7FC
    /* EFFC 8001E7FC F87C000C */  jal        func_8001F3E0
    /* F000 8001E800 00000000 */   nop
  .L8001E804:
    /* F004 8001E804 1000BF8F */  lw         $ra, 0x10($sp)
    /* F008 8001E808 1800BD27 */  addiu      $sp, $sp, 0x18
    /* F00C 8001E80C 0800E003 */  jr         $ra
    /* F010 8001E810 00000000 */   nop
endlabel func_8001E778
