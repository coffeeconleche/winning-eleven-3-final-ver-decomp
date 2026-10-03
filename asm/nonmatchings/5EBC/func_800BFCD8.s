nonmatching func_800BFCD8, 0x40

glabel func_800BFCD8
    /* B04D8 800BFCD8 FF008430 */  andi       $a0, $a0, 0xFF
    /* B04DC 800BFCDC C0100400 */  sll        $v0, $a0, 3
    /* B04E0 800BFCE0 23104400 */  subu       $v0, $v0, $a0
    /* B04E4 800BFCE4 80100200 */  sll        $v0, $v0, 2
    /* B04E8 800BFCE8 23104400 */  subu       $v0, $v0, $a0
    /* B04EC 800BFCEC 40100200 */  sll        $v0, $v0, 1
    /* B04F0 800BFCF0 0E80013C */  lui        $at, %hi(D_800E78F5)
    /* B04F4 800BFCF4 21082200 */  addu       $at, $at, $v0
    /* B04F8 800BFCF8 F57820A0 */  sb         $zero, %lo(D_800E78F5)($at)
    /* B04FC 800BFCFC 0E80013C */  lui        $at, %hi(D_800E78D8)
    /* B0500 800BFD00 21082200 */  addu       $at, $at, $v0
    /* B0504 800BFD04 D87820A4 */  sh         $zero, %lo(D_800E78D8)($at)
    /* B0508 800BFD08 0E80013C */  lui        $at, %hi(D_800E78DC)
    /* B050C 800BFD0C 21082200 */  addu       $at, $at, $v0
    /* B0510 800BFD10 0800E003 */  jr         $ra
    /* B0514 800BFD14 DC7820A4 */   sh        $zero, %lo(D_800E78DC)($at)
endlabel func_800BFCD8
