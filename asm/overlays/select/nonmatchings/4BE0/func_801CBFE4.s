nonmatching func_801CBFE4, 0x158

glabel func_801CBFE4
    /* 4306C 801CBFE4 1D80023C */  lui        $v0, %hi(D_801D59A4)
    /* 43070 801CBFE8 A4594280 */  lb         $v0, %lo(D_801D59A4)($v0)
    /* 43074 801CBFEC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 43078 801CBFF0 3400BFAF */  sw         $ra, 0x34($sp)
    /* 4307C 801CBFF4 3000B2AF */  sw         $s2, 0x30($sp)
    /* 43080 801CBFF8 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 43084 801CBFFC 14004228 */  slti       $v0, $v0, 0x14
    /* 43088 801CC000 04004014 */  bnez       $v0, .L801CC014
    /* 4308C 801CC004 2800B0AF */   sw        $s0, 0x28($sp)
    /* 43090 801CC008 12000224 */  addiu      $v0, $zero, 0x12
    /* 43094 801CC00C 1D80013C */  lui        $at, %hi(D_801D59A4)
    /* 43098 801CC010 A45922A0 */  sb         $v0, %lo(D_801D59A4)($at)
  .L801CC014:
    /* 4309C 801CC014 1D80023C */  lui        $v0, %hi(D_801D59A4)
    /* 430A0 801CC018 A4594280 */  lb         $v0, %lo(D_801D59A4)($v0)
    /* 430A4 801CC01C 00000000 */  nop
    /* 430A8 801CC020 05004104 */  bgez       $v0, .L801CC038
    /* 430AC 801CC024 00000000 */   nop
    /* 430B0 801CC028 1D80013C */  lui        $at, %hi(D_801D59A4)
    /* 430B4 801CC02C A45920A0 */  sb         $zero, %lo(D_801D59A4)($at)
    /* 430B8 801CC030 1D80023C */  lui        $v0, %hi(D_801D59A4)
    /* 430BC 801CC034 A4594280 */  lb         $v0, %lo(D_801D59A4)($v0)
  .L801CC038:
    /* 430C0 801CC038 00000000 */  nop
    /* 430C4 801CC03C 38004010 */  beqz       $v0, .L801CC120
    /* 430C8 801CC040 21200000 */   addu      $a0, $zero, $zero
    /* 430CC 801CC044 56FF0524 */  addiu      $a1, $zero, -0xAA
    /* 430D0 801CC048 21300000 */  addu       $a2, $zero, $zero
    /* 430D4 801CC04C 54010724 */  addiu      $a3, $zero, 0x154
    /* 430D8 801CC050 FF001024 */  addiu      $s0, $zero, 0xFF
    /* 430DC 801CC054 03001124 */  addiu      $s1, $zero, 0x3
    /* 430E0 801CC058 1000A0AF */  sw         $zero, 0x10($sp)
    /* 430E4 801CC05C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 430E8 801CC060 1800B0AF */  sw         $s0, 0x18($sp)
    /* 430EC 801CC064 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 430F0 801CC068 3E59060C */  jal        func_801964F8
    /* 430F4 801CC06C 2000B1AF */   sw        $s1, 0x20($sp)
    /* 430F8 801CC070 21200000 */  addu       $a0, $zero, $zero
    /* 430FC 801CC074 21280000 */  addu       $a1, $zero, $zero
    /* 43100 801CC078 A0FF0624 */  addiu      $a2, $zero, -0x60
    /* 43104 801CC07C 21380000 */  addu       $a3, $zero, $zero
    /* 43108 801CC080 C0001224 */  addiu      $s2, $zero, 0xC0
    /* 4310C 801CC084 1000B2AF */  sw         $s2, 0x10($sp)
    /* 43110 801CC088 1400B0AF */  sw         $s0, 0x14($sp)
    /* 43114 801CC08C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 43118 801CC090 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 4311C 801CC094 3E59060C */  jal        func_801964F8
    /* 43120 801CC098 2000B1AF */   sw        $s1, 0x20($sp)
    /* 43124 801CC09C 21200000 */  addu       $a0, $zero, $zero
    /* 43128 801CC0A0 56FF0524 */  addiu      $a1, $zero, -0xAA
    /* 4312C 801CC0A4 A0FF0624 */  addiu      $a2, $zero, -0x60
    /* 43130 801CC0A8 54010724 */  addiu      $a3, $zero, 0x154
    /* 43134 801CC0AC 1000B2AF */  sw         $s2, 0x10($sp)
    /* 43138 801CC0B0 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4313C 801CC0B4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 43140 801CC0B8 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 43144 801CC0BC 6759060C */  jal        func_8019659C
    /* 43148 801CC0C0 2000B1AF */   sw        $s1, 0x20($sp)
    /* 4314C 801CC0C4 21200000 */  addu       $a0, $zero, $zero
    /* 43150 801CC0C8 55FF0524 */  addiu      $a1, $zero, -0xAB
    /* 43154 801CC0CC 9FFF0624 */  addiu      $a2, $zero, -0x61
    /* 43158 801CC0D0 56010724 */  addiu      $a3, $zero, 0x156
    /* 4315C 801CC0D4 C2000224 */  addiu      $v0, $zero, 0xC2
    /* 43160 801CC0D8 04001024 */  addiu      $s0, $zero, 0x4
    /* 43164 801CC0DC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 43168 801CC0E0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 4316C 801CC0E4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 43170 801CC0E8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 43174 801CC0EC 6759060C */  jal        func_8019659C
    /* 43178 801CC0F0 2000B0AF */   sw        $s0, 0x20($sp)
    /* 4317C 801CC0F4 21200000 */  addu       $a0, $zero, $zero
    /* 43180 801CC0F8 57FF0524 */  addiu      $a1, $zero, -0xA9
    /* 43184 801CC0FC A1FF0624 */  addiu      $a2, $zero, -0x5F
    /* 43188 801CC100 52010724 */  addiu      $a3, $zero, 0x152
    /* 4318C 801CC104 BE000224 */  addiu      $v0, $zero, 0xBE
    /* 43190 801CC108 1000A2AF */  sw         $v0, 0x10($sp)
    /* 43194 801CC10C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 43198 801CC110 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4319C 801CC114 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 431A0 801CC118 6759060C */  jal        func_8019659C
    /* 431A4 801CC11C 2000B0AF */   sw        $s0, 0x20($sp)
  .L801CC120:
    /* 431A8 801CC120 3400BF8F */  lw         $ra, 0x34($sp)
    /* 431AC 801CC124 3000B28F */  lw         $s2, 0x30($sp)
    /* 431B0 801CC128 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 431B4 801CC12C 2800B08F */  lw         $s0, 0x28($sp)
    /* 431B8 801CC130 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 431BC 801CC134 0800E003 */  jr         $ra
    /* 431C0 801CC138 00000000 */   nop
endlabel func_801CBFE4
