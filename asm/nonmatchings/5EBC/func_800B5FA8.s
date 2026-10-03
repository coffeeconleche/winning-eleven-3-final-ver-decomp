nonmatching func_800B5FA8, 0x3D0

glabel func_800B5FA8
    /* A67A8 800B5FA8 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* A67AC 800B5FAC B000B4AF */  sw         $s4, 0xB0($sp)
    /* A67B0 800B5FB0 21A08000 */  addu       $s4, $a0, $zero
    /* A67B4 800B5FB4 B400B5AF */  sw         $s5, 0xB4($sp)
    /* A67B8 800B5FB8 1080153C */  lui        $s5, %hi(D_800FF6B0)
    /* A67BC 800B5FBC B0F6B526 */  addiu      $s5, $s5, %lo(D_800FF6B0)
    /* A67C0 800B5FC0 B800BFAF */  sw         $ra, 0xB8($sp)
    /* A67C4 800B5FC4 AC00B3AF */  sw         $s3, 0xAC($sp)
    /* A67C8 800B5FC8 A800B2AF */  sw         $s2, 0xA8($sp)
    /* A67CC 800B5FCC A400B1AF */  sw         $s1, 0xA4($sp)
    /* A67D0 800B5FD0 A000B0AF */  sw         $s0, 0xA0($sp)
    /* A67D4 800B5FD4 1080053C */  lui        $a1, %hi(D_800FF708)
    /* A67D8 800B5FD8 08F7A524 */  addiu      $a1, $a1, %lo(D_800FF708)
    /* A67DC 800B5FDC 0000A28C */  lw         $v0, 0x0($a1)
    /* A67E0 800B5FE0 0400A38C */  lw         $v1, 0x4($a1)
    /* A67E4 800B5FE4 0800A48C */  lw         $a0, 0x8($a1)
    /* A67E8 800B5FE8 0000A2AE */  sw         $v0, 0x0($s5)
    /* A67EC 800B5FEC 0400A3AE */  sw         $v1, 0x4($s5)
    /* A67F0 800B5FF0 0800A4AE */  sw         $a0, 0x8($s5)
    /* A67F4 800B5FF4 0C00A28C */  lw         $v0, 0xC($a1)
    /* A67F8 800B5FF8 1000A38C */  lw         $v1, 0x10($a1)
    /* A67FC 800B5FFC 1400A48C */  lw         $a0, 0x14($a1)
    /* A6800 800B6000 0C00A2AE */  sw         $v0, 0xC($s5)
    /* A6804 800B6004 1000A3AE */  sw         $v1, 0x10($s5)
    /* A6808 800B6008 1400A4AE */  sw         $a0, 0x14($s5)
    /* A680C 800B600C 1800A28C */  lw         $v0, 0x18($a1)
    /* A6810 800B6010 1C00A38C */  lw         $v1, 0x1C($a1)
    /* A6814 800B6014 1800A2AE */  sw         $v0, 0x18($s5)
    /* A6818 800B6018 1C00A3AE */  sw         $v1, 0x1C($s5)
    /* A681C 800B601C 1800858E */  lw         $a1, 0x18($s4)
    /* A6820 800B6020 2120A002 */  addu       $a0, $s5, $zero
    /* A6824 800B6024 62D9020C */  jal        func_800B6588
    /* A6828 800B6028 23280500 */   negu      $a1, $a1
    /* A682C 800B602C 21208002 */  addu       $a0, $s4, $zero
    /* A6830 800B6030 DED8020C */  jal        func_800B6378
    /* A6834 800B6034 1000A527 */   addiu     $a1, $sp, 0x10
    /* A6838 800B6038 1C00A28F */  lw         $v0, 0x1C($sp)
    /* A683C 800B603C 1000A38F */  lw         $v1, 0x10($sp)
    /* A6840 800B6040 00000000 */  nop
    /* A6844 800B6044 23104300 */  subu       $v0, $v0, $v1
    /* A6848 800B6048 18004200 */  mult       $v0, $v0
    /* A684C 800B604C 2000A28F */  lw         $v0, 0x20($sp)
    /* A6850 800B6050 1400A38F */  lw         $v1, 0x14($sp)
    /* A6854 800B6054 12280000 */  mflo       $a1
    /* A6858 800B6058 23104300 */  subu       $v0, $v0, $v1
    /* A685C 800B605C 00000000 */  nop
    /* A6860 800B6060 18004200 */  mult       $v0, $v0
    /* A6864 800B6064 1800A38F */  lw         $v1, 0x18($sp)
    /* A6868 800B6068 2400A28F */  lw         $v0, 0x24($sp)
    /* A686C 800B606C 12200000 */  mflo       $a0
    /* A6870 800B6070 23104300 */  subu       $v0, $v0, $v1
    /* A6874 800B6074 00000000 */  nop
    /* A6878 800B6078 18004200 */  mult       $v0, $v0
    /* A687C 800B607C 2120A400 */  addu       $a0, $a1, $a0
    /* A6880 800B6080 12180000 */  mflo       $v1
    /* A6884 800B6084 4AC4020C */  jal        func_800B1128
    /* A6888 800B6088 21208300 */   addu      $a0, $a0, $v1
    /* A688C 800B608C 21904000 */  addu       $s2, $v0, $zero
    /* A6890 800B6090 B0004012 */  beqz       $s2, .L800B6354
    /* A6894 800B6094 01000224 */   addiu     $v0, $zero, 0x1
    /* A6898 800B6098 1400A38F */  lw         $v1, 0x14($sp)
    /* A689C 800B609C 2000A28F */  lw         $v0, 0x20($sp)
    /* A68A0 800B60A0 00000000 */  nop
    /* A68A4 800B60A4 23886200 */  subu       $s1, $v1, $v0
    /* A68A8 800B60A8 00831100 */  sll        $s0, $s1, 12
    /* A68AC 800B60AC 1A001202 */  div        $zero, $s0, $s2
    /* A68B0 800B60B0 02004016 */  bnez       $s2, .L800B60BC
    /* A68B4 800B60B4 00000000 */   nop
    /* A68B8 800B60B8 0D000700 */  break      7
  .L800B60BC:
    /* A68BC 800B60BC FFFF0124 */  addiu      $at, $zero, -0x1
    /* A68C0 800B60C0 04004116 */  bne        $s2, $at, .L800B60D4
    /* A68C4 800B60C4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A68C8 800B60C8 02000116 */  bne        $s0, $at, .L800B60D4
    /* A68CC 800B60CC 00000000 */   nop
    /* A68D0 800B60D0 0D000600 */  break      6
  .L800B60D4:
    /* A68D4 800B60D4 12800000 */  mflo       $s0
    /* A68D8 800B60D8 1C00A28F */  lw         $v0, 0x1C($sp)
    /* A68DC 800B60DC 1000A38F */  lw         $v1, 0x10($sp)
    /* A68E0 800B60E0 00000000 */  nop
    /* A68E4 800B60E4 23104300 */  subu       $v0, $v0, $v1
    /* A68E8 800B60E8 18004200 */  mult       $v0, $v0
    /* A68EC 800B60EC 2400A28F */  lw         $v0, 0x24($sp)
    /* A68F0 800B60F0 1800A38F */  lw         $v1, 0x18($sp)
    /* A68F4 800B60F4 12200000 */  mflo       $a0
    /* A68F8 800B60F8 23104300 */  subu       $v0, $v0, $v1
    /* A68FC 800B60FC 00000000 */  nop
    /* A6900 800B6100 18004200 */  mult       $v0, $v0
    /* A6904 800B6104 12180000 */  mflo       $v1
    /* A6908 800B6108 21208300 */  addu       $a0, $a0, $v1
    /* A690C 800B610C 4AC4020C */  jal        func_800B1128
    /* A6910 800B6110 23801000 */   negu      $s0, $s0
    /* A6914 800B6114 21884000 */  addu       $s1, $v0, $zero
    /* A6918 800B6118 00331100 */  sll        $a2, $s1, 12
    /* A691C 800B611C 1A00D200 */  div        $zero, $a2, $s2
    /* A6920 800B6120 02004016 */  bnez       $s2, .L800B612C
    /* A6924 800B6124 00000000 */   nop
    /* A6928 800B6128 0D000700 */  break      7
  .L800B612C:
    /* A692C 800B612C FFFF0124 */  addiu      $at, $zero, -0x1
    /* A6930 800B6130 04004116 */  bne        $s2, $at, .L800B6144
    /* A6934 800B6134 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A6938 800B6138 0200C114 */  bne        $a2, $at, .L800B6144
    /* A693C 800B613C 00000000 */   nop
    /* A6940 800B6140 0D000600 */  break      6
  .L800B6144:
    /* A6944 800B6144 12300000 */  mflo       $a2
    /* A6948 800B6148 3000B327 */  addiu      $s3, $sp, 0x30
    /* A694C 800B614C 21206002 */  addu       $a0, $s3, $zero
    /* A6950 800B6150 00841000 */  sll        $s0, $s0, 16
    /* A6954 800B6154 032C1000 */  sra        $a1, $s0, 16
    /* A6958 800B6158 78000724 */  addiu      $a3, $zero, 0x78
    /* A695C 800B615C 00340600 */  sll        $a2, $a2, 16
    /* A6960 800B6160 92D7020C */  jal        func_800B5E48
    /* A6964 800B6164 03340600 */   sra       $a2, $a2, 16
    /* A6968 800B6168 2120A002 */  addu       $a0, $s5, $zero
    /* A696C 800B616C 3ED4020C */  jal        func_800B50F8
    /* A6970 800B6170 21286002 */   addu      $a1, $s3, $zero
    /* A6974 800B6174 2C002012 */  beqz       $s1, .L800B6228
    /* A6978 800B6178 21902002 */   addu      $s2, $s1, $zero
    /* A697C 800B617C 1C00A38F */  lw         $v1, 0x1C($sp)
    /* A6980 800B6180 1000A28F */  lw         $v0, 0x10($sp)
    /* A6984 800B6184 00000000 */  nop
    /* A6988 800B6188 23886200 */  subu       $s1, $v1, $v0
    /* A698C 800B618C 002B1100 */  sll        $a1, $s1, 12
    /* A6990 800B6190 1A00B200 */  div        $zero, $a1, $s2
    /* A6994 800B6194 02004016 */  bnez       $s2, .L800B61A0
    /* A6998 800B6198 00000000 */   nop
    /* A699C 800B619C 0D000700 */  break      7
  .L800B61A0:
    /* A69A0 800B61A0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* A69A4 800B61A4 04004116 */  bne        $s2, $at, .L800B61B8
    /* A69A8 800B61A8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A69AC 800B61AC 0200A114 */  bne        $a1, $at, .L800B61B8
    /* A69B0 800B61B0 00000000 */   nop
    /* A69B4 800B61B4 0D000600 */  break      6
  .L800B61B8:
    /* A69B8 800B61B8 12280000 */  mflo       $a1
    /* A69BC 800B61BC 2400A38F */  lw         $v1, 0x24($sp)
    /* A69C0 800B61C0 1800A28F */  lw         $v0, 0x18($sp)
    /* A69C4 800B61C4 00000000 */  nop
    /* A69C8 800B61C8 23886200 */  subu       $s1, $v1, $v0
    /* A69CC 800B61CC 00331100 */  sll        $a2, $s1, 12
    /* A69D0 800B61D0 1A00D200 */  div        $zero, $a2, $s2
    /* A69D4 800B61D4 02004016 */  bnez       $s2, .L800B61E0
    /* A69D8 800B61D8 00000000 */   nop
    /* A69DC 800B61DC 0D000700 */  break      7
  .L800B61E0:
    /* A69E0 800B61E0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* A69E4 800B61E4 04004116 */  bne        $s2, $at, .L800B61F8
    /* A69E8 800B61E8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A69EC 800B61EC 0200C114 */  bne        $a2, $at, .L800B61F8
    /* A69F0 800B61F0 00000000 */   nop
    /* A69F4 800B61F4 0D000600 */  break      6
  .L800B61F8:
    /* A69F8 800B61F8 12300000 */  mflo       $a2
    /* A69FC 800B61FC 21206002 */  addu       $a0, $s3, $zero
    /* A6A00 800B6200 79000724 */  addiu      $a3, $zero, 0x79
    /* A6A04 800B6204 23280500 */  negu       $a1, $a1
    /* A6A08 800B6208 002C0500 */  sll        $a1, $a1, 16
    /* A6A0C 800B620C 032C0500 */  sra        $a1, $a1, 16
    /* A6A10 800B6210 00340600 */  sll        $a2, $a2, 16
    /* A6A14 800B6214 92D7020C */  jal        func_800B5E48
    /* A6A18 800B6218 03340600 */   sra       $a2, $a2, 16
    /* A6A1C 800B621C 2120A002 */  addu       $a0, $s5, $zero
    /* A6A20 800B6220 3ED4020C */  jal        func_800B50F8
    /* A6A24 800B6224 21286002 */   addu      $a1, $s3, $zero
  .L800B6228:
    /* A6A28 800B6228 2120A002 */  addu       $a0, $s5, $zero
    /* A6A2C 800B622C 0000828E */  lw         $v0, 0x0($s4)
    /* A6A30 800B6230 9000B127 */  addiu      $s1, $sp, 0x90
    /* A6A34 800B6234 23100200 */  negu       $v0, $v0
    /* A6A38 800B6238 9000A2AF */  sw         $v0, 0x90($sp)
    /* A6A3C 800B623C 0400828E */  lw         $v0, 0x4($s4)
    /* A6A40 800B6240 21282002 */  addu       $a1, $s1, $zero
    /* A6A44 800B6244 23100200 */  negu       $v0, $v0
    /* A6A48 800B6248 9400A2AF */  sw         $v0, 0x94($sp)
    /* A6A4C 800B624C 0800828E */  lw         $v0, 0x8($s4)
    /* A6A50 800B6250 1400A626 */  addiu      $a2, $s5, 0x14
    /* A6A54 800B6254 23100200 */  negu       $v0, $v0
    /* A6A58 800B6258 92D3020C */  jal        func_800B4E48
    /* A6A5C 800B625C 9800A2AF */   sw        $v0, 0x98($sp)
    /* A6A60 800B6260 1C00848E */  lw         $a0, 0x1C($s4)
    /* A6A64 800B6264 00000000 */  nop
    /* A6A68 800B6268 27008010 */  beqz       $a0, .L800B6308
    /* A6A6C 800B626C 00000000 */   nop
    /* A6A70 800B6270 EED9020C */  jal        func_800B67B8
    /* A6A74 800B6274 21286002 */   addu      $a1, $s3, $zero
    /* A6A78 800B6278 21206002 */  addu       $a0, $s3, $zero
    /* A6A7C 800B627C 5000B027 */  addiu      $s0, $sp, 0x50
    /* A6A80 800B6280 52D9020C */  jal        func_800B6548
    /* A6A84 800B6284 21280002 */   addu      $a1, $s0, $zero
    /* A6A88 800B6288 21200002 */  addu       $a0, $s0, $zero
    /* A6A8C 800B628C 4400A527 */  addiu      $a1, $sp, 0x44
    /* A6A90 800B6290 92D3020C */  jal        func_800B4E48
    /* A6A94 800B6294 21302002 */   addu      $a2, $s1, $zero
    /* A6A98 800B6298 2120A002 */  addu       $a0, $s5, $zero
    /* A6A9C 800B629C 21280002 */  addu       $a1, $s0, $zero
    /* A6AA0 800B62A0 9000A28F */  lw         $v0, 0x90($sp)
    /* A6AA4 800B62A4 9800A38F */  lw         $v1, 0x98($sp)
    /* A6AA8 800B62A8 23100200 */  negu       $v0, $v0
    /* A6AAC 800B62AC 6400A2AF */  sw         $v0, 0x64($sp)
    /* A6AB0 800B62B0 9400A28F */  lw         $v0, 0x94($sp)
    /* A6AB4 800B62B4 23180300 */  negu       $v1, $v1
    /* A6AB8 800B62B8 6C00A3AF */  sw         $v1, 0x6C($sp)
    /* A6ABC 800B62BC 23100200 */  negu       $v0, $v0
    /* A6AC0 800B62C0 E5D2020C */  jal        func_800B4B94
    /* A6AC4 800B62C4 6800A2AF */   sw        $v0, 0x68($sp)
    /* A6AC8 800B62C8 5000A28F */  lw         $v0, 0x50($sp)
    /* A6ACC 800B62CC 5400A38F */  lw         $v1, 0x54($sp)
    /* A6AD0 800B62D0 5800A48F */  lw         $a0, 0x58($sp)
    /* A6AD4 800B62D4 5C00A58F */  lw         $a1, 0x5C($sp)
    /* A6AD8 800B62D8 0000A2AE */  sw         $v0, 0x0($s5)
    /* A6ADC 800B62DC 0400A3AE */  sw         $v1, 0x4($s5)
    /* A6AE0 800B62E0 0800A4AE */  sw         $a0, 0x8($s5)
    /* A6AE4 800B62E4 0C00A5AE */  sw         $a1, 0xC($s5)
    /* A6AE8 800B62E8 6000A28F */  lw         $v0, 0x60($sp)
    /* A6AEC 800B62EC 6400A38F */  lw         $v1, 0x64($sp)
    /* A6AF0 800B62F0 6800A48F */  lw         $a0, 0x68($sp)
    /* A6AF4 800B62F4 6C00A58F */  lw         $a1, 0x6C($sp)
    /* A6AF8 800B62F8 1000A2AE */  sw         $v0, 0x10($s5)
    /* A6AFC 800B62FC 1400A3AE */  sw         $v1, 0x14($s5)
    /* A6B00 800B6300 1800A4AE */  sw         $a0, 0x18($s5)
    /* A6B04 800B6304 1C00A5AE */  sw         $a1, 0x1C($s5)
  .L800B6308:
    /* A6B08 800B6308 0F80053C */  lui        $a1, %hi(D_800EF8F8)
    /* A6B0C 800B630C F8F8A524 */  addiu      $a1, $a1, %lo(D_800EF8F8)
    /* A6B10 800B6310 0000A28E */  lw         $v0, 0x0($s5)
    /* A6B14 800B6314 0400A38E */  lw         $v1, 0x4($s5)
    /* A6B18 800B6318 0800A48E */  lw         $a0, 0x8($s5)
    /* A6B1C 800B631C 0000A2AC */  sw         $v0, 0x0($a1)
    /* A6B20 800B6320 0400A3AC */  sw         $v1, 0x4($a1)
    /* A6B24 800B6324 0800A4AC */  sw         $a0, 0x8($a1)
    /* A6B28 800B6328 0C00A28E */  lw         $v0, 0xC($s5)
    /* A6B2C 800B632C 1000A38E */  lw         $v1, 0x10($s5)
    /* A6B30 800B6330 1400A48E */  lw         $a0, 0x14($s5)
    /* A6B34 800B6334 0C00A2AC */  sw         $v0, 0xC($a1)
    /* A6B38 800B6338 1000A3AC */  sw         $v1, 0x10($a1)
    /* A6B3C 800B633C 1400A4AC */  sw         $a0, 0x14($a1)
    /* A6B40 800B6340 1800A28E */  lw         $v0, 0x18($s5)
    /* A6B44 800B6344 1C00A38E */  lw         $v1, 0x1C($s5)
    /* A6B48 800B6348 1800A2AC */  sw         $v0, 0x18($a1)
    /* A6B4C 800B634C 1C00A3AC */  sw         $v1, 0x1C($a1)
    /* A6B50 800B6350 21100000 */  addu       $v0, $zero, $zero
  .L800B6354:
    /* A6B54 800B6354 B800BF8F */  lw         $ra, 0xB8($sp)
    /* A6B58 800B6358 B400B58F */  lw         $s5, 0xB4($sp)
    /* A6B5C 800B635C B000B48F */  lw         $s4, 0xB0($sp)
    /* A6B60 800B6360 AC00B38F */  lw         $s3, 0xAC($sp)
    /* A6B64 800B6364 A800B28F */  lw         $s2, 0xA8($sp)
    /* A6B68 800B6368 A400B18F */  lw         $s1, 0xA4($sp)
    /* A6B6C 800B636C A000B08F */  lw         $s0, 0xA0($sp)
    /* A6B70 800B6370 0800E003 */  jr         $ra
    /* A6B74 800B6374 C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_800B5FA8
