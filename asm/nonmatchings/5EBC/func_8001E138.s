nonmatching func_8001E138, 0x20

glabel func_8001E138
    /* E938 8001E138 801F013C */  lui        $at, (0x1F8001E9 >> 16)
    /* E93C 8001E13C E90124A0 */  sb         $a0, (0x1F8001E9 & 0xFFFF)($at)
    /* E940 8001E140 801F013C */  lui        $at, (0x1F8001EA >> 16)
    /* E944 8001E144 EA0125A0 */  sb         $a1, (0x1F8001EA & 0xFFFF)($at)
    /* E948 8001E148 801F013C */  lui        $at, (0x1F8001EB >> 16)
    /* E94C 8001E14C EB0126A0 */  sb         $a2, (0x1F8001EB & 0xFFFF)($at)
    /* E950 8001E150 0800E003 */  jr         $ra
    /* E954 8001E154 00000000 */   nop
endlabel func_8001E138
