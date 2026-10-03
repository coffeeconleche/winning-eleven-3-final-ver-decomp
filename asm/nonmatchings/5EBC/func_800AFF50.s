nonmatching func_800AFF50, 0x280

glabel func_800AFF50
    /* A0750 800AFF50 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A0754 800AFF54 1400B1AF */  sw         $s1, 0x14($sp)
    /* A0758 800AFF58 21888000 */  addu       $s1, $a0, $zero
    /* A075C 800AFF5C 1800B2AF */  sw         $s2, 0x18($sp)
    /* A0760 800AFF60 2190A000 */  addu       $s2, $a1, $zero
    /* A0764 800AFF64 2400BFAF */  sw         $ra, 0x24($sp)
    /* A0768 800AFF68 2000B4AF */  sw         $s4, 0x20($sp)
    /* A076C 800AFF6C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A0770 800AFF70 A0C2020C */  jal        func_800B0A80
    /* A0774 800AFF74 1000B0AF */   sw        $s0, 0x10($sp)
    /* A0778 800AFF78 04002586 */  lh         $a1, 0x4($s1)
    /* A077C 800AFF7C 04002396 */  lhu        $v1, 0x4($s1)
    /* A0780 800AFF80 0A00A004 */  bltz       $a1, .L800AFFAC
    /* A0784 800AFF84 21206000 */   addu      $a0, $v1, $zero
    /* A0788 800AFF88 0D80023C */  lui        $v0, %hi(D_800CEAC8)
    /* A078C 800AFF8C C8EA4284 */  lh         $v0, %lo(D_800CEAC8)($v0)
    /* A0790 800AFF90 0D80033C */  lui        $v1, %hi(D_800CEAC8)
    /* A0794 800AFF94 C8EA6394 */  lhu        $v1, %lo(D_800CEAC8)($v1)
    /* A0798 800AFF98 2A104500 */  slt        $v0, $v0, $a1
    /* A079C 800AFF9C 04004010 */  beqz       $v0, .L800AFFB0
    /* A07A0 800AFFA0 00000000 */   nop
    /* A07A4 800AFFA4 ECBF0208 */  j          .L800AFFB0
    /* A07A8 800AFFA8 21206000 */   addu      $a0, $v1, $zero
  .L800AFFAC:
    /* A07AC 800AFFAC 21200000 */  addu       $a0, $zero, $zero
  .L800AFFB0:
    /* A07B0 800AFFB0 06002586 */  lh         $a1, 0x6($s1)
    /* A07B4 800AFFB4 06002396 */  lhu        $v1, 0x6($s1)
    /* A07B8 800AFFB8 0B00A004 */  bltz       $a1, .L800AFFE8
    /* A07BC 800AFFBC 040024A6 */   sh        $a0, 0x4($s1)
    /* A07C0 800AFFC0 21206000 */  addu       $a0, $v1, $zero
    /* A07C4 800AFFC4 0D80023C */  lui        $v0, %hi(D_800CEACA)
    /* A07C8 800AFFC8 CAEA4284 */  lh         $v0, %lo(D_800CEACA)($v0)
    /* A07CC 800AFFCC 0D80033C */  lui        $v1, %hi(D_800CEACA)
    /* A07D0 800AFFD0 CAEA6394 */  lhu        $v1, %lo(D_800CEACA)($v1)
    /* A07D4 800AFFD4 2A104500 */  slt        $v0, $v0, $a1
    /* A07D8 800AFFD8 05004010 */  beqz       $v0, .L800AFFF0
    /* A07DC 800AFFDC 00140400 */   sll       $v0, $a0, 16
    /* A07E0 800AFFE0 FBBF0208 */  j          .L800AFFEC
    /* A07E4 800AFFE4 21206000 */   addu      $a0, $v1, $zero
  .L800AFFE8:
    /* A07E8 800AFFE8 21200000 */  addu       $a0, $zero, $zero
  .L800AFFEC:
    /* A07EC 800AFFEC 00140400 */  sll        $v0, $a0, 16
  .L800AFFF0:
    /* A07F0 800AFFF0 04002386 */  lh         $v1, 0x4($s1)
    /* A07F4 800AFFF4 03140200 */  sra        $v0, $v0, 16
    /* A07F8 800AFFF8 18006200 */  mult       $v1, $v0
    /* A07FC 800AFFFC 060024A6 */  sh         $a0, 0x6($s1)
    /* A0800 800B0000 12300000 */  mflo       $a2
    /* A0804 800B0004 0100C324 */  addiu      $v1, $a2, 0x1
    /* A0808 800B0008 C2170300 */  srl        $v0, $v1, 31
    /* A080C 800B000C 21186200 */  addu       $v1, $v1, $v0
    /* A0810 800B0010 43200300 */  sra        $a0, $v1, 1
    /* A0814 800B0014 0300801C */  bgtz       $a0, .L800B0024
    /* A0818 800B0018 43810300 */   sra       $s0, $v1, 5
    /* A081C 800B001C 6CC00208 */  j          .L800B01B0
    /* A0820 800B0020 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800B0024:
    /* A0824 800B0024 21180002 */  addu       $v1, $s0, $zero
    /* A0828 800B0028 00110300 */  sll        $v0, $v1, 4
    /* A082C 800B002C 23808200 */  subu       $s0, $a0, $v0
    /* A0830 800B0030 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A0834 800B0034 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A0838 800B0038 21A06000 */  addu       $s4, $v1, $zero
    /* A083C 800B003C 0000428C */  lw         $v0, 0x0($v0)
    /* A0840 800B0040 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* A0844 800B0044 24104300 */  and        $v0, $v0, $v1
    /* A0848 800B0048 0E004014 */  bnez       $v0, .L800B0084
    /* A084C 800B004C 00000000 */   nop
    /* A0850 800B0050 0004133C */  lui        $s3, (0x4000000 >> 16)
  .L800B0054:
    /* A0854 800B0054 ADC2020C */  jal        func_800B0AB4
    /* A0858 800B0058 00000000 */   nop
    /* A085C 800B005C 54004014 */  bnez       $v0, .L800B01B0
    /* A0860 800B0060 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A0864 800B0064 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A0868 800B0068 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A086C 800B006C 00000000 */  nop
    /* A0870 800B0070 0000428C */  lw         $v0, 0x0($v0)
    /* A0874 800B0074 00000000 */  nop
    /* A0878 800B0078 24105300 */  and        $v0, $v0, $s3
    /* A087C 800B007C F5FF4010 */  beqz       $v0, .L800B0054
    /* A0880 800B0080 00000000 */   nop
  .L800B0084:
    /* A0884 800B0084 0D80033C */  lui        $v1, %hi(D_800CEB9C)
    /* A0888 800B0088 9CEB638C */  lw         $v1, %lo(D_800CEB9C)($v1)
    /* A088C 800B008C 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* A0890 800B0090 000062AC */  sw         $v0, 0x0($v1)
    /* A0894 800B0094 0D80033C */  lui        $v1, %hi(D_800CEB98)
    /* A0898 800B0098 98EB638C */  lw         $v1, %lo(D_800CEB98)($v1)
    /* A089C 800B009C 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* A08A0 800B00A0 000062AC */  sw         $v0, 0x0($v1)
    /* A08A4 800B00A4 0D80033C */  lui        $v1, %hi(D_800CEB98)
    /* A08A8 800B00A8 98EB638C */  lw         $v1, %lo(D_800CEB98)($v1)
    /* A08AC 800B00AC 00C0023C */  lui        $v0, (0xC0000000 >> 16)
    /* A08B0 800B00B0 000062AC */  sw         $v0, 0x0($v1)
    /* A08B4 800B00B4 0D80033C */  lui        $v1, %hi(D_800CEB98)
    /* A08B8 800B00B8 98EB638C */  lw         $v1, %lo(D_800CEB98)($v1)
    /* A08BC 800B00BC 0000228E */  lw         $v0, 0x0($s1)
    /* A08C0 800B00C0 00000000 */  nop
    /* A08C4 800B00C4 000062AC */  sw         $v0, 0x0($v1)
    /* A08C8 800B00C8 0D80033C */  lui        $v1, %hi(D_800CEB98)
    /* A08CC 800B00CC 98EB638C */  lw         $v1, %lo(D_800CEB98)($v1)
    /* A08D0 800B00D0 0400228E */  lw         $v0, 0x4($s1)
    /* A08D4 800B00D4 00000000 */  nop
    /* A08D8 800B00D8 000062AC */  sw         $v0, 0x0($v1)
    /* A08DC 800B00DC 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A08E0 800B00E0 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A08E4 800B00E4 00000000 */  nop
    /* A08E8 800B00E8 0000428C */  lw         $v0, 0x0($v0)
    /* A08EC 800B00EC 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* A08F0 800B00F0 24104300 */  and        $v0, $v0, $v1
    /* A08F4 800B00F4 0E004014 */  bnez       $v0, .L800B0130
    /* A08F8 800B00F8 00000000 */   nop
    /* A08FC 800B00FC 0008113C */  lui        $s1, (0x8000000 >> 16)
  .L800B0100:
    /* A0900 800B0100 ADC2020C */  jal        func_800B0AB4
    /* A0904 800B0104 00000000 */   nop
    /* A0908 800B0108 29004014 */  bnez       $v0, .L800B01B0
    /* A090C 800B010C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A0910 800B0110 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A0914 800B0114 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A0918 800B0118 00000000 */  nop
    /* A091C 800B011C 0000428C */  lw         $v0, 0x0($v0)
    /* A0920 800B0120 00000000 */  nop
    /* A0924 800B0124 24105100 */  and        $v0, $v0, $s1
    /* A0928 800B0128 F5FF4010 */  beqz       $v0, .L800B0100
    /* A092C 800B012C 00000000 */   nop
  .L800B0130:
    /* A0930 800B0130 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A0934 800B0134 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A0938 800B0138 09000212 */  beq        $s0, $v0, .L800B0160
    /* A093C 800B013C FFFF0324 */   addiu     $v1, $zero, -0x1
  .L800B0140:
    /* A0940 800B0140 0D80023C */  lui        $v0, %hi(D_800CEB98)
    /* A0944 800B0144 98EB428C */  lw         $v0, %lo(D_800CEB98)($v0)
    /* A0948 800B0148 00000000 */  nop
    /* A094C 800B014C 0000428C */  lw         $v0, 0x0($v0)
    /* A0950 800B0150 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* A0954 800B0154 000042AE */  sw         $v0, 0x0($s2)
    /* A0958 800B0158 F9FF0316 */  bne        $s0, $v1, .L800B0140
    /* A095C 800B015C 04005226 */   addiu     $s2, $s2, 0x4
  .L800B0160:
    /* A0960 800B0160 12008012 */  beqz       $s4, .L800B01AC
    /* A0964 800B0164 0004033C */   lui       $v1, (0x4000003 >> 16)
    /* A0968 800B0168 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A096C 800B016C 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A0970 800B0170 03006334 */  ori        $v1, $v1, (0x4000003 & 0xFFFF)
    /* A0974 800B0174 000043AC */  sw         $v1, 0x0($v0)
    /* A0978 800B0178 0D80023C */  lui        $v0, %hi(D_800CEBA0)
    /* A097C 800B017C A0EB428C */  lw         $v0, %lo(D_800CEBA0)($v0)
    /* A0980 800B0180 0001043C */  lui        $a0, (0x1000200 >> 16)
    /* A0984 800B0184 000052AC */  sw         $s2, 0x0($v0)
    /* A0988 800B0188 00141400 */  sll        $v0, $s4, 16
    /* A098C 800B018C 0D80033C */  lui        $v1, %hi(D_800CEBA4)
    /* A0990 800B0190 A4EB638C */  lw         $v1, %lo(D_800CEBA4)($v1)
    /* A0994 800B0194 10004234 */  ori        $v0, $v0, 0x10
    /* A0998 800B0198 000062AC */  sw         $v0, 0x0($v1)
    /* A099C 800B019C 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A09A0 800B01A0 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A09A4 800B01A4 00028434 */  ori        $a0, $a0, (0x1000200 & 0xFFFF)
    /* A09A8 800B01A8 000044AC */  sw         $a0, 0x0($v0)
  .L800B01AC:
    /* A09AC 800B01AC 21100000 */  addu       $v0, $zero, $zero
  .L800B01B0:
    /* A09B0 800B01B0 2400BF8F */  lw         $ra, 0x24($sp)
    /* A09B4 800B01B4 2000B48F */  lw         $s4, 0x20($sp)
    /* A09B8 800B01B8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A09BC 800B01BC 1800B28F */  lw         $s2, 0x18($sp)
    /* A09C0 800B01C0 1400B18F */  lw         $s1, 0x14($sp)
    /* A09C4 800B01C4 1000B08F */  lw         $s0, 0x10($sp)
    /* A09C8 800B01C8 0800E003 */  jr         $ra
    /* A09CC 800B01CC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AFF50
