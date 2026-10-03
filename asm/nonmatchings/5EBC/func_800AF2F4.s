nonmatching func_800AF2F4, 0x28

glabel func_800AF2F4
    /* 9FAF4 800AF2F4 02000224 */  addiu      $v0, $zero, 0x2
    /* 9FAF8 800AF2F8 030082A0 */  sb         $v0, 0x3($a0)
    /* 9FAFC 800AF2FC 0200A010 */  beqz       $a1, .L800AF308
    /* 9FB00 800AF300 00E6033C */   lui       $v1, (0xE6000002 >> 16)
    /* 9FB04 800AF304 02006334 */  ori        $v1, $v1, (0xE6000002 & 0xFFFF)
  .L800AF308:
    /* 9FB08 800AF308 2B100600 */  sltu       $v0, $zero, $a2
    /* 9FB0C 800AF30C 25106200 */  or         $v0, $v1, $v0
    /* 9FB10 800AF310 040082AC */  sw         $v0, 0x4($a0)
    /* 9FB14 800AF314 0800E003 */  jr         $ra
    /* 9FB18 800AF318 080080AC */   sw        $zero, 0x8($a0)
endlabel func_800AF2F4
