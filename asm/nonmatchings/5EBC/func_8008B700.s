nonmatching func_8008B700, 0x224

glabel func_8008B700
    /* 7BF00 8008B700 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 7BF04 8008B704 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7BF08 8008B708 21888000 */  addu       $s1, $a0, $zero
    /* 7BF0C 8008B70C 2400BFAF */  sw         $ra, 0x24($sp)
    /* 7BF10 8008B710 2000B2AF */  sw         $s2, 0x20($sp)
    /* 7BF14 8008B714 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7BF18 8008B718 97032392 */  lbu        $v1, 0x397($s1)
    /* 7BF1C 8008B71C 00000000 */  nop
    /* 7BF20 8008B720 05006010 */  beqz       $v1, .L8008B738
    /* 7BF24 8008B724 01000224 */   addiu     $v0, $zero, 0x1
    /* 7BF28 8008B728 1D006210 */  beq        $v1, $v0, .L8008B7A0
    /* 7BF2C 8008B72C 00000000 */   nop
    /* 7BF30 8008B730 2F2E0208 */  j          .L8008B8BC
    /* 7BF34 8008B734 00000000 */   nop
  .L8008B738:
    /* 7BF38 8008B738 21202002 */  addu       $a0, $s1, $zero
    /* 7BF3C 8008B73C 68000524 */  addiu      $a1, $zero, 0x68
    /* 7BF40 8008B740 8C6E010C */  jal        func_8005BA30
    /* 7BF44 8008B744 21300000 */   addu      $a2, $zero, $zero
    /* 7BF48 8008B748 92032292 */  lbu        $v0, 0x392($s1)
    /* 7BF4C 8008B74C 98032492 */  lbu        $a0, 0x398($s1)
    /* 7BF50 8008B750 40180200 */  sll        $v1, $v0, 1
    /* 7BF54 8008B754 21186200 */  addu       $v1, $v1, $v0
    /* 7BF58 8008B758 80180300 */  sll        $v1, $v1, 2
    /* 7BF5C 8008B75C 40110400 */  sll        $v0, $a0, 5
    /* 7BF60 8008B760 21104400 */  addu       $v0, $v0, $a0
    /* 7BF64 8008B764 C0100200 */  sll        $v0, $v0, 3
    /* 7BF68 8008B768 21186200 */  addu       $v1, $v1, $v0
    /* 7BF6C 8008B76C 1180013C */  lui        $at, %hi(D_8010C330)
    /* 7BF70 8008B770 21082300 */  addu       $at, $at, $v1
    /* 7BF74 8008B774 30C3238C */  lw         $v1, %lo(D_8010C330)($at)
    /* 7BF78 8008B778 97032292 */  lbu        $v0, 0x397($s1)
    /* 7BF7C 8008B77C AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 7BF80 8008B780 D10320A2 */  sb         $zero, 0x3D1($s1)
    /* 7BF84 8008B784 01004224 */  addiu      $v0, $v0, 0x1
    /* 7BF88 8008B788 02190300 */  srl        $v1, $v1, 4
    /* 7BF8C 8008B78C 01006330 */  andi       $v1, $v1, 0x1
    /* 7BF90 8008B790 A40324A2 */  sb         $a0, 0x3A4($s1)
    /* 7BF94 8008B794 970322A2 */  sb         $v0, 0x397($s1)
    /* 7BF98 8008B798 2F2E0208 */  j          .L8008B8BC
    /* 7BF9C 8008B79C AC0323A2 */   sb        $v1, 0x3AC($s1)
  .L8008B7A0:
    /* 7BFA0 8008B7A0 476F010C */  jal        func_8005BD1C
    /* 7BFA4 8008B7A4 21202002 */   addu      $a0, $s1, $zero
    /* 7BFA8 8008B7A8 90032392 */  lbu        $v1, 0x390($s1)
    /* 7BFAC 8008B7AC 19000224 */  addiu      $v0, $zero, 0x19
    /* 7BFB0 8008B7B0 05006210 */  beq        $v1, $v0, .L8008B7C8
    /* 7BFB4 8008B7B4 32000224 */   addiu     $v0, $zero, 0x32
    /* 7BFB8 8008B7B8 3E006210 */  beq        $v1, $v0, .L8008B8B4
    /* 7BFBC 8008B7BC 82000224 */   addiu     $v0, $zero, 0x82
    /* 7BFC0 8008B7C0 2F2E0208 */  j          .L8008B8BC
    /* 7BFC4 8008B7C4 00000000 */   nop
  .L8008B7C8:
    /* 7BFC8 8008B7C8 AE79000C */  jal        func_8001E6B8
    /* 7BFCC 8008B7CC 08000424 */   addiu     $a0, $zero, 0x8
    /* 7BFD0 8008B7D0 92032392 */  lbu        $v1, 0x392($s1)
    /* 7BFD4 8008B7D4 98032592 */  lbu        $a1, 0x398($s1)
    /* 7BFD8 8008B7D8 40200300 */  sll        $a0, $v1, 1
    /* 7BFDC 8008B7DC 21208300 */  addu       $a0, $a0, $v1
    /* 7BFE0 8008B7E0 80200400 */  sll        $a0, $a0, 2
    /* 7BFE4 8008B7E4 40190500 */  sll        $v1, $a1, 5
    /* 7BFE8 8008B7E8 21186500 */  addu       $v1, $v1, $a1
    /* 7BFEC 8008B7EC C0180300 */  sll        $v1, $v1, 3
    /* 7BFF0 8008B7F0 21208300 */  addu       $a0, $a0, $v1
    /* 7BFF4 8008B7F4 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 7BFF8 8008B7F8 21082400 */  addu       $at, $at, $a0
    /* 7BFFC 8008B7FC 2CC3238C */  lw         $v1, %lo(D_8010C32C)($at)
    /* 7C000 8008B800 A8005224 */  addiu      $s2, $v0, 0xA8
    /* 7C004 8008B804 0F006330 */  andi       $v1, $v1, 0xF
    /* 7C008 8008B808 07006228 */  slti       $v0, $v1, 0x7
    /* 7C00C 8008B80C 03004014 */  bnez       $v0, .L8008B81C
    /* 7C010 8008B810 F9FF6224 */   addiu     $v0, $v1, -0x7
    /* 7C014 8008B814 C0100200 */  sll        $v0, $v0, 3
    /* 7C018 8008B818 21904202 */  addu       $s2, $s2, $v0
  .L8008B81C:
    /* 7C01C 8008B81C E871010C */  jal        func_8005C7A0
    /* 7C020 8008B820 08000424 */   addiu     $a0, $zero, 0x8
    /* 7C024 8008B824 AA033092 */  lbu        $s0, 0x3AA($s1)
    /* 7C028 8008B828 04000424 */  addiu      $a0, $zero, 0x4
    /* 7C02C 8008B82C 21800202 */  addu       $s0, $s0, $v0
    /* 7C030 8008B830 AE79000C */  jal        func_8001E6B8
    /* 7C034 8008B834 FF001032 */   andi      $s0, $s0, 0xFF
    /* 7C038 8008B838 21202002 */  addu       $a0, $s1, $zero
    /* 7C03C 8008B83C 21280002 */  addu       $a1, $s0, $zero
    /* 7C040 8008B840 21304002 */  addu       $a2, $s2, $zero
    /* 7C044 8008B844 3C2C010C */  jal        func_8004B0F0
    /* 7C048 8008B848 24004724 */   addiu     $a3, $v0, 0x24
    /* 7C04C 8008B84C 07050424 */  addiu      $a0, $zero, 0x507
    /* 7C050 8008B850 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 7C054 8008B854 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 7C058 8008B858 01000224 */  addiu      $v0, $zero, 0x1
    /* 7C05C 8008B85C BC0362A4 */  sh         $v0, 0x3BC($v1)
    /* 7C060 8008B860 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 7C064 8008B864 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 7C068 8008B868 10000224 */  addiu      $v0, $zero, 0x10
    /* 7C06C 8008B86C 88AD020C */  jal        func_800AB620
    /* 7C070 8008B870 B20362A0 */   sb        $v0, 0x3B2($v1)
    /* 7C074 8008B874 9E2C010C */  jal        func_8004B278
    /* 7C078 8008B878 00000000 */   nop
    /* 7C07C 8008B87C 21202002 */  addu       $a0, $s1, $zero
    /* 7C080 8008B880 01000524 */  addiu      $a1, $zero, 0x1
    /* 7C084 8008B884 801F073C */  lui        $a3, (0x1F8002B4 >> 16)
    /* 7C088 8008B888 B402E784 */  lh         $a3, (0x1F8002B4 & 0xFFFF)($a3)
    /* 7C08C 8008B88C 07000224 */  addiu      $v0, $zero, 0x7
    /* 7C090 8008B890 801F013C */  lui        $at, (0x1F8002B0 >> 16)
    /* 7C094 8008B894 B00222AC */  sw         $v0, (0x1F8002B0 & 0xFFFF)($at)
    /* 7C098 8008B898 801F023C */  lui        $v0, (0x1F8002B6 >> 16)
    /* 7C09C 8008B89C B6024284 */  lh         $v0, (0x1F8002B6 & 0xFFFF)($v0)
    /* 7C0A0 8008B8A0 01000624 */  addiu      $a2, $zero, 0x1
    /* 7C0A4 8008B8A4 A526010C */  jal        func_80049A94
    /* 7C0A8 8008B8A8 1000A2AF */   sw        $v0, 0x10($sp)
    /* 7C0AC 8008B8AC 2F2E0208 */  j          .L8008B8BC
    /* 7C0B0 8008B8B0 00000000 */   nop
  .L8008B8B4:
    /* 7C0B4 8008B8B4 960322A2 */  sb         $v0, 0x396($s1)
    /* 7C0B8 8008B8B8 970320A2 */  sb         $zero, 0x397($s1)
  .L8008B8BC:
    /* 7C0BC 8008B8BC 90032292 */  lbu        $v0, 0x390($s1)
    /* 7C0C0 8008B8C0 AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* 7C0C4 8008B8C4 0D80013C */  lui        $at, %hi(D_800CA640)
    /* 7C0C8 8008B8C8 21082200 */  addu       $at, $at, $v0
    /* 7C0CC 8008B8CC 40A62290 */  lbu        $v0, %lo(D_800CA640)($at)
    /* 7C0D0 8008B8D0 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 7C0D4 8008B8D4 40280200 */  sll        $a1, $v0, 1
    /* 7C0D8 8008B8D8 2128A200 */  addu       $a1, $a1, $v0
    /* 7C0DC 8008B8DC 80280500 */  sll        $a1, $a1, 2
    /* 7C0E0 8008B8E0 2128A200 */  addu       $a1, $a1, $v0
    /* 7C0E4 8008B8E4 80280500 */  sll        $a1, $a1, 2
    /* 7C0E8 8008B8E8 1800A300 */  mult       $a1, $v1
    /* 7C0EC 8008B8EC 21202002 */  addu       $a0, $s1, $zero
    /* 7C0F0 8008B8F0 C32F0500 */  sra        $a1, $a1, 31
    /* 7C0F4 8008B8F4 10400000 */  mfhi       $t0
    /* 7C0F8 8008B8F8 23280501 */  subu       $a1, $t0, $a1
    /* 7C0FC 8008B8FC 196E010C */  jal        func_8005B864
    /* 7C100 8008B900 FFFFA530 */   andi      $a1, $a1, 0xFFFF
    /* 7C104 8008B904 A00320AE */  sw         $zero, 0x3A0($s1)
    /* 7C108 8008B908 2400BF8F */  lw         $ra, 0x24($sp)
    /* 7C10C 8008B90C 2000B28F */  lw         $s2, 0x20($sp)
    /* 7C110 8008B910 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7C114 8008B914 1800B08F */  lw         $s0, 0x18($sp)
    /* 7C118 8008B918 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 7C11C 8008B91C 0800E003 */  jr         $ra
    /* 7C120 8008B920 00000000 */   nop
endlabel func_8008B700
