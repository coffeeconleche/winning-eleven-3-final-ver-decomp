nonmatching func_8003D99C, 0x16C

glabel func_8003D99C
    /* 2E19C 8003D99C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2E1A0 8003D9A0 21388000 */  addu       $a3, $a0, $zero
    /* 2E1A4 8003D9A4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2E1A8 8003D9A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2E1AC 8003D9AC 9B03E290 */  lbu        $v0, 0x39B($a3)
    /* 2E1B0 8003D9B0 00000000 */  nop
    /* 2E1B4 8003D9B4 12004010 */  beqz       $v0, .L8003DA00
    /* 2E1B8 8003D9B8 2180A000 */   addu      $s0, $a1, $zero
    /* 2E1BC 8003D9BC 9203E290 */  lbu        $v0, 0x392($a3)
    /* 2E1C0 8003D9C0 9803E490 */  lbu        $a0, 0x398($a3)
    /* 2E1C4 8003D9C4 40180200 */  sll        $v1, $v0, 1
    /* 2E1C8 8003D9C8 21186200 */  addu       $v1, $v1, $v0
    /* 2E1CC 8003D9CC 80180300 */  sll        $v1, $v1, 2
    /* 2E1D0 8003D9D0 40110400 */  sll        $v0, $a0, 5
    /* 2E1D4 8003D9D4 21104400 */  addu       $v0, $v0, $a0
    /* 2E1D8 8003D9D8 C0100200 */  sll        $v0, $v0, 3
    /* 2E1DC 8003D9DC 21186200 */  addu       $v1, $v1, $v0
    /* 2E1E0 8003D9E0 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 2E1E4 8003D9E4 21082300 */  addu       $at, $at, $v1
    /* 2E1E8 8003D9E8 2CC3228C */  lw         $v0, %lo(D_8010C32C)($at)
    /* 2E1EC 8003D9EC 1B000324 */  addiu      $v1, $zero, 0x1B
    /* 2E1F0 8003D9F0 02150200 */  srl        $v0, $v0, 20
    /* 2E1F4 8003D9F4 0F004230 */  andi       $v0, $v0, 0xF
    /* 2E1F8 8003D9F8 90F60008 */  j          .L8003DA40
    /* 2E1FC 8003D9FC 23286200 */   subu      $a1, $v1, $v0
  .L8003DA00:
    /* 2E200 8003DA00 9203E290 */  lbu        $v0, 0x392($a3)
    /* 2E204 8003DA04 9803E490 */  lbu        $a0, 0x398($a3)
    /* 2E208 8003DA08 40180200 */  sll        $v1, $v0, 1
    /* 2E20C 8003DA0C 21186200 */  addu       $v1, $v1, $v0
    /* 2E210 8003DA10 80180300 */  sll        $v1, $v1, 2
    /* 2E214 8003DA14 40110400 */  sll        $v0, $a0, 5
    /* 2E218 8003DA18 21104400 */  addu       $v0, $v0, $a0
    /* 2E21C 8003DA1C C0100200 */  sll        $v0, $v0, 3
    /* 2E220 8003DA20 21186200 */  addu       $v1, $v1, $v0
    /* 2E224 8003DA24 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 2E228 8003DA28 21082300 */  addu       $at, $at, $v1
    /* 2E22C 8003DA2C 2CC3228C */  lw         $v0, %lo(D_8010C32C)($at)
    /* 2E230 8003DA30 00000000 */  nop
    /* 2E234 8003DA34 02150200 */  srl        $v0, $v0, 20
    /* 2E238 8003DA38 27100200 */  nor        $v0, $zero, $v0
    /* 2E23C 8003DA3C 0F004530 */  andi       $a1, $v0, 0xF
  .L8003DA40:
    /* 2E240 8003DA40 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 2E244 8003DA44 13004010 */  beqz       $v0, .L8003DA94
    /* 2E248 8003DA48 00000000 */   nop
    /* 2E24C 8003DA4C 9203E290 */  lbu        $v0, 0x392($a3)
    /* 2E250 8003DA50 9803E490 */  lbu        $a0, 0x398($a3)
    /* 2E254 8003DA54 40180200 */  sll        $v1, $v0, 1
    /* 2E258 8003DA58 21186200 */  addu       $v1, $v1, $v0
    /* 2E25C 8003DA5C 80180300 */  sll        $v1, $v1, 2
    /* 2E260 8003DA60 40110400 */  sll        $v0, $a0, 5
    /* 2E264 8003DA64 21104400 */  addu       $v0, $v0, $a0
    /* 2E268 8003DA68 C0100200 */  sll        $v0, $v0, 3
    /* 2E26C 8003DA6C 21186200 */  addu       $v1, $v1, $v0
    /* 2E270 8003DA70 1180013C */  lui        $at, %hi(D_8010C330)
    /* 2E274 8003DA74 21082300 */  addu       $at, $at, $v1
    /* 2E278 8003DA78 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 2E27C 8003DA7C AC03E390 */  lbu        $v1, 0x3AC($a3)
    /* 2E280 8003DA80 02110200 */  srl        $v0, $v0, 4
    /* 2E284 8003DA84 01004230 */  andi       $v0, $v0, 0x1
    /* 2E288 8003DA88 02006210 */  beq        $v1, $v0, .L8003DA94
    /* 2E28C 8003DA8C 00000000 */   nop
    /* 2E290 8003DA90 0400A524 */  addiu      $a1, $a1, 0x4
  .L8003DA94:
    /* 2E294 8003DA94 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 2E298 8003DA98 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 2E29C 8003DA9C 00000000 */  nop
    /* 2E2A0 8003DAA0 A4034490 */  lbu        $a0, 0x3A4($v0)
    /* 2E2A4 8003DAA4 00000000 */  nop
    /* 2E2A8 8003DAA8 23100402 */  subu       $v0, $s0, $a0
    /* 2E2AC 8003DAAC FF004330 */  andi       $v1, $v0, 0xFF
    /* 2E2B0 8003DAB0 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2E2B4 8003DAB4 08004014 */  bnez       $v0, .L8003DAD8
    /* 2E2B8 8003DAB8 21006228 */   slti      $v0, $v1, 0x21
    /* 2E2BC 8003DABC 23109000 */  subu       $v0, $a0, $s0
    /* 2E2C0 8003DAC0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2E2C4 8003DAC4 21004228 */  slti       $v0, $v0, 0x21
    /* 2E2C8 8003DAC8 06004010 */  beqz       $v0, .L8003DAE4
    /* 2E2CC 8003DACC 00000000 */   nop
    /* 2E2D0 8003DAD0 B9F60008 */  j          .L8003DAE4
    /* 2E2D4 8003DAD4 0600A524 */   addiu     $a1, $a1, 0x6
  .L8003DAD8:
    /* 2E2D8 8003DAD8 02004010 */  beqz       $v0, .L8003DAE4
    /* 2E2DC 8003DADC 00000000 */   nop
    /* 2E2E0 8003DAE0 0600A524 */  addiu      $a1, $a1, 0x6
  .L8003DAE4:
    /* 2E2E4 8003DAE4 E871010C */  jal        func_8005C7A0
    /* 2E2E8 8003DAE8 FF00A430 */   andi      $a0, $a1, 0xFF
    /* 2E2EC 8003DAEC 21800202 */  addu       $s0, $s0, $v0
    /* 2E2F0 8003DAF0 FF000232 */  andi       $v0, $s0, 0xFF
    /* 2E2F4 8003DAF4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2E2F8 8003DAF8 1000B08F */  lw         $s0, 0x10($sp)
    /* 2E2FC 8003DAFC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2E300 8003DB00 0800E003 */  jr         $ra
    /* 2E304 8003DB04 00000000 */   nop
endlabel func_8003D99C
