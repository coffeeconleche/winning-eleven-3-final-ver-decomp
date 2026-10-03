nonmatching func_8008A740, 0x164

glabel func_8008A740
    /* 7AF40 8008A740 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7AF44 8008A744 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7AF48 8008A748 21808000 */  addu       $s0, $a0, $zero
    /* 7AF4C 8008A74C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 7AF50 8008A750 97030292 */  lbu        $v0, 0x397($s0)
    /* 7AF54 8008A754 00000000 */  nop
    /* 7AF58 8008A758 15004014 */  bnez       $v0, .L8008A7B0
    /* 7AF5C 8008A75C 00000000 */   nop
    /* 7AF60 8008A760 8D030392 */  lbu        $v1, 0x38D($s0)
    /* 7AF64 8008A764 801F023C */  lui        $v0, (0x1F8002A8 >> 16)
    /* 7AF68 8008A768 A8024290 */  lbu        $v0, (0x1F8002A8 & 0xFFFF)($v0)
    /* 7AF6C 8008A76C 00000000 */  nop
    /* 7AF70 8008A770 03006214 */  bne        $v1, $v0, .L8008A780
    /* 7AF74 8008A774 00000000 */   nop
    /* 7AF78 8008A778 FD53020C */  jal        func_80094FF4
    /* 7AF7C 8008A77C 00000000 */   nop
  .L8008A780:
    /* 7AF80 8008A780 8E030396 */  lhu        $v1, 0x38E($s0)
    /* 7AF84 8008A784 5D000224 */  addiu      $v0, $zero, 0x5D
    /* 7AF88 8008A788 04006210 */  beq        $v1, $v0, .L8008A79C
    /* 7AF8C 8008A78C 5D000524 */   addiu     $a1, $zero, 0x5D
    /* 7AF90 8008A790 21200002 */  addu       $a0, $s0, $zero
    /* 7AF94 8008A794 8C6E010C */  jal        func_8005BA30
    /* 7AF98 8008A798 21300000 */   addu      $a2, $zero, $zero
  .L8008A79C:
    /* 7AF9C 8008A79C 97030292 */  lbu        $v0, 0x397($s0)
    /* 7AFA0 8008A7A0 00000000 */  nop
    /* 7AFA4 8008A7A4 01004224 */  addiu      $v0, $v0, 0x1
    /* 7AFA8 8008A7A8 132A0208 */  j          .L8008A84C
    /* 7AFAC 8008A7AC 970302A2 */   sb        $v0, 0x397($s0)
  .L8008A7B0:
    /* 7AFB0 8008A7B0 476F010C */  jal        func_8005BD1C
    /* 7AFB4 8008A7B4 21200002 */   addu      $a0, $s0, $zero
    /* 7AFB8 8008A7B8 8D030392 */  lbu        $v1, 0x38D($s0)
    /* 7AFBC 8008A7BC 801F023C */  lui        $v0, (0x1F8002A8 >> 16)
    /* 7AFC0 8008A7C0 A8024290 */  lbu        $v0, (0x1F8002A8 & 0xFFFF)($v0)
    /* 7AFC4 8008A7C4 00000000 */  nop
    /* 7AFC8 8008A7C8 19006214 */  bne        $v1, $v0, .L8008A830
    /* 7AFCC 8008A7CC 06000224 */   addiu     $v0, $zero, 0x6
    /* 7AFD0 8008A7D0 04000624 */  addiu      $a2, $zero, 0x4
    /* 7AFD4 8008A7D4 99030492 */  lbu        $a0, 0x399($s0)
    /* 7AFD8 8008A7D8 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 7AFDC 8008A7DC C0210400 */  sll        $a0, $a0, 7
    /* 7AFE0 8008A7E0 F36D010C */  jal        func_8005B7CC
    /* 7AFE4 8008A7E4 80008430 */   andi      $a0, $a0, 0x80
    /* 7AFE8 8008A7E8 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7AFEC 8008A7EC C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7AFF0 8008A7F0 23186400 */  subu       $v1, $v1, $a0
    /* 7AFF4 8008A7F4 21206000 */  addu       $a0, $v1, $zero
    /* 7AFF8 8008A7F8 02006104 */  bgez       $v1, .L8008A804
    /* 7AFFC 8008A7FC AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 7B000 8008A800 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008A804:
    /* 7B004 8008A804 03120400 */  sra        $v0, $a0, 8
    /* 7B008 8008A808 00120200 */  sll        $v0, $v0, 8
    /* 7B00C 8008A80C 23106200 */  subu       $v0, $v1, $v0
    /* 7B010 8008A810 90030392 */  lbu        $v1, 0x390($s0)
    /* 7B014 8008A814 00110200 */  sll        $v0, $v0, 4
    /* 7B018 8008A818 260002A6 */  sh         $v0, 0x26($s0)
    /* 7B01C 8008A81C 10000224 */  addiu      $v0, $zero, 0x10
    /* 7B020 8008A820 0A006214 */  bne        $v1, $v0, .L8008A84C
    /* 7B024 8008A824 81000224 */   addiu     $v0, $zero, 0x81
    /* 7B028 8008A828 112A0208 */  j          .L8008A844
    /* 7B02C 8008A82C 960302A2 */   sb        $v0, 0x396($s0)
  .L8008A830:
    /* 7B030 8008A830 90030392 */  lbu        $v1, 0x390($s0)
    /* 7B034 8008A834 00000000 */  nop
    /* 7B038 8008A838 04006214 */  bne        $v1, $v0, .L8008A84C
    /* 7B03C 8008A83C 86000224 */   addiu     $v0, $zero, 0x86
    /* 7B040 8008A840 960302A2 */  sb         $v0, 0x396($s0)
  .L8008A844:
    /* 7B044 8008A844 242A0208 */  j          .L8008A890
    /* 7B048 8008A848 970300A2 */   sb        $zero, 0x397($s0)
  .L8008A84C:
    /* 7B04C 8008A84C E871010C */  jal        func_8005C7A0
    /* 7B050 8008A850 03000424 */   addiu     $a0, $zero, 0x3
    /* 7B054 8008A854 21200002 */  addu       $a0, $s0, $zero
    /* 7B058 8008A858 0C000524 */  addiu      $a1, $zero, 0xC
    /* 7B05C 8008A85C 00140200 */  sll        $v0, $v0, 16
    /* 7B060 8008A860 03140200 */  sra        $v0, $v0, 16
    /* 7B064 8008A864 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 7B068 8008A868 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 7B06C 8008A86C 02004224 */  addiu      $v0, $v0, 0x2
    /* 7B070 8008A870 A4036690 */  lbu        $a2, 0x3A4($v1)
    /* 7B074 8008A874 21380000 */  addu       $a3, $zero, $zero
    /* 7B078 8008A878 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7B07C 8008A87C 8000C624 */  addiu      $a2, $a2, 0x80
    /* 7B080 8008A880 8B51020C */  jal        func_8009462C
    /* 7B084 8008A884 FF00C630 */   andi      $a2, $a2, 0xFF
    /* 7B088 8008A888 3A55020C */  jal        func_800954E8
    /* 7B08C 8008A88C 21200002 */   addu      $a0, $s0, $zero
  .L8008A890:
    /* 7B090 8008A890 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 7B094 8008A894 1800B08F */  lw         $s0, 0x18($sp)
    /* 7B098 8008A898 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 7B09C 8008A89C 0800E003 */  jr         $ra
    /* 7B0A0 8008A8A0 00000000 */   nop
endlabel func_8008A740
