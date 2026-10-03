nonmatching func_8001BD78, 0x88

glabel func_8001BD78
    /* C578 8001BD78 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C57C 8001BD7C 1400B1AF */  sw         $s1, 0x14($sp)
    /* C580 8001BD80 21888000 */  addu       $s1, $a0, $zero
    /* C584 8001BD84 21200000 */  addu       $a0, $zero, $zero
    /* C588 8001BD88 2C002526 */  addiu      $a1, $s1, 0x2C
    /* C58C 8001BD8C 1800BFAF */  sw         $ra, 0x18($sp)
    /* C590 8001BD90 5ED2020C */  jal        func_800B4978
    /* C594 8001BD94 1000B0AF */   sw        $s0, 0x10($sp)
    /* C598 8001BD98 1000228E */  lw         $v0, 0x10($s1)
    /* C59C 8001BD9C 00000000 */  nop
    /* C5A0 8001BDA0 0400508C */  lw         $s0, 0x4($v0)
    /* C5A4 8001BDA4 00000000 */  nop
    /* C5A8 8001BDA8 04001026 */  addiu      $s0, $s0, 0x4
    /* C5AC 8001BDAC DAD4020C */  jal        func_800B5368
    /* C5B0 8001BDB0 21200002 */   addu      $a0, $s0, $zero
    /* C5B4 8001BDB4 08001026 */  addiu      $s0, $s0, 0x8
    /* C5B8 8001BDB8 0000028E */  lw         $v0, 0x0($s0)
    /* C5BC 8001BDBC 08001026 */  addiu      $s0, $s0, 0x8
    /* C5C0 8001BDC0 7C0022AE */  sw         $v0, 0x7C($s1)
    /* C5C4 8001BDC4 0000028E */  lw         $v0, 0x0($s0)
    /* C5C8 8001BDC8 08001026 */  addiu      $s0, $s0, 0x8
    /* C5CC 8001BDCC 800022AE */  sw         $v0, 0x80($s1)
    /* C5D0 8001BDD0 0000028E */  lw         $v0, 0x0($s0)
    /* C5D4 8001BDD4 00000000 */  nop
    /* C5D8 8001BDD8 840022AE */  sw         $v0, 0x84($s1)
    /* C5DC 8001BDDC 0400028E */  lw         $v0, 0x4($s0)
    /* C5E0 8001BDE0 00000000 */  nop
    /* C5E4 8001BDE4 880022AE */  sw         $v0, 0x88($s1)
    /* C5E8 8001BDE8 1800BF8F */  lw         $ra, 0x18($sp)
    /* C5EC 8001BDEC 1400B18F */  lw         $s1, 0x14($sp)
    /* C5F0 8001BDF0 1000B08F */  lw         $s0, 0x10($sp)
    /* C5F4 8001BDF4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C5F8 8001BDF8 0800E003 */  jr         $ra
    /* C5FC 8001BDFC 00000000 */   nop
endlabel func_8001BD78
