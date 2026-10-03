nonmatching func_801B4C84, 0x324

glabel func_801B4C84
    /* 2BD0C 801B4C84 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2BD10 801B4C88 21188000 */  addu       $v1, $a0, $zero
    /* 2BD14 801B4C8C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2BD18 801B4C90 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 2BD1C 801B4C94 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 2BD20 801B4C98 FF006230 */  andi       $v0, $v1, 0xFF
    /* 2BD24 801B4C9C 4100422C */  sltiu      $v0, $v0, 0x41
    /* 2BD28 801B4CA0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2BD2C 801B4CA4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2BD30 801B4CA8 02004014 */  bnez       $v0, .L801B4CB4
    /* 2BD34 801B4CAC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2BD38 801B4CB0 BFFF8324 */  addiu      $v1, $a0, -0x41
  .L801B4CB4:
    /* 2BD3C 801B4CB4 21480000 */  addu       $t1, $zero, $zero
    /* 2BD40 801B4CB8 FF006230 */  andi       $v0, $v1, 0xFF
    /* 2BD44 801B4CBC 80680200 */  sll        $t5, $v0, 2
    /* 2BD48 801B4CC0 1E800C3C */  lui        $t4, %hi(D_801D8798)
    /* 2BD4C 801B4CC4 98878C25 */  addiu      $t4, $t4, %lo(D_801D8798)
  .L801B4CC8:
    /* 2BD50 801B4CC8 2140A901 */  addu       $t0, $t5, $t1
    /* 2BD54 801B4CCC C0280800 */  sll        $a1, $t0, 3
    /* 2BD58 801B4CD0 2128A800 */  addu       $a1, $a1, $t0
    /* 2BD5C 801B4CD4 80280500 */  sll        $a1, $a1, 2
    /* 2BD60 801B4CD8 21284502 */  addu       $a1, $s2, $a1
    /* 2BD64 801B4CDC 1E80013C */  lui        $at, %hi(D_801D87B0)
    /* 2BD68 801B4CE0 21082900 */  addu       $at, $at, $t1
    /* 2BD6C 801B4CE4 B08728A0 */  sb         $t0, %lo(D_801D87B0)($at)
    /* 2BD70 801B4CE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2BD74 801B4CEC 2108A100 */  addu       $at, $a1, $at
    /* 2BD78 801B4CF0 288F2490 */  lbu        $a0, -0x70D8($at)
    /* 2BD7C 801B4CF4 00000000 */  nop
    /* 2BD80 801B4CF8 40190400 */  sll        $v1, $a0, 5
    /* 2BD84 801B4CFC 23186400 */  subu       $v1, $v1, $a0
    /* 2BD88 801B4D00 80110300 */  sll        $v0, $v1, 6
    /* 2BD8C 801B4D04 23104300 */  subu       $v0, $v0, $v1
    /* 2BD90 801B4D08 C0100200 */  sll        $v0, $v0, 3
    /* 2BD94 801B4D0C 21104400 */  addu       $v0, $v0, $a0
    /* 2BD98 801B4D10 80180200 */  sll        $v1, $v0, 2
    /* 2BD9C 801B4D14 21104300 */  addu       $v0, $v0, $v1
    /* 2BDA0 801B4D18 C0510200 */  sll        $t2, $v0, 7
    /* 2BDA4 801B4D1C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2BDA8 801B4D20 2108A100 */  addu       $at, $a1, $at
    /* 2BDAC 801B4D24 2C8F2494 */  lhu        $a0, -0x70D4($at)
    /* 2BDB0 801B4D28 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2BDB4 801B4D2C 2108A100 */  addu       $at, $a1, $at
    /* 2BDB8 801B4D30 2E8F2394 */  lhu        $v1, -0x70D2($at)
    /* 2BDBC 801B4D34 21584001 */  addu       $t3, $t2, $zero
    /* 2BDC0 801B4D38 23188300 */  subu       $v1, $a0, $v1
    /* 2BDC4 801B4D3C 80100300 */  sll        $v0, $v1, 2
    /* 2BDC8 801B4D40 21104300 */  addu       $v0, $v0, $v1
    /* 2BDCC 801B4D44 C0100200 */  sll        $v0, $v0, 3
    /* 2BDD0 801B4D48 23104300 */  subu       $v0, $v0, $v1
    /* 2BDD4 801B4D4C 00110200 */  sll        $v0, $v0, 4
    /* 2BDD8 801B4D50 21104300 */  addu       $v0, $v0, $v1
    /* 2BDDC 801B4D54 00310200 */  sll        $a2, $v0, 4
    /* 2BDE0 801B4D58 2138C000 */  addu       $a3, $a2, $zero
    /* 2BDE4 801B4D5C 80100400 */  sll        $v0, $a0, 2
    /* 2BDE8 801B4D60 21104400 */  addu       $v0, $v0, $a0
    /* 2BDEC 801B4D64 40200200 */  sll        $a0, $v0, 1
    /* 2BDF0 801B4D68 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2BDF4 801B4D6C 2108A100 */  addu       $at, $a1, $at
    /* 2BDF8 801B4D70 268F2290 */  lbu        $v0, -0x70DA($at)
    /* 2BDFC 801B4D74 00000000 */  nop
    /* 2BE00 801B4D78 07004010 */  beqz       $v0, .L801B4D98
    /* 2BE04 801B4D7C 21188000 */   addu      $v1, $a0, $zero
    /* 2BE08 801B4D80 9A3B023C */  lui        $v0, (0x3B9ACA00 >> 16)
    /* 2BE0C 801B4D84 00CA4234 */  ori        $v0, $v0, (0x3B9ACA00 & 0xFFFF)
    /* 2BE10 801B4D88 2110C200 */  addu       $v0, $a2, $v0
    /* 2BE14 801B4D8C 21104201 */  addu       $v0, $t2, $v0
    /* 2BE18 801B4D90 68D30608 */  j          .L801B4DA0
    /* 2BE1C 801B4D94 21204400 */   addu      $a0, $v0, $a0
  .L801B4D98:
    /* 2BE20 801B4D98 21106701 */  addu       $v0, $t3, $a3
    /* 2BE24 801B4D9C 21204300 */  addu       $a0, $v0, $v1
  .L801B4DA0:
    /* 2BE28 801B4DA0 21104802 */  addu       $v0, $s2, $t0
    /* 2BE2C 801B4DA4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2BE30 801B4DA8 21084100 */  addu       $at, $v0, $at
    /* 2BE34 801B4DAC 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 2BE38 801B4DB0 00000000 */  nop
    /* 2BE3C 801B4DB4 C0100300 */  sll        $v0, $v1, 3
    /* 2BE40 801B4DB8 21104300 */  addu       $v0, $v0, $v1
    /* 2BE44 801B4DBC 80100200 */  sll        $v0, $v0, 2
    /* 2BE48 801B4DC0 21104202 */  addu       $v0, $s2, $v0
    /* 2BE4C 801B4DC4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2BE50 801B4DC8 21084100 */  addu       $at, $v0, $at
    /* 2BE54 801B4DCC 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 2BE58 801B4DD0 00000000 */  nop
    /* 2BE5C 801B4DD4 C0004230 */  andi       $v0, $v0, 0xC0
    /* 2BE60 801B4DD8 02004014 */  bnez       $v0, .L801B4DE4
    /* 2BE64 801B4DDC 21188000 */   addu      $v1, $a0, $zero
    /* 2BE68 801B4DE0 01006324 */  addiu      $v1, $v1, 0x1
  .L801B4DE4:
    /* 2BE6C 801B4DE4 000083AD */  sw         $v1, 0x0($t4)
    /* 2BE70 801B4DE8 01002925 */  addiu      $t1, $t1, 0x1
    /* 2BE74 801B4DEC 04002229 */  slti       $v0, $t1, 0x4
    /* 2BE78 801B4DF0 B5FF4014 */  bnez       $v0, .L801B4CC8
    /* 2BE7C 801B4DF4 04008C25 */   addiu     $t4, $t4, 0x4
    /* 2BE80 801B4DF8 1E80113C */  lui        $s1, %hi(D_801D87B0)
    /* 2BE84 801B4DFC B0873126 */  addiu      $s1, $s1, %lo(D_801D87B0)
    /* 2BE88 801B4E00 1E80103C */  lui        $s0, %hi(D_801D8798)
    /* 2BE8C 801B4E04 98871026 */  addiu      $s0, $s0, %lo(D_801D8798)
    /* 2BE90 801B4E08 21202002 */  addu       $a0, $s1, $zero
    /* 2BE94 801B4E0C 21280002 */  addu       $a1, $s0, $zero
    /* 2BE98 801B4E10 21300000 */  addu       $a2, $zero, $zero
    /* 2BE9C 801B4E14 FFA5060C */  jal        func_801A97FC
    /* 2BEA0 801B4E18 03000724 */   addiu     $a3, $zero, 0x3
    /* 2BEA4 801B4E1C 01000924 */  addiu      $t1, $zero, 0x1
    /* 2BEA8 801B4E20 66660F3C */  lui        $t7, (0x66666667 >> 16)
    /* 2BEAC 801B4E24 6766EF35 */  ori        $t7, $t7, (0x66666667 & 0xFFFF)
    /* 2BEB0 801B4E28 01001824 */  addiu      $t8, $zero, 0x1
    /* 2BEB4 801B4E2C 1E80023C */  lui        $v0, %hi(D_801D87A8)
    /* 2BEB8 801B4E30 A8874224 */  addiu      $v0, $v0, %lo(D_801D87A8)
    /* 2BEBC 801B4E34 03004C24 */  addiu      $t4, $v0, 0x3
    /* 2BEC0 801B4E38 02000724 */  addiu      $a3, $zero, 0x2
    /* 2BEC4 801B4E3C 01004B24 */  addiu      $t3, $v0, 0x1
    /* 2BEC8 801B4E40 02004A24 */  addiu      $t2, $v0, 0x2
    /* 2BECC 801B4E44 21684000 */  addu       $t5, $v0, $zero
    /* 2BED0 801B4E48 04000E26 */  addiu      $t6, $s0, 0x4
    /* 2BED4 801B4E4C 00002392 */  lbu        $v1, 0x0($s1)
    /* 2BED8 801B4E50 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BEDC 801B4E54 1E80013C */  lui        $at, %hi(D_801D87A9)
    /* 2BEE0 801B4E58 A98722A0 */  sb         $v0, %lo(D_801D87A9)($at)
    /* 2BEE4 801B4E5C 0000A3A1 */  sb         $v1, 0x0($t5)
  .L801B4E60:
    /* 2BEE8 801B4E60 1E80013C */  lui        $at, %hi(D_801D87AF)
    /* 2BEEC 801B4E64 21082700 */  addu       $at, $at, $a3
    /* 2BEF0 801B4E68 AF872290 */  lbu        $v0, %lo(D_801D87AF)($at)
    /* 2BEF4 801B4E6C 00000000 */  nop
    /* 2BEF8 801B4E70 000042A1 */  sb         $v0, 0x0($t2)
    /* 2BEFC 801B4E74 0000C28D */  lw         $v0, 0x0($t6)
    /* 2BF00 801B4E78 00000000 */  nop
    /* 2BF04 801B4E7C 18004F00 */  mult       $v0, $t7
    /* 2BF08 801B4E80 10400000 */  mfhi       $t0
    /* 2BF0C 801B4E84 0000038E */  lw         $v1, 0x0($s0)
    /* 2BF10 801B4E88 00000000 */  nop
    /* 2BF14 801B4E8C 18006F00 */  mult       $v1, $t7
    /* 2BF18 801B4E90 C3170200 */  sra        $v0, $v0, 31
    /* 2BF1C 801B4E94 83200800 */  sra        $a0, $t0, 2
    /* 2BF20 801B4E98 23208200 */  subu       $a0, $a0, $v0
    /* 2BF24 801B4E9C C31F0300 */  sra        $v1, $v1, 31
    /* 2BF28 801B4EA0 10280000 */  mfhi       $a1
    /* 2BF2C 801B4EA4 83100500 */  sra        $v0, $a1, 2
    /* 2BF30 801B4EA8 23104300 */  subu       $v0, $v0, $v1
    /* 2BF34 801B4EAC 2A008214 */  bne        $a0, $v0, .L801B4F58
    /* 2BF38 801B4EB0 21400000 */   addu      $t0, $zero, $zero
    /* 2BF3C 801B4EB4 21280000 */  addu       $a1, $zero, $zero
    /* 2BF40 801B4EB8 1E80013C */  lui        $at, %hi(D_801D87AF)
    /* 2BF44 801B4EBC 21082700 */  addu       $at, $at, $a3
    /* 2BF48 801B4EC0 AF872390 */  lbu        $v1, %lo(D_801D87AF)($at)
    /* 2BF4C 801B4EC4 1E80013C */  lui        $at, %hi(D_801D87AE)
    /* 2BF50 801B4EC8 21082700 */  addu       $at, $at, $a3
    /* 2BF54 801B4ECC AE872690 */  lbu        $a2, %lo(D_801D87AE)($at)
    /* 2BF58 801B4ED0 40100300 */  sll        $v0, $v1, 1
    /* 2BF5C 801B4ED4 21104300 */  addu       $v0, $v0, $v1
    /* 2BF60 801B4ED8 80200200 */  sll        $a0, $v0, 2
  .L801B4EDC:
    /* 2BF64 801B4EDC 21184402 */  addu       $v1, $s2, $a0
    /* 2BF68 801B4EE0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2BF6C 801B4EE4 21086100 */  addu       $at, $v1, $at
    /* 2BF70 801B4EE8 D1A92290 */  lbu        $v0, -0x562F($at)
    /* 2BF74 801B4EEC 00000000 */  nop
    /* 2BF78 801B4EF0 07004614 */  bne        $v0, $a2, .L801B4F10
    /* 2BF7C 801B4EF4 00000000 */   nop
    /* 2BF80 801B4EF8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2BF84 801B4EFC 21086100 */  addu       $at, $v1, $at
    /* 2BF88 801B4F00 D0A92290 */  lbu        $v0, -0x5630($at)
    /* 2BF8C 801B4F04 00000000 */  nop
    /* 2BF90 801B4F08 0A005810 */  beq        $v0, $t8, .L801B4F34
    /* 2BF94 801B4F0C 00000000 */   nop
  .L801B4F10:
    /* 2BF98 801B4F10 0100A524 */  addiu      $a1, $a1, 0x1
    /* 2BF9C 801B4F14 0300A228 */  slti       $v0, $a1, 0x3
    /* 2BFA0 801B4F18 F0FF4014 */  bnez       $v0, .L801B4EDC
    /* 2BFA4 801B4F1C 04008424 */   addiu     $a0, $a0, 0x4
  .L801B4F20:
    /* 2BFA8 801B4F20 0E000015 */  bnez       $t0, .L801B4F5C
    /* 2BFAC 801B4F24 00000000 */   nop
    /* 2BFB0 801B4F28 00006291 */  lbu        $v0, 0x0($t3)
    /* 2BFB4 801B4F2C D7D30608 */  j          .L801B4F5C
    /* 2BFB8 801B4F30 000082A1 */   sb        $v0, 0x0($t4)
  .L801B4F34:
    /* 2BFBC 801B4F34 00004291 */  lbu        $v0, 0x0($t2)
    /* 2BFC0 801B4F38 0000A391 */  lbu        $v1, 0x0($t5)
    /* 2BFC4 801B4F3C 0000A2A1 */  sb         $v0, 0x0($t5)
    /* 2BFC8 801B4F40 000043A1 */  sb         $v1, 0x0($t2)
    /* 2BFCC 801B4F44 00006291 */  lbu        $v0, 0x0($t3)
    /* 2BFD0 801B4F48 01000824 */  addiu      $t0, $zero, 0x1
    /* 2BFD4 801B4F4C 000082A1 */  sb         $v0, 0x0($t4)
    /* 2BFD8 801B4F50 C8D30608 */  j          .L801B4F20
    /* 2BFDC 801B4F54 000069A1 */   sb        $t1, 0x0($t3)
  .L801B4F58:
    /* 2BFE0 801B4F58 000087A1 */  sb         $a3, 0x0($t4)
  .L801B4F5C:
    /* 2BFE4 801B4F5C 02008C25 */  addiu      $t4, $t4, 0x2
    /* 2BFE8 801B4F60 0100E724 */  addiu      $a3, $a3, 0x1
    /* 2BFEC 801B4F64 02006B25 */  addiu      $t3, $t3, 0x2
    /* 2BFF0 801B4F68 02004A25 */  addiu      $t2, $t2, 0x2
    /* 2BFF4 801B4F6C 0200AD25 */  addiu      $t5, $t5, 0x2
    /* 2BFF8 801B4F70 04001026 */  addiu      $s0, $s0, 0x4
    /* 2BFFC 801B4F74 01002925 */  addiu      $t1, $t1, 0x1
    /* 2C000 801B4F78 04002229 */  slti       $v0, $t1, 0x4
    /* 2C004 801B4F7C B8FF4014 */  bnez       $v0, .L801B4E60
    /* 2C008 801B4F80 0400CE25 */   addiu     $t6, $t6, 0x4
    /* 2C00C 801B4F84 1E80023C */  lui        $v0, %hi(D_801D87A8)
    /* 2C010 801B4F88 A8874224 */  addiu      $v0, $v0, %lo(D_801D87A8)
    /* 2C014 801B4F8C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2C018 801B4F90 1800B28F */  lw         $s2, 0x18($sp)
    /* 2C01C 801B4F94 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C020 801B4F98 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C024 801B4F9C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2C028 801B4FA0 0800E003 */  jr         $ra
    /* 2C02C 801B4FA4 00000000 */   nop
endlabel func_801B4C84
