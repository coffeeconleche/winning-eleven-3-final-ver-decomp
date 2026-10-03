nonmatching func_8009F574, 0xB8

glabel func_8009F574
    /* 8FD74 8009F574 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8FD78 8009F578 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8FD7C 8009F57C 801F123C */  lui        $s2, (0x1F8002F4 >> 16)
    /* 8FD80 8009F580 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8FD84 8009F584 21880000 */  addu       $s1, $zero, $zero
    /* 8FD88 8009F588 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8FD8C 8009F58C 1080103C */  lui        $s0, %hi(D_800FFB56)
    /* 8FD90 8009F590 56FB1026 */  addiu      $s0, $s0, %lo(D_800FFB56)
    /* 8FD94 8009F594 1C00BFAF */  sw         $ra, 0x1C($sp)
  .L8009F598:
    /* 8FD98 8009F598 DCFF0296 */  lhu        $v0, -0x24($s0)
    /* 8FD9C 8009F59C E0FF0396 */  lhu        $v1, -0x20($s0)
    /* 8FDA0 8009F5A0 DCFF0486 */  lh         $a0, -0x24($s0)
    /* 8FDA4 8009F5A4 AE0300A6 */  sh         $zero, 0x3AE($s0)
    /* 8FDA8 8009F5A8 960302A6 */  sh         $v0, 0x396($s0)
    /* 8FDAC 8009F5AC 980303A6 */  sh         $v1, 0x398($s0)
    /* 8FDB0 8009F5B0 F402428E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s2)
    /* 8FDB4 8009F5B4 E0FF0586 */  lh         $a1, -0x20($s0)
    /* 8FDB8 8009F5B8 02004684 */  lh         $a2, 0x2($v0)
    /* 8FDBC 8009F5BC 06004784 */  lh         $a3, 0x6($v0)
    /* 8FDC0 8009F5C0 DB6C010C */  jal        func_8005B36C
    /* 8FDC4 8009F5C4 00000000 */   nop
    /* 8FDC8 8009F5C8 7E0302A2 */  sb         $v0, 0x37E($s0)
    /* 8FDCC 8009F5CC 7E030392 */  lbu        $v1, 0x37E($s0)
    /* 8FDD0 8009F5D0 840302A2 */  sb         $v0, 0x384($s0)
    /* 8FDD4 8009F5D4 C0010224 */  addiu      $v0, $zero, 0x1C0
    /* 8FDD8 8009F5D8 23184300 */  subu       $v1, $v0, $v1
    /* 8FDDC 8009F5DC 02006104 */  bgez       $v1, .L8009F5E8
    /* 8FDE0 8009F5E0 21106000 */   addu      $v0, $v1, $zero
    /* 8FDE4 8009F5E4 FF006224 */  addiu      $v0, $v1, 0xFF
  .L8009F5E8:
    /* 8FDE8 8009F5E8 03120200 */  sra        $v0, $v0, 8
    /* 8FDEC 8009F5EC 00120200 */  sll        $v0, $v0, 8
    /* 8FDF0 8009F5F0 23106200 */  subu       $v0, $v1, $v0
    /* 8FDF4 8009F5F4 00110200 */  sll        $v0, $v0, 4
    /* 8FDF8 8009F5F8 000002A6 */  sh         $v0, 0x0($s0)
    /* 8FDFC 8009F5FC 01003126 */  addiu      $s1, $s1, 0x1
    /* 8FE00 8009F600 FF002232 */  andi       $v0, $s1, 0xFF
    /* 8FE04 8009F604 1600422C */  sltiu      $v0, $v0, 0x16
    /* 8FE08 8009F608 E3FF4014 */  bnez       $v0, .L8009F598
    /* 8FE0C 8009F60C E8031026 */   addiu     $s0, $s0, 0x3E8
    /* 8FE10 8009F610 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8FE14 8009F614 1800B28F */  lw         $s2, 0x18($sp)
    /* 8FE18 8009F618 1400B18F */  lw         $s1, 0x14($sp)
    /* 8FE1C 8009F61C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8FE20 8009F620 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8FE24 8009F624 0800E003 */  jr         $ra
    /* 8FE28 8009F628 00000000 */   nop
endlabel func_8009F574
