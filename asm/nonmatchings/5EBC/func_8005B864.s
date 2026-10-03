nonmatching func_8005B864, 0xA4

glabel func_8005B864
    /* 4C064 8005B864 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4C068 8005B868 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4C06C 8005B86C 21888000 */  addu       $s1, $a0, $zero
    /* 4C070 8005B870 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4C074 8005B874 FFFFB030 */  andi       $s0, $a1, 0xFFFF
    /* 4C078 8005B878 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4C07C 8005B87C AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 4C080 8005B880 A579000C */  jal        func_8001E694
    /* 4C084 8005B884 21280002 */   addu      $a1, $s0, $zero
    /* 4C088 8005B888 AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 4C08C 8005B88C 21280002 */  addu       $a1, $s0, $zero
    /* 4C090 8005B890 6979000C */  jal        func_8001E5A4
    /* 4C094 8005B894 080022AE */   sw        $v0, 0x8($s1)
    /* 4C098 8005B898 AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 4C09C 8005B89C 100022AE */  sw         $v0, 0x10($s1)
    /* 4C0A0 8005B8A0 C0010224 */  addiu      $v0, $zero, 0x1C0
    /* 4C0A4 8005B8A4 23184300 */  subu       $v1, $v0, $v1
    /* 4C0A8 8005B8A8 02006104 */  bgez       $v1, .L8005B8B4
    /* 4C0AC 8005B8AC 21106000 */   addu      $v0, $v1, $zero
    /* 4C0B0 8005B8B0 FF006224 */  addiu      $v0, $v1, 0xFF
  .L8005B8B4:
    /* 4C0B4 8005B8B4 03120200 */  sra        $v0, $v0, 8
    /* 4C0B8 8005B8B8 00120200 */  sll        $v0, $v0, 8
    /* 4C0BC 8005B8BC 23106200 */  subu       $v0, $v1, $v0
    /* 4C0C0 8005B8C0 AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 4C0C4 8005B8C4 0800248E */  lw         $a0, 0x8($s1)
    /* 4C0C8 8005B8C8 00110200 */  sll        $v0, $v0, 4
    /* 4C0CC 8005B8CC 260022A6 */  sh         $v0, 0x26($s1)
    /* 4C0D0 8005B8D0 02002296 */  lhu        $v0, 0x2($s1)
    /* 4C0D4 8005B8D4 1000258E */  lw         $a1, 0x10($s1)
    /* 4C0D8 8005B8D8 A40323A2 */  sb         $v1, 0x3A4($s1)
    /* 4C0DC 8005B8DC 06002396 */  lhu        $v1, 0x6($s1)
    /* 4C0E0 8005B8E0 21104400 */  addu       $v0, $v0, $a0
    /* 4C0E4 8005B8E4 020022A6 */  sh         $v0, 0x2($s1)
    /* 4C0E8 8005B8E8 21186500 */  addu       $v1, $v1, $a1
    /* 4C0EC 8005B8EC 060023A6 */  sh         $v1, 0x6($s1)
    /* 4C0F0 8005B8F0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4C0F4 8005B8F4 1400B18F */  lw         $s1, 0x14($sp)
    /* 4C0F8 8005B8F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 4C0FC 8005B8FC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4C100 8005B900 0800E003 */  jr         $ra
    /* 4C104 8005B904 00000000 */   nop
endlabel func_8005B864
