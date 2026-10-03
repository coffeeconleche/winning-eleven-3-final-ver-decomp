nonmatching func_8004E5A8, 0x12C

glabel func_8004E5A8
    /* 3EDA8 8004E5A8 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3EDAC 8004E5AC F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3EDB0 8004E5B0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3EDB4 8004E5B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3EDB8 8004E5B8 16B2103C */  lui        $s0, (0xB21642C9 >> 16)
    /* 3EDBC 8004E5BC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3EDC0 8004E5C0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3EDC4 8004E5C4 0C00438C */  lw         $v1, 0xC($v0)
    /* 3EDC8 8004E5C8 C9421036 */  ori        $s0, $s0, (0xB21642C9 & 0xFFFF)
    /* 3EDCC 8004E5CC 18007000 */  mult       $v1, $s0
    /* 3EDD0 8004E5D0 A003428C */  lw         $v0, 0x3A0($v0)
    /* 3EDD4 8004E5D4 21888000 */  addu       $s1, $a0, $zero
    /* 3EDD8 8004E5D8 02130200 */  srl        $v0, $v0, 12
    /* 3EDDC 8004E5DC 10300000 */  mfhi       $a2
    /* 3EDE0 8004E5E0 2120C300 */  addu       $a0, $a2, $v1
    /* 3EDE4 8004E5E4 83220400 */  sra        $a0, $a0, 10
    /* 3EDE8 8004E5E8 C31F0300 */  sra        $v1, $v1, 31
    /* 3EDEC 8004E5EC 23208300 */  subu       $a0, $a0, $v1
    /* 3EDF0 8004E5F0 21208200 */  addu       $a0, $a0, $v0
    /* 3EDF4 8004E5F4 02008104 */  bgez       $a0, .L8004E600
    /* 3EDF8 8004E5F8 00000000 */   nop
    /* 3EDFC 8004E5FC 23200400 */  negu       $a0, $a0
  .L8004E600:
    /* 3EE00 8004E600 00240400 */  sll        $a0, $a0, 16
    /* 3EE04 8004E604 E871010C */  jal        func_8005C7A0
    /* 3EE08 8004E608 03240400 */   sra       $a0, $a0, 16
    /* 3EE0C 8004E60C 801F053C */  lui        $a1, (0x1F8002F4 >> 16)
    /* 3EE10 8004E610 F402A58C */  lw         $a1, (0x1F8002F4 & 0xFFFF)($a1)
    /* 3EE14 8004E614 00000000 */  nop
    /* 3EE18 8004E618 0C00A38C */  lw         $v1, 0xC($a1)
    /* 3EE1C 8004E61C 00000000 */  nop
    /* 3EE20 8004E620 23180300 */  negu       $v1, $v1
    /* 3EE24 8004E624 18007000 */  mult       $v1, $s0
    /* 3EE28 8004E628 00140200 */  sll        $v0, $v0, 16
    /* 3EE2C 8004E62C 03140200 */  sra        $v0, $v0, 16
    /* 3EE30 8004E630 10300000 */  mfhi       $a2
    /* 3EE34 8004E634 2120C300 */  addu       $a0, $a2, $v1
    /* 3EE38 8004E638 43220400 */  sra        $a0, $a0, 9
    /* 3EE3C 8004E63C C31F0300 */  sra        $v1, $v1, 31
    /* 3EE40 8004E640 23208300 */  subu       $a0, $a0, $v1
    /* 3EE44 8004E644 21208200 */  addu       $a0, $a0, $v0
    /* 3EE48 8004E648 F1FF8228 */  slti       $v0, $a0, -0xF
    /* 3EE4C 8004E64C 02004010 */  beqz       $v0, .L8004E658
    /* 3EE50 8004E650 00000000 */   nop
    /* 3EE54 8004E654 F0FF0424 */  addiu      $a0, $zero, -0x10
  .L8004E658:
    /* 3EE58 8004E658 A403A590 */  lbu        $a1, 0x3A4($a1)
    /* 3EE5C 8004E65C 00000000 */  nop
    /* 3EE60 8004E660 23102502 */  subu       $v0, $s1, $a1
    /* 3EE64 8004E664 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3EE68 8004E668 8100622C */  sltiu      $v0, $v1, 0x81
    /* 3EE6C 8004E66C 08004014 */  bnez       $v0, .L8004E690
    /* 3EE70 8004E670 31006228 */   slti      $v0, $v1, 0x31
    /* 3EE74 8004E674 2310B100 */  subu       $v0, $a1, $s1
    /* 3EE78 8004E678 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3EE7C 8004E67C 31004228 */  slti       $v0, $v0, 0x31
    /* 3EE80 8004E680 05004014 */  bnez       $v0, .L8004E698
    /* 3EE84 8004E684 08008228 */   slti      $v0, $a0, 0x8
    /* 3EE88 8004E688 AB390108 */  j          .L8004E6AC
    /* 3EE8C 8004E68C 10008228 */   slti      $v0, $a0, 0x10
  .L8004E690:
    /* 3EE90 8004E690 05004010 */  beqz       $v0, .L8004E6A8
    /* 3EE94 8004E694 08008228 */   slti      $v0, $a0, 0x8
  .L8004E698:
    /* 3EE98 8004E698 08004014 */  bnez       $v0, .L8004E6BC
    /* 3EE9C 8004E69C 21108000 */   addu      $v0, $a0, $zero
    /* 3EEA0 8004E6A0 AE390108 */  j          .L8004E6B8
    /* 3EEA4 8004E6A4 08000424 */   addiu     $a0, $zero, 0x8
  .L8004E6A8:
    /* 3EEA8 8004E6A8 10008228 */  slti       $v0, $a0, 0x10
  .L8004E6AC:
    /* 3EEAC 8004E6AC 03004014 */  bnez       $v0, .L8004E6BC
    /* 3EEB0 8004E6B0 21108000 */   addu      $v0, $a0, $zero
    /* 3EEB4 8004E6B4 10000424 */  addiu      $a0, $zero, 0x10
  .L8004E6B8:
    /* 3EEB8 8004E6B8 21108000 */  addu       $v0, $a0, $zero
  .L8004E6BC:
    /* 3EEBC 8004E6BC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3EEC0 8004E6C0 1400B18F */  lw         $s1, 0x14($sp)
    /* 3EEC4 8004E6C4 1000B08F */  lw         $s0, 0x10($sp)
    /* 3EEC8 8004E6C8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3EECC 8004E6CC 0800E003 */  jr         $ra
    /* 3EED0 8004E6D0 00000000 */   nop
endlabel func_8004E5A8
