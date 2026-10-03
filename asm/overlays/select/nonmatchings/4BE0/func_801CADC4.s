nonmatching func_801CADC4, 0x1B4

glabel func_801CADC4
    /* 41E4C 801CADC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 41E50 801CADC8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 41E54 801CADCC FF00A230 */  andi       $v0, $a1, 0xFF
    /* 41E58 801CADD0 05004014 */  bnez       $v0, .L801CADE8
    /* 41E5C 801CADD4 21508000 */   addu      $t2, $a0, $zero
    /* 41E60 801CADD8 1E80043C */  lui        $a0, %hi(D_801D89F8)
    /* 41E64 801CADDC F8898424 */  addiu      $a0, $a0, %lo(D_801D89F8)
    /* 41E68 801CADE0 7D2B0708 */  j          .L801CADF4
    /* 41E6C 801CADE4 FF004231 */   andi      $v0, $t2, 0xFF
  .L801CADE8:
    /* 41E70 801CADE8 FF004231 */  andi       $v0, $t2, 0xFF
    /* 41E74 801CADEC 1E80043C */  lui        $a0, %hi(D_801D8A08)
    /* 41E78 801CADF0 088A8424 */  addiu      $a0, $a0, %lo(D_801D8A08)
  .L801CADF4:
    /* 41E7C 801CADF4 40180200 */  sll        $v1, $v0, 1
    /* 41E80 801CADF8 21186200 */  addu       $v1, $v1, $v0
    /* 41E84 801CADFC 40180300 */  sll        $v1, $v1, 1
    /* 41E88 801CAE00 21186400 */  addu       $v1, $v1, $a0
    /* 41E8C 801CAE04 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 41E90 801CAE08 21106200 */  addu       $v0, $v1, $v0
    /* 41E94 801CAE0C 00004890 */  lbu        $t0, 0x0($v0)
    /* 41E98 801CAE10 FF00E230 */  andi       $v0, $a3, 0xFF
    /* 41E9C 801CAE14 21186200 */  addu       $v1, $v1, $v0
    /* 41EA0 801CAE18 00006390 */  lbu        $v1, 0x0($v1)
    /* 41EA4 801CAE1C FF00A230 */  andi       $v0, $a1, 0xFF
    /* 41EA8 801CAE20 40480200 */  sll        $t1, $v0, 1
    /* 41EAC 801CAE24 FCFF0225 */  addiu      $v0, $t0, -0x4
    /* 41EB0 801CAE28 0200422C */  sltiu      $v0, $v0, 0x2
    /* 41EB4 801CAE2C 05004014 */  bnez       $v0, .L801CAE44
    /* 41EB8 801CAE30 21200000 */   addu      $a0, $zero, $zero
    /* 41EBC 801CAE34 FCFF6224 */  addiu      $v0, $v1, -0x4
    /* 41EC0 801CAE38 0200422C */  sltiu      $v0, $v0, 0x2
    /* 41EC4 801CAE3C 03004010 */  beqz       $v0, .L801CAE4C
    /* 41EC8 801CAE40 21182401 */   addu      $v1, $t1, $a0
  .L801CAE44:
    /* 41ECC 801CAE44 01000424 */  addiu      $a0, $zero, 0x1
    /* 41ED0 801CAE48 21182401 */  addu       $v1, $t1, $a0
  .L801CAE4C:
    /* 41ED4 801CAE4C 01000224 */  addiu      $v0, $zero, 0x1
    /* 41ED8 801CAE50 2B006210 */  beq        $v1, $v0, .L801CAF00
    /* 41EDC 801CAE54 02006228 */   slti      $v0, $v1, 0x2
    /* 41EE0 801CAE58 05004010 */  beqz       $v0, .L801CAE70
    /* 41EE4 801CAE5C 00000000 */   nop
    /* 41EE8 801CAE60 0A006010 */  beqz       $v1, .L801CAE8C
    /* 41EEC 801CAE64 FF004331 */   andi      $v1, $t2, 0xFF
    /* 41EF0 801CAE68 D82B0708 */  j          .L801CAF60
    /* 41EF4 801CAE6C 00000000 */   nop
  .L801CAE70:
    /* 41EF8 801CAE70 02000224 */  addiu      $v0, $zero, 0x2
    /* 41EFC 801CAE74 13006210 */  beq        $v1, $v0, .L801CAEC4
    /* 41F00 801CAE78 03000224 */   addiu     $v0, $zero, 0x3
    /* 41F04 801CAE7C 21006210 */  beq        $v1, $v0, .L801CAF04
    /* 41F08 801CAE80 FF004431 */   andi      $a0, $t2, 0xFF
    /* 41F0C 801CAE84 D82B0708 */  j          .L801CAF60
    /* 41F10 801CAE88 00000000 */   nop
  .L801CAE8C:
    /* 41F14 801CAE8C 1E80043C */  lui        $a0, %hi(D_801D89F8)
    /* 41F18 801CAE90 F8898424 */  addiu      $a0, $a0, %lo(D_801D89F8)
    /* 41F1C 801CAE94 40100300 */  sll        $v0, $v1, 1
    /* 41F20 801CAE98 21104300 */  addu       $v0, $v0, $v1
    /* 41F24 801CAE9C 40100200 */  sll        $v0, $v0, 1
    /* 41F28 801CAEA0 21104400 */  addu       $v0, $v0, $a0
    /* 41F2C 801CAEA4 FF00C430 */  andi       $a0, $a2, 0xFF
    /* 41F30 801CAEA8 21204400 */  addu       $a0, $v0, $a0
    /* 41F34 801CAEAC FF00E330 */  andi       $v1, $a3, 0xFF
    /* 41F38 801CAEB0 21104300 */  addu       $v0, $v0, $v1
    /* 41F3C 801CAEB4 00004390 */  lbu        $v1, 0x0($v0)
    /* 41F40 801CAEB8 00008890 */  lbu        $t0, 0x0($a0)
    /* 41F44 801CAEBC D72B0708 */  j          .L801CAF5C
    /* 41F48 801CAEC0 000083A0 */   sb        $v1, 0x0($a0)
  .L801CAEC4:
    /* 41F4C 801CAEC4 FF004331 */  andi       $v1, $t2, 0xFF
    /* 41F50 801CAEC8 1E80043C */  lui        $a0, %hi(D_801D8A08)
    /* 41F54 801CAECC 088A8424 */  addiu      $a0, $a0, %lo(D_801D8A08)
    /* 41F58 801CAED0 40100300 */  sll        $v0, $v1, 1
    /* 41F5C 801CAED4 21104300 */  addu       $v0, $v0, $v1
    /* 41F60 801CAED8 40100200 */  sll        $v0, $v0, 1
    /* 41F64 801CAEDC 21104400 */  addu       $v0, $v0, $a0
    /* 41F68 801CAEE0 FF00C430 */  andi       $a0, $a2, 0xFF
    /* 41F6C 801CAEE4 21204400 */  addu       $a0, $v0, $a0
    /* 41F70 801CAEE8 FF00E330 */  andi       $v1, $a3, 0xFF
    /* 41F74 801CAEEC 21104300 */  addu       $v0, $v0, $v1
    /* 41F78 801CAEF0 00004390 */  lbu        $v1, 0x0($v0)
    /* 41F7C 801CAEF4 00008890 */  lbu        $t0, 0x0($a0)
    /* 41F80 801CAEF8 D72B0708 */  j          .L801CAF5C
    /* 41F84 801CAEFC 000083A0 */   sb        $v1, 0x0($a0)
  .L801CAF00:
    /* 41F88 801CAF00 FF004431 */  andi       $a0, $t2, 0xFF
  .L801CAF04:
    /* 41F8C 801CAF04 1E80033C */  lui        $v1, %hi(D_801D89F8)
    /* 41F90 801CAF08 F8896324 */  addiu      $v1, $v1, %lo(D_801D89F8)
    /* 41F94 801CAF0C 40100400 */  sll        $v0, $a0, 1
    /* 41F98 801CAF10 21104400 */  addu       $v0, $v0, $a0
    /* 41F9C 801CAF14 40100200 */  sll        $v0, $v0, 1
    /* 41FA0 801CAF18 21184300 */  addu       $v1, $v0, $v1
    /* 41FA4 801CAF1C FF00C530 */  andi       $a1, $a2, 0xFF
    /* 41FA8 801CAF20 21306500 */  addu       $a2, $v1, $a1
    /* 41FAC 801CAF24 FF00E730 */  andi       $a3, $a3, 0xFF
    /* 41FB0 801CAF28 21186700 */  addu       $v1, $v1, $a3
    /* 41FB4 801CAF2C 00006490 */  lbu        $a0, 0x0($v1)
    /* 41FB8 801CAF30 0000C890 */  lbu        $t0, 0x0($a2)
    /* 41FBC 801CAF34 0000C4A0 */  sb         $a0, 0x0($a2)
    /* 41FC0 801CAF38 000068A0 */  sb         $t0, 0x0($v1)
    /* 41FC4 801CAF3C 1E80033C */  lui        $v1, %hi(D_801D8A08)
    /* 41FC8 801CAF40 088A6324 */  addiu      $v1, $v1, %lo(D_801D8A08)
    /* 41FCC 801CAF44 21104300 */  addu       $v0, $v0, $v1
    /* 41FD0 801CAF48 21284500 */  addu       $a1, $v0, $a1
    /* 41FD4 801CAF4C 21104700 */  addu       $v0, $v0, $a3
    /* 41FD8 801CAF50 00004390 */  lbu        $v1, 0x0($v0)
    /* 41FDC 801CAF54 0000A890 */  lbu        $t0, 0x0($a1)
    /* 41FE0 801CAF58 0000A3A0 */  sb         $v1, 0x0($a1)
  .L801CAF5C:
    /* 41FE4 801CAF5C 000048A0 */  sb         $t0, 0x0($v0)
  .L801CAF60:
    /* 41FE8 801CAF60 DE2B070C */  jal        func_801CAF78
    /* 41FEC 801CAF64 FF004431 */   andi      $a0, $t2, 0xFF
    /* 41FF0 801CAF68 1000BF8F */  lw         $ra, 0x10($sp)
    /* 41FF4 801CAF6C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 41FF8 801CAF70 0800E003 */  jr         $ra
    /* 41FFC 801CAF74 00000000 */   nop
endlabel func_801CADC4
