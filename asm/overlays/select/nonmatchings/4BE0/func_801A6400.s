nonmatching func_801A6400, 0x6E4

glabel func_801A6400
    /* 1D488 801A6400 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 1D48C 801A6404 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 1D490 801A6408 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1D494 801A640C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1D498 801A6410 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 1D49C 801A6414 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 1D4A0 801A6418 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1D4A4 801A641C 1180103C */  lui        $s0, %hi(D_8010A5A8)
    /* 1D4A8 801A6420 A8A51026 */  addiu      $s0, $s0, %lo(D_8010A5A8)
    /* 1D4AC 801A6424 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1D4B0 801A6428 801F123C */  lui        $s2, (0x1F800000 >> 16)
    /* 1D4B4 801A642C 0500622C */  sltiu      $v0, $v1, 0x5
    /* 1D4B8 801A6430 A4014010 */  beqz       $v0, .L801A6AC4
    /* 1D4BC 801A6434 1C00BFAF */   sw        $ra, 0x1C($sp)
    /* 1D4C0 801A6438 80100300 */  sll        $v0, $v1, 2
    /* 1D4C4 801A643C 1980013C */  lui        $at, %hi(jtbl_8018A21C)
    /* 1D4C8 801A6440 21082200 */  addu       $at, $at, $v0
    /* 1D4CC 801A6444 1CA2228C */  lw         $v0, %lo(jtbl_8018A21C)($at)
    /* 1D4D0 801A6448 00000000 */  nop
    /* 1D4D4 801A644C 08004000 */  jr         $v0
    /* 1D4D8 801A6450 00000000 */   nop
  jlabel .L801A6454
    /* 1D4DC 801A6454 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D4E0 801A6458 21082102 */  addu       $at, $s1, $at
    /* 1D4E4 801A645C 158F20A0 */  sb         $zero, -0x70EB($at)
    /* 1D4E8 801A6460 09000292 */  lbu        $v0, 0x9($s0)
    /* 1D4EC 801A6464 09000392 */  lbu        $v1, 0x9($s0)
    /* 1D4F0 801A6468 01004230 */  andi       $v0, $v0, 0x1
    /* 1D4F4 801A646C 42180300 */  srl        $v1, $v1, 1
    /* 1D4F8 801A6470 1E80013C */  lui        $at, %hi(D_801D81C4)
    /* 1D4FC 801A6474 C48122A0 */  sb         $v0, %lo(D_801D81C4)($at)
    /* 1D500 801A6478 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D504 801A647C 21082102 */  addu       $at, $s1, $at
    /* 1D508 801A6480 1DAC2490 */  lbu        $a0, -0x53E3($at)
    /* 1D50C 801A6484 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D510 801A6488 21082102 */  addu       $at, $s1, $at
    /* 1D514 801A648C 1EAC2590 */  lbu        $a1, -0x53E2($at)
    /* 1D518 801A6490 09000292 */  lbu        $v0, 0x9($s0)
    /* 1D51C 801A6494 01006330 */  andi       $v1, $v1, 0x1
    /* 1D520 801A6498 1E80013C */  lui        $at, %hi(D_801D81C5)
    /* 1D524 801A649C C58123A0 */  sb         $v1, %lo(D_801D81C5)($at)
    /* 1D528 801A64A0 02110200 */  srl        $v0, $v0, 4
    /* 1D52C 801A64A4 1E80013C */  lui        $at, %hi(D_801D81C6)
    /* 1D530 801A64A8 C68124A0 */  sb         $a0, %lo(D_801D81C6)($at)
    /* 1D534 801A64AC 1E80013C */  lui        $at, %hi(D_801D81C7)
    /* 1D538 801A64B0 C78125A0 */  sb         $a1, %lo(D_801D81C7)($at)
    /* 1D53C 801A64B4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D540 801A64B8 21082102 */  addu       $at, $s1, $at
    /* 1D544 801A64BC 1FAC2390 */  lbu        $v1, -0x53E1($at)
    /* 1D548 801A64C0 07004230 */  andi       $v0, $v0, 0x7
    /* 1D54C 801A64C4 1E80013C */  lui        $at, %hi(D_801D81C8)
    /* 1D550 801A64C8 C88122A0 */  sb         $v0, %lo(D_801D81C8)($at)
    /* 1D554 801A64CC 1E80013C */  lui        $at, %hi(D_801D81C9)
    /* 1D558 801A64D0 C98123A0 */  sb         $v1, %lo(D_801D81C9)($at)
    /* 1D55C 801A64D4 BEA0060C */  jal        func_801A82F8
    /* 1D560 801A64D8 00000000 */   nop
    /* 1D564 801A64DC 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 1D568 801A64E0 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 1D56C 801A64E4 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 1D570 801A64E8 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 1D574 801A64EC B99A060C */  jal        func_801A6AE4
    /* 1D578 801A64F0 00000000 */   nop
    /* 1D57C 801A64F4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D580 801A64F8 21082102 */  addu       $at, $s1, $at
    /* 1D584 801A64FC DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 1D588 801A6500 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 1D58C 801A6504 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 1D590 801A6508 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 1D594 801A650C 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 1D598 801A6510 509A0608 */  j          .L801A6940
    /* 1D59C 801A6514 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801A6518
    /* 1D5A0 801A6518 F29B060C */  jal        func_801A6FC8
    /* 1D5A4 801A651C 00000000 */   nop
    /* 1D5A8 801A6520 69014010 */  beqz       $v0, .L801A6AC8
    /* 1D5AC 801A6524 21100000 */   addu      $v0, $zero, $zero
    /* 1D5B0 801A6528 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D5B4 801A652C 21082102 */  addu       $at, $s1, $at
    /* 1D5B8 801A6530 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 1D5BC 801A6534 509A0608 */  j          .L801A6940
    /* 1D5C0 801A6538 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801A653C
    /* 1D5C4 801A653C 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 1D5C8 801A6540 38D68490 */  lbu        $a0, %lo(D_800AD638)($a0)
    /* 1D5CC 801A6544 A39E060C */  jal        func_801A7A8C
    /* 1D5D0 801A6548 01000524 */   addiu     $a1, $zero, 0x1
    /* 1D5D4 801A654C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D5D8 801A6550 21082102 */  addu       $at, $s1, $at
    /* 1D5DC 801A6554 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 1D5E0 801A6558 509A0608 */  j          .L801A6940
    /* 1D5E4 801A655C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801A6560
    /* 1D5E8 801A6560 1E80023C */  lui        $v0, %hi(D_801DA05C)
    /* 1D5EC 801A6564 5CA0428C */  lw         $v0, %lo(D_801DA05C)($v0)
    /* 1D5F0 801A6568 00000000 */  nop
    /* 1D5F4 801A656C 10004010 */  beqz       $v0, .L801A65B0
    /* 1D5F8 801A6570 00000000 */   nop
    /* 1D5FC 801A6574 1E80043C */  lui        $a0, %hi(D_801DA058)
    /* 1D600 801A6578 58A0848C */  lw         $a0, %lo(D_801DA058)($a0)
    /* 1D604 801A657C 00000000 */  nop
    /* 1D608 801A6580 21208200 */  addu       $a0, $a0, $v0
    /* 1D60C 801A6584 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 1D610 801A6588 58A024AC */  sw         $a0, %lo(D_801DA058)($at)
    /* 1D614 801A658C D79C060C */  jal        func_801A735C
    /* 1D618 801A6590 00000000 */   nop
    /* 1D61C 801A6594 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 1D620 801A6598 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 1D624 801A659C 00000000 */  nop
    /* 1D628 801A65A0 03004014 */  bnez       $v0, .L801A65B0
    /* 1D62C 801A65A4 00000000 */   nop
    /* 1D630 801A65A8 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 1D634 801A65AC 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
  .L801A65B0:
    /* 1D638 801A65B0 20BB010C */  jal        func_8006EC80
    /* 1D63C 801A65B4 21200000 */   addu      $a0, $zero, $zero
    /* 1D640 801A65B8 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 1D644 801A65BC A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 1D648 801A65C0 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 1D64C 801A65C4 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1D650 801A65C8 03006210 */  beq        $v1, $v0, .L801A65D8
    /* 1D654 801A65CC 00400224 */   addiu     $v0, $zero, 0x4000
    /* 1D658 801A65D0 11006214 */  bne        $v1, $v0, .L801A6618
    /* 1D65C 801A65D4 00800234 */   ori       $v0, $zero, 0x8000
  .L801A65D8:
    /* 1D660 801A65D8 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 1D664 801A65DC 38D68490 */  lbu        $a0, %lo(D_800AD638)($a0)
    /* 1D668 801A65E0 A39E060C */  jal        func_801A7A8C
    /* 1D66C 801A65E4 21280000 */   addu      $a1, $zero, $zero
    /* 1D670 801A65E8 21280000 */  addu       $a1, $zero, $zero
    /* 1D674 801A65EC 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 1D678 801A65F0 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 1D67C 801A65F4 7B39060C */  jal        func_8018E5EC
    /* 1D680 801A65F8 0A000624 */   addiu     $a2, $zero, 0xA
    /* 1D684 801A65FC FF004430 */  andi       $a0, $v0, 0xFF
    /* 1D688 801A6600 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 1D68C 801A6604 38D622A4 */  sh         $v0, %lo(D_800AD638)($at)
    /* 1D690 801A6608 A39E060C */  jal        func_801A7A8C
    /* 1D694 801A660C 01000524 */   addiu     $a1, $zero, 0x1
    /* 1D698 801A6610 339A0608 */  j          .L801A68CC
    /* 1D69C 801A6614 00000000 */   nop
  .L801A6618:
    /* 1D6A0 801A6618 03006210 */  beq        $v1, $v0, .L801A6628
    /* 1D6A4 801A661C 00200224 */   addiu     $v0, $zero, 0x2000
    /* 1D6A8 801A6620 AE006214 */  bne        $v1, $v0, .L801A68DC
    /* 1D6AC 801A6624 20000224 */   addiu     $v0, $zero, 0x20
  .L801A6628:
    /* 1D6B0 801A6628 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 1D6B4 801A662C 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 1D6B8 801A6630 00000000 */  nop
    /* 1D6BC 801A6634 0B00622C */  sltiu      $v0, $v1, 0xB
    /* 1D6C0 801A6638 9F004010 */  beqz       $v0, .L801A68B8
    /* 1D6C4 801A663C 80100300 */   sll       $v0, $v1, 2
    /* 1D6C8 801A6640 1980013C */  lui        $at, %hi(jtbl_8018A234)
    /* 1D6CC 801A6644 21082200 */  addu       $at, $at, $v0
    /* 1D6D0 801A6648 34A2228C */  lw         $v0, %lo(jtbl_8018A234)($at)
    /* 1D6D4 801A664C 00000000 */  nop
    /* 1D6D8 801A6650 08004000 */  jr         $v0
    /* 1D6DC 801A6654 00000000 */   nop
  jlabel .L801A6658
    /* 1D6E0 801A6658 21280000 */  addu       $a1, $zero, $zero
    /* 1D6E4 801A665C 1E80043C */  lui        $a0, %hi(D_801D81C4)
    /* 1D6E8 801A6660 C4818490 */  lbu        $a0, %lo(D_801D81C4)($a0)
    /* 1D6EC 801A6664 9039060C */  jal        func_8018E640
    /* 1D6F0 801A6668 01000624 */   addiu     $a2, $zero, 0x1
    /* 1D6F4 801A666C 1E80013C */  lui        $at, %hi(D_801D81C4)
    /* 1D6F8 801A6670 C48122A0 */  sb         $v0, %lo(D_801D81C4)($at)
    /* 1D6FC 801A6674 2C9A0608 */  j          .L801A68B0
    /* 1D700 801A6678 00000000 */   nop
  jlabel .L801A667C
    /* 1D704 801A667C 21280000 */  addu       $a1, $zero, $zero
    /* 1D708 801A6680 1E80043C */  lui        $a0, %hi(D_801D81C5)
    /* 1D70C 801A6684 C5818490 */  lbu        $a0, %lo(D_801D81C5)($a0)
    /* 1D710 801A6688 9039060C */  jal        func_8018E640
    /* 1D714 801A668C 01000624 */   addiu     $a2, $zero, 0x1
    /* 1D718 801A6690 1E80013C */  lui        $at, %hi(D_801D81C5)
    /* 1D71C 801A6694 C58122A0 */  sb         $v0, %lo(D_801D81C5)($at)
    /* 1D720 801A6698 2C9A0608 */  j          .L801A68B0
    /* 1D724 801A669C 00000000 */   nop
  jlabel .L801A66A0
    /* 1D728 801A66A0 21280000 */  addu       $a1, $zero, $zero
    /* 1D72C 801A66A4 1E80043C */  lui        $a0, %hi(D_801D81C6)
    /* 1D730 801A66A8 C6818490 */  lbu        $a0, %lo(D_801D81C6)($a0)
    /* 1D734 801A66AC 9039060C */  jal        func_8018E640
    /* 1D738 801A66B0 05000624 */   addiu     $a2, $zero, 0x5
    /* 1D73C 801A66B4 1E80013C */  lui        $at, %hi(D_801D81C6)
    /* 1D740 801A66B8 C68122A0 */  sb         $v0, %lo(D_801D81C6)($at)
    /* 1D744 801A66BC 2C9A0608 */  j          .L801A68B0
    /* 1D748 801A66C0 00000000 */   nop
  jlabel .L801A66C4
    /* 1D74C 801A66C4 21280000 */  addu       $a1, $zero, $zero
    /* 1D750 801A66C8 1E80043C */  lui        $a0, %hi(D_801D81C7)
    /* 1D754 801A66CC C7818490 */  lbu        $a0, %lo(D_801D81C7)($a0)
    /* 1D758 801A66D0 9039060C */  jal        func_8018E640
    /* 1D75C 801A66D4 02000624 */   addiu     $a2, $zero, 0x2
    /* 1D760 801A66D8 1E80013C */  lui        $at, %hi(D_801D81C7)
    /* 1D764 801A66DC C78122A0 */  sb         $v0, %lo(D_801D81C7)($at)
    /* 1D768 801A66E0 2C9A0608 */  j          .L801A68B0
    /* 1D76C 801A66E4 00000000 */   nop
  jlabel .L801A66E8
    /* 1D770 801A66E8 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 1D774 801A66EC 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 1D778 801A66F0 00000000 */  nop
    /* 1D77C 801A66F4 6E004014 */  bnez       $v0, .L801A68B0
    /* 1D780 801A66F8 00000000 */   nop
    /* 1D784 801A66FC 88AD020C */  jal        func_800AB620
    /* 1D788 801A6700 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 1D78C 801A6704 21280000 */  addu       $a1, $zero, $zero
    /* 1D790 801A6708 1E80043C */  lui        $a0, %hi(D_801D81C8)
    /* 1D794 801A670C C8818490 */  lbu        $a0, %lo(D_801D81C8)($a0)
    /* 1D798 801A6710 9039060C */  jal        func_8018E640
    /* 1D79C 801A6714 05000624 */   addiu     $a2, $zero, 0x5
    /* 1D7A0 801A6718 1E80013C */  lui        $at, %hi(D_801D81C8)
    /* 1D7A4 801A671C C88122A0 */  sb         $v0, %lo(D_801D81C8)($at)
    /* 1D7A8 801A6720 49A0060C */  jal        func_801A8124
    /* 1D7AC 801A6724 00000000 */   nop
    /* 1D7B0 801A6728 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 1D7B4 801A672C A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 1D7B8 801A6730 00800234 */  ori        $v0, $zero, 0x8000
    /* 1D7BC 801A6734 09006214 */  bne        $v1, $v0, .L801A675C
    /* 1D7C0 801A6738 B0FF0224 */   addiu     $v0, $zero, -0x50
    /* 1D7C4 801A673C 50000224 */  addiu      $v0, $zero, 0x50
    /* 1D7C8 801A6740 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 1D7CC 801A6744 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
    /* 1D7D0 801A6748 FBFF0224 */  addiu      $v0, $zero, -0x5
    /* 1D7D4 801A674C 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 1D7D8 801A6750 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
    /* 1D7DC 801A6754 2C9A0608 */  j          .L801A68B0
    /* 1D7E0 801A6758 00000000 */   nop
  .L801A675C:
    /* 1D7E4 801A675C 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 1D7E8 801A6760 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
    /* 1D7EC 801A6764 05000224 */  addiu      $v0, $zero, 0x5
    /* 1D7F0 801A6768 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 1D7F4 801A676C 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
    /* 1D7F8 801A6770 2C9A0608 */  j          .L801A68B0
    /* 1D7FC 801A6774 00000000 */   nop
  jlabel .L801A6778
    /* 1D800 801A6778 1E80033C */  lui        $v1, %hi(D_801D81C9)
    /* 1D804 801A677C C9816390 */  lbu        $v1, %lo(D_801D81C9)($v1)
    /* 1D808 801A6780 00000000 */  nop
    /* 1D80C 801A6784 01006230 */  andi       $v0, $v1, 0x1
    /* 1D810 801A6788 03004010 */  beqz       $v0, .L801A6798
    /* 1D814 801A678C 00000000 */   nop
    /* 1D818 801A6790 E7990608 */  j          .L801A679C
    /* 1D81C 801A6794 FE006330 */   andi      $v1, $v1, 0xFE
  .L801A6798:
    /* 1D820 801A6798 01006334 */  ori        $v1, $v1, 0x1
  .L801A679C:
    /* 1D824 801A679C 1E80013C */  lui        $at, %hi(D_801D81C9)
    /* 1D828 801A67A0 C98123A0 */  sb         $v1, %lo(D_801D81C9)($at)
    /* 1D82C 801A67A4 27100300 */  nor        $v0, $zero, $v1
    /* 1D830 801A67A8 01004230 */  andi       $v0, $v0, 0x1
    /* 1D834 801A67AC 40004010 */  beqz       $v0, .L801A68B0
    /* 1D838 801A67B0 FD006230 */   andi      $v0, $v1, 0xFD
  .L801A67B4:
    /* 1D83C 801A67B4 1E80013C */  lui        $at, %hi(D_801D81C9)
    /* 1D840 801A67B8 C98122A0 */  sb         $v0, %lo(D_801D81C9)($at)
    /* 1D844 801A67BC 2C9A0608 */  j          .L801A68B0
    /* 1D848 801A67C0 00000000 */   nop
  jlabel .L801A67C4
    /* 1D84C 801A67C4 1E80033C */  lui        $v1, %hi(D_801D81C9)
    /* 1D850 801A67C8 C9816390 */  lbu        $v1, %lo(D_801D81C9)($v1)
    /* 1D854 801A67CC 00000000 */  nop
    /* 1D858 801A67D0 42100300 */  srl        $v0, $v1, 1
    /* 1D85C 801A67D4 01004230 */  andi       $v0, $v0, 0x1
    /* 1D860 801A67D8 03004010 */  beqz       $v0, .L801A67E8
    /* 1D864 801A67DC 00000000 */   nop
    /* 1D868 801A67E0 FB990608 */  j          .L801A67EC
    /* 1D86C 801A67E4 FD006330 */   andi      $v1, $v1, 0xFD
  .L801A67E8:
    /* 1D870 801A67E8 02006334 */  ori        $v1, $v1, 0x2
  .L801A67EC:
    /* 1D874 801A67EC 1E80013C */  lui        $at, %hi(D_801D81C9)
    /* 1D878 801A67F0 C98123A0 */  sb         $v1, %lo(D_801D81C9)($at)
    /* 1D87C 801A67F4 42100300 */  srl        $v0, $v1, 1
    /* 1D880 801A67F8 01004230 */  andi       $v0, $v0, 0x1
    /* 1D884 801A67FC 2C004010 */  beqz       $v0, .L801A68B0
    /* 1D888 801A6800 01006234 */   ori       $v0, $v1, 0x1
    /* 1D88C 801A6804 ED990608 */  j          .L801A67B4
    /* 1D890 801A6808 00000000 */   nop
  jlabel .L801A680C
    /* 1D894 801A680C 1E80033C */  lui        $v1, %hi(D_801D81C9)
    /* 1D898 801A6810 C9816390 */  lbu        $v1, %lo(D_801D81C9)($v1)
    /* 1D89C 801A6814 00000000 */  nop
    /* 1D8A0 801A6818 82100300 */  srl        $v0, $v1, 2
    /* 1D8A4 801A681C 01004230 */  andi       $v0, $v0, 0x1
    /* 1D8A8 801A6820 E4FF4014 */  bnez       $v0, .L801A67B4
    /* 1D8AC 801A6824 FB006230 */   andi      $v0, $v1, 0xFB
    /* 1D8B0 801A6828 ED990608 */  j          .L801A67B4
    /* 1D8B4 801A682C 04006234 */   ori       $v0, $v1, 0x4
  jlabel .L801A6830
    /* 1D8B8 801A6830 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D8BC 801A6834 21082102 */  addu       $at, $s1, $at
    /* 1D8C0 801A6838 168F2290 */  lbu        $v0, -0x70EA($at)
    /* 1D8C4 801A683C 00000000 */  nop
    /* 1D8C8 801A6840 06004014 */  bnez       $v0, .L801A685C
    /* 1D8CC 801A6844 03000224 */   addiu     $v0, $zero, 0x3
    /* 1D8D0 801A6848 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D8D4 801A684C 21082102 */  addu       $at, $s1, $at
    /* 1D8D8 801A6850 168F22A0 */  sb         $v0, -0x70EA($at)
    /* 1D8DC 801A6854 2A9A0608 */  j          .L801A68A8
    /* 1D8E0 801A6858 00000000 */   nop
  .L801A685C:
    /* 1D8E4 801A685C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D8E8 801A6860 21082102 */  addu       $at, $s1, $at
    /* 1D8EC 801A6864 168F20A0 */  sb         $zero, -0x70EA($at)
    /* 1D8F0 801A6868 2A9A0608 */  j          .L801A68A8
    /* 1D8F4 801A686C 00000000 */   nop
  jlabel .L801A6870
    /* 1D8F8 801A6870 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D8FC 801A6874 21082102 */  addu       $at, $s1, $at
    /* 1D900 801A6878 178F2290 */  lbu        $v0, -0x70E9($at)
    /* 1D904 801A687C 00000000 */  nop
    /* 1D908 801A6880 06004014 */  bnez       $v0, .L801A689C
    /* 1D90C 801A6884 03000224 */   addiu     $v0, $zero, 0x3
    /* 1D910 801A6888 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D914 801A688C 21082102 */  addu       $at, $s1, $at
    /* 1D918 801A6890 178F22A0 */  sb         $v0, -0x70E9($at)
    /* 1D91C 801A6894 2A9A0608 */  j          .L801A68A8
    /* 1D920 801A6898 00000000 */   nop
  .L801A689C:
    /* 1D924 801A689C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D928 801A68A0 21082102 */  addu       $at, $s1, $at
    /* 1D92C 801A68A4 178F20A0 */  sb         $zero, -0x70E9($at)
  .L801A68A8:
    /* 1D930 801A68A8 E89D060C */  jal        func_801A77A0
    /* 1D934 801A68AC 00000000 */   nop
  jlabel .L801A68B0
    /* 1D938 801A68B0 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 1D93C 801A68B4 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
  .L801A68B8:
    /* 1D940 801A68B8 05000224 */  addiu      $v0, $zero, 0x5
    /* 1D944 801A68BC 82006210 */  beq        $v1, $v0, .L801A6AC8
    /* 1D948 801A68C0 21100000 */   addu      $v0, $zero, $zero
    /* 1D94C 801A68C4 49A0060C */  jal        func_801A8124
    /* 1D950 801A68C8 00000000 */   nop
  .L801A68CC:
    /* 1D954 801A68CC 88AD020C */  jal        func_800AB620
    /* 1D958 801A68D0 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 1D95C 801A68D4 B29A0608 */  j          .L801A6AC8
    /* 1D960 801A68D8 21100000 */   addu      $v0, $zero, $zero
  .L801A68DC:
    /* 1D964 801A68DC 1D006214 */  bne        $v1, $v0, .L801A6954
    /* 1D968 801A68E0 40000224 */   addiu     $v0, $zero, 0x40
    /* 1D96C 801A68E4 88AD020C */  jal        func_800AB620
    /* 1D970 801A68E8 28050424 */   addiu     $a0, $zero, 0x528
    /* 1D974 801A68EC 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 1D978 801A68F0 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 1D97C 801A68F4 00000000 */  nop
    /* 1D980 801A68F8 0A008010 */  beqz       $a0, .L801A6924
    /* 1D984 801A68FC FF008430 */   andi      $a0, $a0, 0xFF
    /* 1D988 801A6900 A39E060C */  jal        func_801A7A8C
    /* 1D98C 801A6904 21280000 */   addu      $a1, $zero, $zero
    /* 1D990 801A6908 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 1D994 801A690C 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 1D998 801A6910 21200000 */  addu       $a0, $zero, $zero
    /* 1D99C 801A6914 A39E060C */  jal        func_801A7A8C
    /* 1D9A0 801A6918 01000524 */   addiu     $a1, $zero, 0x1
    /* 1D9A4 801A691C B29A0608 */  j          .L801A6AC8
    /* 1D9A8 801A6920 21100000 */   addu      $v0, $zero, $zero
  .L801A6924:
    /* 1D9AC 801A6924 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D9B0 801A6928 21082102 */  addu       $at, $s1, $at
    /* 1D9B4 801A692C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 1D9B8 801A6930 02000324 */  addiu      $v1, $zero, 0x2
    /* 1D9BC 801A6934 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 1D9C0 801A6938 50AE23A0 */  sb         $v1, %lo(D_801DAE50)($at)
    /* 1D9C4 801A693C 01004224 */  addiu      $v0, $v0, 0x1
  .L801A6940:
    /* 1D9C8 801A6940 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D9CC 801A6944 21082102 */  addu       $at, $s1, $at
    /* 1D9D0 801A6948 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1D9D4 801A694C B29A0608 */  j          .L801A6AC8
    /* 1D9D8 801A6950 21100000 */   addu      $v0, $zero, $zero
  .L801A6954:
    /* 1D9DC 801A6954 5C006214 */  bne        $v1, $v0, .L801A6AC8
    /* 1D9E0 801A6958 21100000 */   addu      $v0, $zero, $zero
    /* 1D9E4 801A695C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1D9E8 801A6960 21082102 */  addu       $at, $s1, $at
    /* 1D9EC 801A6964 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 1D9F0 801A6968 01000324 */  addiu      $v1, $zero, 0x1
    /* 1D9F4 801A696C 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 1D9F8 801A6970 50AE23A0 */  sb         $v1, %lo(D_801DAE50)($at)
    /* 1D9FC 801A6974 01004224 */  addiu      $v0, $v0, 0x1
    /* 1DA00 801A6978 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1DA04 801A697C 21082102 */  addu       $at, $s1, $at
    /* 1DA08 801A6980 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 1DA0C 801A6984 88AD020C */  jal        func_800AB620
    /* 1DA10 801A6988 29050424 */   addiu     $a0, $zero, 0x529
    /* 1DA14 801A698C B29A0608 */  j          .L801A6AC8
    /* 1DA18 801A6990 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801A6994
    /* 1DA1C 801A6994 629C060C */  jal        func_801A7188
    /* 1DA20 801A6998 00000000 */   nop
    /* 1DA24 801A699C 4A004010 */  beqz       $v0, .L801A6AC8
    /* 1DA28 801A69A0 21100000 */   addu      $v0, $zero, $zero
    /* 1DA2C 801A69A4 1E80023C */  lui        $v0, %hi(D_801D81C4)
    /* 1DA30 801A69A8 C4814290 */  lbu        $v0, %lo(D_801D81C4)($v0)
    /* 1DA34 801A69AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1DA38 801A69B0 21082102 */  addu       $at, $s1, $at
    /* 1DA3C 801A69B4 DAAB20A0 */  sb         $zero, -0x5426($at)
    /* 1DA40 801A69B8 04004010 */  beqz       $v0, .L801A69CC
    /* 1DA44 801A69BC 00000000 */   nop
    /* 1DA48 801A69C0 09000292 */  lbu        $v0, 0x9($s0)
    /* 1DA4C 801A69C4 769A0608 */  j          .L801A69D8
    /* 1DA50 801A69C8 01004234 */   ori       $v0, $v0, 0x1
  .L801A69CC:
    /* 1DA54 801A69CC 09000292 */  lbu        $v0, 0x9($s0)
    /* 1DA58 801A69D0 00000000 */  nop
    /* 1DA5C 801A69D4 FE004230 */  andi       $v0, $v0, 0xFE
  .L801A69D8:
    /* 1DA60 801A69D8 090002A2 */  sb         $v0, 0x9($s0)
    /* 1DA64 801A69DC 1E80023C */  lui        $v0, %hi(D_801D81C5)
    /* 1DA68 801A69E0 C5814290 */  lbu        $v0, %lo(D_801D81C5)($v0)
    /* 1DA6C 801A69E4 00000000 */  nop
    /* 1DA70 801A69E8 04004010 */  beqz       $v0, .L801A69FC
    /* 1DA74 801A69EC 00000000 */   nop
    /* 1DA78 801A69F0 09000292 */  lbu        $v0, 0x9($s0)
    /* 1DA7C 801A69F4 829A0608 */  j          .L801A6A08
    /* 1DA80 801A69F8 02004234 */   ori       $v0, $v0, 0x2
  .L801A69FC:
    /* 1DA84 801A69FC 09000292 */  lbu        $v0, 0x9($s0)
    /* 1DA88 801A6A00 00000000 */  nop
    /* 1DA8C 801A6A04 FD004230 */  andi       $v0, $v0, 0xFD
  .L801A6A08:
    /* 1DA90 801A6A08 090002A2 */  sb         $v0, 0x9($s0)
    /* 1DA94 801A6A0C 1E80023C */  lui        $v0, %hi(D_801DAE50)
    /* 1DA98 801A6A10 50AE4290 */  lbu        $v0, %lo(D_801DAE50)($v0)
    /* 1DA9C 801A6A14 09000392 */  lbu        $v1, 0x9($s0)
    /* 1DAA0 801A6A18 1E80043C */  lui        $a0, %hi(D_801D81C8)
    /* 1DAA4 801A6A1C C8818490 */  lbu        $a0, %lo(D_801D81C8)($a0)
    /* 1DAA8 801A6A20 8F006330 */  andi       $v1, $v1, 0x8F
    /* 1DAAC 801A6A24 00210400 */  sll        $a0, $a0, 4
    /* 1DAB0 801A6A28 70008430 */  andi       $a0, $a0, 0x70
    /* 1DAB4 801A6A2C 090003A2 */  sb         $v1, 0x9($s0)
    /* 1DAB8 801A6A30 1E80053C */  lui        $a1, %hi(D_801D81C6)
    /* 1DABC 801A6A34 C681A590 */  lbu        $a1, %lo(D_801D81C6)($a1)
    /* 1DAC0 801A6A38 1E80063C */  lui        $a2, %hi(D_801D81C7)
    /* 1DAC4 801A6A3C C781C690 */  lbu        $a2, %lo(D_801D81C7)($a2)
    /* 1DAC8 801A6A40 1E80073C */  lui        $a3, %hi(D_801D81C9)
    /* 1DACC 801A6A44 C981E790 */  lbu        $a3, %lo(D_801D81C9)($a3)
    /* 1DAD0 801A6A48 1E80083C */  lui        $t0, %hi(D_801D81C4)
    /* 1DAD4 801A6A4C C4810891 */  lbu        $t0, %lo(D_801D81C4)($t0)
    /* 1DAD8 801A6A50 1E80093C */  lui        $t1, %hi(D_801D81C5)
    /* 1DADC 801A6A54 C5812991 */  lbu        $t1, %lo(D_801D81C5)($t1)
    /* 1DAE0 801A6A58 1E800A3C */  lui        $t2, %hi(D_801D81C8)
    /* 1DAE4 801A6A5C C8814A91 */  lbu        $t2, %lo(D_801D81C8)($t2)
    /* 1DAE8 801A6A60 1E800B3C */  lui        $t3, %hi(D_801D81C6)
    /* 1DAEC 801A6A64 C6816B91 */  lbu        $t3, %lo(D_801D81C6)($t3)
    /* 1DAF0 801A6A68 1E800C3C */  lui        $t4, %hi(D_801D81C7)
    /* 1DAF4 801A6A6C C7818C91 */  lbu        $t4, %lo(D_801D81C7)($t4)
    /* 1DAF8 801A6A70 1E800D3C */  lui        $t5, %hi(D_801D81C9)
    /* 1DAFC 801A6A74 C981AD91 */  lbu        $t5, %lo(D_801D81C9)($t5)
    /* 1DB00 801A6A78 25186400 */  or         $v1, $v1, $a0
    /* 1DB04 801A6A7C 090003A2 */  sb         $v1, 0x9($s0)
    /* 1DB08 801A6A80 000005A2 */  sb         $a1, 0x0($s0)
    /* 1DB0C 801A6A84 010006A2 */  sb         $a2, 0x1($s0)
    /* 1DB10 801A6A88 0E0007A2 */  sb         $a3, 0xE($s0)
    /* 1DB14 801A6A8C E50248A2 */  sb         $t0, 0x2E5($s2)
    /* 1DB18 801A6A90 E40249A2 */  sb         $t1, 0x2E4($s2)
    /* 1DB1C 801A6A94 E3024AA2 */  sb         $t2, 0x2E3($s2)
    /* 1DB20 801A6A98 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1DB24 801A6A9C 21082102 */  addu       $at, $s1, $at
    /* 1DB28 801A6AA0 1DAC2BA0 */  sb         $t3, -0x53E3($at)
    /* 1DB2C 801A6AA4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1DB30 801A6AA8 21082102 */  addu       $at, $s1, $at
    /* 1DB34 801A6AAC 1EAC2CA0 */  sb         $t4, -0x53E2($at)
    /* 1DB38 801A6AB0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1DB3C 801A6AB4 21082102 */  addu       $at, $s1, $at
    /* 1DB40 801A6AB8 1FAC2DA0 */  sb         $t5, -0x53E1($at)
    /* 1DB44 801A6ABC B29A0608 */  j          .L801A6AC8
    /* 1DB48 801A6AC0 00000000 */   nop
  .L801A6AC4:
    /* 1DB4C 801A6AC4 21100000 */  addu       $v0, $zero, $zero
  .L801A6AC8:
    /* 1DB50 801A6AC8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1DB54 801A6ACC 1800B28F */  lw         $s2, 0x18($sp)
    /* 1DB58 801A6AD0 1400B18F */  lw         $s1, 0x14($sp)
    /* 1DB5C 801A6AD4 1000B08F */  lw         $s0, 0x10($sp)
    /* 1DB60 801A6AD8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1DB64 801A6ADC 0800E003 */  jr         $ra
    /* 1DB68 801A6AE0 00000000 */   nop
endlabel func_801A6400
