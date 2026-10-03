nonmatching func_801979D8, 0x208

glabel func_801979D8
    /* EA60 801979D8 1080033C */  lui        $v1, %hi(D_800FF748)
    /* EA64 801979DC 48F76324 */  addiu      $v1, $v1, %lo(D_800FF748)
    /* EA68 801979E0 9FFF8224 */  addiu      $v0, $a0, -0x61
    /* EA6C 801979E4 FF004230 */  andi       $v0, $v0, 0xFF
    /* EA70 801979E8 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* EA74 801979EC 02004010 */  beqz       $v0, .L801979F8
    /* EA78 801979F0 21408000 */   addu      $t0, $a0, $zero
    /* EA7C 801979F4 E0FF8824 */  addiu      $t0, $a0, -0x20
  .L801979F8:
    /* EA80 801979F8 0200C224 */  addiu      $v0, $a2, 0x2
    /* EA84 801979FC 801F013C */  lui        $at, (0x1F800160 >> 16)
    /* EA88 80197A00 600125A4 */  sh         $a1, (0x1F800160 & 0xFFFF)($at)
    /* EA8C 80197A04 08000524 */  addiu      $a1, $zero, 0x8
    /* EA90 80197A08 801F013C */  lui        $at, (0x1F800162 >> 16)
    /* EA94 80197A0C 620122A4 */  sh         $v0, (0x1F800162 & 0xFFFF)($at)
    /* EA98 80197A10 1D000224 */  addiu      $v0, $zero, 0x1D
    /* EA9C 80197A14 801F013C */  lui        $at, (0x1F800168 >> 16)
    /* EAA0 80197A18 680122A4 */  sh         $v0, (0x1F800168 & 0xFFFF)($at)
    /* EAA4 80197A1C FF00E230 */  andi       $v0, $a3, 0xFF
    /* EAA8 80197A20 80100200 */  sll        $v0, $v0, 2
    /* EAAC 80197A24 21104300 */  addu       $v0, $v0, $v1
    /* EAB0 80197A28 801F013C */  lui        $at, (0x1F80015C >> 16)
    /* EAB4 80197A2C 5C0120AC */  sw         $zero, (0x1F80015C & 0xFFFF)($at)
    /* EAB8 80197A30 801F013C */  lui        $at, (0x1F800166 >> 16)
    /* EABC 80197A34 660125A4 */  sh         $a1, (0x1F800166 & 0xFFFF)($at)
    /* EAC0 80197A38 A67F4394 */  lhu        $v1, 0x7FA6($v0)
    /* EAC4 80197A3C 801F013C */  lui        $at, (0x1F80016C >> 16)
    /* EAC8 80197A40 6C0123A4 */  sh         $v1, (0x1F80016C & 0xFFFF)($at)
    /* EACC 80197A44 A47F4294 */  lhu        $v0, 0x7FA4($v0)
    /* EAD0 80197A48 FF000331 */  andi       $v1, $t0, 0xFF
    /* EAD4 80197A4C 801F013C */  lui        $at, (0x1F80016E >> 16)
    /* EAD8 80197A50 6E0122A4 */  sh         $v0, (0x1F80016E & 0xFFFF)($at)
    /* EADC 80197A54 B2000224 */  addiu      $v0, $zero, 0xB2
    /* EAE0 80197A58 0C006214 */  bne        $v1, $v0, .L80197A8C
    /* EAE4 80197A5C DB000224 */   addiu     $v0, $zero, 0xDB
    /* EAE8 80197A60 20000224 */  addiu      $v0, $zero, 0x20
    /* EAEC 80197A64 801F013C */  lui        $at, (0x1F80016A >> 16)
    /* EAF0 80197A68 6A0122A0 */  sb         $v0, (0x1F80016A & 0xFFFF)($at)
    /* EAF4 80197A6C 08000224 */  addiu      $v0, $zero, 0x8
    /* EAF8 80197A70 801F013C */  lui        $at, (0x1F80016B >> 16)
    /* EAFC 80197A74 6B0122A0 */  sb         $v0, (0x1F80016B & 0xFFFF)($at)
    /* EB00 80197A78 10000224 */  addiu      $v0, $zero, 0x10
    /* EB04 80197A7C 801F013C */  lui        $at, (0x1F800164 >> 16)
    /* EB08 80197A80 640122A4 */  sh         $v0, (0x1F800164 & 0xFFFF)($at)
    /* EB0C 80197A84 F65E0608 */  j          .L80197BD8
    /* EB10 80197A88 00000000 */   nop
  .L80197A8C:
    /* EB14 80197A8C 0B006214 */  bne        $v1, $v0, .L80197ABC
    /* EB18 80197A90 CA000224 */   addiu     $v0, $zero, 0xCA
    /* EB1C 80197A94 38000224 */  addiu      $v0, $zero, 0x38
    /* EB20 80197A98 801F013C */  lui        $at, (0x1F80016B >> 16)
    /* EB24 80197A9C 6B0122A0 */  sb         $v0, (0x1F80016B & 0xFFFF)($at)
    /* EB28 80197AA0 10000224 */  addiu      $v0, $zero, 0x10
    /* EB2C 80197AA4 801F013C */  lui        $at, (0x1F80016A >> 16)
    /* EB30 80197AA8 6A0120A0 */  sb         $zero, (0x1F80016A & 0xFFFF)($at)
    /* EB34 80197AAC 801F013C */  lui        $at, (0x1F800164 >> 16)
    /* EB38 80197AB0 640122A4 */  sh         $v0, (0x1F800164 & 0xFFFF)($at)
    /* EB3C 80197AB4 F65E0608 */  j          .L80197BD8
    /* EB40 80197AB8 00000000 */   nop
  .L80197ABC:
    /* EB44 80197ABC 0C006214 */  bne        $v1, $v0, .L80197AF0
    /* EB48 80197AC0 C6000224 */   addiu     $v0, $zero, 0xC6
    /* EB4C 80197AC4 10000224 */  addiu      $v0, $zero, 0x10
    /* EB50 80197AC8 801F013C */  lui        $at, (0x1F80016A >> 16)
    /* EB54 80197ACC 6A0122A0 */  sb         $v0, (0x1F80016A & 0xFFFF)($at)
    /* EB58 80197AD0 30000224 */  addiu      $v0, $zero, 0x30
    /* EB5C 80197AD4 801F013C */  lui        $at, (0x1F80016B >> 16)
    /* EB60 80197AD8 6B0122A0 */  sb         $v0, (0x1F80016B & 0xFFFF)($at)
    /* EB64 80197ADC 12000224 */  addiu      $v0, $zero, 0x12
    /* EB68 80197AE0 801F013C */  lui        $at, (0x1F800164 >> 16)
    /* EB6C 80197AE4 640122A4 */  sh         $v0, (0x1F800164 & 0xFFFF)($at)
    /* EB70 80197AE8 F65E0608 */  j          .L80197BD8
    /* EB74 80197AEC 00000000 */   nop
  .L80197AF0:
    /* EB78 80197AF0 06006214 */  bne        $v1, $v0, .L80197B0C
    /* EB7C 80197AF4 D0FF0325 */   addiu     $v1, $t0, -0x30
    /* EB80 80197AF8 28000224 */  addiu      $v0, $zero, 0x28
    /* EB84 80197AFC 801F013C */  lui        $at, (0x1F80016A >> 16)
    /* EB88 80197B00 6A0122A0 */  sb         $v0, (0x1F80016A & 0xFFFF)($at)
    /* EB8C 80197B04 D85E0608 */  j          .L80197B60
    /* EB90 80197B08 30000224 */   addiu     $v0, $zero, 0x30
  .L80197B0C:
    /* EB94 80197B0C FF006230 */  andi       $v0, $v1, 0xFF
    /* EB98 80197B10 0600422C */  sltiu      $v0, $v0, 0x6
    /* EB9C 80197B14 0A004010 */  beqz       $v0, .L80197B40
    /* EBA0 80197B18 C0100300 */   sll       $v0, $v1, 3
    /* EBA4 80197B1C 801F013C */  lui        $at, (0x1F80016A >> 16)
    /* EBA8 80197B20 6A0122A0 */  sb         $v0, (0x1F80016A & 0xFFFF)($at)
    /* EBAC 80197B24 06000224 */  addiu      $v0, $zero, 0x6
    /* EBB0 80197B28 801F013C */  lui        $at, (0x1F80016B >> 16)
    /* EBB4 80197B2C 6B0120A0 */  sb         $zero, (0x1F80016B & 0xFFFF)($at)
    /* EBB8 80197B30 801F013C */  lui        $at, (0x1F800164 >> 16)
    /* EBBC 80197B34 640122A4 */  sh         $v0, (0x1F800164 & 0xFFFF)($at)
    /* EBC0 80197B38 F65E0608 */  j          .L80197BD8
    /* EBC4 80197B3C 00000000 */   nop
  .L80197B40:
    /* EBC8 80197B40 CAFF0325 */  addiu      $v1, $t0, -0x36
    /* EBCC 80197B44 FF006230 */  andi       $v0, $v1, 0xFF
    /* EBD0 80197B48 0400422C */  sltiu      $v0, $v0, 0x4
    /* EBD4 80197B4C 0B004010 */  beqz       $v0, .L80197B7C
    /* EBD8 80197B50 C0100300 */   sll       $v0, $v1, 3
    /* EBDC 80197B54 801F013C */  lui        $at, (0x1F80016A >> 16)
    /* EBE0 80197B58 6A0122A0 */  sb         $v0, (0x1F80016A & 0xFFFF)($at)
    /* EBE4 80197B5C 08000224 */  addiu      $v0, $zero, 0x8
  .L80197B60:
    /* EBE8 80197B60 801F013C */  lui        $at, (0x1F80016B >> 16)
    /* EBEC 80197B64 6B0122A0 */  sb         $v0, (0x1F80016B & 0xFFFF)($at)
    /* EBF0 80197B68 06000224 */  addiu      $v0, $zero, 0x6
    /* EBF4 80197B6C 801F013C */  lui        $at, (0x1F800164 >> 16)
    /* EBF8 80197B70 640122A4 */  sh         $v0, (0x1F800164 & 0xFFFF)($at)
    /* EBFC 80197B74 F65E0608 */  j          .L80197BD8
    /* EC00 80197B78 00000000 */   nop
  .L80197B7C:
    /* EC04 80197B7C BFFF0425 */  addiu      $a0, $t0, -0x41
    /* EC08 80197B80 FF008230 */  andi       $v0, $a0, 0xFF
    /* EC0C 80197B84 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* EC10 80197B88 13004010 */  beqz       $v0, .L80197BD8
    /* EC14 80197B8C FF008430 */   andi      $a0, $a0, 0xFF
    /* EC18 80197B90 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* EC1C 80197B94 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* EC20 80197B98 19008200 */  multu      $a0, $v0
    /* EC24 80197B9C 801F013C */  lui        $at, (0x1F800164 >> 16)
    /* EC28 80197BA0 640125A4 */  sh         $a1, (0x1F800164 & 0xFFFF)($at)
    /* EC2C 80197BA4 10480000 */  mfhi       $t1
    /* EC30 80197BA8 82180900 */  srl        $v1, $t1, 2
    /* EC34 80197BAC 40100300 */  sll        $v0, $v1, 1
    /* EC38 80197BB0 21104300 */  addu       $v0, $v0, $v1
    /* EC3C 80197BB4 40100200 */  sll        $v0, $v0, 1
    /* EC40 80197BB8 23208200 */  subu       $a0, $a0, $v0
    /* EC44 80197BBC C0200400 */  sll        $a0, $a0, 3
    /* EC48 80197BC0 C0180300 */  sll        $v1, $v1, 3
    /* EC4C 80197BC4 10006324 */  addiu      $v1, $v1, 0x10
    /* EC50 80197BC8 801F013C */  lui        $at, (0x1F80016A >> 16)
    /* EC54 80197BCC 6A0124A0 */  sb         $a0, (0x1F80016A & 0xFFFF)($at)
    /* EC58 80197BD0 801F013C */  lui        $at, (0x1F80016B >> 16)
    /* EC5C 80197BD4 6B0123A0 */  sb         $v1, (0x1F80016B & 0xFFFF)($at)
  .L80197BD8:
    /* EC60 80197BD8 0800E003 */  jr         $ra
    /* EC64 80197BDC 00000000 */   nop
endlabel func_801979D8
