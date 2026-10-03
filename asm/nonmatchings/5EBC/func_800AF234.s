nonmatching func_800AF234, 0x80

glabel func_800AF234
    /* 9FA34 800AF234 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9FA38 800AF238 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9FA3C 800AF23C 21888000 */  addu       $s1, $a0, $zero
    /* 9FA40 800AF240 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9FA44 800AF244 2180A000 */  addu       $s0, $a1, $zero
    /* 9FA48 800AF248 02000224 */  addiu      $v0, $zero, 0x2
    /* 9FA4C 800AF24C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9FA50 800AF250 030022A2 */  sb         $v0, 0x3($s1)
    /* 9FA54 800AF254 00000486 */  lh         $a0, 0x0($s0)
    /* 9FA58 800AF258 02000586 */  lh         $a1, 0x2($s0)
    /* 9FA5C 800AF25C 08BE020C */  jal        func_800AF820
    /* 9FA60 800AF260 00000000 */   nop
    /* 9FA64 800AF264 040022AE */  sw         $v0, 0x4($s1)
    /* 9FA68 800AF268 00000496 */  lhu        $a0, 0x0($s0)
    /* 9FA6C 800AF26C 04000296 */  lhu        $v0, 0x4($s0)
    /* 9FA70 800AF270 02000596 */  lhu        $a1, 0x2($s0)
    /* 9FA74 800AF274 21208200 */  addu       $a0, $a0, $v0
    /* 9FA78 800AF278 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 9FA7C 800AF27C 00240400 */  sll        $a0, $a0, 16
    /* 9FA80 800AF280 06000296 */  lhu        $v0, 0x6($s0)
    /* 9FA84 800AF284 03240400 */  sra        $a0, $a0, 16
    /* 9FA88 800AF288 2128A200 */  addu       $a1, $a1, $v0
    /* 9FA8C 800AF28C FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 9FA90 800AF290 002C0500 */  sll        $a1, $a1, 16
    /* 9FA94 800AF294 2EBE020C */  jal        func_800AF8B8
    /* 9FA98 800AF298 032C0500 */   sra       $a1, $a1, 16
    /* 9FA9C 800AF29C 080022AE */  sw         $v0, 0x8($s1)
    /* 9FAA0 800AF2A0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9FAA4 800AF2A4 1400B18F */  lw         $s1, 0x14($sp)
    /* 9FAA8 800AF2A8 1000B08F */  lw         $s0, 0x10($sp)
    /* 9FAAC 800AF2AC 0800E003 */  jr         $ra
    /* 9FAB0 800AF2B0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AF234
