nonmatching func_800AF31C, 0x28

glabel func_800AF31C
    /* 9FB1C 800AF31C 02000224 */  addiu      $v0, $zero, 0x2
    /* 9FB20 800AF320 0400A010 */  beqz       $a1, .L800AF334
    /* 9FB24 800AF324 030082A0 */   sb        $v0, 0x3($a0)
    /* 9FB28 800AF328 00E6023C */  lui        $v0, (0xE6000001 >> 16)
    /* 9FB2C 800AF32C CEBC0208 */  j          .L800AF338
    /* 9FB30 800AF330 01004234 */   ori       $v0, $v0, (0xE6000001 & 0xFFFF)
  .L800AF334:
    /* 9FB34 800AF334 00E6023C */  lui        $v0, (0xE6000000 >> 16)
  .L800AF338:
    /* 9FB38 800AF338 040082AC */  sw         $v0, 0x4($a0)
    /* 9FB3C 800AF33C 0800E003 */  jr         $ra
    /* 9FB40 800AF340 080080AC */   sw        $zero, 0x8($a0)
endlabel func_800AF31C
