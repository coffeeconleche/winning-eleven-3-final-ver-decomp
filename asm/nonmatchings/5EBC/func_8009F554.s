nonmatching func_8009F554, 0x20

glabel func_8009F554
    /* 8FD54 8009F554 020085A4 */  sh         $a1, 0x2($a0)
    /* 8FD58 8009F558 02008294 */  lhu        $v0, 0x2($a0)
    /* 8FD5C 8009F55C 060086A4 */  sh         $a2, 0x6($a0)
    /* 8FD60 8009F560 06008394 */  lhu        $v1, 0x6($a0)
    /* 8FD64 8009F564 040080A4 */  sh         $zero, 0x4($a0)
    /* 8FD68 8009F568 BC0382A4 */  sh         $v0, 0x3BC($a0)
    /* 8FD6C 8009F56C 0800E003 */  jr         $ra
    /* 8FD70 8009F570 BE0383A4 */   sh        $v1, 0x3BE($a0)
endlabel func_8009F554
