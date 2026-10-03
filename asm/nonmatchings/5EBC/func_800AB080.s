nonmatching func_800AB080, 0xA4

glabel func_800AB080
    /* 9B880 800AB080 21280000 */  addu       $a1, $zero, $zero
    /* 9B884 800AB084 0E80073C */  lui        $a3, %hi(D_800E6AA0)
    /* 9B888 800AB088 A06AE724 */  addiu      $a3, $a3, %lo(D_800E6AA0)
    /* 9B88C 800AB08C 0D80063C */  lui        $a2, %hi(D_800CE738)
    /* 9B890 800AB090 38E7C624 */  addiu      $a2, $a2, %lo(D_800CE738)
  .L800AB094:
    /* 9B894 800AB094 001C0500 */  sll        $v1, $a1, 16
    /* 9B898 800AB098 03240300 */  sra        $a0, $v1, 16
    /* 9B89C 800AB09C 0000E284 */  lh         $v0, 0x0($a3)
    /* 9B8A0 800AB0A0 0F80013C */  lui        $at, %hi(D_800F1040)
    /* 9B8A4 800AB0A4 40102124 */  addiu      $at, $at, %lo(D_800F1040)
    /* 9B8A8 800AB0A8 21082400 */  addu       $at, $at, $a0
    /* 9B8AC 800AB0AC 00002390 */  lbu        $v1, 0x0($at)
    /* 9B8B0 800AB0B0 40100200 */  sll        $v0, $v0, 1
    /* 9B8B4 800AB0B4 21104600 */  addu       $v0, $v0, $a2
    /* 9B8B8 800AB0B8 00004284 */  lh         $v0, 0x0($v0)
    /* 9B8BC 800AB0BC 00000000 */  nop
    /* 9B8C0 800AB0C0 18006200 */  mult       $v1, $v0
    /* 9B8C4 800AB0C4 12100000 */  mflo       $v0
    /* 9B8C8 800AB0C8 00140200 */  sll        $v0, $v0, 16
    /* 9B8CC 800AB0CC 03140200 */  sra        $v0, $v0, 16
    /* 9B8D0 800AB0D0 02004104 */  bgez       $v0, .L800AB0DC
    /* 9B8D4 800AB0D4 0100A324 */   addiu     $v1, $a1, 0x1
    /* 9B8D8 800AB0D8 7F004224 */  addiu      $v0, $v0, 0x7F
  .L800AB0DC:
    /* 9B8DC 800AB0DC C2110200 */  srl        $v0, $v0, 7
    /* 9B8E0 800AB0E0 21286000 */  addu       $a1, $v1, $zero
    /* 9B8E4 800AB0E4 C0200400 */  sll        $a0, $a0, 3
    /* 9B8E8 800AB0E8 001C0300 */  sll        $v1, $v1, 16
    /* 9B8EC 800AB0EC 031C0300 */  sra        $v1, $v1, 16
    /* 9B8F0 800AB0F0 27006328 */  slti       $v1, $v1, 0x27
    /* 9B8F4 800AB0F4 0D80013C */  lui        $at, %hi(D_800CE86C)
    /* 9B8F8 800AB0F8 6CE82124 */  addiu      $at, $at, %lo(D_800CE86C)
    /* 9B8FC 800AB0FC 21082400 */  addu       $at, $at, $a0
    /* 9B900 800AB100 000022A0 */  sb         $v0, 0x0($at)
    /* 9B904 800AB104 0D80013C */  lui        $at, %hi(D_800CE86C + 0x1)
    /* 9B908 800AB108 6DE82124 */  addiu      $at, $at, %lo(D_800CE86C + 0x1)
    /* 9B90C 800AB10C 21082400 */  addu       $at, $at, $a0
    /* 9B910 800AB110 000022A0 */  sb         $v0, 0x0($at)
    /* 9B914 800AB114 DFFF6014 */  bnez       $v1, .L800AB094
    /* 9B918 800AB118 00000000 */   nop
    /* 9B91C 800AB11C 0800E003 */  jr         $ra
    /* 9B920 800AB120 00000000 */   nop
endlabel func_800AB080
