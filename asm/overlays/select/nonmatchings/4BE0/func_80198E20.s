nonmatching func_80198E20, 0x1F0

glabel func_80198E20
    /* FEA8 80198E20 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* FEAC 80198E24 1800BFAF */  sw         $ra, 0x18($sp)
    /* FEB0 80198E28 5477000C */  jal        func_8001DD50
    /* FEB4 80198E2C 03000424 */   addiu     $a0, $zero, 0x3
    /* FEB8 80198E30 153F010C */  jal        func_8004FC54
    /* FEBC 80198E34 21200000 */   addu      $a0, $zero, $zero
    /* FEC0 80198E38 4E39060C */  jal        func_8018E538
    /* FEC4 80198E3C 21200000 */   addu      $a0, $zero, $zero
    /* FEC8 80198E40 C0A5020C */  jal        func_800A9700
    /* FECC 80198E44 00000000 */   nop
    /* FED0 80198E48 1E80023C */  lui        $v0, %hi(D_801D8A50)
    /* FED4 80198E4C 508A4290 */  lbu        $v0, %lo(D_801D8A50)($v0)
    /* FED8 80198E50 00000000 */  nop
    /* FEDC 80198E54 06004014 */  bnez       $v0, .L80198E70
    /* FEE0 80198E58 0A000224 */   addiu     $v0, $zero, 0xA
    /* FEE4 80198E5C 88AD020C */  jal        func_800AB620
    /* FEE8 80198E60 0F000424 */   addiu     $a0, $zero, 0xF
    /* FEEC 80198E64 88AD020C */  jal        func_800AB620
    /* FEF0 80198E68 06020424 */   addiu     $a0, $zero, 0x206
    /* FEF4 80198E6C 0A000224 */  addiu      $v0, $zero, 0xA
  .L80198E70:
    /* FEF8 80198E70 801F013C */  lui        $at, (0x1F8002DE >> 16)
    /* FEFC 80198E74 DE0222A0 */  sb         $v0, (0x1F8002DE & 0xFFFF)($at)
    /* FF00 80198E78 01000224 */  addiu      $v0, $zero, 0x1
    /* FF04 80198E7C 801F013C */  lui        $at, (0x1F80019C >> 16)
    /* FF08 80198E80 9C0122AC */  sw         $v0, (0x1F80019C & 0xFFFF)($at)
    /* FF0C 80198E84 FF000224 */  addiu      $v0, $zero, 0xFF
    /* FF10 80198E88 1180013C */  lui        $at, %hi(D_8010A31E)
    /* FF14 80198E8C 1EA322A4 */  sh         $v0, %lo(D_8010A31E)($at)
    /* FF18 80198E90 01000224 */  addiu      $v0, $zero, 0x1
    /* FF1C 80198E94 801F013C */  lui        $at, (0x1F8002E1 >> 16)
    /* FF20 80198E98 E10220A0 */  sb         $zero, (0x1F8002E1 & 0xFFFF)($at)
    /* FF24 80198E9C 801F013C */  lui        $at, (0x1F8002E2 >> 16)
    /* FF28 80198EA0 E20220A0 */  sb         $zero, (0x1F8002E2 & 0xFFFF)($at)
    /* FF2C 80198EA4 801F013C */  lui        $at, (0x1F8002DD >> 16)
    /* FF30 80198EA8 DD0220A0 */  sb         $zero, (0x1F8002DD & 0xFFFF)($at)
    /* FF34 80198EAC 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* FF38 80198EB0 A20220A0 */  sb         $zero, (0x1F8002A2 & 0xFFFF)($at)
    /* FF3C 80198EB4 1180013C */  lui        $at, %hi(D_8010865D)
    /* FF40 80198EB8 5D8620A0 */  sb         $zero, %lo(D_8010865D)($at)
    /* FF44 80198EBC 801F013C */  lui        $at, (0x1F800198 >> 16)
    /* FF48 80198EC0 980120AC */  sw         $zero, (0x1F800198 & 0xFFFF)($at)
    /* FF4C 80198EC4 801F013C */  lui        $at, (0x1F800330 >> 16)
    /* FF50 80198EC8 300322A0 */  sb         $v0, (0x1F800330 & 0xFFFF)($at)
    /* FF54 80198ECC 0F80013C */  lui        $at, %hi(D_800E81D0)
    /* FF58 80198ED0 D08120AC */  sw         $zero, %lo(D_800E81D0)($at)
    /* FF5C 80198ED4 0E80013C */  lui        $at, %hi(D_800E7658)
    /* FF60 80198ED8 587620AC */  sw         $zero, %lo(D_800E7658)($at)
    /* FF64 80198EDC 801F013C */  lui        $at, (0x1F8001EC >> 16)
    /* FF68 80198EE0 EC0122A0 */  sb         $v0, (0x1F8001EC & 0xFFFF)($at)
    /* FF6C 80198EE4 1458020C */  jal        func_80096050
    /* FF70 80198EE8 00000000 */   nop
    /* FF74 80198EEC 2771010C */  jal        func_8005C49C
    /* FF78 80198EF0 00000000 */   nop
    /* FF7C 80198EF4 80000224 */  addiu      $v0, $zero, 0x80
    /* FF80 80198EF8 1180013C */  lui        $at, %hi(D_8010A369)
    /* FF84 80198EFC 69A320A0 */  sb         $zero, %lo(D_8010A369)($at)
    /* FF88 80198F00 1180013C */  lui        $at, %hi(D_8010A368)
    /* FF8C 80198F04 68A320A0 */  sb         $zero, %lo(D_8010A368)($at)
    /* FF90 80198F08 1180013C */  lui        $at, %hi(D_8010CD46)
    /* FF94 80198F0C 46CD20A4 */  sh         $zero, %lo(D_8010CD46)($at)
    /* FF98 80198F10 1180013C */  lui        $at, %hi(D_8010CD44)
    /* FF9C 80198F14 44CD20A4 */  sh         $zero, %lo(D_8010CD44)($at)
    /* FFA0 80198F18 0F80013C */  lui        $at, %hi(D_800F10A2)
    /* FFA4 80198F1C A21020A4 */  sh         $zero, %lo(D_800F10A2)($at)
    /* FFA8 80198F20 0F80013C */  lui        $at, %hi(D_800F10A0)
    /* FFAC 80198F24 A01020A4 */  sh         $zero, %lo(D_800F10A0)($at)
    /* FFB0 80198F28 0F80013C */  lui        $at, %hi(D_800EF864)
    /* FFB4 80198F2C 64F822A4 */  sh         $v0, %lo(D_800EF864)($at)
    /* FFB8 80198F30 1180013C */  lui        $at, %hi(D_8010A326)
    /* FFBC 80198F34 26A320A0 */  sb         $zero, %lo(D_8010A326)($at)
    /* FFC0 80198F38 1180013C */  lui        $at, %hi(D_8010A327)
    /* FFC4 80198F3C 27A320A0 */  sb         $zero, %lo(D_8010A327)($at)
    /* FFC8 80198F40 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* FFCC 80198F44 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* FFD0 80198F48 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* FFD4 80198F4C FB8D20A0 */  sb         $zero, %lo(D_801D8DFB)($at)
    /* FFD8 80198F50 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* FFDC 80198F54 FC8D20A0 */  sb         $zero, %lo(D_801D8DFC)($at)
    /* FFE0 80198F58 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* FFE4 80198F5C F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* FFE8 80198F60 1E80013C */  lui        $at, %hi(D_801D8B18)
    /* FFEC 80198F64 188B20A0 */  sb         $zero, %lo(D_801D8B18)($at)
    /* FFF0 80198F68 1E80013C */  lui        $at, %hi(D_801DA06B)
    /* FFF4 80198F6C 6BA020A0 */  sb         $zero, %lo(D_801DA06B)($at)
    /* FFF8 80198F70 1E80013C */  lui        $at, %hi(D_801DA069)
    /* FFFC 80198F74 69A020A0 */  sb         $zero, %lo(D_801DA069)($at)
    /* 10000 80198F78 1E80013C */  lui        $at, %hi(D_801DA06A)
    /* 10004 80198F7C 6AA020A0 */  sb         $zero, %lo(D_801DA06A)($at)
    /* 10008 80198F80 1E80013C */  lui        $at, %hi(D_801DA068)
    /* 1000C 80198F84 68A020A0 */  sb         $zero, %lo(D_801DA068)($at)
    /* 10010 80198F88 1E80013C */  lui        $at, %hi(D_801DA5D0)
    /* 10014 80198F8C D0A520A4 */  sh         $zero, %lo(D_801DA5D0)($at)
    /* 10018 80198F90 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 1001C 80198F94 D2A520A4 */  sh         $zero, %lo(D_801DA5D2)($at)
    /* 10020 80198F98 1E80013C */  lui        $at, %hi(D_801DA5D4)
    /* 10024 80198F9C D4A520A4 */  sh         $zero, %lo(D_801DA5D4)($at)
    /* 10028 80198FA0 1E80013C */  lui        $at, %hi(D_801DA5D6)
    /* 1002C 80198FA4 D6A520A4 */  sh         $zero, %lo(D_801DA5D6)($at)
    /* 10030 80198FA8 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 10034 80198FAC 64A020AC */  sw         $zero, %lo(D_801DA064)($at)
    /* 10038 80198FB0 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 1003C 80198FB4 60A020AC */  sw         $zero, %lo(D_801DA060)($at)
    /* 10040 80198FB8 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 10044 80198FBC 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 10048 80198FC0 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 1004C 80198FC4 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 10050 80198FC8 1D80013C */  lui        $at, %hi(D_801D1A50)
    /* 10054 80198FCC 501A20A0 */  sb         $zero, %lo(D_801D1A50)($at)
    /* 10058 80198FD0 1D80013C */  lui        $at, %hi(D_801D1A51)
    /* 1005C 80198FD4 511A20A0 */  sb         $zero, %lo(D_801D1A51)($at)
    /* 10060 80198FD8 715C000C */  jal        func_800171C4
    /* 10064 80198FDC 01000424 */   addiu     $a0, $zero, 0x1
    /* 10068 80198FE0 7F5C000C */  jal        func_800171FC
    /* 1006C 80198FE4 21200000 */   addu      $a0, $zero, $zero
    /* 10070 80198FE8 1180013C */  lui        $at, %hi(D_8010A322)
    /* 10074 80198FEC 22A320A0 */  sb         $zero, %lo(D_8010A322)($at)
    /* 10078 80198FF0 1180013C */  lui        $at, %hi(D_8010A320)
    /* 1007C 80198FF4 20A320A0 */  sb         $zero, %lo(D_8010A320)($at)
    /* 10080 80198FF8 1E80013C */  lui        $at, %hi(D_801D8A50)
    /* 10084 80198FFC 508A20A0 */  sb         $zero, %lo(D_801D8A50)($at)
    /* 10088 80199000 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1008C 80199004 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 10090 80199008 0800E003 */  jr         $ra
    /* 10094 8019900C 00000000 */   nop
endlabel func_80198E20
