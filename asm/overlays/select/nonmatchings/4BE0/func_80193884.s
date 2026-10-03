nonmatching func_80193884, 0x10C

glabel func_80193884
    /* A90C 80193884 1080043C */  lui        $a0, %hi(D_800FB568)
    /* A910 80193888 68B5848C */  lw         $a0, %lo(D_800FB568)($a0)
    /* A914 8019388C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A918 80193890 1400BFAF */  sw         $ra, 0x14($sp)
    /* A91C 80193894 92B3020C */  jal        func_800ACE48
    /* A920 80193898 1000B0AF */   sw        $s0, 0x10($sp)
    /* A924 8019389C 1080043C */  lui        $a0, %hi(D_800FB56C)
    /* A928 801938A0 6CB5848C */  lw         $a0, %lo(D_800FB56C)($a0)
    /* A92C 801938A4 92B3020C */  jal        func_800ACE48
    /* A930 801938A8 00000000 */   nop
    /* A934 801938AC 1080043C */  lui        $a0, %hi(D_800FB570)
    /* A938 801938B0 70B5848C */  lw         $a0, %lo(D_800FB570)($a0)
    /* A93C 801938B4 92B3020C */  jal        func_800ACE48
    /* A940 801938B8 00000000 */   nop
    /* A944 801938BC 1080043C */  lui        $a0, %hi(D_800FB574)
    /* A948 801938C0 74B5848C */  lw         $a0, %lo(D_800FB574)($a0)
    /* A94C 801938C4 1080103C */  lui        $s0, %hi(D_800FF748)
    /* A950 801938C8 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* A954 801938CC 92B3020C */  jal        func_800ACE48
    /* A958 801938D0 00000000 */   nop
  .L801938D4:
    /* A95C 801938D4 4E16030C */  jal        func_800C5938
    /* A960 801938D8 21200000 */   addu      $a0, $zero, $zero
    /* A964 801938DC FDFF4010 */  beqz       $v0, .L801938D4
    /* A968 801938E0 00000000 */   nop
  .L801938E4:
    /* A96C 801938E4 C849060C */  jal        func_80192720
    /* A970 801938E8 21200000 */   addu      $a0, $zero, $zero
    /* A974 801938EC 21184000 */  addu       $v1, $v0, $zero
    /* A978 801938F0 FCFF6010 */  beqz       $v1, .L801938E4
    /* A97C 801938F4 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* A980 801938F8 05006210 */  beq        $v1, $v0, .L80193910
    /* A984 801938FC 01000224 */   addiu     $v0, $zero, 0x1
    /* A988 80193900 1C006210 */  beq        $v1, $v0, .L80193974
    /* A98C 80193904 21100000 */   addu      $v0, $zero, $zero
    /* A990 80193908 5F4E0608 */  j          .L8019397C
    /* A994 8019390C 00000000 */   nop
  .L80193910:
    /* A998 80193910 1E80023C */  lui        $v0, %hi(D_801D8DBD)
    /* A99C 80193914 BD8D4290 */  lbu        $v0, %lo(D_801D8DBD)($v0)
    /* A9A0 80193918 00000000 */  nop
    /* A9A4 8019391C 01004224 */  addiu      $v0, $v0, 0x1
    /* A9A8 80193920 1E80013C */  lui        $at, %hi(D_801D8DBD)
    /* A9AC 80193924 BD8D22A0 */  sb         $v0, %lo(D_801D8DBD)($at)
    /* A9B0 80193928 FF004230 */  andi       $v0, $v0, 0xFF
    /* A9B4 8019392C 0500422C */  sltiu      $v0, $v0, 0x5
    /* A9B8 80193930 12004014 */  bnez       $v0, .L8019397C
    /* A9BC 80193934 21100000 */   addu      $v0, $zero, $zero
    /* A9C0 80193938 A84F060C */  jal        func_80193EA0
    /* A9C4 8019393C 00000000 */   nop
    /* A9C8 80193940 1E80013C */  lui        $at, %hi(D_801D8DBD)
    /* A9CC 80193944 BD8D20A0 */  sb         $zero, %lo(D_801D8DBD)($at)
    /* A9D0 80193948 0100013C */  lui        $at, (0x10000 >> 16)
    /* A9D4 8019394C 21080102 */  addu       $at, $s0, $at
    /* A9D8 80193950 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* A9DC 80193954 61000224 */  addiu      $v0, $zero, 0x61
    /* A9E0 80193958 04006210 */  beq        $v1, $v0, .L8019396C
    /* A9E4 8019395C 60000224 */   addiu     $v0, $zero, 0x60
    /* A9E8 80193960 0100013C */  lui        $at, (0x10000 >> 16)
    /* A9EC 80193964 21080102 */  addu       $at, $s0, $at
    /* A9F0 80193968 DAAB22A0 */  sb         $v0, -0x5426($at)
  .L8019396C:
    /* A9F4 8019396C 5F4E0608 */  j          .L8019397C
    /* A9F8 80193970 01000224 */   addiu     $v0, $zero, 0x1
  .L80193974:
    /* A9FC 80193974 1E80013C */  lui        $at, %hi(D_801D8DBD)
    /* AA00 80193978 BD8D20A0 */  sb         $zero, %lo(D_801D8DBD)($at)
  .L8019397C:
    /* AA04 8019397C 1400BF8F */  lw         $ra, 0x14($sp)
    /* AA08 80193980 1000B08F */  lw         $s0, 0x10($sp)
    /* AA0C 80193984 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AA10 80193988 0800E003 */  jr         $ra
    /* AA14 8019398C 00000000 */   nop
endlabel func_80193884
