/* Handwritten function */
nonmatching func_8009B4F8, 0x390

glabel func_8009B4F8
    /* 8BCF8 8009B4F8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8BCFC 8009B4FC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8BD00 8009B500 4000B08F */  lw         $s0, 0x40($sp)
    /* 8BD04 8009B504 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8BD08 8009B508 21888000 */  addu       $s1, $a0, $zero
    /* 8BD0C 8009B50C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8BD10 8009B510 2190A000 */  addu       $s2, $a1, $zero
    /* 8BD14 8009B514 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8BD18 8009B518 2198C000 */  addu       $s3, $a2, $zero
    /* 8BD1C 8009B51C 1000A7A3 */  sb         $a3, 0x10($sp)
    /* 8BD20 8009B520 4400A68F */  lw         $a2, 0x44($sp)
    /* 8BD24 8009B524 1000A527 */  addiu      $a1, $sp, 0x10
    /* 8BD28 8009B528 2800BFAF */  sw         $ra, 0x28($sp)
    /* 8BD2C 8009B52C DB6C020C */  jal        func_8009B36C
    /* 8BD30 8009B530 21200002 */   addu      $a0, $s0, $zero
    /* 8BD34 8009B534 00000292 */  lbu        $v0, 0x0($s0)
    /* 8BD38 8009B538 801F043C */  lui        $a0, (0x1F800104 >> 16)
    /* 8BD3C 8009B53C 80100200 */  sll        $v0, $v0, 2
    /* 8BD40 8009B540 0D80013C */  lui        $at, %hi(D_800CB168)
    /* 8BD44 8009B544 21082200 */  addu       $at, $at, $v0
    /* 8BD48 8009B548 68B1308C */  lw         $s0, %lo(D_800CB168)($at)
    /* 8BD4C 8009B54C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 8BD50 8009B550 801F013C */  lui        $at, (0x1F800124 >> 16)
    /* 8BD54 8009B554 240120A4 */  sh         $zero, (0x1F800124 & 0xFFFF)($at)
    /* 8BD58 8009B558 801F013C */  lui        $at, (0x1F800126 >> 16)
    /* 8BD5C 8009B55C 260120A4 */  sh         $zero, (0x1F800126 & 0xFFFF)($at)
    /* 8BD60 8009B560 801F013C */  lui        $at, (0x1F800128 >> 16)
    /* 8BD64 8009B564 280120A4 */  sh         $zero, (0x1F800128 & 0xFFFF)($at)
    /* 8BD68 8009B568 801F013C */  lui        $at, (0x1F80014C >> 16)
    /* 8BD6C 8009B56C 4C0122AC */  sw         $v0, (0x1F80014C & 0xFFFF)($at)
    /* 8BD70 8009B570 801F013C */  lui        $at, (0x1F800150 >> 16)
    /* 8BD74 8009B574 500122AC */  sw         $v0, (0x1F800150 & 0xFFFF)($at)
    /* 8BD78 8009B578 801F013C */  lui        $at, (0x1F800154 >> 16)
    /* 8BD7C 8009B57C 540122AC */  sw         $v0, (0x1F800154 & 0xFFFF)($at)
    /* 8BD80 8009B580 00002296 */  lhu        $v0, 0x0($s1)
    /* 8BD84 8009B584 04018434 */  ori        $a0, $a0, (0x1F800104 & 0xFFFF)
    /* 8BD88 8009B588 801F013C */  lui        $at, (0x1F80012C >> 16)
    /* 8BD8C 8009B58C 2C0122A4 */  sh         $v0, (0x1F80012C & 0xFFFF)($at)
    /* 8BD90 8009B590 00004296 */  lhu        $v0, 0x0($s2)
    /* 8BD94 8009B594 801F053C */  lui        $a1, (0x1F80014C >> 16)
    /* 8BD98 8009B598 801F013C */  lui        $at, (0x1F80012E >> 16)
    /* 8BD9C 8009B59C 2E0122A4 */  sh         $v0, (0x1F80012E & 0xFFFF)($at)
    /* 8BDA0 8009B5A0 00006296 */  lhu        $v0, 0x0($s3)
    /* 8BDA4 8009B5A4 801F013C */  lui        $at, (0x1F800130 >> 16)
    /* 8BDA8 8009B5A8 300122A4 */  sh         $v0, (0x1F800130 & 0xFFFF)($at)
    /* 8BDAC 8009B5AC D2C4020C */  jal        func_800B1348
    /* 8BDB0 8009B5B0 4C01A534 */   ori       $a1, $a1, (0x1F80014C & 0xFFFF)
    /* 8BDB4 8009B5B4 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* 8BDB8 8009B5B8 24018434 */  ori        $a0, $a0, (0x1F800124 & 0xFFFF)
    /* 8BDBC 8009B5BC 801F053C */  lui        $a1, (0x1F800104 >> 16)
    /* 8BDC0 8009B5C0 6AC6020C */  jal        func_800B19A8
    /* 8BDC4 8009B5C4 0401A534 */   ori       $a1, $a1, (0x1F800104 & 0xFFFF)
    /* 8BDC8 8009B5C8 801F043C */  lui        $a0, (0x1F8001A8 >> 16)
    /* 8BDCC 8009B5CC A8018434 */  ori        $a0, $a0, (0x1F8001A8 & 0xFFFF)
    /* 8BDD0 8009B5D0 801F053C */  lui        $a1, (0x1F80012C >> 16)
    /* 8BDD4 8009B5D4 2C01A534 */  ori        $a1, $a1, (0x1F80012C & 0xFFFF)
    /* 8BDD8 8009B5D8 801F063C */  lui        $a2, (0x1F80013C >> 16)
    /* 8BDDC 8009B5DC B2C4020C */  jal        func_800B12C8
    /* 8BDE0 8009B5E0 3C01C634 */   ori       $a2, $a2, (0x1F80013C & 0xFFFF)
    /* 8BDE4 8009B5E4 00000486 */  lh         $a0, 0x0($s0)
    /* 8BDE8 8009B5E8 801F103C */  lui        $s0, (0x1F80029D >> 16)
    /* 8BDEC 8009B5EC 801F083C */  lui        $t0, (0x1F800104 >> 16)
    /* 8BDF0 8009B5F0 04010835 */  ori        $t0, $t0, (0x1F800104 & 0xFFFF)
    /* 8BDF4 8009B5F4 801F023C */  lui        $v0, (0x1F80013C >> 16)
    /* 8BDF8 8009B5F8 3C01428C */  lw         $v0, (0x1F80013C & 0xFFFF)($v0)
    /* 8BDFC 8009B5FC 801F033C */  lui        $v1, (0x1F8001BC >> 16)
    /* 8BE00 8009B600 BC01638C */  lw         $v1, (0x1F8001BC & 0xFFFF)($v1)
    /* 8BE04 8009B604 801F053C */  lui        $a1, (0x1F8001C4 >> 16)
    /* 8BE08 8009B608 C401A58C */  lw         $a1, (0x1F8001C4 & 0xFFFF)($a1)
    /* 8BE0C 8009B60C 21104400 */  addu       $v0, $v0, $a0
    /* 8BE10 8009B610 21104300 */  addu       $v0, $v0, $v1
    /* 8BE14 8009B614 801F013C */  lui        $at, (0x1F800118 >> 16)
    /* 8BE18 8009B618 180122AC */  sw         $v0, (0x1F800118 & 0xFFFF)($at)
    /* 8BE1C 8009B61C 801F023C */  lui        $v0, (0x1F800140 >> 16)
    /* 8BE20 8009B620 4001428C */  lw         $v0, (0x1F800140 & 0xFFFF)($v0)
    /* 8BE24 8009B624 801F043C */  lui        $a0, (0x1F8001C0 >> 16)
    /* 8BE28 8009B628 C001848C */  lw         $a0, (0x1F8001C0 & 0xFFFF)($a0)
    /* 8BE2C 8009B62C 801F033C */  lui        $v1, (0x1F800144 >> 16)
    /* 8BE30 8009B630 4401638C */  lw         $v1, (0x1F800144 & 0xFFFF)($v1)
    /* 8BE34 8009B634 21104400 */  addu       $v0, $v0, $a0
    /* 8BE38 8009B638 21186500 */  addu       $v1, $v1, $a1
    /* 8BE3C 8009B63C 801F013C */  lui        $at, (0x1F80011C >> 16)
    /* 8BE40 8009B640 1C0122AC */  sw         $v0, (0x1F80011C & 0xFFFF)($at)
    /* 8BE44 8009B644 801F013C */  lui        $at, (0x1F800120 >> 16)
    /* 8BE48 8009B648 200123AC */  sw         $v1, (0x1F800120 & 0xFFFF)($at)
    /* 8BE4C 8009B64C 00000C8D */  lw         $t4, 0x0($t0)
    /* 8BE50 8009B650 04000D8D */  lw         $t5, 0x4($t0)
    /* 8BE54 8009B654 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* 8BE58 8009B658 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* 8BE5C 8009B65C 08000C8D */  lw         $t4, 0x8($t0)
    /* 8BE60 8009B660 0C000D8D */  lw         $t5, 0xC($t0)
    /* 8BE64 8009B664 10000E8D */  lw         $t6, 0x10($t0)
    /* 8BE68 8009B668 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* 8BE6C 8009B66C 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* 8BE70 8009B670 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* 8BE74 8009B674 14000C8D */  lw         $t4, 0x14($t0)
    /* 8BE78 8009B678 18000D8D */  lw         $t5, 0x18($t0)
    /* 8BE7C 8009B67C 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* 8BE80 8009B680 1C000E8D */  lw         $t6, 0x1C($t0)
    /* 8BE84 8009B684 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* 8BE88 8009B688 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* 8BE8C 8009B68C 801F033C */  lui        $v1, (0x1F80029D >> 16)
    /* 8BE90 8009B690 9D026390 */  lbu        $v1, (0x1F80029D & 0xFFFF)($v1)
    /* 8BE94 8009B694 1000A493 */  lbu        $a0, 0x10($sp)
    /* 8BE98 8009B698 0F80053C */  lui        $a1, %hi(D_800E8208)
    /* 8BE9C 8009B69C 0882A524 */  addiu      $a1, $a1, %lo(D_800E8208)
    /* 8BEA0 8009B6A0 801F013C */  lui        $at, (0x1F800190 >> 16)
    /* 8BEA4 8009B6A4 900125AC */  sw         $a1, (0x1F800190 & 0xFFFF)($at)
    /* 8BEA8 8009B6A8 00110300 */  sll        $v0, $v1, 4
    /* 8BEAC 8009B6AC 23104300 */  subu       $v0, $v0, $v1
    /* 8BEB0 8009B6B0 80100200 */  sll        $v0, $v0, 2
    /* 8BEB4 8009B6B4 23104300 */  subu       $v0, $v0, $v1
    /* 8BEB8 8009B6B8 80100200 */  sll        $v0, $v0, 2
    /* 8BEBC 8009B6BC 23104300 */  subu       $v0, $v0, $v1
    /* 8BEC0 8009B6C0 80110200 */  sll        $v0, $v0, 6
    /* 8BEC4 8009B6C4 21104500 */  addu       $v0, $v0, $a1
    /* 8BEC8 8009B6C8 80180400 */  sll        $v1, $a0, 2
    /* 8BECC 8009B6CC 21186400 */  addu       $v1, $v1, $a0
    /* 8BED0 8009B6D0 C0180300 */  sll        $v1, $v1, 3
    /* 8BED4 8009B6D4 60366324 */  addiu      $v1, $v1, 0x3660
    /* 8BED8 8009B6D8 00210400 */  sll        $a0, $a0, 4
    /* 8BEDC 8009B6DC 0E80013C */  lui        $at, %hi(D_800E6E2D)
    /* 8BEE0 8009B6E0 21082400 */  addu       $at, $at, $a0
    /* 8BEE4 8009B6E4 2D6E2490 */  lbu        $a0, %lo(D_800E6E2D)($at)
    /* 8BEE8 8009B6E8 00000000 */  nop
    /* 8BEEC 8009B6EC 21008010 */  beqz       $a0, .L8009B774
    /* 8BEF0 8009B6F0 21284300 */   addu      $a1, $v0, $v1
    /* 8BEF4 8009B6F4 0D80093C */  lui        $t1, %hi(D_800CB2F4)
    /* 8BEF8 8009B6F8 F4B22925 */  addiu      $t1, $t1, %lo(D_800CB2F4)
    /* 8BEFC 8009B6FC 0D800A3C */  lui        $t2, %hi(D_800CB2FC)
    /* 8BF00 8009B700 FCB24A25 */  addiu      $t2, $t2, %lo(D_800CB2FC)
    /* 8BF04 8009B704 0D80083C */  lui        $t0, %hi(D_800CB2EC)
    /* 8BF08 8009B708 ECB20825 */  addiu      $t0, $t0, %lo(D_800CB2EC)
    /* 8BF0C 8009B70C 000020C9 */  lwc2       $0, 0x0($t1)
    /* 8BF10 8009B710 040021C9 */  lwc2       $1, 0x4($t1)
    /* 8BF14 8009B714 000042C9 */  lwc2       $2, 0x0($t2)
    /* 8BF18 8009B718 040043C9 */  lwc2       $3, 0x4($t2)
    /* 8BF1C 8009B71C 000004C9 */  lwc2       $4, 0x0($t0)
    /* 8BF20 8009B720 040005C9 */  lwc2       $5, 0x4($t0)
    /* 8BF24 8009B724 00000000 */  nop
    /* 8BF28 8009B728 00000000 */  nop
    /* 8BF2C 8009B72C 3000284A */  rtpt
    /* 8BF30 8009B730 0800A424 */  addiu      $a0, $a1, 0x8
    /* 8BF34 8009B734 1000A324 */  addiu      $v1, $a1, 0x10
    /* 8BF38 8009B738 1800A224 */  addiu      $v0, $a1, 0x18
    /* 8BF3C 8009B73C 00008CE8 */  swc2       $12, 0x0($a0)
    /* 8BF40 8009B740 00006DE8 */  swc2       $13, 0x0($v1)
    /* 8BF44 8009B744 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8BF48 8009B748 0D80093C */  lui        $t1, %hi(D_800CB304)
    /* 8BF4C 8009B74C 04B32925 */  addiu      $t1, $t1, %lo(D_800CB304)
    /* 8BF50 8009B750 000020C9 */  lwc2       $0, 0x0($t1)
    /* 8BF54 8009B754 040021C9 */  lwc2       $1, 0x4($t1)
    /* 8BF58 8009B758 00000000 */  nop
    /* 8BF5C 8009B75C 00000000 */  nop
    /* 8BF60 8009B760 0100184A */  rtps
    /* 8BF64 8009B764 2000A224 */  addiu      $v0, $a1, 0x20
    /* 8BF68 8009B768 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8BF6C 8009B76C FC6D0208 */  j          .L8009B7F0
    /* 8BF70 8009B770 EC000226 */   addiu     $v0, $s0, %lo(D_1F8000EC)
  .L8009B774:
    /* 8BF74 8009B774 0D800A3C */  lui        $t2, %hi(D_800CB2D4)
    /* 8BF78 8009B778 D4B24A25 */  addiu      $t2, $t2, %lo(D_800CB2D4)
    /* 8BF7C 8009B77C 0D80083C */  lui        $t0, %hi(D_800CB2DC)
    /* 8BF80 8009B780 DCB20825 */  addiu      $t0, $t0, %lo(D_800CB2DC)
    /* 8BF84 8009B784 0D80093C */  lui        $t1, %hi(D_800CB2CC)
    /* 8BF88 8009B788 CCB22925 */  addiu      $t1, $t1, %lo(D_800CB2CC)
    /* 8BF8C 8009B78C 000040C9 */  lwc2       $0, 0x0($t2)
    /* 8BF90 8009B790 040041C9 */  lwc2       $1, 0x4($t2)
    /* 8BF94 8009B794 000002C9 */  lwc2       $2, 0x0($t0)
    /* 8BF98 8009B798 040003C9 */  lwc2       $3, 0x4($t0)
    /* 8BF9C 8009B79C 000024C9 */  lwc2       $4, 0x0($t1)
    /* 8BFA0 8009B7A0 040025C9 */  lwc2       $5, 0x4($t1)
    /* 8BFA4 8009B7A4 00000000 */  nop
    /* 8BFA8 8009B7A8 00000000 */  nop
    /* 8BFAC 8009B7AC 3000284A */  rtpt
    /* 8BFB0 8009B7B0 0800A424 */  addiu      $a0, $a1, 0x8
    /* 8BFB4 8009B7B4 1000A324 */  addiu      $v1, $a1, 0x10
    /* 8BFB8 8009B7B8 1800A224 */  addiu      $v0, $a1, 0x18
    /* 8BFBC 8009B7BC 00008CE8 */  swc2       $12, 0x0($a0)
    /* 8BFC0 8009B7C0 00006DE8 */  swc2       $13, 0x0($v1)
    /* 8BFC4 8009B7C4 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8BFC8 8009B7C8 0D800A3C */  lui        $t2, %hi(D_800CB2E4)
    /* 8BFCC 8009B7CC E4B24A25 */  addiu      $t2, $t2, %lo(D_800CB2E4)
    /* 8BFD0 8009B7D0 000040C9 */  lwc2       $0, 0x0($t2)
    /* 8BFD4 8009B7D4 040041C9 */  lwc2       $1, 0x4($t2)
    /* 8BFD8 8009B7D8 00000000 */  nop
    /* 8BFDC 8009B7DC 00000000 */  nop
    /* 8BFE0 8009B7E0 0100184A */  rtps
    /* 8BFE4 8009B7E4 2000A224 */  addiu      $v0, $a1, 0x20
    /* 8BFE8 8009B7E8 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8BFEC 8009B7EC EC000226 */  addiu      $v0, $s0, %lo(D_1F8000EC)
  .L8009B7F0:
    /* 8BFF0 8009B7F0 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
    /* 8BFF4 8009B7F4 00000000 */  nop
    /* 8BFF8 8009B7F8 83600C00 */  sra        $t4, $t4, 2
    /* 8BFFC 8009B7FC 00004CAC */  sw         $t4, 0x0($v0)
    /* 8C000 8009B800 EC00068E */  lw         $a2, (0x1F8000EC & 0xFFFF)($s0)
    /* 8C004 8009B804 00000000 */  nop
    /* 8C008 8009B808 1700C018 */  blez       $a2, .L8009B868
    /* 8C00C 8009B80C 6666043C */   lui       $a0, (0x66666667 >> 16)
    /* 8C010 8009B810 67668434 */  ori        $a0, $a0, (0x66666667 & 0xFFFF)
    /* 8C014 8009B814 0000038E */  lw         $v1, (0x1F800000 & 0xFFFF)($s0)
    /* 8C018 8009B818 0E000224 */  addiu      $v0, $zero, 0xE
    /* 8C01C 8009B81C 23104300 */  subu       $v0, $v0, $v1
    /* 8C020 8009B820 07104600 */  srav       $v0, $a2, $v0
    /* 8C024 8009B824 C0180200 */  sll        $v1, $v0, 3
    /* 8C028 8009B828 21186200 */  addu       $v1, $v1, $v0
    /* 8C02C 8009B82C 80180300 */  sll        $v1, $v1, 2
    /* 8C030 8009B830 21186200 */  addu       $v1, $v1, $v0
    /* 8C034 8009B834 18006400 */  mult       $v1, $a0
    /* 8C038 8009B838 C31F0300 */  sra        $v1, $v1, 31
    /* 8C03C 8009B83C 9D020692 */  lbu        $a2, (0x1F80029D & 0xFFFF)($s0)
    /* 8C040 8009B840 0F80023C */  lui        $v0, %hi(D_800F3568)
    /* 8C044 8009B844 68354224 */  addiu      $v0, $v0, %lo(D_800F3568)
    /* 8C048 8009B848 80330600 */  sll        $a2, $a2, 14
    /* 8C04C 8009B84C 10400000 */  mfhi       $t0
    /* 8C050 8009B850 03210800 */  sra        $a0, $t0, 4
    /* 8C054 8009B854 23208300 */  subu       $a0, $a0, $v1
    /* 8C058 8009B858 80200400 */  sll        $a0, $a0, 2
    /* 8C05C 8009B85C 21208200 */  addu       $a0, $a0, $v0
    /* 8C060 8009B860 01B7020C */  jal        func_800ADC04
    /* 8C064 8009B864 2120C400 */   addu      $a0, $a2, $a0
  .L8009B868:
    /* 8C068 8009B868 2800BF8F */  lw         $ra, 0x28($sp)
    /* 8C06C 8009B86C 2400B38F */  lw         $s3, 0x24($sp)
    /* 8C070 8009B870 2000B28F */  lw         $s2, 0x20($sp)
    /* 8C074 8009B874 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8C078 8009B878 1800B08F */  lw         $s0, 0x18($sp)
    /* 8C07C 8009B87C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 8C080 8009B880 0800E003 */  jr         $ra
    /* 8C084 8009B884 00000000 */   nop
endlabel func_8009B4F8
