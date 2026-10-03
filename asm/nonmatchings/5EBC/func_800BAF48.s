nonmatching func_800BAF48, 0x24

glabel func_800BAF48
    /* AB748 800BAF48 0600A010 */  beqz       $a1, .L800BAF64
    /* AB74C 800BAF4C FFFFA224 */   addiu     $v0, $a1, -0x1
    /* AB750 800BAF50 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L800BAF54:
    /* AB754 800BAF54 000080AC */  sw         $zero, 0x0($a0)
    /* AB758 800BAF58 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* AB75C 800BAF5C FDFF4314 */  bne        $v0, $v1, .L800BAF54
    /* AB760 800BAF60 04008424 */   addiu     $a0, $a0, 0x4
  .L800BAF64:
    /* AB764 800BAF64 0800E003 */  jr         $ra
    /* AB768 800BAF68 00000000 */   nop
endlabel func_800BAF48
    /* AB76C 800BAF6C 00000000 */  nop
    /* AB770 800BAF70 00000000 */  nop
    /* AB774 800BAF74 00000000 */  nop
