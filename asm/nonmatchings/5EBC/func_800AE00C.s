nonmatching func_800AE00C, 0x104

glabel func_800AE00C
    /* 9E80C 800AE00C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9E810 800AE010 1800B0AF */  sw         $s0, 0x18($sp)
    /* 9E814 800AE014 21808000 */  addu       $s0, $a0, $zero
    /* 9E818 800AE018 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 9E81C 800AE01C 00000586 */  lh         $a1, 0x0($s0)
    /* 9E820 800AE020 02000686 */  lh         $a2, 0x2($s0)
    /* 9E824 800AE024 04000786 */  lh         $a3, 0x4($s0)
    /* 9E828 800AE028 06000386 */  lh         $v1, 0x6($s0)
    /* 9E82C 800AE02C 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9E830 800AE030 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9E834 800AE034 0180043C */  lui        $a0, %hi(D_80014D84)
    /* 9E838 800AE038 844D8424 */  addiu      $a0, $a0, %lo(D_80014D84)
    /* 9E83C 800AE03C 09F84000 */  jalr       $v0
    /* 9E840 800AE040 1000A3AF */   sw        $v1, 0x10($sp)
    /* 9E844 800AE044 08000586 */  lh         $a1, 0x8($s0)
    /* 9E848 800AE048 0A000686 */  lh         $a2, 0xA($s0)
    /* 9E84C 800AE04C 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9E850 800AE050 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9E854 800AE054 0180043C */  lui        $a0, %hi(D_80014D9C)
    /* 9E858 800AE058 09F84000 */  jalr       $v0
    /* 9E85C 800AE05C 9C4D8424 */   addiu     $a0, $a0, %lo(D_80014D9C)
    /* 9E860 800AE060 0C000586 */  lh         $a1, 0xC($s0)
    /* 9E864 800AE064 0E000686 */  lh         $a2, 0xE($s0)
    /* 9E868 800AE068 10000786 */  lh         $a3, 0x10($s0)
    /* 9E86C 800AE06C 12000386 */  lh         $v1, 0x12($s0)
    /* 9E870 800AE070 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9E874 800AE074 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9E878 800AE078 0180043C */  lui        $a0, %hi(D_80014DAC)
    /* 9E87C 800AE07C AC4D8424 */  addiu      $a0, $a0, %lo(D_80014DAC)
    /* 9E880 800AE080 09F84000 */  jalr       $v0
    /* 9E884 800AE084 1000A3AF */   sw        $v1, 0x10($sp)
    /* 9E888 800AE088 16000592 */  lbu        $a1, 0x16($s0)
    /* 9E88C 800AE08C 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9E890 800AE090 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9E894 800AE094 0180043C */  lui        $a0, %hi(D_80014DC4)
    /* 9E898 800AE098 09F84000 */  jalr       $v0
    /* 9E89C 800AE09C C44D8424 */   addiu     $a0, $a0, %lo(D_80014DC4)
    /* 9E8A0 800AE0A0 17000592 */  lbu        $a1, 0x17($s0)
    /* 9E8A4 800AE0A4 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9E8A8 800AE0A8 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9E8AC 800AE0AC 0180043C */  lui        $a0, %hi(D_80014DD0)
    /* 9E8B0 800AE0B0 09F84000 */  jalr       $v0
    /* 9E8B4 800AE0B4 D04D8424 */   addiu     $a0, $a0, %lo(D_80014DD0)
    /* 9E8B8 800AE0B8 0180043C */  lui        $a0, %hi(D_80014D5C)
    /* 9E8BC 800AE0BC 5C4D8424 */  addiu      $a0, $a0, %lo(D_80014D5C)
    /* 9E8C0 800AE0C0 14000396 */  lhu        $v1, 0x14($s0)
    /* 9E8C4 800AE0C4 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9E8C8 800AE0C8 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9E8CC 800AE0CC C3290300 */  sra        $a1, $v1, 7
    /* 9E8D0 800AE0D0 0300A530 */  andi       $a1, $a1, 0x3
    /* 9E8D4 800AE0D4 43310300 */  sra        $a2, $v1, 5
    /* 9E8D8 800AE0D8 0300C630 */  andi       $a2, $a2, 0x3
    /* 9E8DC 800AE0DC 80390300 */  sll        $a3, $v1, 6
    /* 9E8E0 800AE0E0 C007E730 */  andi       $a3, $a3, 0x7C0
    /* 9E8E4 800AE0E4 00410300 */  sll        $t0, $v1, 4
    /* 9E8E8 800AE0E8 00010831 */  andi       $t0, $t0, 0x100
    /* 9E8EC 800AE0EC 83180300 */  sra        $v1, $v1, 2
    /* 9E8F0 800AE0F0 00026330 */  andi       $v1, $v1, 0x200
    /* 9E8F4 800AE0F4 21400301 */  addu       $t0, $t0, $v1
    /* 9E8F8 800AE0F8 09F84000 */  jalr       $v0
    /* 9E8FC 800AE0FC 1000A8AF */   sw        $t0, 0x10($sp)
    /* 9E900 800AE100 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 9E904 800AE104 1800B08F */  lw         $s0, 0x18($sp)
    /* 9E908 800AE108 0800E003 */  jr         $ra
    /* 9E90C 800AE10C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AE00C
