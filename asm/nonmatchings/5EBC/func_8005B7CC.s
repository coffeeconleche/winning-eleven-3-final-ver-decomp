nonmatching func_8005B7CC, 0x98

glabel func_8005B7CC
    /* 4BFCC 8005B7CC FF008430 */  andi       $a0, $a0, 0xFF
    /* 4BFD0 8005B7D0 FF00A830 */  andi       $t0, $a1, 0xFF
    /* 4BFD4 8005B7D4 23388800 */  subu       $a3, $a0, $t0
    /* 4BFD8 8005B7D8 0001E324 */  addiu      $v1, $a3, 0x100
    /* 4BFDC 8005B7DC 02006104 */  bgez       $v1, .L8005B7E8
    /* 4BFE0 8005B7E0 21106000 */   addu      $v0, $v1, $zero
    /* 4BFE4 8005B7E4 FF01E224 */  addiu      $v0, $a3, 0x1FF
  .L8005B7E8:
    /* 4BFE8 8005B7E8 03120200 */  sra        $v0, $v0, 8
    /* 4BFEC 8005B7EC 00120200 */  sll        $v0, $v0, 8
    /* 4BFF0 8005B7F0 23106200 */  subu       $v0, $v1, $v0
    /* 4BFF4 8005B7F4 FF004330 */  andi       $v1, $v0, 0xFF
    /* 4BFF8 8005B7F8 8100622C */  sltiu      $v0, $v1, 0x81
    /* 4BFFC 8005B7FC 09004010 */  beqz       $v0, .L8005B824
    /* 4C000 8005B800 FF00C530 */   andi      $a1, $a2, 0xFF
    /* 4C004 8005B804 2B10A300 */  sltu       $v0, $a1, $v1
    /* 4C008 8005B808 0B004010 */  beqz       $v0, .L8005B838
    /* 4C00C 8005B80C 21280501 */   addu      $a1, $t0, $a1
    /* 4C010 8005B810 0200A104 */  bgez       $a1, .L8005B81C
    /* 4C014 8005B814 2110A000 */   addu      $v0, $a1, $zero
    /* 4C018 8005B818 FF00A224 */  addiu      $v0, $a1, 0xFF
  .L8005B81C:
    /* 4C01C 8005B81C 156E0108 */  j          .L8005B854
    /* 4C020 8005B820 00034230 */   andi      $v0, $v0, 0x300
  .L8005B824:
    /* 4C024 8005B824 00010224 */  addiu      $v0, $zero, 0x100
    /* 4C028 8005B828 23104300 */  subu       $v0, $v0, $v1
    /* 4C02C 8005B82C 2A10A200 */  slt        $v0, $a1, $v0
    /* 4C030 8005B830 03004014 */  bnez       $v0, .L8005B840
    /* 4C034 8005B834 23280501 */   subu      $a1, $t0, $a1
  .L8005B838:
    /* 4C038 8005B838 176E0108 */  j          .L8005B85C
    /* 4C03C 8005B83C 21108000 */   addu      $v0, $a0, $zero
  .L8005B840:
    /* 4C040 8005B840 0200A104 */  bgez       $a1, .L8005B84C
    /* 4C044 8005B844 2110A000 */   addu      $v0, $a1, $zero
    /* 4C048 8005B848 FF00A224 */  addiu      $v0, $a1, 0xFF
  .L8005B84C:
    /* 4C04C 8005B84C 03120200 */  sra        $v0, $v0, 8
    /* 4C050 8005B850 00120200 */  sll        $v0, $v0, 8
  .L8005B854:
    /* 4C054 8005B854 2310A200 */  subu       $v0, $a1, $v0
    /* 4C058 8005B858 FF004230 */  andi       $v0, $v0, 0xFF
  .L8005B85C:
    /* 4C05C 8005B85C 0800E003 */  jr         $ra
    /* 4C060 8005B860 00000000 */   nop
endlabel func_8005B7CC
