nonmatching func_800BE028, 0x290

glabel func_800BE028
    /* AE828 800BE028 63000B24 */  addiu      $t3, $zero, 0x63
    /* AE82C 800BE02C FFFF0C34 */  ori        $t4, $zero, 0xFFFF
    /* AE830 800BE030 21500000 */  addu       $t2, $zero, $zero
    /* AE834 800BE034 21400000 */  addu       $t0, $zero, $zero
    /* AE838 800BE038 63000924 */  addiu      $t1, $zero, 0x63
    /* AE83C 800BE03C 21380000 */  addu       $a3, $zero, $zero
    /* AE840 800BE040 1180023C */  lui        $v0, %hi(D_8010A3D7)
    /* AE844 800BE044 D7A34290 */  lbu        $v0, %lo(D_8010A3D7)($v0)
    /* AE848 800BE048 1080033C */  lui        $v1, %hi(D_800FB578)
    /* AE84C 800BE04C 78B56380 */  lb         $v1, %lo(D_800FB578)($v1)
    /* AE850 800BE050 00160200 */  sll        $v0, $v0, 24
    /* AE854 800BE054 56006018 */  blez       $v1, .L800BE1B0
    /* AE858 800BE058 036E0200 */   sra       $t5, $v0, 24
    /* AE85C 800BE05C 01001824 */  addiu      $t8, $zero, 0x1
    /* AE860 800BE060 0D800F3C */  lui        $t7, %hi(D_800D4F0C)
    /* AE864 800BE064 0C4FEF8D */  lw         $t7, %lo(D_800D4F0C)($t7)
    /* AE868 800BE068 21706000 */  addu       $t6, $v1, $zero
    /* AE86C 800BE06C FF00E330 */  andi       $v1, $a3, 0xFF
  .L800BE070:
    /* AE870 800BE070 04107800 */  sllv       $v0, $t8, $v1
    /* AE874 800BE074 2410E201 */  and        $v0, $t7, $v0
    /* AE878 800BE078 48004014 */  bnez       $v0, .L800BE19C
    /* AE87C 800BE07C C0100300 */   sll       $v0, $v1, 3
    /* AE880 800BE080 23104300 */  subu       $v0, $v0, $v1
    /* AE884 800BE084 80100200 */  sll        $v0, $v0, 2
    /* AE888 800BE088 23104300 */  subu       $v0, $v0, $v1
    /* AE88C 800BE08C 40180200 */  sll        $v1, $v0, 1
    /* AE890 800BE090 0E80023C */  lui        $v0, %hi(D_800E78F5)
    /* AE894 800BE094 21104300 */  addu       $v0, $v0, $v1
    /* AE898 800BE098 F5784280 */  lb         $v0, %lo(D_800E78F5)($v0)
    /* AE89C 800BE09C 00000000 */  nop
    /* AE8A0 800BE0A0 09004014 */  bnez       $v0, .L800BE0C8
    /* AE8A4 800BE0A4 FF00E230 */   andi      $v0, $a3, 0xFF
    /* AE8A8 800BE0A8 0E80023C */  lui        $v0, %hi(D_800E78DE)
    /* AE8AC 800BE0AC 21104300 */  addu       $v0, $v0, $v1
    /* AE8B0 800BE0B0 DE784294 */  lhu        $v0, %lo(D_800E78DE)($v0)
    /* AE8B4 800BE0B4 00000000 */  nop
    /* AE8B8 800BE0B8 03004014 */  bnez       $v0, .L800BE0C8
    /* AE8BC 800BE0BC FF00E230 */   andi      $v0, $a3, 0xFF
    /* AE8C0 800BE0C0 6CF80208 */  j          .L800BE1B0
    /* AE8C4 800BE0C4 2158E000 */   addu      $t3, $a3, $zero
  .L800BE0C8:
    /* AE8C8 800BE0C8 C0180200 */  sll        $v1, $v0, 3
    /* AE8CC 800BE0CC 23186200 */  subu       $v1, $v1, $v0
    /* AE8D0 800BE0D0 80180300 */  sll        $v1, $v1, 2
    /* AE8D4 800BE0D4 23186200 */  subu       $v1, $v1, $v0
    /* AE8D8 800BE0D8 40180300 */  sll        $v1, $v1, 1
    /* AE8DC 800BE0DC FFFFA531 */  andi       $a1, $t5, 0xFFFF
    /* AE8E0 800BE0E0 0E80063C */  lui        $a2, %hi(D_800E78F2)
    /* AE8E4 800BE0E4 2130C300 */  addu       $a2, $a2, $v1
    /* AE8E8 800BE0E8 F278C684 */  lh         $a2, %lo(D_800E78F2)($a2)
    /* AE8EC 800BE0EC 0E80043C */  lui        $a0, %hi(D_800E78F2)
    /* AE8F0 800BE0F0 21208300 */  addu       $a0, $a0, $v1
    /* AE8F4 800BE0F4 F2788494 */  lhu        $a0, %lo(D_800E78F2)($a0)
    /* AE8F8 800BE0F8 2A10C500 */  slt        $v0, $a2, $a1
    /* AE8FC 800BE0FC 0B004010 */  beqz       $v0, .L800BE12C
    /* AE900 800BE100 00000000 */   nop
    /* AE904 800BE104 21688000 */  addu       $t5, $a0, $zero
    /* AE908 800BE108 2148E000 */  addu       $t1, $a3, $zero
    /* AE90C 800BE10C 0E800C3C */  lui        $t4, %hi(D_800E78DE)
    /* AE910 800BE110 21608301 */  addu       $t4, $t4, $v1
    /* AE914 800BE114 DE788C95 */  lhu        $t4, %lo(D_800E78DE)($t4)
    /* AE918 800BE118 0E80083C */  lui        $t0, %hi(D_800E78DA)
    /* AE91C 800BE11C 21400301 */  addu       $t0, $t0, $v1
    /* AE920 800BE120 DA780895 */  lhu        $t0, %lo(D_800E78DA)($t0)
    /* AE924 800BE124 67F80208 */  j          .L800BE19C
    /* AE928 800BE128 01000A24 */   addiu     $t2, $zero, 0x1
  .L800BE12C:
    /* AE92C 800BE12C 1B00C514 */  bne        $a2, $a1, .L800BE19C
    /* AE930 800BE130 FFFF8431 */   andi      $a0, $t4, 0xFFFF
    /* AE934 800BE134 0E80063C */  lui        $a2, %hi(D_800E78DE)
    /* AE938 800BE138 2130C300 */  addu       $a2, $a2, $v1
    /* AE93C 800BE13C DE78C694 */  lhu        $a2, %lo(D_800E78DE)($a2)
    /* AE940 800BE140 00000000 */  nop
    /* AE944 800BE144 FFFFC530 */  andi       $a1, $a2, 0xFFFF
    /* AE948 800BE148 2B10A400 */  sltu       $v0, $a1, $a0
    /* AE94C 800BE14C 06004010 */  beqz       $v0, .L800BE168
    /* AE950 800BE150 01004A25 */   addiu     $t2, $t2, 0x1
    /* AE954 800BE154 0E80083C */  lui        $t0, %hi(D_800E78DA)
    /* AE958 800BE158 21400301 */  addu       $t0, $t0, $v1
    /* AE95C 800BE15C DA780895 */  lhu        $t0, %lo(D_800E78DA)($t0)
    /* AE960 800BE160 66F80208 */  j          .L800BE198
    /* AE964 800BE164 2160C000 */   addu      $t4, $a2, $zero
  .L800BE168:
    /* AE968 800BE168 0C00A414 */  bne        $a1, $a0, .L800BE19C
    /* AE96C 800BE16C 00000000 */   nop
    /* AE970 800BE170 0E80023C */  lui        $v0, %hi(D_800E78DA)
    /* AE974 800BE174 21104300 */  addu       $v0, $v0, $v1
    /* AE978 800BE178 DA784284 */  lh         $v0, %lo(D_800E78DA)($v0)
    /* AE97C 800BE17C 0E80013C */  lui        $at, %hi(D_800E78DA)
    /* AE980 800BE180 21082300 */  addu       $at, $at, $v1
    /* AE984 800BE184 DA782394 */  lhu        $v1, %lo(D_800E78DA)($at)
    /* AE988 800BE188 2A100201 */  slt        $v0, $t0, $v0
    /* AE98C 800BE18C 03004010 */  beqz       $v0, .L800BE19C
    /* AE990 800BE190 00000000 */   nop
    /* AE994 800BE194 21406000 */  addu       $t0, $v1, $zero
  .L800BE198:
    /* AE998 800BE198 2148E000 */  addu       $t1, $a3, $zero
  .L800BE19C:
    /* AE99C 800BE19C 0100E724 */  addiu      $a3, $a3, 0x1
    /* AE9A0 800BE1A0 FF00E230 */  andi       $v0, $a3, 0xFF
    /* AE9A4 800BE1A4 2A104E00 */  slt        $v0, $v0, $t6
    /* AE9A8 800BE1A8 B1FF4014 */  bnez       $v0, .L800BE070
    /* AE9AC 800BE1AC FF00E330 */   andi      $v1, $a3, 0xFF
  .L800BE1B0:
    /* AE9B0 800BE1B0 FF006331 */  andi       $v1, $t3, 0xFF
    /* AE9B4 800BE1B4 63000224 */  addiu      $v0, $zero, 0x63
    /* AE9B8 800BE1B8 05006214 */  bne        $v1, $v0, .L800BE1D0
    /* AE9BC 800BE1BC FF004231 */   andi      $v0, $t2, 0xFF
    /* AE9C0 800BE1C0 03004014 */  bnez       $v0, .L800BE1D0
    /* AE9C4 800BE1C4 21582001 */   addu      $t3, $t1, $zero
    /* AE9C8 800BE1C8 10800B3C */  lui        $t3, %hi(D_800FB578)
    /* AE9CC 800BE1CC 78B56B91 */  lbu        $t3, %lo(D_800FB578)($t3)
  .L800BE1D0:
    /* AE9D0 800BE1D0 1080033C */  lui        $v1, %hi(D_800FB578)
    /* AE9D4 800BE1D4 78B56380 */  lb         $v1, %lo(D_800FB578)($v1)
    /* AE9D8 800BE1D8 FF006231 */  andi       $v0, $t3, 0xFF
    /* AE9DC 800BE1DC 2A104300 */  slt        $v0, $v0, $v1
    /* AE9E0 800BE1E0 33004010 */  beqz       $v0, .L800BE2B0
    /* AE9E4 800BE1E4 00000000 */   nop
    /* AE9E8 800BE1E8 1B006018 */  blez       $v1, .L800BE258
    /* AE9EC 800BE1EC 21380000 */   addu      $a3, $zero, $zero
    /* AE9F0 800BE1F0 01000624 */  addiu      $a2, $zero, 0x1
    /* AE9F4 800BE1F4 0D80053C */  lui        $a1, %hi(D_800D4F0C)
    /* AE9F8 800BE1F8 0C4FA58C */  lw         $a1, %lo(D_800D4F0C)($a1)
    /* AE9FC 800BE1FC 21206000 */  addu       $a0, $v1, $zero
    /* AEA00 800BE200 FF00E330 */  andi       $v1, $a3, 0xFF
  .L800BE204:
    /* AEA04 800BE204 04106600 */  sllv       $v0, $a2, $v1
    /* AEA08 800BE208 2410A200 */  and        $v0, $a1, $v0
    /* AEA0C 800BE20C 0D004014 */  bnez       $v0, .L800BE244
    /* AEA10 800BE210 C0100300 */   sll       $v0, $v1, 3
    /* AEA14 800BE214 23104300 */  subu       $v0, $v0, $v1
    /* AEA18 800BE218 80100200 */  sll        $v0, $v0, 2
    /* AEA1C 800BE21C 23104300 */  subu       $v0, $v0, $v1
    /* AEA20 800BE220 40100200 */  sll        $v0, $v0, 1
    /* AEA24 800BE224 0E80033C */  lui        $v1, %hi(D_800E78DA)
    /* AEA28 800BE228 21186200 */  addu       $v1, $v1, $v0
    /* AEA2C 800BE22C DA786394 */  lhu        $v1, %lo(D_800E78DA)($v1)
    /* AEA30 800BE230 00000000 */  nop
    /* AEA34 800BE234 01006324 */  addiu      $v1, $v1, 0x1
    /* AEA38 800BE238 0E80013C */  lui        $at, %hi(D_800E78DA)
    /* AEA3C 800BE23C 21082200 */  addu       $at, $at, $v0
    /* AEA40 800BE240 DA7823A4 */  sh         $v1, %lo(D_800E78DA)($at)
  .L800BE244:
    /* AEA44 800BE244 0100E724 */  addiu      $a3, $a3, 0x1
    /* AEA48 800BE248 FF00E230 */  andi       $v0, $a3, 0xFF
    /* AEA4C 800BE24C 2A104400 */  slt        $v0, $v0, $a0
    /* AEA50 800BE250 ECFF4014 */  bnez       $v0, .L800BE204
    /* AEA54 800BE254 FF00E330 */   andi      $v1, $a3, 0xFF
  .L800BE258:
    /* AEA58 800BE258 FF006231 */  andi       $v0, $t3, 0xFF
    /* AEA5C 800BE25C C0180200 */  sll        $v1, $v0, 3
    /* AEA60 800BE260 23186200 */  subu       $v1, $v1, $v0
    /* AEA64 800BE264 80180300 */  sll        $v1, $v1, 2
    /* AEA68 800BE268 23186200 */  subu       $v1, $v1, $v0
    /* AEA6C 800BE26C 40180300 */  sll        $v1, $v1, 1
    /* AEA70 800BE270 0E80013C */  lui        $at, %hi(D_800E78DA)
    /* AEA74 800BE274 21082300 */  addu       $at, $at, $v1
    /* AEA78 800BE278 DA7820A4 */  sh         $zero, %lo(D_800E78DA)($at)
    /* AEA7C 800BE27C 1180023C */  lui        $v0, %hi(D_8010A3D7)
    /* AEA80 800BE280 D7A34290 */  lbu        $v0, %lo(D_8010A3D7)($v0)
    /* AEA84 800BE284 0E80013C */  lui        $at, %hi(D_800E7902)
    /* AEA88 800BE288 21082300 */  addu       $at, $at, $v1
    /* AEA8C 800BE28C 027920A4 */  sh         $zero, %lo(D_800E7902)($at)
    /* AEA90 800BE290 0E80013C */  lui        $at, %hi(D_800E78F6)
    /* AEA94 800BE294 21082300 */  addu       $at, $at, $v1
    /* AEA98 800BE298 F67820A4 */  sh         $zero, %lo(D_800E78F6)($at)
    /* AEA9C 800BE29C 00160200 */  sll        $v0, $v0, 24
    /* AEAA0 800BE2A0 03160200 */  sra        $v0, $v0, 24
    /* AEAA4 800BE2A4 0E80013C */  lui        $at, %hi(D_800E78F2)
    /* AEAA8 800BE2A8 21082300 */  addu       $at, $at, $v1
    /* AEAAC 800BE2AC F27822A4 */  sh         $v0, %lo(D_800E78F2)($at)
  .L800BE2B0:
    /* AEAB0 800BE2B0 0800E003 */  jr         $ra
    /* AEAB4 800BE2B4 FF006231 */   andi      $v0, $t3, 0xFF
endlabel func_800BE028
