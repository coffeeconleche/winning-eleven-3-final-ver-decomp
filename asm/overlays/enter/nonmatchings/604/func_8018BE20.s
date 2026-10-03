nonmatching func_8018BE20, 0x248

glabel func_8018BE20
    /* 2EA8 8018BE20 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2EAC 8018BE24 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2EB0 8018BE28 21808000 */  addu       $s0, $a0, $zero
    /* 2EB4 8018BE2C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2EB8 8018BE30 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 2EBC 8018BE34 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 2EC0 8018BE38 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2EC4 8018BE3C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2EC8 8018BE40 96030392 */  lbu        $v1, 0x396($s0)
    /* 2ECC 8018BE44 1180113C */  lui        $s1, %hi(D_8010C1D8)
    /* 2ED0 8018BE48 D8C13126 */  addiu      $s1, $s1, %lo(D_8010C1D8)
    /* 2ED4 8018BE4C 0500622C */  sltiu      $v0, $v1, 0x5
    /* 2ED8 8018BE50 7E004010 */  beqz       $v0, .L8018C04C
    /* 2EDC 8018BE54 80100300 */   sll       $v0, $v1, 2
    /* 2EE0 8018BE58 1980013C */  lui        $at, %hi(jtbl_80189304)
    /* 2EE4 8018BE5C 21082200 */  addu       $at, $at, $v0
    /* 2EE8 8018BE60 0493228C */  lw         $v0, %lo(jtbl_80189304)($at)
    /* 2EEC 8018BE64 00000000 */  nop
    /* 2EF0 8018BE68 08004000 */  jr         $v0
    /* 2EF4 8018BE6C 00000000 */   nop
  jlabel .L8018BE70
    /* 2EF8 8018BE70 21200002 */  addu       $a0, $s0, $zero
    /* 2EFC 8018BE74 21280000 */  addu       $a1, $zero, $zero
    /* 2F00 8018BE78 21300000 */  addu       $a2, $zero, $zero
    /* 2F04 8018BE7C 813A060C */  jal        func_8018EA04
    /* 2F08 8018BE80 040000A6 */   sh        $zero, 0x4($s0)
    /* 2F0C 8018BE84 0C000224 */  addiu      $v0, $zero, 0xC
    /* 2F10 8018BE88 A00302AE */  sw         $v0, 0x3A0($s0)
    /* 2F14 8018BE8C 40000224 */  addiu      $v0, $zero, 0x40
    /* 2F18 8018BE90 AA0302A2 */  sb         $v0, 0x3AA($s0)
    /* 2F1C 8018BE94 A40302A2 */  sb         $v0, 0x3A4($s0)
    /* 2F20 8018BE98 C0010224 */  addiu      $v0, $zero, 0x1C0
    /* 2F24 8018BE9C 96030492 */  lbu        $a0, 0x396($s0)
    /* 2F28 8018BEA0 AA030392 */  lbu        $v1, 0x3AA($s0)
    /* 2F2C 8018BEA4 01008424 */  addiu      $a0, $a0, 0x1
    /* 2F30 8018BEA8 23184300 */  subu       $v1, $v0, $v1
    /* 2F34 8018BEAC 21106000 */  addu       $v0, $v1, $zero
    /* 2F38 8018BEB0 02006104 */  bgez       $v1, .L8018BEBC
    /* 2F3C 8018BEB4 960304A2 */   sb        $a0, 0x396($s0)
    /* 2F40 8018BEB8 FF006224 */  addiu      $v0, $v1, 0xFF
  .L8018BEBC:
    /* 2F44 8018BEBC 21200002 */  addu       $a0, $s0, $zero
    /* 2F48 8018BEC0 03120200 */  sra        $v0, $v0, 8
    /* 2F4C 8018BEC4 00120200 */  sll        $v0, $v0, 8
    /* 2F50 8018BEC8 23106200 */  subu       $v0, $v1, $v0
    /* 2F54 8018BECC 00110200 */  sll        $v0, $v0, 4
    /* 2F58 8018BED0 260002A6 */  sh         $v0, 0x26($s0)
    /* 2F5C 8018BED4 C32E060C */  jal        func_8018BB0C
    /* 2F60 8018BED8 DA0300A2 */   sb        $zero, 0x3DA($s0)
    /* 2F64 8018BEDC BC030296 */  lhu        $v0, 0x3BC($s0)
    /* 2F68 8018BEE0 00000000 */  nop
    /* 2F6C 8018BEE4 020002A6 */  sh         $v0, 0x2($s0)
    /* 2F70 8018BEE8 BE030296 */  lhu        $v0, 0x3BE($s0)
    /* 2F74 8018BEEC 02000386 */  lh         $v1, 0x2($s0)
    /* 2F78 8018BEF0 00000000 */  nop
    /* 2F7C 8018BEF4 03006104 */  bgez       $v1, .L8018BF04
    /* 2F80 8018BEF8 060002A6 */   sh        $v0, 0x6($s0)
    /* 2F84 8018BEFC 13300608 */  j          .L8018C04C
    /* 2F88 8018BF00 AC0300A2 */   sb        $zero, 0x3AC($s0)
  .L8018BF04:
    /* 2F8C 8018BF04 01000224 */  addiu      $v0, $zero, 0x1
    /* 2F90 8018BF08 13300608 */  j          .L8018C04C
    /* 2F94 8018BF0C AC0302A2 */   sb        $v0, 0x3AC($s0)
  jlabel .L8018BF10
    /* 2F98 8018BF10 A4030492 */  lbu        $a0, 0x3A4($s0)
    /* 2F9C 8018BF14 A003058E */  lw         $a1, 0x3A0($s0)
    /* 2FA0 8018BF18 A579000C */  jal        func_8001E694
    /* 2FA4 8018BF1C 00000000 */   nop
    /* 2FA8 8018BF20 A4030492 */  lbu        $a0, 0x3A4($s0)
    /* 2FAC 8018BF24 A003058E */  lw         $a1, 0x3A0($s0)
    /* 2FB0 8018BF28 6979000C */  jal        func_8001E5A4
    /* 2FB4 8018BF2C 080002AE */   sw        $v0, 0x8($s0)
    /* 2FB8 8018BF30 0800058E */  lw         $a1, 0x8($s0)
    /* 2FBC 8018BF34 21200002 */  addu       $a0, $s0, $zero
    /* 2FC0 8018BF38 100002AE */  sw         $v0, 0x10($s0)
    /* 2FC4 8018BF3C 02000296 */  lhu        $v0, 0x2($s0)
    /* 2FC8 8018BF40 1000068E */  lw         $a2, 0x10($s0)
    /* 2FCC 8018BF44 06000396 */  lhu        $v1, 0x6($s0)
    /* 2FD0 8018BF48 21104500 */  addu       $v0, $v0, $a1
    /* 2FD4 8018BF4C 21186600 */  addu       $v1, $v1, $a2
    /* 2FD8 8018BF50 020002A6 */  sh         $v0, 0x2($s0)
    /* 2FDC 8018BF54 476F010C */  jal        func_8005BD1C
    /* 2FE0 8018BF58 060003A6 */   sh        $v1, 0x6($s0)
    /* 2FE4 8018BF5C 02000286 */  lh         $v0, 0x2($s0)
    /* 2FE8 8018BF60 00000000 */  nop
    /* 2FEC 8018BF64 04004104 */  bgez       $v0, .L8018BF78
    /* 2FF0 8018BF68 01000224 */   addiu     $v0, $zero, 0x1
    /* 2FF4 8018BF6C 0D002392 */  lbu        $v1, 0xD($s1)
    /* 2FF8 8018BF70 DF2F0608 */  j          .L8018BF7C
    /* 2FFC 8018BF74 00000000 */   nop
  .L8018BF78:
    /* 3000 8018BF78 0E002392 */  lbu        $v1, 0xE($s1)
  .L8018BF7C:
    /* 3004 8018BF7C 00000000 */  nop
    /* 3008 8018BF80 32006214 */  bne        $v1, $v0, .L8018C04C
    /* 300C 8018BF84 00000000 */   nop
    /* 3010 8018BF88 96030292 */  lbu        $v0, 0x396($s0)
    /* 3014 8018BF8C 00000000 */  nop
    /* 3018 8018BF90 01004224 */  addiu      $v0, $v0, 0x1
    /* 301C 8018BF94 13300608 */  j          .L8018C04C
    /* 3020 8018BF98 960302A2 */   sb        $v0, 0x396($s0)
  jlabel .L8018BF9C
    /* 3024 8018BF9C C32E060C */  jal        func_8018BB0C
    /* 3028 8018BFA0 21200002 */   addu      $a0, $s0, $zero
    /* 302C 8018BFA4 BC030296 */  lhu        $v0, 0x3BC($s0)
    /* 3030 8018BFA8 96030392 */  lbu        $v1, 0x396($s0)
    /* 3034 8018BFAC BE030496 */  lhu        $a0, 0x3BE($s0)
    /* 3038 8018BFB0 01006324 */  addiu      $v1, $v1, 0x1
    /* 303C 8018BFB4 020002A6 */  sh         $v0, 0x2($s0)
    /* 3040 8018BFB8 060004A6 */  sh         $a0, 0x6($s0)
    /* 3044 8018BFBC 13300608 */  j          .L8018C04C
    /* 3048 8018BFC0 960303A2 */   sb        $v1, 0x396($s0)
  jlabel .L8018BFC4
    /* 304C 8018BFC4 476F010C */  jal        func_8005BD1C
    /* 3050 8018BFC8 21200002 */   addu      $a0, $s0, $zero
    /* 3054 8018BFCC AA030392 */  lbu        $v1, 0x3AA($s0)
    /* 3058 8018BFD0 C0000224 */  addiu      $v0, $zero, 0xC0
    /* 305C 8018BFD4 0E006214 */  bne        $v1, $v0, .L8018C010
    /* 3060 8018BFD8 C0000424 */   addiu     $a0, $zero, 0xC0
    /* 3064 8018BFDC 21200002 */  addu       $a0, $s0, $zero
    /* 3068 8018BFE0 01000524 */  addiu      $a1, $zero, 0x1
    /* 306C 8018BFE4 813A060C */  jal        func_8018EA04
    /* 3070 8018BFE8 21300000 */   addu      $a2, $zero, $zero
    /* 3074 8018BFEC 0A000224 */  addiu      $v0, $zero, 0xA
    /* 3078 8018BFF0 AD0302A2 */  sb         $v0, 0x3AD($s0)
    /* 307C 8018BFF4 96030292 */  lbu        $v0, 0x396($s0)
    /* 3080 8018BFF8 AC030392 */  lbu        $v1, 0x3AC($s0)
    /* 3084 8018BFFC 01004224 */  addiu      $v0, $v0, 0x1
    /* 3088 8018C000 01006338 */  xori       $v1, $v1, 0x1
    /* 308C 8018C004 960302A2 */  sb         $v0, 0x396($s0)
    /* 3090 8018C008 AC0303A2 */  sb         $v1, 0x3AC($s0)
    /* 3094 8018C00C C0000424 */  addiu      $a0, $zero, 0xC0
  .L8018C010:
    /* 3098 8018C010 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 309C 8018C014 02000624 */  addiu      $a2, $zero, 0x2
    /* 30A0 8018C018 F36D010C */  jal        func_8005B7CC
    /* 30A4 8018C01C A00300AE */   sw        $zero, 0x3A0($s0)
    /* 30A8 8018C020 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 30AC 8018C024 AA0303A2 */  sb         $v1, 0x3AA($s0)
    /* 30B0 8018C028 260000A6 */  sh         $zero, 0x26($s0)
    /* 30B4 8018C02C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 30B8 8018C030 21084102 */  addu       $at, $s2, $at
    /* 30BC 8018C034 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 30C0 8018C038 00000000 */  nop
    /* 30C4 8018C03C 3000422C */  sltiu      $v0, $v0, 0x30
    /* 30C8 8018C040 02004014 */  bnez       $v0, .L8018C04C
    /* 30CC 8018C044 00000000 */   nop
    /* 30D0 8018C048 AA0303A2 */  sb         $v1, 0x3AA($s0)
  jlabel .L8018C04C
    /* 30D4 8018C04C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 30D8 8018C050 1800B28F */  lw         $s2, 0x18($sp)
    /* 30DC 8018C054 1400B18F */  lw         $s1, 0x14($sp)
    /* 30E0 8018C058 1000B08F */  lw         $s0, 0x10($sp)
    /* 30E4 8018C05C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 30E8 8018C060 0800E003 */  jr         $ra
    /* 30EC 8018C064 00000000 */   nop
endlabel func_8018BE20
