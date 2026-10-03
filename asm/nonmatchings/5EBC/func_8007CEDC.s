nonmatching func_8007CEDC, 0xA0

glabel func_8007CEDC
    /* 6D6DC 8007CEDC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6D6E0 8007CEE0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 6D6E4 8007CEE4 573F010C */  jal        func_8004FD5C
    /* 6D6E8 8007CEE8 00000000 */   nop
    /* 6D6EC 8007CEEC 801F033C */  lui        $v1, (0x1F80029B >> 16)
    /* 6D6F0 8007CEF0 9B026390 */  lbu        $v1, (0x1F80029B & 0xFFFF)($v1)
    /* 6D6F4 8007CEF4 01000224 */  addiu      $v0, $zero, 0x1
    /* 6D6F8 8007CEF8 12006210 */  beq        $v1, $v0, .L8007CF44
    /* 6D6FC 8007CEFC 02006228 */   slti      $v0, $v1, 0x2
    /* 6D700 8007CF00 05004010 */  beqz       $v0, .L8007CF18
    /* 6D704 8007CF04 00000000 */   nop
    /* 6D708 8007CF08 0A006010 */  beqz       $v1, .L8007CF34
    /* 6D70C 8007CF0C 00000000 */   nop
    /* 6D710 8007CF10 DBF30108 */  j          .L8007CF6C
    /* 6D714 8007CF14 00000000 */   nop
  .L8007CF18:
    /* 6D718 8007CF18 02000224 */  addiu      $v0, $zero, 0x2
    /* 6D71C 8007CF1C 0D006210 */  beq        $v1, $v0, .L8007CF54
    /* 6D720 8007CF20 03000224 */   addiu     $v0, $zero, 0x3
    /* 6D724 8007CF24 0F006210 */  beq        $v1, $v0, .L8007CF64
    /* 6D728 8007CF28 00000000 */   nop
    /* 6D72C 8007CF2C DBF30108 */  j          .L8007CF6C
    /* 6D730 8007CF30 00000000 */   nop
  .L8007CF34:
    /* 6D734 8007CF34 DFF3010C */  jal        func_8007CF7C
    /* 6D738 8007CF38 00000000 */   nop
    /* 6D73C 8007CF3C DBF30108 */  j          .L8007CF6C
    /* 6D740 8007CF40 00000000 */   nop
  .L8007CF44:
    /* 6D744 8007CF44 7AF5010C */  jal        func_8007D5E8
    /* 6D748 8007CF48 00000000 */   nop
    /* 6D74C 8007CF4C DBF30108 */  j          .L8007CF6C
    /* 6D750 8007CF50 00000000 */   nop
  .L8007CF54:
    /* 6D754 8007CF54 F8F5010C */  jal        func_8007D7E0
    /* 6D758 8007CF58 00000000 */   nop
    /* 6D75C 8007CF5C DBF30108 */  j          .L8007CF6C
    /* 6D760 8007CF60 00000000 */   nop
  .L8007CF64:
    /* 6D764 8007CF64 31F7010C */  jal        func_8007DCC4
    /* 6D768 8007CF68 00000000 */   nop
  .L8007CF6C:
    /* 6D76C 8007CF6C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6D770 8007CF70 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6D774 8007CF74 0800E003 */  jr         $ra
    /* 6D778 8007CF78 00000000 */   nop
endlabel func_8007CEDC
