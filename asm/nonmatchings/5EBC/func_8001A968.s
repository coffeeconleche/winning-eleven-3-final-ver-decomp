nonmatching func_8001A968, 0x30C

glabel func_8001A968
    /* B168 8001A968 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* B16C 8001A96C 2000B2AF */  sw         $s2, 0x20($sp)
    /* B170 8001A970 21908000 */  addu       $s2, $a0, $zero
    /* B174 8001A974 2400B3AF */  sw         $s3, 0x24($sp)
    /* B178 8001A978 801F133C */  lui        $s3, (0x1F8000F2 >> 16)
    /* B17C 8001A97C 3000B6AF */  sw         $s6, 0x30($sp)
    /* B180 8001A980 21B00000 */  addu       $s6, $zero, $zero
    /* B184 8001A984 3800BEAF */  sw         $fp, 0x38($sp)
    /* B188 8001A988 FF001E3C */  lui        $fp, (0xFFFFFF >> 16)
    /* B18C 8001A98C 801F033C */  lui        $v1, (0x1F80029D >> 16)
    /* B190 8001A990 9D026390 */  lbu        $v1, (0x1F80029D & 0xFFFF)($v1)
    /* B194 8001A994 FFFFDE37 */  ori        $fp, $fp, (0xFFFFFF & 0xFFFF)
    /* B198 8001A998 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* B19C 8001A99C 21A80000 */  addu       $s5, $zero, $zero
    /* B1A0 8001A9A0 2800B4AF */  sw         $s4, 0x28($sp)
    /* B1A4 8001A9A4 20001424 */  addiu      $s4, $zero, 0x20
    /* B1A8 8001A9A8 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* B1AC 8001A9AC 3400B7AF */  sw         $s7, 0x34($sp)
    /* B1B0 8001A9B0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* B1B4 8001A9B4 1800B0AF */  sw         $s0, 0x18($sp)
    /* B1B8 8001A9B8 8D034492 */  lbu        $a0, 0x38D($s2)
    /* B1BC 8001A9BC 00110300 */  sll        $v0, $v1, 4
    /* B1C0 8001A9C0 23104300 */  subu       $v0, $v0, $v1
    /* B1C4 8001A9C4 80100200 */  sll        $v0, $v0, 2
    /* B1C8 8001A9C8 23104300 */  subu       $v0, $v0, $v1
    /* B1CC 8001A9CC 80100200 */  sll        $v0, $v0, 2
    /* B1D0 8001A9D0 23104300 */  subu       $v0, $v0, $v1
    /* B1D4 8001A9D4 80110200 */  sll        $v0, $v0, 6
    /* B1D8 8001A9D8 0F80033C */  lui        $v1, %hi(D_800E8208)
    /* B1DC 8001A9DC 08826324 */  addiu      $v1, $v1, %lo(D_800E8208)
    /* B1E0 8001A9E0 21104300 */  addu       $v0, $v0, $v1
    /* B1E4 8001A9E4 FFFF9724 */  addiu      $s7, $a0, -0x1
    /* B1E8 8001A9E8 1000A2AF */  sw         $v0, 0x10($sp)
  .L8001A9EC:
    /* B1EC 8001A9EC 9C034392 */  lbu        $v1, 0x39C($s2)
    /* B1F0 8001A9F0 01000224 */  addiu      $v0, $zero, 0x1
    /* B1F4 8001A9F4 50006214 */  bne        $v1, $v0, .L8001AB38
    /* B1F8 8001A9F8 21204002 */   addu      $a0, $s2, $zero
    /* B1FC 8001A9FC 7370010C */  jal        func_8005C1CC
    /* B200 8001AA00 01000524 */   addiu     $a1, $zero, 0x1
    /* B204 8001AA04 02004286 */  lh         $v0, 0x2($s2)
    /* B208 8001AA08 F2006496 */  lhu        $a0, (0x1F8000F2 & 0xFFFF)($s3)
    /* B20C 8001AA0C 400160AE */  sw         $zero, (0x1F800140 & 0xFFFF)($s3)
    /* B210 8001AA10 3C0162AE */  sw         $v0, (0x1F80013C & 0xFFFF)($s3)
    /* B214 8001AA14 06004286 */  lh         $v0, 0x6($s2)
    /* B218 8001AA18 00000000 */  nop
    /* B21C 8001AA1C 440162AE */  sw         $v0, (0x1F800144 & 0xFFFF)($s3)
    /* B220 8001AA20 00140400 */  sll        $v0, $a0, 16
    /* B224 8001AA24 031C0200 */  sra        $v1, $v0, 16
    /* B228 8001AA28 10FF6228 */  slti       $v0, $v1, -0xF0
    /* B22C 8001AA2C 3C004014 */  bnez       $v0, .L8001AB20
    /* B230 8001AA30 21108002 */   addu      $v0, $s4, $zero
    /* B234 8001AA34 A1FF6228 */  slti       $v0, $v1, -0x5F
    /* B238 8001AA38 03004014 */  bnez       $v0, .L8001AA48
    /* B23C 8001AA3C 60008224 */   addiu     $v0, $a0, 0x60
    /* B240 8001AA40 936A0008 */  j          .L8001AA4C
    /* B244 8001AA44 F20060A6 */   sh        $zero, (0x1F8000F2 & 0xFFFF)($s3)
  .L8001AA48:
    /* B248 8001AA48 F20062A6 */  sh         $v0, (0x1F8000F2 & 0xFFFF)($s3)
  .L8001AA4C:
    /* B24C 8001AA4C 8E034296 */  lhu        $v0, 0x38E($s2)
    /* B250 8001AA50 00000000 */  nop
    /* B254 8001AA54 E2FF4324 */  addiu      $v1, $v0, -0x1E
    /* B258 8001AA58 5A00622C */  sltiu      $v0, $v1, 0x5A
    /* B25C 8001AA5C 1A004010 */  beqz       $v0, .L8001AAC8
    /* B260 8001AA60 80100300 */   sll       $v0, $v1, 2
    /* B264 8001AA64 0180013C */  lui        $at, %hi(jtbl_80010350)
    /* B268 8001AA68 21082200 */  addu       $at, $at, $v0
    /* B26C 8001AA6C 5003228C */  lw         $v0, %lo(jtbl_80010350)($at)
    /* B270 8001AA70 00000000 */  nop
    /* B274 8001AA74 08004000 */  jr         $v0
    /* B278 8001AA78 00000000 */   nop
  jlabel .L8001AA7C
    /* B27C 8001AA7C AA034392 */  lbu        $v1, 0x3AA($s2)
    /* B280 8001AA80 B46A0008 */  j          .L8001AAD0
    /* B284 8001AA84 40000224 */   addiu     $v0, $zero, 0x40
  jlabel .L8001AA88
    /* B288 8001AA88 C0010224 */  addiu      $v0, $zero, 0x1C0
    /* B28C 8001AA8C AA034392 */  lbu        $v1, 0x3AA($s2)
    /* B290 8001AA90 AC034492 */  lbu        $a0, 0x3AC($s2)
    /* B294 8001AA94 00000000 */  nop
    /* B298 8001AA98 09008014 */  bnez       $a0, .L8001AAC0
    /* B29C 8001AA9C 23104300 */   subu      $v0, $v0, $v1
  .L8001AAA0:
    /* B2A0 8001AAA0 B56A0008 */  j          .L8001AAD4
    /* B2A4 8001AAA4 40004224 */   addiu     $v0, $v0, 0x40
  jlabel .L8001AAA8
    /* B2A8 8001AAA8 C0010224 */  addiu      $v0, $zero, 0x1C0
    /* B2AC 8001AAAC AA034392 */  lbu        $v1, 0x3AA($s2)
    /* B2B0 8001AAB0 AC034492 */  lbu        $a0, 0x3AC($s2)
    /* B2B4 8001AAB4 00000000 */  nop
    /* B2B8 8001AAB8 F9FF8014 */  bnez       $a0, .L8001AAA0
    /* B2BC 8001AABC 23104300 */   subu      $v0, $v0, $v1
  .L8001AAC0:
    /* B2C0 8001AAC0 B56A0008 */  j          .L8001AAD4
    /* B2C4 8001AAC4 C0FF4224 */   addiu     $v0, $v0, -0x40
  jlabel .L8001AAC8
    /* B2C8 8001AAC8 AA034392 */  lbu        $v1, 0x3AA($s2)
    /* B2CC 8001AACC C0000224 */  addiu      $v0, $zero, 0xC0
  .L8001AAD0:
    /* B2D0 8001AAD0 23104300 */  subu       $v0, $v0, $v1
  .L8001AAD4:
    /* B2D4 8001AAD4 F2006396 */  lhu        $v1, (0x1F8000F2 & 0xFFFF)($s3)
    /* B2D8 8001AAD8 FF004430 */  andi       $a0, $v0, 0xFF
    /* B2DC 8001AADC 001C0300 */  sll        $v1, $v1, 16
    /* B2E0 8001AAE0 031C0300 */  sra        $v1, $v1, 16
    /* B2E4 8001AAE4 90006224 */  addiu      $v0, $v1, 0x90
    /* B2E8 8001AAE8 18008200 */  mult       $a0, $v0
    /* B2EC 8001AAEC 12100000 */  mflo       $v0
    /* B2F0 8001AAF0 00000000 */  nop
    /* B2F4 8001AAF4 00000000 */  nop
    /* B2F8 8001AAF8 18008302 */  mult       $s4, $v1
    /* B2FC 8001AAFC E338033C */  lui        $v1, (0x38E38E39 >> 16)
    /* B300 8001AB00 12380000 */  mflo       $a3
    /* B304 8001AB04 398E6334 */  ori        $v1, $v1, (0x38E38E39 & 0xFFFF)
    /* B308 8001AB08 23104700 */  subu       $v0, $v0, $a3
    /* B30C 8001AB0C 18004300 */  mult       $v0, $v1
    /* B310 8001AB10 C3170200 */  sra        $v0, $v0, 31
    /* B314 8001AB14 10300000 */  mfhi       $a2
    /* B318 8001AB18 43190600 */  sra        $v1, $a2, 5
    /* B31C 8001AB1C 23106200 */  subu       $v0, $v1, $v0
  .L8001AB20:
    /* B320 8001AB20 FF004230 */  andi       $v0, $v0, 0xFF
    /* B324 8001AB24 00110200 */  sll        $v0, $v0, 4
    /* B328 8001AB28 240160A6 */  sh         $zero, (0x1F800124 & 0xFFFF)($s3)
    /* B32C 8001AB2C 260162A6 */  sh         $v0, (0x1F800126 & 0xFFFF)($s3)
    /* B330 8001AB30 D96A0008 */  j          .L8001AB64
    /* B334 8001AB34 280160A6 */   sh        $zero, (0x1F800128 & 0xFFFF)($s3)
  .L8001AB38:
    /* B338 8001AB38 41006014 */  bnez       $v1, .L8001AC40
    /* B33C 8001AB3C 00000000 */   nop
    /* B340 8001AB40 02004286 */  lh         $v0, 0x2($s2)
    /* B344 8001AB44 400160AE */  sw         $zero, (0x1F800140 & 0xFFFF)($s3)
    /* B348 8001AB48 3C0162AE */  sw         $v0, (0x1F80013C & 0xFFFF)($s3)
    /* B34C 8001AB4C 06004386 */  lh         $v1, 0x6($s2)
    /* B350 8001AB50 00111400 */  sll        $v0, $s4, 4
    /* B354 8001AB54 240160A6 */  sh         $zero, (0x1F800124 & 0xFFFF)($s3)
    /* B358 8001AB58 260162A6 */  sh         $v0, (0x1F800126 & 0xFFFF)($s3)
    /* B35C 8001AB5C 280160A6 */  sh         $zero, (0x1F800128 & 0xFFFF)($s3)
    /* B360 8001AB60 440163AE */  sw         $v1, (0x1F800144 & 0xFFFF)($s3)
  .L8001AB64:
    /* B364 8001AB64 C0211700 */  sll        $a0, $s7, 7
    /* B368 8001AB68 24748424 */  addiu      $a0, $a0, 0x7424
    /* B36C 8001AB6C 1080063C */  lui        $a2, %hi(D_800FF748)
    /* B370 8001AB70 48F7C624 */  addiu      $a2, $a2, %lo(D_800FF748)
    /* B374 8001AB74 2120C400 */  addu       $a0, $a2, $a0
    /* B378 8001AB78 40111600 */  sll        $v0, $s6, 5
    /* B37C 8001AB7C 21208200 */  addu       $a0, $a0, $v0
    /* B380 8001AB80 80801700 */  sll        $s0, $s7, 2
    /* B384 8001AB84 21801702 */  addu       $s0, $s0, $s7
    /* B388 8001AB88 40811000 */  sll        $s0, $s0, 5
    /* B38C 8001AB8C 1000A68F */  lw         $a2, 0x10($sp)
    /* B390 8001AB90 50001126 */  addiu      $s1, $s0, 0x50
    /* B394 8001AB94 2188D100 */  addu       $s1, $a2, $s1
    /* B398 8001AB98 21883502 */  addu       $s1, $s1, $s5
    /* B39C 8001AB9C A467000C */  jal        func_80019E90
    /* B3A0 8001ABA0 21282002 */   addu      $a1, $s1, $zero
    /* B3A4 8001ABA4 40009426 */  addiu      $s4, $s4, 0x40
    /* B3A8 8001ABA8 0100D626 */  addiu      $s6, $s6, 0x1
    /* B3AC 8001ABAC 24883E02 */  and        $s1, $s1, $fp
    /* B3B0 8001ABB0 1000A68F */  lw         $a2, 0x10($sp)
    /* B3B4 8001ABB4 0000638E */  lw         $v1, (0x1F800000 & 0xFFFF)($s3)
    /* B3B8 8001ABB8 9D026292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s3)
    /* B3BC 8001ABBC 21800602 */  addu       $s0, $s0, $a2
    /* B3C0 8001ABC0 2180B002 */  addu       $s0, $s5, $s0
    /* B3C4 8001ABC4 04000624 */  addiu      $a2, $zero, 0x4
    /* B3C8 8001ABC8 04186600 */  sllv       $v1, $a2, $v1
    /* B3CC 8001ABCC 80130200 */  sll        $v0, $v0, 14
    /* B3D0 8001ABD0 21104300 */  addu       $v0, $v0, $v1
    /* B3D4 8001ABD4 0F80063C */  lui        $a2, %hi(D_800F3560)
    /* B3D8 8001ABD8 6035C624 */  addiu      $a2, $a2, %lo(D_800F3560)
    /* B3DC 8001ABDC 21104600 */  addu       $v0, $v0, $a2
    /* B3E0 8001ABE0 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* B3E4 8001ABE4 5000048E */  lw         $a0, 0x50($s0)
    /* B3E8 8001ABE8 0000428C */  lw         $v0, 0x0($v0)
    /* B3EC 8001ABEC 24208600 */  and        $a0, $a0, $a2
    /* B3F0 8001ABF0 24105E00 */  and        $v0, $v0, $fp
    /* B3F4 8001ABF4 25208200 */  or         $a0, $a0, $v0
    /* B3F8 8001ABF8 04000624 */  addiu      $a2, $zero, 0x4
    /* B3FC 8001ABFC 500004AE */  sw         $a0, 0x50($s0)
    /* B400 8001AC00 0000638E */  lw         $v1, (0x1F800000 & 0xFFFF)($s3)
    /* B404 8001AC04 9D026292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s3)
    /* B408 8001AC08 04186600 */  sllv       $v1, $a2, $v1
    /* B40C 8001AC0C 80130200 */  sll        $v0, $v0, 14
    /* B410 8001AC10 21104300 */  addu       $v0, $v0, $v1
    /* B414 8001AC14 0F80063C */  lui        $a2, %hi(D_800F3560)
    /* B418 8001AC18 6035C624 */  addiu      $a2, $a2, %lo(D_800F3560)
    /* B41C 8001AC1C 21104600 */  addu       $v0, $v0, $a2
    /* B420 8001AC20 0000438C */  lw         $v1, 0x0($v0)
    /* B424 8001AC24 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* B428 8001AC28 24186600 */  and        $v1, $v1, $a2
    /* B42C 8001AC2C 25187100 */  or         $v1, $v1, $s1
    /* B430 8001AC30 000043AC */  sw         $v1, 0x0($v0)
    /* B434 8001AC34 0400C22A */  slti       $v0, $s6, 0x4
    /* B438 8001AC38 6CFF4014 */  bnez       $v0, .L8001A9EC
    /* B43C 8001AC3C 2800B526 */   addiu     $s5, $s5, 0x28
  .L8001AC40:
    /* B440 8001AC40 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* B444 8001AC44 3800BE8F */  lw         $fp, 0x38($sp)
    /* B448 8001AC48 3400B78F */  lw         $s7, 0x34($sp)
    /* B44C 8001AC4C 3000B68F */  lw         $s6, 0x30($sp)
    /* B450 8001AC50 2C00B58F */  lw         $s5, 0x2C($sp)
    /* B454 8001AC54 2800B48F */  lw         $s4, 0x28($sp)
    /* B458 8001AC58 2400B38F */  lw         $s3, 0x24($sp)
    /* B45C 8001AC5C 2000B28F */  lw         $s2, 0x20($sp)
    /* B460 8001AC60 1C00B18F */  lw         $s1, 0x1C($sp)
    /* B464 8001AC64 1800B08F */  lw         $s0, 0x18($sp)
    /* B468 8001AC68 4000BD27 */  addiu      $sp, $sp, 0x40
    /* B46C 8001AC6C 0800E003 */  jr         $ra
    /* B470 8001AC70 00000000 */   nop
endlabel func_8001A968
