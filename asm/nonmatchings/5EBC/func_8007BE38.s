nonmatching func_8007BE38, 0x98

glabel func_8007BE38
    /* 6C638 8007BE38 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6C63C 8007BE3C 801F033C */  lui        $v1, (0x1F80029B >> 16)
    /* 6C640 8007BE40 9B026390 */  lbu        $v1, (0x1F80029B & 0xFFFF)($v1)
    /* 6C644 8007BE44 01000224 */  addiu      $v0, $zero, 0x1
    /* 6C648 8007BE48 13006210 */  beq        $v1, $v0, .L8007BE98
    /* 6C64C 8007BE4C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 6C650 8007BE50 02006228 */  slti       $v0, $v1, 0x2
    /* 6C654 8007BE54 05004010 */  beqz       $v0, .L8007BE6C
    /* 6C658 8007BE58 00000000 */   nop
    /* 6C65C 8007BE5C 0A006010 */  beqz       $v1, .L8007BE88
    /* 6C660 8007BE60 00000000 */   nop
    /* 6C664 8007BE64 B0EF0108 */  j          .L8007BEC0
    /* 6C668 8007BE68 00000000 */   nop
  .L8007BE6C:
    /* 6C66C 8007BE6C 02000224 */  addiu      $v0, $zero, 0x2
    /* 6C670 8007BE70 0D006210 */  beq        $v1, $v0, .L8007BEA8
    /* 6C674 8007BE74 03000224 */   addiu     $v0, $zero, 0x3
    /* 6C678 8007BE78 0F006210 */  beq        $v1, $v0, .L8007BEB8
    /* 6C67C 8007BE7C 00000000 */   nop
    /* 6C680 8007BE80 B0EF0108 */  j          .L8007BEC0
    /* 6C684 8007BE84 00000000 */   nop
  .L8007BE88:
    /* 6C688 8007BE88 B4EF010C */  jal        func_8007BED0
    /* 6C68C 8007BE8C 00000000 */   nop
    /* 6C690 8007BE90 B0EF0108 */  j          .L8007BEC0
    /* 6C694 8007BE94 00000000 */   nop
  .L8007BE98:
    /* 6C698 8007BE98 27F0010C */  jal        func_8007C09C
    /* 6C69C 8007BE9C 00000000 */   nop
    /* 6C6A0 8007BEA0 B0EF0108 */  j          .L8007BEC0
    /* 6C6A4 8007BEA4 00000000 */   nop
  .L8007BEA8:
    /* 6C6A8 8007BEA8 99F0010C */  jal        func_8007C264
    /* 6C6AC 8007BEAC 00000000 */   nop
    /* 6C6B0 8007BEB0 B0EF0108 */  j          .L8007BEC0
    /* 6C6B4 8007BEB4 00000000 */   nop
  .L8007BEB8:
    /* 6C6B8 8007BEB8 B9F1010C */  jal        func_8007C6E4
    /* 6C6BC 8007BEBC 00000000 */   nop
  .L8007BEC0:
    /* 6C6C0 8007BEC0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6C6C4 8007BEC4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6C6C8 8007BEC8 0800E003 */  jr         $ra
    /* 6C6CC 8007BECC 00000000 */   nop
endlabel func_8007BE38
