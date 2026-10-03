nonmatching func_801A4DA8, 0x3E0

glabel func_801A4DA8
    /* 1BE30 801A4DA8 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 1BE34 801A4DAC 1E80033C */  lui        $v1, %hi(D_801D8B17)
    /* 1BE38 801A4DB0 178B6390 */  lbu        $v1, %lo(D_801D8B17)($v1)
    /* 1BE3C 801A4DB4 1080043C */  lui        $a0, %hi(D_800FF748)
    /* 1BE40 801A4DB8 48F78424 */  addiu      $a0, $a0, %lo(D_800FF748)
    /* 1BE44 801A4DBC 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 1BE48 801A4DC0 801F153C */  lui        $s5, (0x1F8002DE >> 16)
    /* 1BE4C 801A4DC4 4000BFAF */  sw         $ra, 0x40($sp)
    /* 1BE50 801A4DC8 3800B4AF */  sw         $s4, 0x38($sp)
    /* 1BE54 801A4DCC 3400B3AF */  sw         $s3, 0x34($sp)
    /* 1BE58 801A4DD0 3000B2AF */  sw         $s2, 0x30($sp)
    /* 1BE5C 801A4DD4 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 1BE60 801A4DD8 06006010 */  beqz       $v1, .L801A4DF4
    /* 1BE64 801A4DDC 2800B0AF */   sw        $s0, 0x28($sp)
    /* 1BE68 801A4DE0 01000224 */  addiu      $v0, $zero, 0x1
    /* 1BE6C 801A4DE4 1A006210 */  beq        $v1, $v0, .L801A4E50
    /* 1BE70 801A4DE8 00000000 */   nop
    /* 1BE74 801A4DEC 96930608 */  j          .L801A4E58
    /* 1BE78 801A4DF0 00000000 */   nop
  .L801A4DF4:
    /* 1BE7C 801A4DF4 1E80023C */  lui        $v0, %hi(D_801D8A70)
    /* 1BE80 801A4DF8 708A4290 */  lbu        $v0, %lo(D_801D8A70)($v0)
    /* 1BE84 801A4DFC 00000000 */  nop
    /* 1BE88 801A4E00 21104400 */  addu       $v0, $v0, $a0
    /* 1BE8C 801A4E04 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BE90 801A4E08 21084100 */  addu       $at, $v0, $at
    /* 1BE94 801A4E0C 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 1BE98 801A4E10 00000000 */  nop
    /* 1BE9C 801A4E14 C0100300 */  sll        $v0, $v1, 3
    /* 1BEA0 801A4E18 21104300 */  addu       $v0, $v0, $v1
    /* 1BEA4 801A4E1C 80100200 */  sll        $v0, $v0, 2
    /* 1BEA8 801A4E20 21104400 */  addu       $v0, $v0, $a0
    /* 1BEAC 801A4E24 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1BEB0 801A4E28 21084100 */  addu       $at, $v0, $at
    /* 1BEB4 801A4E2C 258F3190 */  lbu        $s1, -0x70DB($at)
    /* 1BEB8 801A4E30 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1BEBC 801A4E34 FF002332 */  andi       $v1, $s1, 0xFF
    /* 1BEC0 801A4E38 07006214 */  bne        $v1, $v0, .L801A4E58
    /* 1BEC4 801A4E3C 00000000 */   nop
    /* 1BEC8 801A4E40 1D80013C */  lui        $at, %hi(D_801D1F60)
    /* 1BECC 801A4E44 601F20A0 */  sb         $zero, %lo(D_801D1F60)($at)
    /* 1BED0 801A4E48 96930608 */  j          .L801A4E58
    /* 1BED4 801A4E4C 00000000 */   nop
  .L801A4E50:
    /* 1BED8 801A4E50 801F113C */  lui        $s1, (0x1F8002DD >> 16)
    /* 1BEDC 801A4E54 DD023192 */  lbu        $s1, (0x1F8002DD & 0xFFFF)($s1)
  .L801A4E58:
    /* 1BEE0 801A4E58 1D80023C */  lui        $v0, %hi(D_801D1F60)
    /* 1BEE4 801A4E5C 601F4290 */  lbu        $v0, %lo(D_801D1F60)($v0)
    /* 1BEE8 801A4E60 00000000 */  nop
    /* 1BEEC 801A4E64 5B004010 */  beqz       $v0, .L801A4FD4
    /* 1BEF0 801A4E68 FF002332 */   andi      $v1, $s1, 0xFF
    /* 1BEF4 801A4E6C 2B000224 */  addiu      $v0, $zero, 0x2B
    /* 1BEF8 801A4E70 29006214 */  bne        $v1, $v0, .L801A4F18
    /* 1BEFC 801A4E74 21200000 */   addu      $a0, $zero, $zero
    /* 1BF00 801A4E78 D1FF0524 */  addiu      $a1, $zero, -0x2F
    /* 1BF04 801A4E7C F6FF0624 */  addiu      $a2, $zero, -0xA
    /* 1BF08 801A4E80 20000724 */  addiu      $a3, $zero, 0x20
    /* 1BF0C 801A4E84 0C80123C */  lui        $s2, %hi(D_800C6AF4)
    /* 1BF10 801A4E88 F46A5226 */  addiu      $s2, $s2, %lo(D_800C6AF4)
    /* 1BF14 801A4E8C 10001324 */  addiu      $s3, $zero, 0x10
    /* 1BF18 801A4E90 1A001424 */  addiu      $s4, $zero, 0x1A
    /* 1BF1C 801A4E94 00004292 */  lbu        $v0, 0x0($s2)
    /* 1BF20 801A4E98 09001124 */  addiu      $s1, $zero, 0x9
    /* 1BF24 801A4E9C 1000B3AF */  sw         $s3, 0x10($sp)
    /* 1BF28 801A4EA0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1BF2C 801A4EA4 82100200 */  srl        $v0, $v0, 2
    /* 1BF30 801A4EA8 40100200 */  sll        $v0, $v0, 1
    /* 1BF34 801A4EAC 1280013C */  lui        $at, %hi(D_8011BD2C)
    /* 1BF38 801A4EB0 21082200 */  addu       $at, $at, $v0
    /* 1BF3C 801A4EB4 2CBD2290 */  lbu        $v0, %lo(D_8011BD2C)($at)
    /* 1BF40 801A4EB8 01001024 */  addiu      $s0, $zero, 0x1
    /* 1BF44 801A4EBC 1C00B4AF */  sw         $s4, 0x1C($sp)
    /* 1BF48 801A4EC0 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1BF4C 801A4EC4 2400B0AF */  sw         $s0, 0x24($sp)
    /* 1BF50 801A4EC8 00110200 */  sll        $v0, $v0, 4
    /* 1BF54 801A4ECC 10004224 */  addiu      $v0, $v0, 0x10
    /* 1BF58 801A4ED0 DE58060C */  jal        func_80196378
    /* 1BF5C 801A4ED4 1800A2AF */   sw        $v0, 0x18($sp)
    /* 1BF60 801A4ED8 21200000 */  addu       $a0, $zero, $zero
    /* 1BF64 801A4EDC F1FF0524 */  addiu      $a1, $zero, -0xF
    /* 1BF68 801A4EE0 F6FF0624 */  addiu      $a2, $zero, -0xA
    /* 1BF6C 801A4EE4 00004292 */  lbu        $v0, 0x0($s2)
    /* 1BF70 801A4EE8 08000724 */  addiu      $a3, $zero, 0x8
    /* 1BF74 801A4EEC 1000B3AF */  sw         $s3, 0x10($sp)
    /* 1BF78 801A4EF0 82100200 */  srl        $v0, $v0, 2
    /* 1BF7C 801A4EF4 40100200 */  sll        $v0, $v0, 1
    /* 1BF80 801A4EF8 1280013C */  lui        $at, %hi(D_8011BD2D)
    /* 1BF84 801A4EFC 21082200 */  addu       $at, $at, $v0
    /* 1BF88 801A4F00 2DBD2390 */  lbu        $v1, %lo(D_8011BD2D)($at)
    /* 1BF8C 801A4F04 70000224 */  addiu      $v0, $zero, 0x70
    /* 1BF90 801A4F08 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1BF94 801A4F0C 1C00B4AF */  sw         $s4, 0x1C($sp)
    /* 1BF98 801A4F10 F0930608 */  j          .L801A4FC0
    /* 1BF9C 801A4F14 2000B1AF */   sw        $s1, 0x20($sp)
  .L801A4F18:
    /* 1BFA0 801A4F18 D1FF0524 */  addiu      $a1, $zero, -0x2F
    /* 1BFA4 801A4F1C F6FF0624 */  addiu      $a2, $zero, -0xA
    /* 1BFA8 801A4F20 10001424 */  addiu      $s4, $zero, 0x10
    /* 1BFAC 801A4F24 40880300 */  sll        $s1, $v1, 1
    /* 1BFB0 801A4F28 20000724 */  addiu      $a3, $zero, 0x20
    /* 1BFB4 801A4F2C 1A001324 */  addiu      $s3, $zero, 0x1A
    /* 1BFB8 801A4F30 1000B4AF */  sw         $s4, 0x10($sp)
    /* 1BFBC 801A4F34 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1BFC0 801A4F38 0C80013C */  lui        $at, %hi(D_800C6AF0)
    /* 1BFC4 801A4F3C 21083100 */  addu       $at, $at, $s1
    /* 1BFC8 801A4F40 F06A2290 */  lbu        $v0, %lo(D_800C6AF0)($at)
    /* 1BFCC 801A4F44 09001224 */  addiu      $s2, $zero, 0x9
    /* 1BFD0 801A4F48 82100200 */  srl        $v0, $v0, 2
    /* 1BFD4 801A4F4C 40100200 */  sll        $v0, $v0, 1
    /* 1BFD8 801A4F50 1280013C */  lui        $at, %hi(D_8011BD2C)
    /* 1BFDC 801A4F54 21082200 */  addu       $at, $at, $v0
    /* 1BFE0 801A4F58 2CBD2290 */  lbu        $v0, %lo(D_8011BD2C)($at)
    /* 1BFE4 801A4F5C 01001024 */  addiu      $s0, $zero, 0x1
    /* 1BFE8 801A4F60 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1BFEC 801A4F64 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1BFF0 801A4F68 2400B0AF */  sw         $s0, 0x24($sp)
    /* 1BFF4 801A4F6C 00110200 */  sll        $v0, $v0, 4
    /* 1BFF8 801A4F70 10004224 */  addiu      $v0, $v0, 0x10
    /* 1BFFC 801A4F74 DE58060C */  jal        func_80196378
    /* 1C000 801A4F78 1800A2AF */   sw        $v0, 0x18($sp)
    /* 1C004 801A4F7C 21200000 */  addu       $a0, $zero, $zero
    /* 1C008 801A4F80 F1FF0524 */  addiu      $a1, $zero, -0xF
    /* 1C00C 801A4F84 F6FF0624 */  addiu      $a2, $zero, -0xA
    /* 1C010 801A4F88 1000B4AF */  sw         $s4, 0x10($sp)
    /* 1C014 801A4F8C 0C80013C */  lui        $at, %hi(D_800C6AF0)
    /* 1C018 801A4F90 21083100 */  addu       $at, $at, $s1
    /* 1C01C 801A4F94 F06A2290 */  lbu        $v0, %lo(D_800C6AF0)($at)
    /* 1C020 801A4F98 08000724 */  addiu      $a3, $zero, 0x8
    /* 1C024 801A4F9C 82100200 */  srl        $v0, $v0, 2
    /* 1C028 801A4FA0 40100200 */  sll        $v0, $v0, 1
    /* 1C02C 801A4FA4 1280013C */  lui        $at, %hi(D_8011BD2D)
    /* 1C030 801A4FA8 21082200 */  addu       $at, $at, $v0
    /* 1C034 801A4FAC 2DBD2390 */  lbu        $v1, %lo(D_8011BD2D)($at)
    /* 1C038 801A4FB0 70000224 */  addiu      $v0, $zero, 0x70
    /* 1C03C 801A4FB4 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1C040 801A4FB8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1C044 801A4FBC 2000B2AF */  sw         $s2, 0x20($sp)
  .L801A4FC0:
    /* 1C048 801A4FC0 2400B0AF */  sw         $s0, 0x24($sp)
    /* 1C04C 801A4FC4 C0180300 */  sll        $v1, $v1, 3
    /* 1C050 801A4FC8 20006324 */  addiu      $v1, $v1, 0x20
    /* 1C054 801A4FCC DE58060C */  jal        func_80196378
    /* 1C058 801A4FD0 1400A3AF */   sw        $v1, 0x14($sp)
  .L801A4FD4:
    /* 1C05C 801A4FD4 1D80023C */  lui        $v0, %hi(D_801D1F61)
    /* 1C060 801A4FD8 611F4290 */  lbu        $v0, %lo(D_801D1F61)($v0)
    /* 1C064 801A4FDC 00000000 */  nop
    /* 1C068 801A4FE0 5F004010 */  beqz       $v0, .L801A5160
    /* 1C06C 801A4FE4 2B000324 */   addiu     $v1, $zero, 0x2B
    /* 1C070 801A4FE8 DE02A292 */  lbu        $v0, (0x1F8002DE & 0xFFFF)($s5)
    /* 1C074 801A4FEC 00000000 */  nop
    /* 1C078 801A4FF0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1C07C 801A4FF4 28004314 */  bne        $v0, $v1, .L801A5098
    /* 1C080 801A4FF8 21200000 */   addu      $a0, $zero, $zero
    /* 1C084 801A4FFC 09000524 */  addiu      $a1, $zero, 0x9
    /* 1C088 801A5000 F6FF0624 */  addiu      $a2, $zero, -0xA
    /* 1C08C 801A5004 20000724 */  addiu      $a3, $zero, 0x20
    /* 1C090 801A5008 0C80123C */  lui        $s2, %hi(D_800C6AF4)
    /* 1C094 801A500C F46A5226 */  addiu      $s2, $s2, %lo(D_800C6AF4)
    /* 1C098 801A5010 10001324 */  addiu      $s3, $zero, 0x10
    /* 1C09C 801A5014 1A001424 */  addiu      $s4, $zero, 0x1A
    /* 1C0A0 801A5018 00004292 */  lbu        $v0, 0x0($s2)
    /* 1C0A4 801A501C 09001124 */  addiu      $s1, $zero, 0x9
    /* 1C0A8 801A5020 1000B3AF */  sw         $s3, 0x10($sp)
    /* 1C0AC 801A5024 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1C0B0 801A5028 82100200 */  srl        $v0, $v0, 2
    /* 1C0B4 801A502C 40100200 */  sll        $v0, $v0, 1
    /* 1C0B8 801A5030 1280013C */  lui        $at, %hi(D_8011BD2C)
    /* 1C0BC 801A5034 21082200 */  addu       $at, $at, $v0
    /* 1C0C0 801A5038 2CBD2290 */  lbu        $v0, %lo(D_8011BD2C)($at)
    /* 1C0C4 801A503C 01001024 */  addiu      $s0, $zero, 0x1
    /* 1C0C8 801A5040 1C00B4AF */  sw         $s4, 0x1C($sp)
    /* 1C0CC 801A5044 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1C0D0 801A5048 2400B0AF */  sw         $s0, 0x24($sp)
    /* 1C0D4 801A504C 00110200 */  sll        $v0, $v0, 4
    /* 1C0D8 801A5050 10004224 */  addiu      $v0, $v0, 0x10
    /* 1C0DC 801A5054 DE58060C */  jal        func_80196378
    /* 1C0E0 801A5058 1800A2AF */   sw        $v0, 0x18($sp)
    /* 1C0E4 801A505C 21200000 */  addu       $a0, $zero, $zero
    /* 1C0E8 801A5060 29000524 */  addiu      $a1, $zero, 0x29
    /* 1C0EC 801A5064 F6FF0624 */  addiu      $a2, $zero, -0xA
    /* 1C0F0 801A5068 00004292 */  lbu        $v0, 0x0($s2)
    /* 1C0F4 801A506C 08000724 */  addiu      $a3, $zero, 0x8
    /* 1C0F8 801A5070 1000B3AF */  sw         $s3, 0x10($sp)
    /* 1C0FC 801A5074 82100200 */  srl        $v0, $v0, 2
    /* 1C100 801A5078 40100200 */  sll        $v0, $v0, 1
    /* 1C104 801A507C 1280013C */  lui        $at, %hi(D_8011BD2D)
    /* 1C108 801A5080 21082200 */  addu       $at, $at, $v0
    /* 1C10C 801A5084 2DBD2390 */  lbu        $v1, %lo(D_8011BD2D)($at)
    /* 1C110 801A5088 70000224 */  addiu      $v0, $zero, 0x70
    /* 1C114 801A508C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1C118 801A5090 52940608 */  j          .L801A5148
    /* 1C11C 801A5094 1C00B4AF */   sw        $s4, 0x1C($sp)
  .L801A5098:
    /* 1C120 801A5098 09000524 */  addiu      $a1, $zero, 0x9
    /* 1C124 801A509C F6FF0624 */  addiu      $a2, $zero, -0xA
    /* 1C128 801A50A0 10001224 */  addiu      $s2, $zero, 0x10
    /* 1C12C 801A50A4 20000724 */  addiu      $a3, $zero, 0x20
    /* 1C130 801A50A8 DE02A292 */  lbu        $v0, (0x1F8002DE & 0xFFFF)($s5)
    /* 1C134 801A50AC 1A001324 */  addiu      $s3, $zero, 0x1A
    /* 1C138 801A50B0 1000B2AF */  sw         $s2, 0x10($sp)
    /* 1C13C 801A50B4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1C140 801A50B8 40100200 */  sll        $v0, $v0, 1
    /* 1C144 801A50BC 0C80013C */  lui        $at, %hi(D_800C6AF0)
    /* 1C148 801A50C0 21082200 */  addu       $at, $at, $v0
    /* 1C14C 801A50C4 F06A2290 */  lbu        $v0, %lo(D_800C6AF0)($at)
    /* 1C150 801A50C8 09001124 */  addiu      $s1, $zero, 0x9
    /* 1C154 801A50CC 82100200 */  srl        $v0, $v0, 2
    /* 1C158 801A50D0 40100200 */  sll        $v0, $v0, 1
    /* 1C15C 801A50D4 1280013C */  lui        $at, %hi(D_8011BD2C)
    /* 1C160 801A50D8 21082200 */  addu       $at, $at, $v0
    /* 1C164 801A50DC 2CBD2290 */  lbu        $v0, %lo(D_8011BD2C)($at)
    /* 1C168 801A50E0 01001024 */  addiu      $s0, $zero, 0x1
    /* 1C16C 801A50E4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1C170 801A50E8 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1C174 801A50EC 2400B0AF */  sw         $s0, 0x24($sp)
    /* 1C178 801A50F0 00110200 */  sll        $v0, $v0, 4
    /* 1C17C 801A50F4 10004224 */  addiu      $v0, $v0, 0x10
    /* 1C180 801A50F8 DE58060C */  jal        func_80196378
    /* 1C184 801A50FC 1800A2AF */   sw        $v0, 0x18($sp)
    /* 1C188 801A5100 21200000 */  addu       $a0, $zero, $zero
    /* 1C18C 801A5104 29000524 */  addiu      $a1, $zero, 0x29
    /* 1C190 801A5108 DE02A292 */  lbu        $v0, (0x1F8002DE & 0xFFFF)($s5)
    /* 1C194 801A510C F6FF0624 */  addiu      $a2, $zero, -0xA
    /* 1C198 801A5110 1000B2AF */  sw         $s2, 0x10($sp)
    /* 1C19C 801A5114 40100200 */  sll        $v0, $v0, 1
    /* 1C1A0 801A5118 0C80013C */  lui        $at, %hi(D_800C6AF0)
    /* 1C1A4 801A511C 21082200 */  addu       $at, $at, $v0
    /* 1C1A8 801A5120 F06A2290 */  lbu        $v0, %lo(D_800C6AF0)($at)
    /* 1C1AC 801A5124 08000724 */  addiu      $a3, $zero, 0x8
    /* 1C1B0 801A5128 82100200 */  srl        $v0, $v0, 2
    /* 1C1B4 801A512C 40100200 */  sll        $v0, $v0, 1
    /* 1C1B8 801A5130 1280013C */  lui        $at, %hi(D_8011BD2D)
    /* 1C1BC 801A5134 21082200 */  addu       $at, $at, $v0
    /* 1C1C0 801A5138 2DBD2390 */  lbu        $v1, %lo(D_8011BD2D)($at)
    /* 1C1C4 801A513C 70000224 */  addiu      $v0, $zero, 0x70
    /* 1C1C8 801A5140 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1C1CC 801A5144 1C00B3AF */  sw         $s3, 0x1C($sp)
  .L801A5148:
    /* 1C1D0 801A5148 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1C1D4 801A514C 2400B0AF */  sw         $s0, 0x24($sp)
    /* 1C1D8 801A5150 C0180300 */  sll        $v1, $v1, 3
    /* 1C1DC 801A5154 20006324 */  addiu      $v1, $v1, 0x20
    /* 1C1E0 801A5158 DE58060C */  jal        func_80196378
    /* 1C1E4 801A515C 1400A3AF */   sw        $v1, 0x14($sp)
  .L801A5160:
    /* 1C1E8 801A5160 4000BF8F */  lw         $ra, 0x40($sp)
    /* 1C1EC 801A5164 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 1C1F0 801A5168 3800B48F */  lw         $s4, 0x38($sp)
    /* 1C1F4 801A516C 3400B38F */  lw         $s3, 0x34($sp)
    /* 1C1F8 801A5170 3000B28F */  lw         $s2, 0x30($sp)
    /* 1C1FC 801A5174 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 1C200 801A5178 2800B08F */  lw         $s0, 0x28($sp)
    /* 1C204 801A517C 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 1C208 801A5180 0800E003 */  jr         $ra
    /* 1C20C 801A5184 00000000 */   nop
endlabel func_801A4DA8
