nonmatching func_800BDCF8, 0x8C

glabel func_800BDCF8
    /* AE4F8 800BDCF8 0281023C */  lui        $v0, (0x81020409 >> 16)
    /* AE4FC 800BDCFC 09044234 */  ori        $v0, $v0, (0x81020409 & 0xFFFF)
    /* AE500 800BDD00 00240400 */  sll        $a0, $a0, 16
    /* AE504 800BDD04 03240400 */  sra        $a0, $a0, 16
    /* AE508 800BDD08 C01B0400 */  sll        $v1, $a0, 15
    /* AE50C 800BDD0C 23186400 */  subu       $v1, $v1, $a0
    /* AE510 800BDD10 18006200 */  mult       $v1, $v0
    /* AE514 800BDD14 002C0500 */  sll        $a1, $a1, 16
    /* AE518 800BDD18 032C0500 */  sra        $a1, $a1, 16
    /* AE51C 800BDD1C 10400000 */  mfhi       $t0
    /* AE520 800BDD20 C0330500 */  sll        $a2, $a1, 15
    /* AE524 800BDD24 2330C500 */  subu       $a2, $a2, $a1
    /* AE528 800BDD28 1800C200 */  mult       $a2, $v0
    /* AE52C 800BDD2C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AE530 800BDD30 0F80043C */  lui        $a0, %hi(D_800E81B8)
    /* AE534 800BDD34 B8818424 */  addiu      $a0, $a0, %lo(D_800E81B8)
    /* AE538 800BDD38 1000BFAF */  sw         $ra, 0x10($sp)
    /* AE53C 800BDD3C 06000224 */  addiu      $v0, $zero, 0x6
    /* AE540 800BDD40 000082AC */  sw         $v0, 0x0($a0)
    /* AE544 800BDD44 21100301 */  addu       $v0, $t0, $v1
    /* AE548 800BDD48 83110200 */  sra        $v0, $v0, 6
    /* AE54C 800BDD4C C31F0300 */  sra        $v1, $v1, 31
    /* AE550 800BDD50 23104300 */  subu       $v0, $v0, $v1
    /* AE554 800BDD54 080082A4 */  sh         $v0, 0x8($a0)
    /* AE558 800BDD58 10280000 */  mfhi       $a1
    /* AE55C 800BDD5C 2110A600 */  addu       $v0, $a1, $a2
    /* AE560 800BDD60 83110200 */  sra        $v0, $v0, 6
    /* AE564 800BDD64 C3370600 */  sra        $a2, $a2, 31
    /* AE568 800BDD68 23104600 */  subu       $v0, $v0, $a2
    /* AE56C 800BDD6C 020C030C */  jal        func_800C3008
    /* AE570 800BDD70 0A0082A4 */   sh        $v0, 0xA($a0)
    /* AE574 800BDD74 1000BF8F */  lw         $ra, 0x10($sp)
    /* AE578 800BDD78 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AE57C 800BDD7C 0800E003 */  jr         $ra
    /* AE580 800BDD80 00000000 */   nop
endlabel func_800BDCF8
    /* AE584 800BDD84 00000000 */  nop
