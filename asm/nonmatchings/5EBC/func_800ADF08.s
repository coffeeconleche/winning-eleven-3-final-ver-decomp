nonmatching func_800ADF08, 0x60

glabel func_800ADF08
    /* 9E708 800ADF08 21408000 */  addu       $t0, $a0, $zero
    /* 9E70C 800ADF0C 0400A284 */  lh         $v0, 0x4($a1)
    /* 9E710 800ADF10 00000000 */  nop
    /* 9E714 800ADF14 05004010 */  beqz       $v0, .L800ADF2C
    /* 9E718 800ADF18 05000424 */   addiu     $a0, $zero, 0x5
    /* 9E71C 800ADF1C 0600A284 */  lh         $v0, 0x6($a1)
    /* 9E720 800ADF20 00000000 */  nop
    /* 9E724 800ADF24 03004014 */  bnez       $v0, .L800ADF34
    /* 9E728 800ADF28 0001023C */   lui       $v0, (0x1000000 >> 16)
  .L800ADF2C:
    /* 9E72C 800ADF2C 21200000 */  addu       $a0, $zero, $zero
    /* 9E730 800ADF30 0001023C */  lui        $v0, (0x1000000 >> 16)
  .L800ADF34:
    /* 9E734 800ADF34 040002AD */  sw         $v0, 0x4($t0)
    /* 9E738 800ADF38 0080023C */  lui        $v0, (0x80000000 >> 16)
    /* 9E73C 800ADF3C 080002AD */  sw         $v0, 0x8($t0)
    /* 9E740 800ADF40 00140700 */  sll        $v0, $a3, 16
    /* 9E744 800ADF44 FFFFC330 */  andi       $v1, $a2, 0xFFFF
    /* 9E748 800ADF48 030004A1 */  sb         $a0, 0x3($t0)
    /* 9E74C 800ADF4C 0000A48C */  lw         $a0, 0x0($a1)
    /* 9E750 800ADF50 25104300 */  or         $v0, $v0, $v1
    /* 9E754 800ADF54 100002AD */  sw         $v0, 0x10($t0)
    /* 9E758 800ADF58 0C0004AD */  sw         $a0, 0xC($t0)
    /* 9E75C 800ADF5C 0400A28C */  lw         $v0, 0x4($a1)
    /* 9E760 800ADF60 0800E003 */  jr         $ra
    /* 9E764 800ADF64 140002AD */   sw        $v0, 0x14($t0)
endlabel func_800ADF08
