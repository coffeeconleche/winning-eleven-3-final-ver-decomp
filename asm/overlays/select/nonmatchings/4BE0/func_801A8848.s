nonmatching func_801A8848, 0x1A8

glabel func_801A8848
    /* 1F8D0 801A8848 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 1F8D4 801A884C 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 1F8D8 801A8850 21A88000 */  addu       $s5, $a0, $zero
    /* 1F8DC 801A8854 4000B6AF */  sw         $s6, 0x40($sp)
    /* 1F8E0 801A8858 21B0A002 */  addu       $s6, $s5, $zero
    /* 1F8E4 801A885C 4800BEAF */  sw         $fp, 0x48($sp)
    /* 1F8E8 801A8860 21F0E000 */  addu       $fp, $a3, $zero
    /* 1F8EC 801A8864 6000A393 */  lbu        $v1, 0x60($sp)
    /* 1F8F0 801A8868 FFFFC230 */  andi       $v0, $a2, 0xFFFF
    /* 1F8F4 801A886C 4400B7AF */  sw         $s7, 0x44($sp)
    /* 1F8F8 801A8870 6400B793 */  lbu        $s7, 0x64($sp)
    /* 1F8FC 801A8874 E803422C */  sltiu      $v0, $v0, 0x3E8
    /* 1F900 801A8878 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 1F904 801A887C 3800B4AF */  sw         $s4, 0x38($sp)
    /* 1F908 801A8880 3400B3AF */  sw         $s3, 0x34($sp)
    /* 1F90C 801A8884 3000B2AF */  sw         $s2, 0x30($sp)
    /* 1F910 801A8888 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 1F914 801A888C 2800B0AF */  sw         $s0, 0x28($sp)
    /* 1F918 801A8890 1800A5A7 */  sh         $a1, 0x18($sp)
    /* 1F91C 801A8894 02004014 */  bnez       $v0, .L801A88A0
    /* 1F920 801A8898 2000A3A3 */   sb        $v1, 0x20($sp)
    /* 1F924 801A889C E7030624 */  addiu      $a2, $zero, 0x3E7
  .L801A88A0:
    /* 1F928 801A88A0 FFFFD230 */  andi       $s2, $a2, 0xFFFF
    /* 1F92C 801A88A4 6400422E */  sltiu      $v0, $s2, 0x64
    /* 1F930 801A88A8 23004014 */  bnez       $v0, .L801A8938
    /* 1F934 801A88AC 0A00422E */   sltiu     $v0, $s2, 0xA
    /* 1F938 801A88B0 EB51023C */  lui        $v0, (0x51EB851F >> 16)
    /* 1F93C 801A88B4 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* 1F940 801A88B8 19004202 */  multu      $s2, $v0
    /* 1F944 801A88BC 00241500 */  sll        $a0, $s5, 16
    /* 1F948 801A88C0 03240400 */  sra        $a0, $a0, 16
    /* 1F94C 801A88C4 008C0500 */  sll        $s1, $a1, 16
    /* 1F950 801A88C8 038C1100 */  sra        $s1, $s1, 16
    /* 1F954 801A88CC 21282002 */  addu       $a1, $s1, $zero
    /* 1F958 801A88D0 2000B493 */  lbu        $s4, 0x20($sp)
    /* 1F95C 801A88D4 FF00F332 */  andi       $s3, $s7, 0xFF
    /* 1F960 801A88D8 1000B3AF */  sw         $s3, 0x10($sp)
    /* 1F964 801A88DC 21388002 */  addu       $a3, $s4, $zero
    /* 1F968 801A88E0 10180000 */  mfhi       $v1
    /* 1F96C 801A88E4 42810300 */  srl        $s0, $v1, 5
    /* 1F970 801A88E8 6CA1060C */  jal        func_801A85B0
    /* 1F974 801A88EC FF000632 */   andi      $a2, $s0, 0xFF
    /* 1F978 801A88F0 40101000 */  sll        $v0, $s0, 1
    /* 1F97C 801A88F4 21105000 */  addu       $v0, $v0, $s0
    /* 1F980 801A88F8 C0100200 */  sll        $v0, $v0, 3
    /* 1F984 801A88FC 21105000 */  addu       $v0, $v0, $s0
    /* 1F988 801A8900 80100200 */  sll        $v0, $v0, 2
    /* 1F98C 801A8904 23304202 */  subu       $a2, $s2, $v0
    /* 1F990 801A8908 FFFFD230 */  andi       $s2, $a2, 0xFFFF
    /* 1F994 801A890C CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 1F998 801A8910 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 1F99C 801A8914 19004202 */  multu      $s2, $v0
    /* 1F9A0 801A8918 2120BE02 */  addu       $a0, $s5, $fp
    /* 1F9A4 801A891C 21B08000 */  addu       $s6, $a0, $zero
    /* 1F9A8 801A8920 00240400 */  sll        $a0, $a0, 16
    /* 1F9AC 801A8924 03240400 */  sra        $a0, $a0, 16
    /* 1F9B0 801A8928 21282002 */  addu       $a1, $s1, $zero
    /* 1F9B4 801A892C 21388002 */  addu       $a3, $s4, $zero
    /* 1F9B8 801A8930 5CA20608 */  j          .L801A8970
    /* 1F9BC 801A8934 1000B3AF */   sw        $s3, 0x10($sp)
  .L801A8938:
    /* 1F9C0 801A8938 16004014 */  bnez       $v0, .L801A8994
    /* 1F9C4 801A893C 2120DE02 */   addu      $a0, $s6, $fp
    /* 1F9C8 801A8940 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 1F9CC 801A8944 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 1F9D0 801A8948 19004202 */  multu      $s2, $v0
    /* 1F9D4 801A894C 2120BE02 */  addu       $a0, $s5, $fp
    /* 1F9D8 801A8950 21B08000 */  addu       $s6, $a0, $zero
    /* 1F9DC 801A8954 00240400 */  sll        $a0, $a0, 16
    /* 1F9E0 801A8958 03240400 */  sra        $a0, $a0, 16
    /* 1F9E4 801A895C 002C0500 */  sll        $a1, $a1, 16
    /* 1F9E8 801A8960 2000A393 */  lbu        $v1, 0x20($sp)
    /* 1F9EC 801A8964 032C0500 */  sra        $a1, $a1, 16
    /* 1F9F0 801A8968 1000B7AF */  sw         $s7, 0x10($sp)
    /* 1F9F4 801A896C 21386000 */  addu       $a3, $v1, $zero
  .L801A8970:
    /* 1F9F8 801A8970 10180000 */  mfhi       $v1
    /* 1F9FC 801A8974 C2800300 */  srl        $s0, $v1, 3
    /* 1FA00 801A8978 6CA1060C */  jal        func_801A85B0
    /* 1FA04 801A897C FF000632 */   andi      $a2, $s0, 0xFF
    /* 1FA08 801A8980 80101000 */  sll        $v0, $s0, 2
    /* 1FA0C 801A8984 21105000 */  addu       $v0, $v0, $s0
    /* 1FA10 801A8988 40100200 */  sll        $v0, $v0, 1
    /* 1FA14 801A898C 23304202 */  subu       $a2, $s2, $v0
    /* 1FA18 801A8990 2120DE02 */  addu       $a0, $s6, $fp
  .L801A8994:
    /* 1FA1C 801A8994 00240400 */  sll        $a0, $a0, 16
    /* 1FA20 801A8998 03240400 */  sra        $a0, $a0, 16
    /* 1FA24 801A899C 1800A397 */  lhu        $v1, 0x18($sp)
    /* 1FA28 801A89A0 FF00C630 */  andi       $a2, $a2, 0xFF
    /* 1FA2C 801A89A4 1000B7AF */  sw         $s7, 0x10($sp)
    /* 1FA30 801A89A8 002C0300 */  sll        $a1, $v1, 16
    /* 1FA34 801A89AC 2000A393 */  lbu        $v1, 0x20($sp)
    /* 1FA38 801A89B0 032C0500 */  sra        $a1, $a1, 16
    /* 1FA3C 801A89B4 6CA1060C */  jal        func_801A85B0
    /* 1FA40 801A89B8 21386000 */   addu      $a3, $v1, $zero
    /* 1FA44 801A89BC 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 1FA48 801A89C0 4800BE8F */  lw         $fp, 0x48($sp)
    /* 1FA4C 801A89C4 4400B78F */  lw         $s7, 0x44($sp)
    /* 1FA50 801A89C8 4000B68F */  lw         $s6, 0x40($sp)
    /* 1FA54 801A89CC 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 1FA58 801A89D0 3800B48F */  lw         $s4, 0x38($sp)
    /* 1FA5C 801A89D4 3400B38F */  lw         $s3, 0x34($sp)
    /* 1FA60 801A89D8 3000B28F */  lw         $s2, 0x30($sp)
    /* 1FA64 801A89DC 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 1FA68 801A89E0 2800B08F */  lw         $s0, 0x28($sp)
    /* 1FA6C 801A89E4 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 1FA70 801A89E8 0800E003 */  jr         $ra
    /* 1FA74 801A89EC 00000000 */   nop
endlabel func_801A8848
