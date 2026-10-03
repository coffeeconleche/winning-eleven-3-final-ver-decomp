nonmatching func_801AFF1C, 0x240

glabel func_801AFF1C
    /* 26FA4 801AFF1C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 26FA8 801AFF20 1800B2AF */  sw         $s2, 0x18($sp)
    /* 26FAC 801AFF24 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 26FB0 801AFF28 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 26FB4 801AFF2C 205E4426 */  addiu      $a0, $s2, 0x5E20
    /* 26FB8 801AFF30 21280000 */  addu       $a1, $zero, $zero
    /* 26FBC 801AFF34 20000624 */  addiu      $a2, $zero, 0x20
    /* 26FC0 801AFF38 3400BFAF */  sw         $ra, 0x34($sp)
    /* 26FC4 801AFF3C 3000BEAF */  sw         $fp, 0x30($sp)
    /* 26FC8 801AFF40 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 26FCC 801AFF44 2800B6AF */  sw         $s6, 0x28($sp)
    /* 26FD0 801AFF48 2400B5AF */  sw         $s5, 0x24($sp)
    /* 26FD4 801AFF4C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 26FD8 801AFF50 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 26FDC 801AFF54 1400B1AF */  sw         $s1, 0x14($sp)
    /* 26FE0 801AFF58 653A060C */  jal        func_8018E994
    /* 26FE4 801AFF5C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 26FE8 801AFF60 01005030 */  andi       $s0, $v0, 0x1
    /* 26FEC 801AFF64 225E4426 */  addiu      $a0, $s2, 0x5E22
    /* 26FF0 801AFF68 02000524 */  addiu      $a1, $zero, 0x2
    /* 26FF4 801AFF6C 653A060C */  jal        func_8018E994
    /* 26FF8 801AFF70 02000624 */   addiu     $a2, $zero, 0x2
    /* 26FFC 801AFF74 24800202 */  and        $s0, $s0, $v0
    /* 27000 801AFF78 485E4426 */  addiu      $a0, $s2, 0x5E48
    /* 27004 801AFF7C 21280000 */  addu       $a1, $zero, $zero
    /* 27008 801AFF80 653A060C */  jal        func_8018E994
    /* 2700C 801AFF84 20000624 */   addiu     $a2, $zero, 0x20
    /* 27010 801AFF88 24800202 */  and        $s0, $s0, $v0
    /* 27014 801AFF8C 4A5E4426 */  addiu      $a0, $s2, 0x5E4A
    /* 27018 801AFF90 21280000 */  addu       $a1, $zero, $zero
    /* 2701C 801AFF94 653A060C */  jal        func_8018E994
    /* 27020 801AFF98 02000624 */   addiu     $a2, $zero, 0x2
    /* 27024 801AFF9C 24800202 */  and        $s0, $s0, $v0
    /* 27028 801AFFA0 705E4426 */  addiu      $a0, $s2, 0x5E70
    /* 2702C 801AFFA4 21280000 */  addu       $a1, $zero, $zero
    /* 27030 801AFFA8 653A060C */  jal        func_8018E994
    /* 27034 801AFFAC 20000624 */   addiu     $a2, $zero, 0x20
    /* 27038 801AFFB0 24800202 */  and        $s0, $s0, $v0
    /* 2703C 801AFFB4 725E4426 */  addiu      $a0, $s2, 0x5E72
    /* 27040 801AFFB8 21280000 */  addu       $a1, $zero, $zero
    /* 27044 801AFFBC 653A060C */  jal        func_8018E994
    /* 27048 801AFFC0 02000624 */   addiu     $a2, $zero, 0x2
    /* 2704C 801AFFC4 24800202 */  and        $s0, $s0, $v0
    /* 27050 801AFFC8 C05E4426 */  addiu      $a0, $s2, 0x5EC0
    /* 27054 801AFFCC 21280000 */  addu       $a1, $zero, $zero
    /* 27058 801AFFD0 653A060C */  jal        func_8018E994
    /* 2705C 801AFFD4 20000624 */   addiu     $a2, $zero, 0x20
    /* 27060 801AFFD8 24800202 */  and        $s0, $s0, $v0
    /* 27064 801AFFDC C25E4426 */  addiu      $a0, $s2, 0x5EC2
    /* 27068 801AFFE0 03000524 */  addiu      $a1, $zero, 0x3
    /* 2706C 801AFFE4 653A060C */  jal        func_8018E994
    /* 27070 801AFFE8 02000624 */   addiu     $a2, $zero, 0x2
    /* 27074 801AFFEC 24800202 */  and        $s0, $s0, $v0
    /* 27078 801AFFF0 985E4426 */  addiu      $a0, $s2, 0x5E98
    /* 2707C 801AFFF4 21280000 */  addu       $a1, $zero, $zero
    /* 27080 801AFFF8 653A060C */  jal        func_8018E994
    /* 27084 801AFFFC 20000624 */   addiu     $a2, $zero, 0x20
    /* 27088 801B0000 24800202 */  and        $s0, $s0, $v0
    /* 2708C 801B0004 9A5E4426 */  addiu      $a0, $s2, 0x5E9A
    /* 27090 801B0008 21280000 */  addu       $a1, $zero, $zero
    /* 27094 801B000C 653A060C */  jal        func_8018E994
    /* 27098 801B0010 02000624 */   addiu     $a2, $zero, 0x2
    /* 2709C 801B0014 24800202 */  and        $s0, $s0, $v0
    /* 270A0 801B0018 E85E4426 */  addiu      $a0, $s2, 0x5EE8
    /* 270A4 801B001C 21280000 */  addu       $a1, $zero, $zero
    /* 270A8 801B0020 653A060C */  jal        func_8018E994
    /* 270AC 801B0024 20000624 */   addiu     $a2, $zero, 0x20
    /* 270B0 801B0028 24800202 */  and        $s0, $s0, $v0
    /* 270B4 801B002C EA5E4426 */  addiu      $a0, $s2, 0x5EEA
    /* 270B8 801B0030 03000524 */  addiu      $a1, $zero, 0x3
    /* 270BC 801B0034 653A060C */  jal        func_8018E994
    /* 270C0 801B0038 02000624 */   addiu     $a2, $zero, 0x2
    /* 270C4 801B003C 24800202 */  and        $s0, $s0, $v0
    /* 270C8 801B0040 21F00000 */  addu       $fp, $zero, $zero
    /* 270CC 801B0044 1E80023C */  lui        $v0, %hi(D_801D903A)
    /* 270D0 801B0048 3A904224 */  addiu      $v0, $v0, %lo(D_801D903A)
    /* 270D4 801B004C D8005724 */  addiu      $s7, $v0, 0xD8
    /* 270D8 801B0050 21B04000 */  addu       $s6, $v0, $zero
    /* 270DC 801B0054 F8611524 */  addiu      $s5, $zero, 0x61F8
    /* 270E0 801B0058 90601424 */  addiu      $s4, $zero, 0x6090
    /* 270E4 801B005C 285F1324 */  addiu      $s3, $zero, 0x5F28
    /* 270E8 801B0060 1E80113C */  lui        $s1, %hi(D_801D8A58)
    /* 270EC 801B0064 588A3126 */  addiu      $s1, $s1, %lo(D_801D8A58)
  .L801B0068:
    /* 270F0 801B0068 00002292 */  lbu        $v0, 0x0($s1)
    /* 270F4 801B006C 00000000 */  nop
    /* 270F8 801B0070 04004010 */  beqz       $v0, .L801B0084
    /* 270FC 801B0074 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 27100 801B0078 000022A2 */  sb         $v0, 0x0($s1)
    /* 27104 801B007C 3DC00608 */  j          .L801B00F4
    /* 27108 801B0080 21800000 */   addu      $s0, $zero, $zero
  .L801B0084:
    /* 2710C 801B0084 21205302 */  addu       $a0, $s2, $s3
    /* 27110 801B0088 10008424 */  addiu      $a0, $a0, 0x10
    /* 27114 801B008C 21280000 */  addu       $a1, $zero, $zero
    /* 27118 801B0090 653A060C */  jal        func_8018E994
    /* 2711C 801B0094 20000624 */   addiu     $a2, $zero, 0x20
    /* 27120 801B0098 24800202 */  and        $s0, $s0, $v0
    /* 27124 801B009C 21205402 */  addu       $a0, $s2, $s4
    /* 27128 801B00A0 10008424 */  addiu      $a0, $a0, 0x10
    /* 2712C 801B00A4 21280000 */  addu       $a1, $zero, $zero
    /* 27130 801B00A8 653A060C */  jal        func_8018E994
    /* 27134 801B00AC 20000624 */   addiu     $a2, $zero, 0x20
    /* 27138 801B00B0 24800202 */  and        $s0, $s0, $v0
    /* 2713C 801B00B4 21205502 */  addu       $a0, $s2, $s5
    /* 27140 801B00B8 10008424 */  addiu      $a0, $a0, 0x10
    /* 27144 801B00BC 21280000 */  addu       $a1, $zero, $zero
    /* 27148 801B00C0 653A060C */  jal        func_8018E994
    /* 2714C 801B00C4 20000624 */   addiu     $a2, $zero, 0x20
    /* 27150 801B00C8 24800202 */  and        $s0, $s0, $v0
    /* 27154 801B00CC 2120C002 */  addu       $a0, $s6, $zero
    /* 27158 801B00D0 7CFF0524 */  addiu      $a1, $zero, -0x84
    /* 2715C 801B00D4 653A060C */  jal        func_8018E994
    /* 27160 801B00D8 20000624 */   addiu     $a2, $zero, 0x20
    /* 27164 801B00DC 24800202 */  and        $s0, $s0, $v0
    /* 27168 801B00E0 2120E002 */  addu       $a0, $s7, $zero
    /* 2716C 801B00E4 9CFF0524 */  addiu      $a1, $zero, -0x64
    /* 27170 801B00E8 653A060C */  jal        func_8018E994
    /* 27174 801B00EC 20000624 */   addiu     $a2, $zero, 0x20
    /* 27178 801B00F0 24800202 */  and        $s0, $s0, $v0
  .L801B00F4:
    /* 2717C 801B00F4 1800F726 */  addiu      $s7, $s7, 0x18
    /* 27180 801B00F8 1800D626 */  addiu      $s6, $s6, 0x18
    /* 27184 801B00FC 2800B526 */  addiu      $s5, $s5, 0x28
    /* 27188 801B0100 28009426 */  addiu      $s4, $s4, 0x28
    /* 2718C 801B0104 28007326 */  addiu      $s3, $s3, 0x28
    /* 27190 801B0108 0100DE27 */  addiu      $fp, $fp, 0x1
    /* 27194 801B010C 0900C22B */  slti       $v0, $fp, 0x9
    /* 27198 801B0110 D5FF4014 */  bnez       $v0, .L801B0068
    /* 2719C 801B0114 01003126 */   addiu     $s1, $s1, 0x1
    /* 271A0 801B0118 02000012 */  beqz       $s0, .L801B0124
    /* 271A4 801B011C 01000224 */   addiu     $v0, $zero, 0x1
    /* 271A8 801B0120 045F42A2 */  sb         $v0, 0x5F04($s2)
  .L801B0124:
    /* 271AC 801B0124 21100002 */  addu       $v0, $s0, $zero
    /* 271B0 801B0128 3400BF8F */  lw         $ra, 0x34($sp)
    /* 271B4 801B012C 3000BE8F */  lw         $fp, 0x30($sp)
    /* 271B8 801B0130 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 271BC 801B0134 2800B68F */  lw         $s6, 0x28($sp)
    /* 271C0 801B0138 2400B58F */  lw         $s5, 0x24($sp)
    /* 271C4 801B013C 2000B48F */  lw         $s4, 0x20($sp)
    /* 271C8 801B0140 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 271CC 801B0144 1800B28F */  lw         $s2, 0x18($sp)
    /* 271D0 801B0148 1400B18F */  lw         $s1, 0x14($sp)
    /* 271D4 801B014C 1000B08F */  lw         $s0, 0x10($sp)
    /* 271D8 801B0150 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 271DC 801B0154 0800E003 */  jr         $ra
    /* 271E0 801B0158 00000000 */   nop
endlabel func_801AFF1C
