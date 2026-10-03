nonmatching func_8005E9D4, 0xC0

glabel func_8005E9D4
    /* 4F1D4 8005E9D4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4F1D8 8005E9D8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4F1DC 8005E9DC 21808000 */  addu       $s0, $a0, $zero
    /* 4F1E0 8005E9E0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4F1E4 8005E9E4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4F1E8 8005E9E8 96030392 */  lbu        $v1, 0x396($s0)
    /* 4F1EC 8005E9EC 1180113C */  lui        $s1, %hi(D_8010C1D8)
    /* 4F1F0 8005E9F0 D8C13126 */  addiu      $s1, $s1, %lo(D_8010C1D8)
    /* 4F1F4 8005E9F4 21006004 */  bltz       $v1, .L8005EA7C
    /* 4F1F8 8005E9F8 04006228 */   slti      $v0, $v1, 0x4
    /* 4F1FC 8005E9FC 03004014 */  bnez       $v0, .L8005EA0C
    /* 4F200 8005EA00 0E000224 */   addiu     $v0, $zero, 0xE
    /* 4F204 8005EA04 1D006214 */  bne        $v1, $v0, .L8005EA7C
    /* 4F208 8005EA08 00000000 */   nop
  .L8005EA0C:
    /* 4F20C 8005EA0C 8896010C */  jal        func_80065A20
    /* 4F210 8005EA10 21200002 */   addu      $a0, $s0, $zero
    /* 4F214 8005EA14 1180013C */  lui        $at, %hi(D_8010C205)
    /* 4F218 8005EA18 05C222A0 */  sb         $v0, %lo(D_8010C205)($at)
    /* 4F21C 8005EA1C 0B9A010C */  jal        func_8006682C
    /* 4F220 8005EA20 21200002 */   addu      $a0, $s0, $zero
    /* 4F224 8005EA24 1180013C */  lui        $at, %hi(D_8010C1EB)
    /* 4F228 8005EA28 EBC120A0 */  sb         $zero, %lo(D_8010C1EB)($at)
    /* 4F22C 8005EA2C 99030292 */  lbu        $v0, 0x399($s0)
    /* 4F230 8005EA30 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 4F234 8005EA34 C0210200 */  sll        $a0, $v0, 7
    /* 4F238 8005EA38 2310A400 */  subu       $v0, $a1, $a0
    /* 4F23C 8005EA3C FF004330 */  andi       $v1, $v0, 0xFF
    /* 4F240 8005EA40 8100622C */  sltiu      $v0, $v1, 0x81
    /* 4F244 8005EA44 08004014 */  bnez       $v0, .L8005EA68
    /* 4F248 8005EA48 49006228 */   slti      $v0, $v1, 0x49
    /* 4F24C 8005EA4C 23108500 */  subu       $v0, $a0, $a1
    /* 4F250 8005EA50 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4F254 8005EA54 49004228 */  slti       $v0, $v0, 0x49
    /* 4F258 8005EA58 05004010 */  beqz       $v0, .L8005EA70
    /* 4F25C 8005EA5C 01000224 */   addiu     $v0, $zero, 0x1
    /* 4F260 8005EA60 9D7A0108 */  j          .L8005EA74
    /* 4F264 8005EA64 00000000 */   nop
  .L8005EA68:
    /* 4F268 8005EA68 02004014 */  bnez       $v0, .L8005EA74
    /* 4F26C 8005EA6C 01000224 */   addiu     $v0, $zero, 0x1
  .L8005EA70:
    /* 4F270 8005EA70 130022A2 */  sb         $v0, 0x13($s1)
  .L8005EA74:
    /* 4F274 8005EA74 A57A010C */  jal        func_8005EA94
    /* 4F278 8005EA78 21200002 */   addu      $a0, $s0, $zero
  .L8005EA7C:
    /* 4F27C 8005EA7C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4F280 8005EA80 1400B18F */  lw         $s1, 0x14($sp)
    /* 4F284 8005EA84 1000B08F */  lw         $s0, 0x10($sp)
    /* 4F288 8005EA88 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4F28C 8005EA8C 0800E003 */  jr         $ra
    /* 4F290 8005EA90 00000000 */   nop
endlabel func_8005E9D4
