nonmatching func_800B5E48, 0xDC

glabel func_800B5E48
    /* A6648 800B5E48 21488000 */  addu       $t1, $a0, $zero
    /* A664C 800B5E4C 1080083C */  lui        $t0, %hi(D_800FB5B0)
    /* A6650 800B5E50 B0B50825 */  addiu      $t0, $t0, %lo(D_800FB5B0)
    /* A6654 800B5E54 0000028D */  lw         $v0, 0x0($t0)
    /* A6658 800B5E58 0400038D */  lw         $v1, 0x4($t0)
    /* A665C 800B5E5C 0800048D */  lw         $a0, 0x8($t0)
    /* A6660 800B5E60 000022AD */  sw         $v0, 0x0($t1)
    /* A6664 800B5E64 040023AD */  sw         $v1, 0x4($t1)
    /* A6668 800B5E68 080024AD */  sw         $a0, 0x8($t1)
    /* A666C 800B5E6C 0C00028D */  lw         $v0, 0xC($t0)
    /* A6670 800B5E70 1000038D */  lw         $v1, 0x10($t0)
    /* A6674 800B5E74 1400048D */  lw         $a0, 0x14($t0)
    /* A6678 800B5E78 0C0022AD */  sw         $v0, 0xC($t1)
    /* A667C 800B5E7C 100023AD */  sw         $v1, 0x10($t1)
    /* A6680 800B5E80 140024AD */  sw         $a0, 0x14($t1)
    /* A6684 800B5E84 1800028D */  lw         $v0, 0x18($t0)
    /* A6688 800B5E88 1C00038D */  lw         $v1, 0x1C($t0)
    /* A668C 800B5E8C 180022AD */  sw         $v0, 0x18($t1)
    /* A6690 800B5E90 1C0023AD */  sw         $v1, 0x1C($t1)
    /* A6694 800B5E94 A8FFE724 */  addiu      $a3, $a3, -0x58
    /* A6698 800B5E98 003E0700 */  sll        $a3, $a3, 24
    /* A669C 800B5E9C 033E0700 */  sra        $a3, $a3, 24
    /* A66A0 800B5EA0 2300E22C */  sltiu      $v0, $a3, 0x23
    /* A66A4 800B5EA4 18004010 */  beqz       $v0, .L800B5F08
    /* A66A8 800B5EA8 80100700 */   sll       $v0, $a3, 2
    /* A66AC 800B5EAC 0180013C */  lui        $at, %hi(jtbl_800150CC)
    /* A66B0 800B5EB0 21082200 */  addu       $at, $at, $v0
    /* A66B4 800B5EB4 CC50228C */  lw         $v0, %lo(jtbl_800150CC)($at)
    /* A66B8 800B5EB8 00000000 */  nop
    /* A66BC 800B5EBC 08004000 */  jr         $v0
    /* A66C0 800B5EC0 00000000 */   nop
  jlabel .L800B5EC4
    /* A66C4 800B5EC4 23100500 */  negu       $v0, $a1
    /* A66C8 800B5EC8 080026A5 */  sh         $a2, 0x8($t1)
    /* A66CC 800B5ECC 100026A5 */  sh         $a2, 0x10($t1)
    /* A66D0 800B5ED0 0A0022A5 */  sh         $v0, 0xA($t1)
    /* A66D4 800B5ED4 C2D70208 */  j          .L800B5F08
    /* A66D8 800B5ED8 0E0025A5 */   sh        $a1, 0xE($t1)
  jlabel .L800B5EDC
    /* A66DC 800B5EDC 23100500 */  negu       $v0, $a1
    /* A66E0 800B5EE0 000026A5 */  sh         $a2, 0x0($t1)
    /* A66E4 800B5EE4 100026A5 */  sh         $a2, 0x10($t1)
    /* A66E8 800B5EE8 040025A5 */  sh         $a1, 0x4($t1)
    /* A66EC 800B5EEC C2D70208 */  j          .L800B5F08
    /* A66F0 800B5EF0 0C0022A5 */   sh        $v0, 0xC($t1)
  jlabel .L800B5EF4
    /* A66F4 800B5EF4 23100500 */  negu       $v0, $a1
    /* A66F8 800B5EF8 000026A5 */  sh         $a2, 0x0($t1)
    /* A66FC 800B5EFC 080026A5 */  sh         $a2, 0x8($t1)
    /* A6700 800B5F00 020022A5 */  sh         $v0, 0x2($t1)
    /* A6704 800B5F04 060025A5 */  sh         $a1, 0x6($t1)
  jlabel .L800B5F08
    /* A6708 800B5F08 0800E003 */  jr         $ra
    /* A670C 800B5F0C 00000000 */   nop
    /* A6710 800B5F10 00000000 */  nop
    /* A6714 800B5F14 00000000 */  nop
    /* A6718 800B5F18 0F80013C */  lui        $at, %hi(D_800EF8A8)
    /* A671C 800B5F1C 0800E003 */  jr         $ra
    /* A6720 800B5F20 A8F824AC */   sw        $a0, %lo(D_800EF8A8)($at)
endlabel func_800B5E48
    /* A6724 800B5F24 00000000 */  nop
