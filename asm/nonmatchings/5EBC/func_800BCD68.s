nonmatching func_800BCD68, 0x148

glabel func_800BCD68
    /* AD568 800BCD68 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AD56C 800BCD6C 1000B0AF */  sw         $s0, 0x10($sp)
    /* AD570 800BCD70 1400BFAF */  sw         $ra, 0x14($sp)
    /* AD574 800BCD74 8BEC020C */  jal        func_800BB22C
    /* AD578 800BCD78 21808000 */   addu      $s0, $a0, $zero
    /* AD57C 800BCD7C 21204000 */  addu       $a0, $v0, $zero
    /* AD580 800BCD80 00100232 */  andi       $v0, $s0, 0x1000
    /* AD584 800BCD84 07004010 */  beqz       $v0, .L800BCDA4
    /* AD588 800BCD88 01000324 */   addiu     $v1, $zero, 0x1
    /* AD58C 800BCD8C 0D80023C */  lui        $v0, %hi(D_800D4F50)
    /* AD590 800BCD90 504F4224 */  addiu      $v0, $v0, %lo(D_800D4F50)
    /* AD594 800BCD94 000043AC */  sw         $v1, 0x0($v0)
    /* AD598 800BCD98 FF0F0332 */  andi       $v1, $s0, 0xFFF
    /* AD59C 800BCD9C 6DF30208 */  j          .L800BCDB4
    /* AD5A0 800BCDA0 FCFF43AC */   sw        $v1, -0x4($v0)
  .L800BCDA4:
    /* AD5A4 800BCDA4 0D80023C */  lui        $v0, %hi(D_800D4F50)
    /* AD5A8 800BCDA8 504F4224 */  addiu      $v0, $v0, %lo(D_800D4F50)
    /* AD5AC 800BCDAC 000040AC */  sw         $zero, 0x0($v0)
    /* AD5B0 800BCDB0 FCFF50AC */  sw         $s0, -0x4($v0)
  .L800BCDB4:
    /* AD5B4 800BCDB4 0D80033C */  lui        $v1, %hi(D_800D4F4C)
    /* AD5B8 800BCDB8 4C4F638C */  lw         $v1, %lo(D_800D4F4C)($v1)
    /* AD5BC 800BCDBC 00000000 */  nop
    /* AD5C0 800BCDC0 06006228 */  slti       $v0, $v1, 0x6
    /* AD5C4 800BCDC4 34004010 */  beqz       $v0, .L800BCE98
    /* AD5C8 800BCDC8 0600622C */   sltiu     $v0, $v1, 0x6
    /* AD5CC 800BCDCC 2E004010 */  beqz       $v0, .L800BCE88
    /* AD5D0 800BCDD0 80100300 */   sll       $v0, $v1, 2
    /* AD5D4 800BCDD4 0180013C */  lui        $at, %hi(jtbl_800154FC)
    /* AD5D8 800BCDD8 21082200 */  addu       $at, $at, $v0
    /* AD5DC 800BCDDC FC54228C */  lw         $v0, %lo(jtbl_800154FC)($at)
    /* AD5E0 800BCDE0 00000000 */  nop
    /* AD5E4 800BCDE4 08004000 */  jr         $v0
    /* AD5E8 800BCDE8 00000000 */   nop
  jlabel .L800BCDEC
    /* AD5EC 800BCDEC 32000324 */  addiu      $v1, $zero, 0x32
    /* AD5F0 800BCDF0 1180013C */  lui        $at, %hi(D_8010C1BC)
    /* AD5F4 800BCDF4 BCC123AC */  sw         $v1, %lo(D_8010C1BC)($at)
    /* AD5F8 800BCDF8 01000224 */  addiu      $v0, $zero, 0x1
    /* AD5FC 800BCDFC 09008210 */  beq        $a0, $v0, .L800BCE24
    /* AD600 800BCE00 05000224 */   addiu     $v0, $zero, 0x5
    /* AD604 800BCE04 0D80013C */  lui        $at, %hi(D_800D4F4C)
    /* AD608 800BCE08 A8F30208 */  j          .L800BCEA0
    /* AD60C 800BCE0C 4C4F23AC */   sw        $v1, %lo(D_800D4F4C)($at)
  jlabel .L800BCE10
    /* AD610 800BCE10 3C000224 */  addiu      $v0, $zero, 0x3C
    /* AD614 800BCE14 1180013C */  lui        $at, %hi(D_8010C1BC)
    /* AD618 800BCE18 02008014 */  bnez       $a0, .L800BCE24
    /* AD61C 800BCE1C BCC122AC */   sw        $v0, %lo(D_8010C1BC)($at)
    /* AD620 800BCE20 05000224 */  addiu      $v0, $zero, 0x5
  .L800BCE24:
    /* AD624 800BCE24 0D80013C */  lui        $at, %hi(D_800D4F4C)
    /* AD628 800BCE28 A8F30208 */  j          .L800BCEA0
    /* AD62C 800BCE2C 4C4F22AC */   sw        $v0, %lo(D_800D4F4C)($at)
  jlabel .L800BCE30
    /* AD630 800BCE30 78000224 */  addiu      $v0, $zero, 0x78
    /* AD634 800BCE34 1180013C */  lui        $at, %hi(D_8010C1BC)
    /* AD638 800BCE38 A8F30208 */  j          .L800BCEA0
    /* AD63C 800BCE3C BCC122AC */   sw        $v0, %lo(D_8010C1BC)($at)
  jlabel .L800BCE40
    /* AD640 800BCE40 F0000224 */  addiu      $v0, $zero, 0xF0
    /* AD644 800BCE44 1180013C */  lui        $at, %hi(D_8010C1BC)
    /* AD648 800BCE48 A8F30208 */  j          .L800BCEA0
    /* AD64C 800BCE4C BCC122AC */   sw        $v0, %lo(D_8010C1BC)($at)
  jlabel .L800BCE50
    /* AD650 800BCE50 0D008010 */  beqz       $a0, .L800BCE88
    /* AD654 800BCE54 01000224 */   addiu     $v0, $zero, 0x1
    /* AD658 800BCE58 07008210 */  beq        $a0, $v0, .L800BCE78
    /* AD65C 800BCE5C 3C000224 */   addiu     $v0, $zero, 0x3C
    /* AD660 800BCE60 A3F30208 */  j          .L800BCE8C
    /* AD664 800BCE64 00000000 */   nop
  jlabel .L800BCE68
    /* AD668 800BCE68 07008010 */  beqz       $a0, .L800BCE88
    /* AD66C 800BCE6C 01000224 */   addiu     $v0, $zero, 0x1
    /* AD670 800BCE70 06008214 */  bne        $a0, $v0, .L800BCE8C
    /* AD674 800BCE74 3C000224 */   addiu     $v0, $zero, 0x3C
  .L800BCE78:
    /* AD678 800BCE78 32000224 */  addiu      $v0, $zero, 0x32
    /* AD67C 800BCE7C 1180013C */  lui        $at, %hi(D_8010C1BC)
    /* AD680 800BCE80 A8F30208 */  j          .L800BCEA0
    /* AD684 800BCE84 BCC122AC */   sw        $v0, %lo(D_8010C1BC)($at)
  .L800BCE88:
    /* AD688 800BCE88 3C000224 */  addiu      $v0, $zero, 0x3C
  .L800BCE8C:
    /* AD68C 800BCE8C 1180013C */  lui        $at, %hi(D_8010C1BC)
    /* AD690 800BCE90 A8F30208 */  j          .L800BCEA0
    /* AD694 800BCE94 BCC122AC */   sw        $v0, %lo(D_8010C1BC)($at)
  .L800BCE98:
    /* AD698 800BCE98 1180013C */  lui        $at, %hi(D_8010C1BC)
    /* AD69C 800BCE9C BCC123AC */  sw         $v1, %lo(D_8010C1BC)($at)
  .L800BCEA0:
    /* AD6A0 800BCEA0 1400BF8F */  lw         $ra, 0x14($sp)
    /* AD6A4 800BCEA4 1000B08F */  lw         $s0, 0x10($sp)
    /* AD6A8 800BCEA8 0800E003 */  jr         $ra
    /* AD6AC 800BCEAC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800BCD68
    /* AD6B0 800BCEB0 00000000 */  nop
    /* AD6B4 800BCEB4 00000000 */  nop
