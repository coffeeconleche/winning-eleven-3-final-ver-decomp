nonmatching func_801A2F90, 0x164

glabel func_801A2F90
    /* 1A018 801A2F90 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 1A01C 801A2F94 21408000 */  addu       $t0, $a0, $zero
    /* 1A020 801A2F98 4400B5AF */  sw         $s5, 0x44($sp)
    /* 1A024 801A2F9C 21A8A000 */  addu       $s5, $a1, $zero
    /* 1A028 801A2FA0 1E80033C */  lui        $v1, %hi(D_801D8B17)
    /* 1A02C 801A2FA4 178B6390 */  lbu        $v1, %lo(D_801D8B17)($v1)
    /* 1A030 801A2FA8 1080043C */  lui        $a0, %hi(D_800FF748)
    /* 1A034 801A2FAC 48F78424 */  addiu      $a0, $a0, %lo(D_800FF748)
    /* 1A038 801A2FB0 4800BFAF */  sw         $ra, 0x48($sp)
    /* 1A03C 801A2FB4 4000B4AF */  sw         $s4, 0x40($sp)
    /* 1A040 801A2FB8 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 1A044 801A2FBC 3800B2AF */  sw         $s2, 0x38($sp)
    /* 1A048 801A2FC0 3400B1AF */  sw         $s1, 0x34($sp)
    /* 1A04C 801A2FC4 06006010 */  beqz       $v1, .L801A2FE0
    /* 1A050 801A2FC8 3000B0AF */   sw        $s0, 0x30($sp)
    /* 1A054 801A2FCC 01000224 */  addiu      $v0, $zero, 0x1
    /* 1A058 801A2FD0 14006210 */  beq        $v1, $v0, .L801A3024
    /* 1A05C 801A2FD4 03000424 */   addiu     $a0, $zero, 0x3
    /* 1A060 801A2FD8 0E8C0608 */  j          .L801A3038
    /* 1A064 801A2FDC 00000000 */   nop
  .L801A2FE0:
    /* 1A068 801A2FE0 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 1A06C 801A2FE4 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 1A070 801A2FE8 00000000 */  nop
    /* 1A074 801A2FEC 21104400 */  addu       $v0, $v0, $a0
    /* 1A078 801A2FF0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A07C 801A2FF4 21084100 */  addu       $at, $v0, $at
    /* 1A080 801A2FF8 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 1A084 801A2FFC 00000000 */  nop
    /* 1A088 801A3000 C0100300 */  sll        $v0, $v1, 3
    /* 1A08C 801A3004 21104300 */  addu       $v0, $v0, $v1
    /* 1A090 801A3008 80100200 */  sll        $v0, $v0, 2
    /* 1A094 801A300C 21104400 */  addu       $v0, $v0, $a0
    /* 1A098 801A3010 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A09C 801A3014 21084100 */  addu       $at, $v0, $at
    /* 1A0A0 801A3018 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 1A0A4 801A301C 0B8C0608 */  j          .L801A302C
    /* 1A0A8 801A3020 00000000 */   nop
  .L801A3024:
    /* 1A0AC 801A3024 801F023C */  lui        $v0, (0x1F8002DD >> 16)
    /* 1A0B0 801A3028 DD024290 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($v0)
  .L801A302C:
    /* 1A0B4 801A302C 1D80013C */  lui        $at, %hi(D_801D1F7D)
    /* 1A0B8 801A3030 7D1F22A0 */  sb         $v0, %lo(D_801D1F7D)($at)
    /* 1A0BC 801A3034 03000424 */  addiu      $a0, $zero, 0x3
  .L801A3038:
    /* 1A0C0 801A3038 1D80053C */  lui        $a1, %hi(D_801D1F7C)
    /* 1A0C4 801A303C 7C1FA524 */  addiu      $a1, $a1, %lo(D_801D1F7C)
    /* 1A0C8 801A3040 6EFF0624 */  addiu      $a2, $zero, -0x92
    /* 1A0CC 801A3044 F6FF0724 */  addiu      $a3, $zero, -0xA
    /* 1A0D0 801A3048 60001424 */  addiu      $s4, $zero, 0x60
    /* 1A0D4 801A304C 03001324 */  addiu      $s3, $zero, 0x3
    /* 1A0D8 801A3050 01001124 */  addiu      $s1, $zero, 0x1
    /* 1A0DC 801A3054 02001224 */  addiu      $s2, $zero, 0x2
    /* 1A0E0 801A3058 FF000231 */  andi       $v0, $t0, 0xFF
    /* 1A0E4 801A305C 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 1A0E8 801A3060 801F023C */  lui        $v0, (0x1F8002DE >> 16)
    /* 1A0EC 801A3064 DE024290 */  lbu        $v0, (0x1F8002DE & 0xFFFF)($v0)
    /* 1A0F0 801A3068 1D80103C */  lui        $s0, %hi(D_801D1F81)
    /* 1A0F4 801A306C 811F1026 */  addiu      $s0, $s0, %lo(D_801D1F81)
    /* 1A0F8 801A3070 1000B4AF */  sw         $s4, 0x10($sp)
    /* 1A0FC 801A3074 1400B3AF */  sw         $s3, 0x14($sp)
    /* 1A100 801A3078 1800B1AF */  sw         $s1, 0x18($sp)
    /* 1A104 801A307C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 1A108 801A3080 2000A0AF */  sw         $zero, 0x20($sp)
    /* 1A10C 801A3084 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1A110 801A3088 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1A114 801A308C B850060C */  jal        func_801942E0
    /* 1A118 801A3090 000002A2 */   sb        $v0, 0x0($s0)
    /* 1A11C 801A3094 04000424 */  addiu      $a0, $zero, 0x4
    /* 1A120 801A3098 FFFF0526 */  addiu      $a1, $s0, -0x1
    /* 1A124 801A309C 32000624 */  addiu      $a2, $zero, 0x32
    /* 1A128 801A30A0 F6FF0724 */  addiu      $a3, $zero, -0xA
    /* 1A12C 801A30A4 FF00A232 */  andi       $v0, $s5, 0xFF
    /* 1A130 801A30A8 1000B4AF */  sw         $s4, 0x10($sp)
    /* 1A134 801A30AC 1400B3AF */  sw         $s3, 0x14($sp)
    /* 1A138 801A30B0 1800B1AF */  sw         $s1, 0x18($sp)
    /* 1A13C 801A30B4 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 1A140 801A30B8 2000A0AF */  sw         $zero, 0x20($sp)
    /* 1A144 801A30BC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1A148 801A30C0 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1A14C 801A30C4 B850060C */  jal        func_801942E0
    /* 1A150 801A30C8 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 1A154 801A30CC 4800BF8F */  lw         $ra, 0x48($sp)
    /* 1A158 801A30D0 4400B58F */  lw         $s5, 0x44($sp)
    /* 1A15C 801A30D4 4000B48F */  lw         $s4, 0x40($sp)
    /* 1A160 801A30D8 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 1A164 801A30DC 3800B28F */  lw         $s2, 0x38($sp)
    /* 1A168 801A30E0 3400B18F */  lw         $s1, 0x34($sp)
    /* 1A16C 801A30E4 3000B08F */  lw         $s0, 0x30($sp)
    /* 1A170 801A30E8 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 1A174 801A30EC 0800E003 */  jr         $ra
    /* 1A178 801A30F0 00000000 */   nop
endlabel func_801A2F90
