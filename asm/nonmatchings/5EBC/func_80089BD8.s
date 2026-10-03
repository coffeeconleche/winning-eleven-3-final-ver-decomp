nonmatching func_80089BD8, 0x30

glabel func_80089BD8
    /* 7A3D8 80089BD8 801F053C */  lui        $a1, (0x1F8002C0 >> 16)
    /* 7A3DC 80089BDC FF7F0424 */  addiu      $a0, $zero, 0x7FFF
    /* 7A3E0 80089BE0 77000324 */  addiu      $v1, $zero, 0x77
    /* 7A3E4 80089BE4 1080023C */  lui        $v0, %hi(D_800FB6BE)
    /* 7A3E8 80089BE8 BEB64224 */  addiu      $v0, $v0, %lo(D_800FB6BE)
  .L80089BEC:
    /* 7A3EC 80089BEC 000044A4 */  sh         $a0, 0x0($v0)
    /* 7A3F0 80089BF0 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 7A3F4 80089BF4 FDFF6104 */  bgez       $v1, .L80089BEC
    /* 7A3F8 80089BF8 FEFF4224 */   addiu     $v0, $v0, -0x2
    /* 7A3FC 80089BFC 8802A0A4 */  sh         $zero, (0x1F800288 & 0xFFFF)($a1)
    /* 7A400 80089C00 0800E003 */  jr         $ra
    /* 7A404 80089C04 C002A0A0 */   sb        $zero, (0x1F8002C0 & 0xFFFF)($a1)
endlabel func_80089BD8
