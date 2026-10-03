nonmatching func_801A76A8, 0xF8

glabel func_801A76A8
    /* 1E730 801A76A8 21288000 */  addu       $a1, $a0, $zero
    /* 1E734 801A76AC 1A00A004 */  bltz       $a1, .L801A7718
    /* 1E738 801A76B0 00000000 */   nop
    /* 1E73C 801A76B4 1E80033C */  lui        $v1, %hi(D_801D81C8)
    /* 1E740 801A76B8 C8816390 */  lbu        $v1, %lo(D_801D81C8)($v1)
    /* 1E744 801A76BC AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 1E748 801A76C0 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 1E74C 801A76C4 19006200 */  multu      $v1, $v0
    /* 1E750 801A76C8 1E80013C */  lui        $at, %hi(D_801D81BB)
    /* 1E754 801A76CC BB8120A0 */  sb         $zero, %lo(D_801D81BB)($at)
    /* 1E758 801A76D0 80FF0224 */  addiu      $v0, $zero, -0x80
    /* 1E75C 801A76D4 23104500 */  subu       $v0, $v0, $a1
    /* 1E760 801A76D8 1E80013C */  lui        $at, %hi(D_801D81B9)
    /* 1E764 801A76DC B98122A0 */  sb         $v0, %lo(D_801D81B9)($at)
    /* 1E768 801A76E0 50000224 */  addiu      $v0, $zero, 0x50
    /* 1E76C 801A76E4 23104500 */  subu       $v0, $v0, $a1
    /* 1E770 801A76E8 1E80013C */  lui        $at, %hi(D_801D81BA)
    /* 1E774 801A76EC BA8122A0 */  sb         $v0, %lo(D_801D81BA)($at)
    /* 1E778 801A76F0 10300000 */  mfhi       $a2
    /* 1E77C 801A76F4 42200600 */  srl        $a0, $a2, 1
    /* 1E780 801A76F8 40100400 */  sll        $v0, $a0, 1
    /* 1E784 801A76FC 21104400 */  addu       $v0, $v0, $a0
    /* 1E788 801A7700 23186200 */  subu       $v1, $v1, $v0
    /* 1E78C 801A7704 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1E790 801A7708 80100300 */  sll        $v0, $v1, 2
    /* 1E794 801A770C 21104300 */  addu       $v0, $v0, $v1
    /* 1E798 801A7710 DE9D0608 */  j          .L801A7778
    /* 1E79C 801A7714 00110200 */   sll       $v0, $v0, 4
  .L801A7718:
    /* 1E7A0 801A7718 1E80033C */  lui        $v1, %hi(D_801D81C8)
    /* 1E7A4 801A771C C8816390 */  lbu        $v1, %lo(D_801D81C8)($v1)
    /* 1E7A8 801A7720 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 1E7AC 801A7724 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 1E7B0 801A7728 19006200 */  multu      $v1, $v0
    /* 1E7B4 801A772C 80FFA224 */  addiu      $v0, $a1, -0x80
    /* 1E7B8 801A7730 1E80013C */  lui        $at, %hi(D_801D81B9)
    /* 1E7BC 801A7734 B98122A0 */  sb         $v0, %lo(D_801D81B9)($at)
    /* 1E7C0 801A7738 5000A224 */  addiu      $v0, $a1, 0x50
    /* 1E7C4 801A773C 1E80013C */  lui        $at, %hi(D_801D81BA)
    /* 1E7C8 801A7740 BA8122A0 */  sb         $v0, %lo(D_801D81BA)($at)
    /* 1E7CC 801A7744 23100500 */  negu       $v0, $a1
    /* 1E7D0 801A7748 1E80013C */  lui        $at, %hi(D_801D81BB)
    /* 1E7D4 801A774C BB8122A0 */  sb         $v0, %lo(D_801D81BB)($at)
    /* 1E7D8 801A7750 10300000 */  mfhi       $a2
    /* 1E7DC 801A7754 42200600 */  srl        $a0, $a2, 1
    /* 1E7E0 801A7758 40100400 */  sll        $v0, $a0, 1
    /* 1E7E4 801A775C 21104400 */  addu       $v0, $v0, $a0
    /* 1E7E8 801A7760 23186200 */  subu       $v1, $v1, $v0
    /* 1E7EC 801A7764 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1E7F0 801A7768 80100300 */  sll        $v0, $v1, 2
    /* 1E7F4 801A776C 21104300 */  addu       $v0, $v0, $v1
    /* 1E7F8 801A7770 00110200 */  sll        $v0, $v0, 4
    /* 1E7FC 801A7774 23104500 */  subu       $v0, $v0, $a1
  .L801A7778:
    /* 1E800 801A7778 1E80013C */  lui        $at, %hi(D_801D81BC)
    /* 1E804 801A777C BC8122A0 */  sb         $v0, %lo(D_801D81BC)($at)
    /* 1E808 801A7780 1E80033C */  lui        $v1, %hi(D_801D81C8)
    /* 1E80C 801A7784 C8816390 */  lbu        $v1, %lo(D_801D81C8)($v1)
    /* 1E810 801A7788 1E80023C */  lui        $v0, %hi(D_801D81C2)
    /* 1E814 801A778C C2814224 */  addiu      $v0, $v0, %lo(D_801D81C2)
    /* 1E818 801A7790 F4006324 */  addiu      $v1, $v1, 0xF4
    /* 1E81C 801A7794 000043A0 */  sb         $v1, 0x0($v0)
    /* 1E820 801A7798 0800E003 */  jr         $ra
    /* 1E824 801A779C F6FF4224 */   addiu     $v0, $v0, -0xA
endlabel func_801A76A8
