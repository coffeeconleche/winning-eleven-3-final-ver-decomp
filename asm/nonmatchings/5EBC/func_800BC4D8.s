nonmatching func_800BC4D8, 0x60

glabel func_800BC4D8
    /* ACCD8 800BC4D8 00240400 */  sll        $a0, $a0, 16
    /* ACCDC 800BC4DC 1180023C */  lui        $v0, %hi(D_8010C2A8)
    /* ACCE0 800BC4E0 A8C24224 */  addiu      $v0, $v0, %lo(D_8010C2A8)
    /* ACCE4 800BC4E4 83230400 */  sra        $a0, $a0, 14
    /* ACCE8 800BC4E8 21208200 */  addu       $a0, $a0, $v0
    /* ACCEC 800BC4EC 002C0500 */  sll        $a1, $a1, 16
    /* ACCF0 800BC4F0 032C0500 */  sra        $a1, $a1, 16
    /* ACCF4 800BC4F4 40100500 */  sll        $v0, $a1, 1
    /* ACCF8 800BC4F8 21104500 */  addu       $v0, $v0, $a1
    /* ACCFC 800BC4FC 80100200 */  sll        $v0, $v0, 2
    /* ACD00 800BC500 23104500 */  subu       $v0, $v0, $a1
    /* ACD04 800BC504 00110200 */  sll        $v0, $v0, 4
    /* ACD08 800BC508 0000838C */  lw         $v1, 0x0($a0)
    /* ACD0C 800BC50C 01000524 */  addiu      $a1, $zero, 0x1
    /* ACD10 800BC510 21186200 */  addu       $v1, $v1, $v0
    /* ACD14 800BC514 140065A0 */  sb         $a1, 0x14($v1)
    /* ACD18 800BC518 0000838C */  lw         $v1, 0x0($a0)
    /* ACD1C 800BC51C 00000000 */  nop
    /* ACD20 800BC520 21104300 */  addu       $v0, $v0, $v1
    /* ACD24 800BC524 9800438C */  lw         $v1, 0x98($v0)
    /* ACD28 800BC528 F7FF0424 */  addiu      $a0, $zero, -0x9
    /* ACD2C 800BC52C 24186400 */  and        $v1, $v1, $a0
    /* ACD30 800BC530 0800E003 */  jr         $ra
    /* ACD34 800BC534 980043AC */   sw        $v1, 0x98($v0)
endlabel func_800BC4D8
