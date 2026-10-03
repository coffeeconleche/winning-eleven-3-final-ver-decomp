nonmatching func_800AE110, 0xA0

glabel func_800AE110
    /* 9E910 800AE110 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9E914 800AE114 1800B0AF */  sw         $s0, 0x18($sp)
    /* 9E918 800AE118 21808000 */  addu       $s0, $a0, $zero
    /* 9E91C 800AE11C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 9E920 800AE120 00000586 */  lh         $a1, 0x0($s0)
    /* 9E924 800AE124 02000686 */  lh         $a2, 0x2($s0)
    /* 9E928 800AE128 04000786 */  lh         $a3, 0x4($s0)
    /* 9E92C 800AE12C 06000386 */  lh         $v1, 0x6($s0)
    /* 9E930 800AE130 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9E934 800AE134 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9E938 800AE138 0180043C */  lui        $a0, %hi(D_80014DDC)
    /* 9E93C 800AE13C DC4D8424 */  addiu      $a0, $a0, %lo(D_80014DDC)
    /* 9E940 800AE140 09F84000 */  jalr       $v0
    /* 9E944 800AE144 1000A3AF */   sw        $v1, 0x10($sp)
    /* 9E948 800AE148 08000586 */  lh         $a1, 0x8($s0)
    /* 9E94C 800AE14C 0A000686 */  lh         $a2, 0xA($s0)
    /* 9E950 800AE150 0C000786 */  lh         $a3, 0xC($s0)
    /* 9E954 800AE154 0E000386 */  lh         $v1, 0xE($s0)
    /* 9E958 800AE158 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9E95C 800AE15C C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9E960 800AE160 0180043C */  lui        $a0, %hi(D_80014DF8)
    /* 9E964 800AE164 F84D8424 */  addiu      $a0, $a0, %lo(D_80014DF8)
    /* 9E968 800AE168 09F84000 */  jalr       $v0
    /* 9E96C 800AE16C 1000A3AF */   sw        $v1, 0x10($sp)
    /* 9E970 800AE170 10000592 */  lbu        $a1, 0x10($s0)
    /* 9E974 800AE174 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9E978 800AE178 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9E97C 800AE17C 0180043C */  lui        $a0, %hi(D_80014E14)
    /* 9E980 800AE180 09F84000 */  jalr       $v0
    /* 9E984 800AE184 144E8424 */   addiu     $a0, $a0, %lo(D_80014E14)
    /* 9E988 800AE188 11000592 */  lbu        $a1, 0x11($s0)
    /* 9E98C 800AE18C 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9E990 800AE190 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9E994 800AE194 0180043C */  lui        $a0, %hi(D_80014E20)
    /* 9E998 800AE198 09F84000 */  jalr       $v0
    /* 9E99C 800AE19C 204E8424 */   addiu     $a0, $a0, %lo(D_80014E20)
    /* 9E9A0 800AE1A0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 9E9A4 800AE1A4 1800B08F */  lw         $s0, 0x18($sp)
    /* 9E9A8 800AE1A8 0800E003 */  jr         $ra
    /* 9E9AC 800AE1AC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AE110
    /* 9E9B0 800AE1B0 00000000 */  nop
    /* 9E9B4 800AE1B4 00000000 */  nop
