nonmatching func_8019E1D0, 0x8C

glabel func_8019E1D0
    /* 15258 8019E1D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1525C 8019E1D4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 15260 8019E1D8 21900000 */  addu       $s2, $zero, $zero
    /* 15264 8019E1DC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 15268 8019E1E0 FF009330 */  andi       $s3, $a0, 0xFF
    /* 1526C 8019E1E4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 15270 8019E1E8 2C001124 */  addiu      $s1, $zero, 0x2C
    /* 15274 8019E1EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 15278 8019E1F0 26001024 */  addiu      $s0, $zero, 0x26
    /* 1527C 8019E1F4 2000BFAF */  sw         $ra, 0x20($sp)
  .L8019E1F8:
    /* 15280 8019E1F8 06005316 */  bne        $s2, $s3, .L8019E214
    /* 15284 8019E1FC 21200002 */   addu      $a0, $s0, $zero
    /* 15288 8019E200 13BE010C */  jal        func_8006F84C
    /* 1528C 8019E204 80000524 */   addiu     $a1, $zero, 0x80
    /* 15290 8019E208 21202002 */  addu       $a0, $s1, $zero
    /* 15294 8019E20C 89780608 */  j          .L8019E224
    /* 15298 8019E210 80000524 */   addiu     $a1, $zero, 0x80
  .L8019E214:
    /* 1529C 8019E214 13BE010C */  jal        func_8006F84C
    /* 152A0 8019E218 50000524 */   addiu     $a1, $zero, 0x50
    /* 152A4 8019E21C 21202002 */  addu       $a0, $s1, $zero
    /* 152A8 8019E220 50000524 */  addiu      $a1, $zero, 0x50
  .L8019E224:
    /* 152AC 8019E224 13BE010C */  jal        func_8006F84C
    /* 152B0 8019E228 01003126 */   addiu     $s1, $s1, 0x1
    /* 152B4 8019E22C 01005226 */  addiu      $s2, $s2, 0x1
    /* 152B8 8019E230 0600422A */  slti       $v0, $s2, 0x6
    /* 152BC 8019E234 F0FF4014 */  bnez       $v0, .L8019E1F8
    /* 152C0 8019E238 01001026 */   addiu     $s0, $s0, 0x1
    /* 152C4 8019E23C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 152C8 8019E240 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 152CC 8019E244 1800B28F */  lw         $s2, 0x18($sp)
    /* 152D0 8019E248 1400B18F */  lw         $s1, 0x14($sp)
    /* 152D4 8019E24C 1000B08F */  lw         $s0, 0x10($sp)
    /* 152D8 8019E250 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 152DC 8019E254 0800E003 */  jr         $ra
    /* 152E0 8019E258 00000000 */   nop
endlabel func_8019E1D0
