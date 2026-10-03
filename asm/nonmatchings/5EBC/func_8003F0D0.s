nonmatching func_8003F0D0, 0x1E8

glabel func_8003F0D0
    /* 2F8D0 8003F0D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2F8D4 8003F0D4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2F8D8 8003F0D8 21888000 */  addu       $s1, $a0, $zero
    /* 2F8DC 8003F0DC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2F8E0 8003F0E0 2190A000 */  addu       $s2, $a1, $zero
    /* 2F8E4 8003F0E4 01000524 */  addiu      $a1, $zero, 0x1
    /* 2F8E8 8003F0E8 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2F8EC 8003F0EC 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2F8F0 8003F0F0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2F8F4 8003F0F4 AE44010C */  jal        func_800512B8
    /* 2F8F8 8003F0F8 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2F8FC 8003F0FC D858010C */  jal        func_80056360
    /* 2F900 8003F100 21202002 */   addu      $a0, $s1, $zero
    /* 2F904 8003F104 97032392 */  lbu        $v1, 0x397($s1)
    /* 2F908 8003F108 10000224 */  addiu      $v0, $zero, 0x10
    /* 2F90C 8003F10C 10006214 */  bne        $v1, $v0, .L8003F150
    /* 2F910 8003F110 801F143C */   lui       $s4, (0x1F8002F4 >> 16)
    /* 2F914 8003F114 E871010C */  jal        func_8005C7A0
    /* 2F918 8003F118 18000424 */   addiu     $a0, $zero, 0x18
    /* 2F91C 8003F11C AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 2F920 8003F120 08000424 */  addiu      $a0, $zero, 0x8
    /* 2F924 8003F124 AE79000C */  jal        func_8001E6B8
    /* 2F928 8003F128 21986200 */   addu      $s3, $v1, $v0
    /* 2F92C 8003F12C 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 2F930 8003F130 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 2F934 8003F134 08004224 */  addiu      $v0, $v0, 0x8
    /* 2F938 8003F138 A003638C */  lw         $v1, 0x3A0($v1)
    /* 2F93C 8003F13C C6032486 */  lh         $a0, 0x3C6($s1)
    /* 2F940 8003F140 821A0300 */  srl        $v1, $v1, 10
    /* 2F944 8003F144 21208300 */  addu       $a0, $a0, $v1
    /* 2F948 8003F148 7BFC0008 */  j          .L8003F1EC
    /* 2F94C 8003F14C 21808200 */   addu      $s0, $a0, $v0
  .L8003F150:
    /* 2F950 8003F150 E871010C */  jal        func_8005C7A0
    /* 2F954 8003F154 04000424 */   addiu     $a0, $zero, 0x4
    /* 2F958 8003F158 20000624 */  addiu      $a2, $zero, 0x20
    /* 2F95C 8003F15C 80004224 */  addiu      $v0, $v0, 0x80
    /* 2F960 8003F160 AA034492 */  lbu        $a0, 0x3AA($s2)
    /* 2F964 8003F164 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2F968 8003F168 21208200 */  addu       $a0, $a0, $v0
    /* 2F96C 8003F16C F36D010C */  jal        func_8005B7CC
    /* 2F970 8003F170 FF008430 */   andi      $a0, $a0, 0xFF
    /* 2F974 8003F174 21984000 */  addu       $s3, $v0, $zero
    /* 2F978 8003F178 AE79000C */  jal        func_8001E6B8
    /* 2F97C 8003F17C 10000424 */   addiu     $a0, $zero, 0x10
    /* 2F980 8003F180 B9032392 */  lbu        $v1, 0x3B9($s1)
    /* 2F984 8003F184 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 2F988 8003F188 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 2F98C 8003F18C 19006200 */  multu      $v1, $v0
    /* 2F990 8003F190 10400000 */  mfhi       $t0
    /* 2F994 8003F194 C2200800 */  srl        $a0, $t0, 3
    /* 2F998 8003F198 AE79000C */  jal        func_8001E6B8
    /* 2F99C 8003F19C FF008430 */   andi      $a0, $a0, 0xFF
    /* 2F9A0 8003F1A0 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 2F9A4 8003F1A4 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 2F9A8 8003F1A8 A4032692 */  lbu        $a2, 0x3A4($s1)
    /* 2F9AC 8003F1AC A4034590 */  lbu        $a1, 0x3A4($v0)
    /* 2F9B0 8003F1B0 A003248E */  lw         $a0, 0x3A0($s1)
    /* 2F9B4 8003F1B4 2310C500 */  subu       $v0, $a2, $a1
    /* 2F9B8 8003F1B8 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2F9BC 8003F1BC 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2F9C0 8003F1C0 04004014 */  bnez       $v0, .L8003F1D4
    /* 2F9C4 8003F1C4 18008300 */   mult      $a0, $v1
    /* 2F9C8 8003F1C8 2310A600 */  subu       $v0, $a1, $a2
    /* 2F9CC 8003F1CC FF004230 */  andi       $v0, $v0, 0xFF
    /* 2F9D0 8003F1D0 18008200 */  mult       $a0, $v0
  .L8003F1D4:
    /* 2F9D4 8003F1D4 12400000 */  mflo       $t0
    /* 2F9D8 8003F1D8 C2810800 */  srl        $s0, $t0, 7
    /* 2F9DC 8003F1DC 2900022A */  slti       $v0, $s0, 0x29
    /* 2F9E0 8003F1E0 03004010 */  beqz       $v0, .L8003F1F0
    /* 2F9E4 8003F1E4 6800022A */   slti      $v0, $s0, 0x68
    /* 2F9E8 8003F1E8 28001024 */  addiu      $s0, $zero, 0x28
  .L8003F1EC:
    /* 2F9EC 8003F1EC 6800022A */  slti       $v0, $s0, 0x68
  .L8003F1F0:
    /* 2F9F0 8003F1F0 02004014 */  bnez       $v0, .L8003F1FC
    /* 2F9F4 8003F1F4 00000000 */   nop
    /* 2F9F8 8003F1F8 68001024 */  addiu      $s0, $zero, 0x68
  .L8003F1FC:
    /* 2F9FC 8003F1FC AE79000C */  jal        func_8001E6B8
    /* 2FA00 8003F200 03000424 */   addiu     $a0, $zero, 0x3
    /* 2FA04 8003F204 21202002 */  addu       $a0, $s1, $zero
    /* 2FA08 8003F208 FF006532 */  andi       $a1, $s3, 0xFF
    /* 2FA0C 8003F20C 21300002 */  addu       $a2, $s0, $zero
    /* 2FA10 8003F210 3C2C010C */  jal        func_8004B0F0
    /* 2FA14 8003F214 21384000 */   addu      $a3, $v0, $zero
    /* 2FA18 8003F218 99032292 */  lbu        $v0, 0x399($s1)
    /* 2FA1C 8003F21C 21204002 */  addu       $a0, $s2, $zero
    /* 2FA20 8003F220 01004238 */  xori       $v0, $v0, 0x1
    /* 2FA24 8003F224 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2FA28 8003F228 644B010C */  jal        func_80052D90
    /* 2FA2C 8003F22C 1C0382A6 */   sh        $v0, (0x1F80031C & 0xFFFF)($s4)
    /* 2FA30 8003F230 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2FA34 8003F234 17004014 */  bnez       $v0, .L8003F294
    /* 2FA38 8003F238 00000000 */   nop
    /* 2FA3C 8003F23C D10340A2 */  sb         $zero, 0x3D1($s2)
    /* 2FA40 8003F240 F402848E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2FA44 8003F244 02004286 */  lh         $v0, 0x2($s2)
    /* 2FA48 8003F248 02008384 */  lh         $v1, 0x2($a0)
    /* 2FA4C 8003F24C 00000000 */  nop
    /* 2FA50 8003F250 23104300 */  subu       $v0, $v0, $v1
    /* 2FA54 8003F254 18004200 */  mult       $v0, $v0
    /* 2FA58 8003F258 06004286 */  lh         $v0, 0x6($s2)
    /* 2FA5C 8003F25C 06008384 */  lh         $v1, 0x6($a0)
    /* 2FA60 8003F260 12280000 */  mflo       $a1
    /* 2FA64 8003F264 23104300 */  subu       $v0, $v0, $v1
    /* 2FA68 8003F268 00000000 */  nop
    /* 2FA6C 8003F26C 18004200 */  mult       $v0, $v0
    /* 2FA70 8003F270 FFC30234 */  ori        $v0, $zero, 0xC3FF
    /* 2FA74 8003F274 12180000 */  mflo       $v1
    /* 2FA78 8003F278 2118A300 */  addu       $v1, $a1, $v1
    /* 2FA7C 8003F27C 2A104300 */  slt        $v0, $v0, $v1
    /* 2FA80 8003F280 02004014 */  bnez       $v0, .L8003F28C
    /* 2FA84 8003F284 18000224 */   addiu     $v0, $zero, 0x18
    /* 2FA88 8003F288 10000224 */  addiu      $v0, $zero, 0x10
  .L8003F28C:
    /* 2FA8C 8003F28C 960342A2 */  sb         $v0, 0x396($s2)
    /* 2FA90 8003F290 970340A2 */  sb         $zero, 0x397($s2)
  .L8003F294:
    /* 2FA94 8003F294 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2FA98 8003F298 2000B48F */  lw         $s4, 0x20($sp)
    /* 2FA9C 8003F29C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2FAA0 8003F2A0 1800B28F */  lw         $s2, 0x18($sp)
    /* 2FAA4 8003F2A4 1400B18F */  lw         $s1, 0x14($sp)
    /* 2FAA8 8003F2A8 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FAAC 8003F2AC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2FAB0 8003F2B0 0800E003 */  jr         $ra
    /* 2FAB4 8003F2B4 00000000 */   nop
endlabel func_8003F0D0
