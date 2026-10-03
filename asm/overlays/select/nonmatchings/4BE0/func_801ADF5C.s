nonmatching func_801ADF5C, 0xC4

glabel func_801ADF5C
    /* 24FE4 801ADF5C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 24FE8 801ADF60 FF008230 */  andi       $v0, $a0, 0xFF
    /* 24FEC 801ADF64 0C010424 */  addiu      $a0, $zero, 0x10C
    /* 24FF0 801ADF68 1000B0AF */  sw         $s0, 0x10($sp)
    /* 24FF4 801ADF6C 80800200 */  sll        $s0, $v0, 2
    /* 24FF8 801ADF70 21800202 */  addu       $s0, $s0, $v0
    /* 24FFC 801ADF74 40801000 */  sll        $s0, $s0, 1
    /* 25000 801ADF78 1E80023C */  lui        $v0, %hi(D_801DA348)
    /* 25004 801ADF7C 48A34224 */  addiu      $v0, $v0, %lo(D_801DA348)
    /* 25008 801ADF80 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2500C 801ADF84 AE79000C */  jal        func_8001E6B8
    /* 25010 801ADF88 21800202 */   addu      $s0, $s0, $v0
    /* 25014 801ADF8C 00010424 */  addiu      $a0, $zero, 0x100
    /* 25018 801ADF90 07004230 */  andi       $v0, $v0, 0x7
    /* 2501C 801ADF94 00110200 */  sll        $v0, $v0, 4
    /* 25020 801ADF98 AE79000C */  jal        func_8001E6B8
    /* 25024 801ADF9C 000002A2 */   sb        $v0, 0x0($s0)
    /* 25028 801ADFA0 10000424 */  addiu      $a0, $zero, 0x10
    /* 2502C 801ADFA4 80FF4224 */  addiu      $v0, $v0, -0x80
    /* 25030 801ADFA8 AE79000C */  jal        func_8001E6B8
    /* 25034 801ADFAC 040002A6 */   sh        $v0, 0x4($s0)
    /* 25038 801ADFB0 08000424 */  addiu      $a0, $zero, 0x8
    /* 2503C 801ADFB4 74FF0324 */  addiu      $v1, $zero, -0x8C
    /* 25040 801ADFB8 23186200 */  subu       $v1, $v1, $v0
    /* 25044 801ADFBC AE79000C */  jal        func_8001E6B8
    /* 25048 801ADFC0 060003A6 */   sh        $v1, 0x6($s0)
    /* 2504C 801ADFC4 02000424 */  addiu      $a0, $zero, 0x2
    /* 25050 801ADFC8 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* 25054 801ADFCC AE79000C */  jal        func_8001E6B8
    /* 25058 801ADFD0 080002A2 */   sb        $v0, 0x8($s0)
    /* 2505C 801ADFD4 80000424 */  addiu      $a0, $zero, 0x80
    /* 25060 801ADFD8 01004224 */  addiu      $v0, $v0, 0x1
    /* 25064 801ADFDC AE79000C */  jal        func_8001E6B8
    /* 25068 801ADFE0 090002A2 */   sb        $v0, 0x9($s0)
    /* 2506C 801ADFE4 80000424 */  addiu      $a0, $zero, 0x80
    /* 25070 801ADFE8 40004224 */  addiu      $v0, $v0, 0x40
    /* 25074 801ADFEC AE79000C */  jal        func_8001E6B8
    /* 25078 801ADFF0 010002A2 */   sb        $v0, 0x1($s0)
    /* 2507C 801ADFF4 80000424 */  addiu      $a0, $zero, 0x80
    /* 25080 801ADFF8 40004224 */  addiu      $v0, $v0, 0x40
    /* 25084 801ADFFC AE79000C */  jal        func_8001E6B8
    /* 25088 801AE000 020002A2 */   sb        $v0, 0x2($s0)
    /* 2508C 801AE004 40004224 */  addiu      $v0, $v0, 0x40
    /* 25090 801AE008 030002A2 */  sb         $v0, 0x3($s0)
    /* 25094 801AE00C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 25098 801AE010 1000B08F */  lw         $s0, 0x10($sp)
    /* 2509C 801AE014 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 250A0 801AE018 0800E003 */  jr         $ra
    /* 250A4 801AE01C 00000000 */   nop
endlabel func_801ADF5C
