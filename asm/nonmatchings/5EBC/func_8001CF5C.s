nonmatching func_8001CF5C, 0xA8

glabel func_8001CF5C
    /* D75C 8001CF5C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* D760 8001CF60 80000224 */  addiu      $v0, $zero, 0x80
    /* D764 8001CF64 003C0700 */  sll        $a3, $a3, 16
    /* D768 8001CF68 FF008430 */  andi       $a0, $a0, 0xFF
    /* D76C 8001CF6C FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* D770 8001CF70 6400A38F */  lw         $v1, 0x64($sp)
    /* D774 8001CF74 6800A88F */  lw         $t0, 0x68($sp)
    /* D778 8001CF78 6C00A98F */  lw         $t1, 0x6C($sp)
    /* D77C 8001CF7C 7000AA8F */  lw         $t2, 0x70($sp)
    /* D780 8001CF80 7400AB8F */  lw         $t3, 0x74($sp)
    /* D784 8001CF84 5C00AD93 */  lbu        $t5, 0x5C($sp)
    /* D788 8001CF88 6000AE93 */  lbu        $t6, 0x60($sp)
    /* D78C 8001CF8C 5800AC87 */  lh         $t4, 0x58($sp)
    /* D790 8001CF90 033C0700 */  sra        $a3, $a3, 16
    /* D794 8001CF94 4000BFAF */  sw         $ra, 0x40($sp)
    /* D798 8001CF98 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* D79C 8001CF9C 3000A2AF */  sw         $v0, 0x30($sp)
    /* D7A0 8001CFA0 3400A2AF */  sw         $v0, 0x34($sp)
    /* D7A4 8001CFA4 3800A0AF */  sw         $zero, 0x38($sp)
    /* D7A8 8001CFA8 001C0300 */  sll        $v1, $v1, 16
    /* D7AC 8001CFAC 031C0300 */  sra        $v1, $v1, 16
    /* D7B0 8001CFB0 00440800 */  sll        $t0, $t0, 16
    /* D7B4 8001CFB4 03440800 */  sra        $t0, $t0, 16
    /* D7B8 8001CFB8 004C0900 */  sll        $t1, $t1, 16
    /* D7BC 8001CFBC 034C0900 */  sra        $t1, $t1, 16
    /* D7C0 8001CFC0 00540A00 */  sll        $t2, $t2, 16
    /* D7C4 8001CFC4 03540A00 */  sra        $t2, $t2, 16
    /* D7C8 8001CFC8 005C0B00 */  sll        $t3, $t3, 16
    /* D7CC 8001CFCC 035C0B00 */  sra        $t3, $t3, 16
    /* D7D0 8001CFD0 1000ACAF */  sw         $t4, 0x10($sp)
    /* D7D4 8001CFD4 1400ADAF */  sw         $t5, 0x14($sp)
    /* D7D8 8001CFD8 1800AEAF */  sw         $t6, 0x18($sp)
    /* D7DC 8001CFDC 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* D7E0 8001CFE0 2000A8AF */  sw         $t0, 0x20($sp)
    /* D7E4 8001CFE4 2400A9AF */  sw         $t1, 0x24($sp)
    /* D7E8 8001CFE8 2800AAAF */  sw         $t2, 0x28($sp)
    /* D7EC 8001CFEC 6B73000C */  jal        func_8001CDAC
    /* D7F0 8001CFF0 3C00ABAF */   sw        $t3, 0x3C($sp)
    /* D7F4 8001CFF4 4000BF8F */  lw         $ra, 0x40($sp)
    /* D7F8 8001CFF8 4800BD27 */  addiu      $sp, $sp, 0x48
    /* D7FC 8001CFFC 0800E003 */  jr         $ra
    /* D800 8001D000 00000000 */   nop
endlabel func_8001CF5C
