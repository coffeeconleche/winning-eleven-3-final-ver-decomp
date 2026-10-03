nonmatching func_800ADBCC, 0x1C

glabel func_800ADBCC
    /* 9E3CC 800ADBCC FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* 9E3D0 800ADBD0 0000828C */  lw         $v0, 0x0($a0)
    /* 9E3D4 800ADBD4 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* 9E3D8 800ADBD8 24104300 */  and        $v0, $v0, $v1
    /* 9E3DC 800ADBDC 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* 9E3E0 800ADBE0 0800E003 */  jr         $ra
    /* 9E3E4 800ADBE4 25104300 */   or        $v0, $v0, $v1
endlabel func_800ADBCC
