nonmatching func_800A98E0, 0x7C

glabel func_800A98E0
    /* 9A0E0 800A98E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9A0E4 800A98E4 0F80033C */  lui        $v1, %hi(D_800F0EE8)
    /* 9A0E8 800A98E8 E80E6324 */  addiu      $v1, $v1, %lo(D_800F0EE8)
    /* 9A0EC 800A98EC 8000023C */  lui        $v0, (0x800000 >> 16)
    /* 9A0F0 800A98F0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9A0F4 800A98F4 160084A7 */  sh         $a0, %gp_rel(D_800E6AA2)($gp)
    /* 9A0F8 800A98F8 000062AC */  sw         $v0, 0x0($v1)
    /* 9A0FC 800A98FC 03000234 */  ori        $v0, $zero, 0x3
    /* 9A100 800A9900 00240400 */  sll        $a0, $a0, 16
    /* 9A104 800A9904 0F80013C */  lui        $at, %hi(D_800F0EEC)
    /* 9A108 800A9908 EC0E22AC */  sw         $v0, %lo(D_800F0EEC)($at)
    /* 9A10C 800A990C 0D80023C */  lui        $v0, %hi(D_800CE738)
    /* 9A110 800A9910 38E74224 */  addiu      $v0, $v0, %lo(D_800CE738)
    /* 9A114 800A9914 C3230400 */  sra        $a0, $a0, 15
    /* 9A118 800A9918 21208200 */  addu       $a0, $a0, $v0
    /* 9A11C 800A991C 00008294 */  lhu        $v0, 0x0($a0)
    /* 9A120 800A9920 00000000 */  nop
    /* 9A124 800A9924 C0110200 */  sll        $v0, $v0, 7
    /* 9A128 800A9928 0F80013C */  lui        $at, %hi(D_800F0EF0)
    /* 9A12C 800A992C F00E22A4 */  sh         $v0, %lo(D_800F0EF0)($at)
    /* 9A130 800A9930 00008294 */  lhu        $v0, 0x0($a0)
    /* 9A134 800A9934 00000000 */  nop
    /* 9A138 800A9938 C0110200 */  sll        $v0, $v0, 7
    /* 9A13C 800A993C 0F80013C */  lui        $at, %hi(D_800F0EF2)
    /* 9A140 800A9940 F20E22A4 */  sh         $v0, %lo(D_800F0EF2)($at)
    /* 9A144 800A9944 2A11030C */  jal        func_800C44A8
    /* 9A148 800A9948 21206000 */   addu      $a0, $v1, $zero
    /* 9A14C 800A994C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9A150 800A9950 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9A154 800A9954 0800E003 */  jr         $ra
    /* 9A158 800A9958 00000000 */   nop
endlabel func_800A98E0
