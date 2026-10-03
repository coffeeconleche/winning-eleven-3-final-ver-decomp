nonmatching func_800AFA04, 0xE0

glabel func_800AFA04
    /* A0204 800AFA04 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A0208 800AFA08 1000B0AF */  sw         $s0, 0x10($sp)
    /* A020C 800AFA0C 2180A000 */  addu       $s0, $a1, $zero
    /* A0210 800AFA10 0D80053C */  lui        $a1, %hi(D_800CEBB8)
    /* A0214 800AFA14 B8EBA58C */  lw         $a1, %lo(D_800CEBB8)($a1)
    /* A0218 800AFA18 1800BFAF */  sw         $ra, 0x18($sp)
    /* A021C 800AFA1C 1400B1AF */  sw         $s1, 0x14($sp)
    /* A0220 800AFA20 0000A28C */  lw         $v0, 0x0($a1)
    /* A0224 800AFA24 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* A0228 800AFA28 25104300 */  or         $v0, $v0, $v1
    /* A022C 800AFA2C 0000A2AC */  sw         $v0, 0x0($a1)
    /* A0230 800AFA30 0D80023C */  lui        $v0, %hi(D_800CEBB4)
    /* A0234 800AFA34 B4EB428C */  lw         $v0, %lo(D_800CEBB4)($v0)
    /* A0238 800AFA38 00000000 */  nop
    /* A023C 800AFA3C 000040AC */  sw         $zero, 0x0($v0)
    /* A0240 800AFA40 80101000 */  sll        $v0, $s0, 2
    /* A0244 800AFA44 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* A0248 800AFA48 0D80033C */  lui        $v1, %hi(D_800CEBAC)
    /* A024C 800AFA4C ACEB638C */  lw         $v1, %lo(D_800CEBAC)($v1)
    /* A0250 800AFA50 21208200 */  addu       $a0, $a0, $v0
    /* A0254 800AFA54 000064AC */  sw         $a0, 0x0($v1)
    /* A0258 800AFA58 0D80023C */  lui        $v0, %hi(D_800CEBB0)
    /* A025C 800AFA5C B0EB428C */  lw         $v0, %lo(D_800CEBB0)($v0)
    /* A0260 800AFA60 0011033C */  lui        $v1, (0x11000002 >> 16)
    /* A0264 800AFA64 000050AC */  sw         $s0, 0x0($v0)
    /* A0268 800AFA68 0D80023C */  lui        $v0, %hi(D_800CEBB4)
    /* A026C 800AFA6C B4EB428C */  lw         $v0, %lo(D_800CEBB4)($v0)
    /* A0270 800AFA70 02006334 */  ori        $v1, $v1, (0x11000002 & 0xFFFF)
    /* A0274 800AFA74 A0C2020C */  jal        func_800B0A80
    /* A0278 800AFA78 000043AC */   sw        $v1, 0x0($v0)
    /* A027C 800AFA7C 0D80023C */  lui        $v0, %hi(D_800CEBB4)
    /* A0280 800AFA80 B4EB428C */  lw         $v0, %lo(D_800CEBB4)($v0)
    /* A0284 800AFA84 00000000 */  nop
    /* A0288 800AFA88 0000428C */  lw         $v0, 0x0($v0)
    /* A028C 800AFA8C 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* A0290 800AFA90 24104300 */  and        $v0, $v0, $v1
    /* A0294 800AFA94 0E004010 */  beqz       $v0, .L800AFAD0
    /* A0298 800AFA98 21100002 */   addu      $v0, $s0, $zero
    /* A029C 800AFA9C 0001113C */  lui        $s1, (0x1000000 >> 16)
  .L800AFAA0:
    /* A02A0 800AFAA0 ADC2020C */  jal        func_800B0AB4
    /* A02A4 800AFAA4 00000000 */   nop
    /* A02A8 800AFAA8 09004014 */  bnez       $v0, .L800AFAD0
    /* A02AC 800AFAAC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A02B0 800AFAB0 0D80023C */  lui        $v0, %hi(D_800CEBB4)
    /* A02B4 800AFAB4 B4EB428C */  lw         $v0, %lo(D_800CEBB4)($v0)
    /* A02B8 800AFAB8 00000000 */  nop
    /* A02BC 800AFABC 0000428C */  lw         $v0, 0x0($v0)
    /* A02C0 800AFAC0 00000000 */  nop
    /* A02C4 800AFAC4 24105100 */  and        $v0, $v0, $s1
    /* A02C8 800AFAC8 F5FF4014 */  bnez       $v0, .L800AFAA0
    /* A02CC 800AFACC 21100002 */   addu      $v0, $s0, $zero
  .L800AFAD0:
    /* A02D0 800AFAD0 1800BF8F */  lw         $ra, 0x18($sp)
    /* A02D4 800AFAD4 1400B18F */  lw         $s1, 0x14($sp)
    /* A02D8 800AFAD8 1000B08F */  lw         $s0, 0x10($sp)
    /* A02DC 800AFADC 0800E003 */  jr         $ra
    /* A02E0 800AFAE0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AFA04
