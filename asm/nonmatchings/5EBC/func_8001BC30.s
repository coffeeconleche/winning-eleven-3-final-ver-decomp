nonmatching func_8001BC30, 0xC4

glabel func_8001BC30
    /* C430 8001BC30 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C434 8001BC34 1000B0AF */  sw         $s0, 0x10($sp)
    /* C438 8001BC38 21808000 */  addu       $s0, $a0, $zero
    /* C43C 8001BC3C 21200000 */  addu       $a0, $zero, $zero
    /* C440 8001BC40 3C000526 */  addiu      $a1, $s0, 0x3C
    /* C444 8001BC44 2000BFAF */  sw         $ra, 0x20($sp)
    /* C448 8001BC48 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* C44C 8001BC4C 1800B2AF */  sw         $s2, 0x18($sp)
    /* C450 8001BC50 5ED2020C */  jal        func_800B4978
    /* C454 8001BC54 1400B1AF */   sw        $s1, 0x14($sp)
    /* C458 8001BC58 2000118E */  lw         $s1, 0x20($s0)
    /* C45C 8001BC5C 8C0300A2 */  sb         $zero, 0x38C($s0)
    /* C460 8001BC60 00002492 */  lbu        $a0, 0x0($s1)
    /* C464 8001BC64 FF000224 */  addiu      $v0, $zero, 0xFF
    /* C468 8001BC68 FF008330 */  andi       $v1, $a0, 0xFF
    /* C46C 8001BC6C 19006210 */  beq        $v1, $v0, .L8001BCD4
    /* C470 8001BC70 21900000 */   addu      $s2, $zero, $zero
    /* C474 8001BC74 1480133C */  lui        $s3, %hi(D_80139E00)
    /* C478 8001BC78 009E7326 */  addiu      $s3, $s3, %lo(D_80139E00)
    /* C47C 8001BC7C FF008330 */  andi       $v1, $a0, 0xFF
  .L8001BC80:
    /* C480 8001BC80 8000622C */  sltiu      $v0, $v1, 0x80
    /* C484 8001BC84 06004014 */  bnez       $v0, .L8001BCA0
    /* C488 8001BC88 21200002 */   addu      $a0, $s0, $zero
    /* C48C 8001BC8C 80100300 */  sll        $v0, $v1, 2
    /* C490 8001BC90 21105300 */  addu       $v0, $v0, $s3
    /* C494 8001BC94 0000468C */  lw         $a2, 0x0($v0)
    /* C498 8001BC98 296F0008 */  j          .L8001BCA4
    /* C49C 8001BC9C 00000000 */   nop
  .L8001BCA0:
    /* C4A0 8001BCA0 0400268E */  lw         $a2, 0x4($s1)
  .L8001BCA4:
    /* C4A4 8001BCA4 3D6F000C */  jal        func_8001BCF4
    /* C4A8 8001BCA8 FF004532 */   andi      $a1, $s2, 0xFF
    /* C4AC 8001BCAC 08003126 */  addiu      $s1, $s1, 0x8
    /* C4B0 8001BCB0 8C030292 */  lbu        $v0, 0x38C($s0)
    /* C4B4 8001BCB4 00000000 */  nop
    /* C4B8 8001BCB8 01004224 */  addiu      $v0, $v0, 0x1
    /* C4BC 8001BCBC 8C0302A2 */  sb         $v0, 0x38C($s0)
    /* C4C0 8001BCC0 00002492 */  lbu        $a0, 0x0($s1)
    /* C4C4 8001BCC4 FF000224 */  addiu      $v0, $zero, 0xFF
    /* C4C8 8001BCC8 FF008330 */  andi       $v1, $a0, 0xFF
    /* C4CC 8001BCCC ECFF6214 */  bne        $v1, $v0, .L8001BC80
    /* C4D0 8001BCD0 01005226 */   addiu     $s2, $s2, 0x1
  .L8001BCD4:
    /* C4D4 8001BCD4 2000BF8F */  lw         $ra, 0x20($sp)
    /* C4D8 8001BCD8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* C4DC 8001BCDC 1800B28F */  lw         $s2, 0x18($sp)
    /* C4E0 8001BCE0 1400B18F */  lw         $s1, 0x14($sp)
    /* C4E4 8001BCE4 1000B08F */  lw         $s0, 0x10($sp)
    /* C4E8 8001BCE8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C4EC 8001BCEC 0800E003 */  jr         $ra
    /* C4F0 8001BCF0 00000000 */   nop
endlabel func_8001BC30
