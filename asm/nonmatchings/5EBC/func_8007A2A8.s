nonmatching func_8007A2A8, 0x80

glabel func_8007A2A8
    /* 6AAA8 8007A2A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6AAAC 8007A2AC 801F033C */  lui        $v1, (0x1F80029B >> 16)
    /* 6AAB0 8007A2B0 9B026390 */  lbu        $v1, (0x1F80029B & 0xFFFF)($v1)
    /* 6AAB4 8007A2B4 01000224 */  addiu      $v0, $zero, 0x1
    /* 6AAB8 8007A2B8 11006210 */  beq        $v1, $v0, .L8007A300
    /* 6AABC 8007A2BC 1000BFAF */   sw        $ra, 0x10($sp)
    /* 6AAC0 8007A2C0 02006228 */  slti       $v0, $v1, 0x2
    /* 6AAC4 8007A2C4 05004010 */  beqz       $v0, .L8007A2DC
    /* 6AAC8 8007A2C8 00000000 */   nop
    /* 6AACC 8007A2CC 08006010 */  beqz       $v1, .L8007A2F0
    /* 6AAD0 8007A2D0 00000000 */   nop
    /* 6AAD4 8007A2D4 C6E80108 */  j          .L8007A318
    /* 6AAD8 8007A2D8 00000000 */   nop
  .L8007A2DC:
    /* 6AADC 8007A2DC 02000224 */  addiu      $v0, $zero, 0x2
    /* 6AAE0 8007A2E0 0B006210 */  beq        $v1, $v0, .L8007A310
    /* 6AAE4 8007A2E4 00000000 */   nop
    /* 6AAE8 8007A2E8 C6E80108 */  j          .L8007A318
    /* 6AAEC 8007A2EC 00000000 */   nop
  .L8007A2F0:
    /* 6AAF0 8007A2F0 CAE8010C */  jal        func_8007A328
    /* 6AAF4 8007A2F4 00000000 */   nop
    /* 6AAF8 8007A2F8 C6E80108 */  j          .L8007A318
    /* 6AAFC 8007A2FC 00000000 */   nop
  .L8007A300:
    /* 6AB00 8007A300 DDE9010C */  jal        func_8007A774
    /* 6AB04 8007A304 00000000 */   nop
    /* 6AB08 8007A308 C6E80108 */  j          .L8007A318
    /* 6AB0C 8007A30C 00000000 */   nop
  .L8007A310:
    /* 6AB10 8007A310 1CEB010C */  jal        func_8007AC70
    /* 6AB14 8007A314 00000000 */   nop
  .L8007A318:
    /* 6AB18 8007A318 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6AB1C 8007A31C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6AB20 8007A320 0800E003 */  jr         $ra
    /* 6AB24 8007A324 00000000 */   nop
endlabel func_8007A2A8
