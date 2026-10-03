nonmatching func_800B4550, 0x138

glabel func_800B4550
    /* A4D50 800B4550 1180023C */  lui        $v0, %hi(D_8010CD54)
    /* A4D54 800B4554 54CD4284 */  lh         $v0, %lo(D_8010CD54)($v0)
    /* A4D58 800B4558 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A4D5C 800B455C 1000BFAF */  sw         $ra, 0x10($sp)
    /* A4D60 800B4560 00110200 */  sll        $v0, $v0, 4
    /* A4D64 800B4564 0E80013C */  lui        $at, %hi(D_800E719C)
    /* A4D68 800B4568 21082200 */  addu       $at, $at, $v0
    /* A4D6C 800B456C 9C7124A0 */  sb         $a0, %lo(D_800E719C)($at)
    /* A4D70 800B4570 1180023C */  lui        $v0, %hi(D_8010CD54)
    /* A4D74 800B4574 54CD4284 */  lh         $v0, %lo(D_8010CD54)($v0)
    /* A4D78 800B4578 00000000 */  nop
    /* A4D7C 800B457C 00110200 */  sll        $v0, $v0, 4
    /* A4D80 800B4580 0E80013C */  lui        $at, %hi(D_800E719D)
    /* A4D84 800B4584 21082200 */  addu       $at, $at, $v0
    /* A4D88 800B4588 9D7125A0 */  sb         $a1, %lo(D_800E719D)($at)
    /* A4D8C 800B458C 1180023C */  lui        $v0, %hi(D_8010CD54)
    /* A4D90 800B4590 54CD4284 */  lh         $v0, %lo(D_8010CD54)($v0)
    /* A4D94 800B4594 00000000 */  nop
    /* A4D98 800B4598 00110200 */  sll        $v0, $v0, 4
    /* A4D9C 800B459C 0E80013C */  lui        $at, %hi(D_800E719E)
    /* A4DA0 800B45A0 21082200 */  addu       $at, $at, $v0
    /* A4DA4 800B45A4 9E7126A0 */  sb         $a2, %lo(D_800E719E)($at)
    /* A4DA8 800B45A8 1180023C */  lui        $v0, %hi(D_8010CD54)
    /* A4DAC 800B45AC 54CD4284 */  lh         $v0, %lo(D_8010CD54)($v0)
    /* A4DB0 800B45B0 00000000 */  nop
    /* A4DB4 800B45B4 40200200 */  sll        $a0, $v0, 1
    /* A4DB8 800B45B8 00290200 */  sll        $a1, $v0, 4
    /* A4DBC 800B45BC 0E80033C */  lui        $v1, %hi(D_800E7800)
    /* A4DC0 800B45C0 21186400 */  addu       $v1, $v1, $a0
    /* A4DC4 800B45C4 00786394 */  lhu        $v1, %lo(D_800E7800)($v1)
    /* A4DC8 800B45C8 1080023C */  lui        $v0, %hi(D_800FB5AC)
    /* A4DCC 800B45CC ACB54294 */  lhu        $v0, %lo(D_800FB5AC)($v0)
    /* A4DD0 800B45D0 0E80013C */  lui        $at, %hi(D_800E71A0)
    /* A4DD4 800B45D4 21082500 */  addu       $at, $at, $a1
    /* A4DD8 800B45D8 A07123A4 */  sh         $v1, %lo(D_800E71A0)($at)
    /* A4DDC 800B45DC 0E80033C */  lui        $v1, %hi(D_800E789C)
    /* A4DE0 800B45E0 21186400 */  addu       $v1, $v1, $a0
    /* A4DE4 800B45E4 9C786394 */  lhu        $v1, %lo(D_800E789C)($v1)
    /* A4DE8 800B45E8 0E80013C */  lui        $at, %hi(D_800E71A6)
    /* A4DEC 800B45EC 21082500 */  addu       $at, $at, $a1
    /* A4DF0 800B45F0 A67122A4 */  sh         $v0, %lo(D_800E71A6)($at)
    /* A4DF4 800B45F4 0E80013C */  lui        $at, %hi(D_800E71A2)
    /* A4DF8 800B45F8 21082500 */  addu       $at, $at, $a1
    /* A4DFC 800B45FC A27123A4 */  sh         $v1, %lo(D_800E71A2)($at)
    /* A4E00 800B4600 0F80023C */  lui        $v0, %hi(D_800F0FE9)
    /* A4E04 800B4604 E90F4290 */  lbu        $v0, %lo(D_800F0FE9)($v0)
    /* A4E08 800B4608 00000000 */  nop
    /* A4E0C 800B460C 0D004010 */  beqz       $v0, .L800B4644
    /* A4E10 800B4610 00000000 */   nop
    /* A4E14 800B4614 1080023C */  lui        $v0, %hi(D_800FB57C)
    /* A4E18 800B4618 7CB5428C */  lw         $v0, %lo(D_800FB57C)($v0)
    /* A4E1C 800B461C 00000000 */  nop
    /* A4E20 800B4620 40180200 */  sll        $v1, $v0, 1
    /* A4E24 800B4624 21186200 */  addu       $v1, $v1, $v0
    /* A4E28 800B4628 C2170300 */  srl        $v0, $v1, 31
    /* A4E2C 800B462C 21186200 */  addu       $v1, $v1, $v0
    /* A4E30 800B4630 43180300 */  sra        $v1, $v1, 1
    /* A4E34 800B4634 0E80013C */  lui        $at, %hi(D_800E71A4)
    /* A4E38 800B4638 21082500 */  addu       $at, $at, $a1
    /* A4E3C 800B463C 96D10208 */  j          .L800B4658
    /* A4E40 800B4640 A47123A4 */   sh        $v1, %lo(D_800E71A4)($at)
  .L800B4644:
    /* A4E44 800B4644 1080023C */  lui        $v0, %hi(D_800FB57C)
    /* A4E48 800B4648 7CB54294 */  lhu        $v0, %lo(D_800FB57C)($v0)
    /* A4E4C 800B464C 0E80013C */  lui        $at, %hi(D_800E71A4)
    /* A4E50 800B4650 21082500 */  addu       $at, $at, $a1
    /* A4E54 800B4654 A47122A4 */  sh         $v0, %lo(D_800E71A4)($at)
  .L800B4658:
    /* A4E58 800B4658 0E80023C */  lui        $v0, %hi(D_800E7198)
    /* A4E5C 800B465C 98714224 */  addiu      $v0, $v0, %lo(D_800E7198)
    /* A4E60 800B4660 1180053C */  lui        $a1, %hi(D_8010CD54)
    /* A4E64 800B4664 54CDA584 */  lh         $a1, %lo(D_8010CD54)($a1)
    /* A4E68 800B4668 1000E48C */  lw         $a0, 0x10($a3)
    /* A4E6C 800B466C 00290500 */  sll        $a1, $a1, 4
    /* A4E70 800B4670 01B7020C */  jal        func_800ADC04
    /* A4E74 800B4674 2128A200 */   addu      $a1, $a1, $v0
    /* A4E78 800B4678 1000BF8F */  lw         $ra, 0x10($sp)
    /* A4E7C 800B467C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A4E80 800B4680 0800E003 */  jr         $ra
    /* A4E84 800B4684 00000000 */   nop
endlabel func_800B4550
