nonmatching func_801C9A18, 0x554

glabel func_801C9A18
    /* 40AA0 801C9A18 21508000 */  addu       $t2, $a0, $zero
    /* 40AA4 801C9A1C 10800B3C */  lui        $t3, %hi(D_800FF748)
    /* 40AA8 801C9A20 48F76B25 */  addiu      $t3, $t3, %lo(D_800FF748)
    /* 40AAC 801C9A24 80008224 */  addiu      $v0, $a0, 0x80
    /* 40AB0 801C9A28 FF004930 */  andi       $t1, $v0, 0xFF
    /* 40AB4 801C9A2C 0500222D */  sltiu      $v0, $t1, 0x5
    /* 40AB8 801C9A30 45004010 */  beqz       $v0, .L801C9B48
    /* 40ABC 801C9A34 801F083C */   lui       $t0, (0x1F800160 >> 16)
    /* 40AC0 801C9A38 FF004A31 */  andi       $t2, $t2, 0xFF
    /* 40AC4 801C9A3C 80FF4325 */  addiu      $v1, $t2, -0x80
    /* 40AC8 801C9A40 40100300 */  sll        $v0, $v1, 1
    /* 40ACC 801C9A44 21104300 */  addu       $v0, $v0, $v1
    /* 40AD0 801C9A48 1D80013C */  lui        $at, %hi(D_801D1CB8)
    /* 40AD4 801C9A4C 21082200 */  addu       $at, $at, $v0
    /* 40AD8 801C9A50 B81C2390 */  lbu        $v1, %lo(D_801D1CB8)($at)
    /* 40ADC 801C9A54 801F013C */  lui        $at, (0x1F80016A >> 16)
    /* 40AE0 801C9A58 6A0123A0 */  sb         $v1, (0x1F80016A & 0xFFFF)($at)
    /* 40AE4 801C9A5C 1D80013C */  lui        $at, %hi(D_801D1CB9)
    /* 40AE8 801C9A60 21082200 */  addu       $at, $at, $v0
    /* 40AEC 801C9A64 B91C2390 */  lbu        $v1, %lo(D_801D1CB9)($at)
    /* 40AF0 801C9A68 801F013C */  lui        $at, (0x1F80016B >> 16)
    /* 40AF4 801C9A6C 6B0123A0 */  sb         $v1, (0x1F80016B & 0xFFFF)($at)
    /* 40AF8 801C9A70 1D80013C */  lui        $at, %hi(D_801D1CBA)
    /* 40AFC 801C9A74 21082200 */  addu       $at, $at, $v0
    /* 40B00 801C9A78 BA1C2390 */  lbu        $v1, %lo(D_801D1CBA)($at)
    /* 40B04 801C9A7C 10000224 */  addiu      $v0, $zero, 0x10
    /* 40B08 801C9A80 801F013C */  lui        $at, (0x1F800166 >> 16)
    /* 40B0C 801C9A84 660122A4 */  sh         $v0, (0x1F800166 & 0xFFFF)($at)
    /* 40B10 801C9A88 0400222D */  sltiu      $v0, $t1, 0x4
    /* 40B14 801C9A8C 801F013C */  lui        $at, (0x1F800164 >> 16)
    /* 40B18 801C9A90 640123A4 */  sh         $v1, (0x1F800164 & 0xFFFF)($at)
    /* 40B1C 801C9A94 0F004010 */  beqz       $v0, .L801C9AD4
    /* 40B20 801C9A98 1C000224 */   addiu     $v0, $zero, 0x1C
    /* 40B24 801C9A9C 801F013C */  lui        $at, (0x1F800168 >> 16)
    /* 40B28 801C9AA0 680122A4 */  sh         $v0, (0x1F800168 & 0xFFFF)($at)
    /* 40B2C 801C9AA4 83000224 */  addiu      $v0, $zero, 0x83
    /* 40B30 801C9AA8 07004215 */  bne        $t2, $v0, .L801C9AC8
    /* 40B34 801C9AAC 7F008430 */   andi      $a0, $a0, 0x7F
    /* 40B38 801C9AB0 1080023C */  lui        $v0, %hi(D_801078E6)
    /* 40B3C 801C9AB4 E6784294 */  lhu        $v0, %lo(D_801078E6)($v0)
    /* 40B40 801C9AB8 1080033C */  lui        $v1, %hi(D_801078E4)
    /* 40B44 801C9ABC E4786394 */  lhu        $v1, %lo(D_801078E4)($v1)
    /* 40B48 801C9AC0 C7260708 */  j          .L801C9B1C
    /* 40B4C 801C9AC4 00000000 */   nop
  .L801C9AC8:
    /* 40B50 801C9AC8 7D008224 */  addiu      $v0, $a0, 0x7D
    /* 40B54 801C9ACC BA260708 */  j          .L801C9AE8
    /* 40B58 801C9AD0 80100200 */   sll       $v0, $v0, 2
  .L801C9AD4:
    /* 40B5C 801C9AD4 17000224 */  addiu      $v0, $zero, 0x17
    /* 40B60 801C9AD8 801F013C */  lui        $at, (0x1F800168 >> 16)
    /* 40B64 801C9ADC 680122A4 */  sh         $v0, (0x1F800168 & 0xFFFF)($at)
    /* 40B68 801C9AE0 0A00E010 */  beqz       $a3, .L801C9B0C
    /* 40B6C 801C9AE4 80100700 */   sll       $v0, $a3, 2
  .L801C9AE8:
    /* 40B70 801C9AE8 21104B00 */  addu       $v0, $v0, $t3
    /* 40B74 801C9AEC A67F4394 */  lhu        $v1, 0x7FA6($v0)
    /* 40B78 801C9AF0 801F013C */  lui        $at, (0x1F80016C >> 16)
    /* 40B7C 801C9AF4 6C0123A4 */  sh         $v1, (0x1F80016C & 0xFFFF)($at)
    /* 40B80 801C9AF8 A47F4294 */  lhu        $v0, 0x7FA4($v0)
    /* 40B84 801C9AFC 801F013C */  lui        $at, (0x1F80016E >> 16)
    /* 40B88 801C9B00 6E0122A4 */  sh         $v0, (0x1F80016E & 0xFFFF)($at)
    /* 40B8C 801C9B04 CC260708 */  j          .L801C9B30
    /* 40B90 801C9B08 80000224 */   addiu     $v0, $zero, 0x80
  .L801C9B0C:
    /* 40B94 801C9B0C 1080023C */  lui        $v0, %hi(D_8010770E)
    /* 40B98 801C9B10 0E774294 */  lhu        $v0, %lo(D_8010770E)($v0)
    /* 40B9C 801C9B14 1080033C */  lui        $v1, %hi(D_8010770C)
    /* 40BA0 801C9B18 0C776394 */  lhu        $v1, %lo(D_8010770C)($v1)
  .L801C9B1C:
    /* 40BA4 801C9B1C 801F013C */  lui        $at, (0x1F80016C >> 16)
    /* 40BA8 801C9B20 6C0122A4 */  sh         $v0, (0x1F80016C & 0xFFFF)($at)
    /* 40BAC 801C9B24 801F013C */  lui        $at, (0x1F80016E >> 16)
    /* 40BB0 801C9B28 6E0123A4 */  sh         $v1, (0x1F80016E & 0xFFFF)($at)
    /* 40BB4 801C9B2C 80000224 */  addiu      $v0, $zero, 0x80
  .L801C9B30:
    /* 40BB8 801C9B30 700102A1 */  sb         $v0, (0x1F800170 & 0xFFFF)($t0)
    /* 40BBC 801C9B34 710102A1 */  sb         $v0, (0x1F800171 & 0xFFFF)($t0)
    /* 40BC0 801C9B38 720102A1 */  sb         $v0, (0x1F800172 & 0xFFFF)($t0)
    /* 40BC4 801C9B3C 5C0100AD */  sw         $zero, (0x1F80015C & 0xFFFF)($t0)
    /* 40BC8 801C9B40 D8270708 */  j          .L801C9F60
    /* 40BCC 801C9B44 600105A5 */   sh        $a1, (0x1F800160 & 0xFFFF)($t0)
  .L801C9B48:
    /* 40BD0 801C9B48 7A008224 */  addiu      $v0, $a0, 0x7A
    /* 40BD4 801C9B4C FF004230 */  andi       $v0, $v0, 0xFF
    /* 40BD8 801C9B50 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* 40BDC 801C9B54 3D004010 */  beqz       $v0, .L801C9C4C
    /* 40BE0 801C9B58 17000224 */   addiu     $v0, $zero, 0x17
    /* 40BE4 801C9B5C 801F013C */  lui        $at, (0x1F800168 >> 16)
    /* 40BE8 801C9B60 680122A4 */  sh         $v0, (0x1F800168 & 0xFFFF)($at)
    /* 40BEC 801C9B64 0A000224 */  addiu      $v0, $zero, 0xA
    /* 40BF0 801C9B68 801F013C */  lui        $at, (0x1F800164 >> 16)
    /* 40BF4 801C9B6C 640122A4 */  sh         $v0, (0x1F800164 & 0xFFFF)($at)
    /* 40BF8 801C9B70 10000224 */  addiu      $v0, $zero, 0x10
    /* 40BFC 801C9B74 801F013C */  lui        $at, (0x1F80015C >> 16)
    /* 40C00 801C9B78 5C0120AC */  sw         $zero, (0x1F80015C & 0xFFFF)($at)
    /* 40C04 801C9B7C 801F013C */  lui        $at, (0x1F800166 >> 16)
    /* 40C08 801C9B80 660122A4 */  sh         $v0, (0x1F800166 & 0xFFFF)($at)
    /* 40C0C 801C9B84 0A00E010 */  beqz       $a3, .L801C9BB0
    /* 40C10 801C9B88 80100700 */   sll       $v0, $a3, 2
    /* 40C14 801C9B8C 21104B00 */  addu       $v0, $v0, $t3
    /* 40C18 801C9B90 A67F4394 */  lhu        $v1, 0x7FA6($v0)
    /* 40C1C 801C9B94 801F013C */  lui        $at, (0x1F80016C >> 16)
    /* 40C20 801C9B98 6C0123A4 */  sh         $v1, (0x1F80016C & 0xFFFF)($at)
    /* 40C24 801C9B9C A47F4294 */  lhu        $v0, 0x7FA4($v0)
    /* 40C28 801C9BA0 801F013C */  lui        $at, (0x1F80016E >> 16)
    /* 40C2C 801C9BA4 6E0122A4 */  sh         $v0, (0x1F80016E & 0xFFFF)($at)
    /* 40C30 801C9BA8 F5260708 */  j          .L801C9BD4
    /* 40C34 801C9BAC 80000224 */   addiu     $v0, $zero, 0x80
  .L801C9BB0:
    /* 40C38 801C9BB0 1080023C */  lui        $v0, %hi(D_8010770E)
    /* 40C3C 801C9BB4 0E774294 */  lhu        $v0, %lo(D_8010770E)($v0)
    /* 40C40 801C9BB8 1080033C */  lui        $v1, %hi(D_8010770C)
    /* 40C44 801C9BBC 0C776394 */  lhu        $v1, %lo(D_8010770C)($v1)
    /* 40C48 801C9BC0 801F013C */  lui        $at, (0x1F80016C >> 16)
    /* 40C4C 801C9BC4 6C0122A4 */  sh         $v0, (0x1F80016C & 0xFFFF)($at)
    /* 40C50 801C9BC8 801F013C */  lui        $at, (0x1F80016E >> 16)
    /* 40C54 801C9BCC 6E0123A4 */  sh         $v1, (0x1F80016E & 0xFFFF)($at)
    /* 40C58 801C9BD0 80000224 */  addiu      $v0, $zero, 0x80
  .L801C9BD4:
    /* 40C5C 801C9BD4 FF004331 */  andi       $v1, $t2, 0xFF
    /* 40C60 801C9BD8 700102A1 */  sb         $v0, (0x1F800170 & 0xFFFF)($t0)
    /* 40C64 801C9BDC 710102A1 */  sb         $v0, (0x1F800171 & 0xFFFF)($t0)
    /* 40C68 801C9BE0 720102A1 */  sb         $v0, (0x1F800172 & 0xFFFF)($t0)
    /* 40C6C 801C9BE4 9200622C */  sltiu      $v0, $v1, 0x92
    /* 40C70 801C9BE8 600105A5 */  sh         $a1, (0x1F800160 & 0xFFFF)($t0)
    /* 40C74 801C9BEC 08004010 */  beqz       $v0, .L801C9C10
    /* 40C78 801C9BF0 620106A5 */   sh        $a2, (0x1F800162 & 0xFFFF)($t0)
    /* 40C7C 801C9BF4 7AFF6224 */  addiu      $v0, $v1, -0x86
    /* 40C80 801C9BF8 80180200 */  sll        $v1, $v0, 2
    /* 40C84 801C9BFC 21186200 */  addu       $v1, $v1, $v0
    /* 40C88 801C9C00 40180300 */  sll        $v1, $v1, 1
    /* 40C8C 801C9C04 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 40C90 801C9C08 10270708 */  j          .L801C9C40
    /* 40C94 801C9C0C 60000224 */   addiu     $v0, $zero, 0x60
  .L801C9C10:
    /* 40C98 801C9C10 9F000224 */  addiu      $v0, $zero, 0x9F
    /* 40C9C 801C9C14 06006214 */  bne        $v1, $v0, .L801C9C30
    /* 40CA0 801C9C18 6EFF6224 */   addiu     $v0, $v1, -0x92
    /* 40CA4 801C9C1C D8000224 */  addiu      $v0, $zero, 0xD8
    /* 40CA8 801C9C20 6A0102A1 */  sb         $v0, (0x1F80016A & 0xFFFF)($t0)
    /* 40CAC 801C9C24 40000224 */  addiu      $v0, $zero, 0x40
    /* 40CB0 801C9C28 D9270708 */  j          .L801C9F64
    /* 40CB4 801C9C2C 6B0102A1 */   sb        $v0, (0x1F80016B & 0xFFFF)($t0)
  .L801C9C30:
    /* 40CB8 801C9C30 80180200 */  sll        $v1, $v0, 2
    /* 40CBC 801C9C34 21186200 */  addu       $v1, $v1, $v0
    /* 40CC0 801C9C38 40180300 */  sll        $v1, $v1, 1
    /* 40CC4 801C9C3C 70000224 */  addiu      $v0, $zero, 0x70
  .L801C9C40:
    /* 40CC8 801C9C40 6A0103A1 */  sb         $v1, (0x1F80016A & 0xFFFF)($t0)
    /* 40CCC 801C9C44 D9270708 */  j          .L801C9F64
    /* 40CD0 801C9C48 6B0102A1 */   sb        $v0, (0x1F80016B & 0xFFFF)($t0)
  .L801C9C4C:
    /* 40CD4 801C9C4C 5A008224 */  addiu      $v0, $a0, 0x5A
    /* 40CD8 801C9C50 FF004230 */  andi       $v0, $v0, 0xFF
    /* 40CDC 801C9C54 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 40CE0 801C9C58 29004010 */  beqz       $v0, .L801C9D00
    /* 40CE4 801C9C5C 17000224 */   addiu     $v0, $zero, 0x17
    /* 40CE8 801C9C60 801F013C */  lui        $at, (0x1F800168 >> 16)
    /* 40CEC 801C9C64 680122A4 */  sh         $v0, (0x1F800168 & 0xFFFF)($at)
    /* 40CF0 801C9C68 08000224 */  addiu      $v0, $zero, 0x8
    /* 40CF4 801C9C6C 801F013C */  lui        $at, (0x1F800164 >> 16)
    /* 40CF8 801C9C70 640122A4 */  sh         $v0, (0x1F800164 & 0xFFFF)($at)
    /* 40CFC 801C9C74 10000224 */  addiu      $v0, $zero, 0x10
    /* 40D00 801C9C78 801F013C */  lui        $at, (0x1F80015C >> 16)
    /* 40D04 801C9C7C 5C0120AC */  sw         $zero, (0x1F80015C & 0xFFFF)($at)
    /* 40D08 801C9C80 801F013C */  lui        $at, (0x1F800166 >> 16)
    /* 40D0C 801C9C84 660122A4 */  sh         $v0, (0x1F800166 & 0xFFFF)($at)
    /* 40D10 801C9C88 0A00E010 */  beqz       $a3, .L801C9CB4
    /* 40D14 801C9C8C 80100700 */   sll       $v0, $a3, 2
    /* 40D18 801C9C90 21104B00 */  addu       $v0, $v0, $t3
    /* 40D1C 801C9C94 A67F4394 */  lhu        $v1, 0x7FA6($v0)
    /* 40D20 801C9C98 801F013C */  lui        $at, (0x1F80016C >> 16)
    /* 40D24 801C9C9C 6C0123A4 */  sh         $v1, (0x1F80016C & 0xFFFF)($at)
    /* 40D28 801C9CA0 A47F4294 */  lhu        $v0, 0x7FA4($v0)
    /* 40D2C 801C9CA4 801F013C */  lui        $at, (0x1F80016E >> 16)
    /* 40D30 801C9CA8 6E0122A4 */  sh         $v0, (0x1F80016E & 0xFFFF)($at)
    /* 40D34 801C9CAC 36270708 */  j          .L801C9CD8
    /* 40D38 801C9CB0 80000224 */   addiu     $v0, $zero, 0x80
  .L801C9CB4:
    /* 40D3C 801C9CB4 1080023C */  lui        $v0, %hi(D_8010770E)
    /* 40D40 801C9CB8 0E774294 */  lhu        $v0, %lo(D_8010770E)($v0)
    /* 40D44 801C9CBC 1080033C */  lui        $v1, %hi(D_8010770C)
    /* 40D48 801C9CC0 0C776394 */  lhu        $v1, %lo(D_8010770C)($v1)
    /* 40D4C 801C9CC4 801F013C */  lui        $at, (0x1F80016C >> 16)
    /* 40D50 801C9CC8 6C0122A4 */  sh         $v0, (0x1F80016C & 0xFFFF)($at)
    /* 40D54 801C9CCC 801F013C */  lui        $at, (0x1F80016E >> 16)
    /* 40D58 801C9CD0 6E0123A4 */  sh         $v1, (0x1F80016E & 0xFFFF)($at)
    /* 40D5C 801C9CD4 80000224 */  addiu      $v0, $zero, 0x80
  .L801C9CD8:
    /* 40D60 801C9CD8 700102A1 */  sb         $v0, (0x1F800170 & 0xFFFF)($t0)
    /* 40D64 801C9CDC 710102A1 */  sb         $v0, (0x1F800171 & 0xFFFF)($t0)
    /* 40D68 801C9CE0 720102A1 */  sb         $v0, (0x1F800172 & 0xFFFF)($t0)
    /* 40D6C 801C9CE4 FF004231 */  andi       $v0, $t2, 0xFF
    /* 40D70 801C9CE8 C0100200 */  sll        $v0, $v0, 3
    /* 40D74 801C9CEC 58FA4224 */  addiu      $v0, $v0, -0x5A8
    /* 40D78 801C9CF0 6A0102A1 */  sb         $v0, (0x1F80016A & 0xFFFF)($t0)
    /* 40D7C 801C9CF4 70000224 */  addiu      $v0, $zero, 0x70
    /* 40D80 801C9CF8 6B270708 */  j          .L801C9DAC
    /* 40D84 801C9CFC 600105A5 */   sh        $a1, (0x1F800160 & 0xFFFF)($t0)
  .L801C9D00:
    /* 40D88 801C9D00 FF004331 */  andi       $v1, $t2, 0xFF
    /* 40D8C 801C9D04 B0000224 */  addiu      $v0, $zero, 0xB0
    /* 40D90 801C9D08 2B006214 */  bne        $v1, $v0, .L801C9DB8
    /* 40D94 801C9D0C 50008224 */   addiu     $v0, $a0, 0x50
    /* 40D98 801C9D10 17000224 */  addiu      $v0, $zero, 0x17
    /* 40D9C 801C9D14 801F013C */  lui        $at, (0x1F800168 >> 16)
    /* 40DA0 801C9D18 680122A4 */  sh         $v0, (0x1F800168 & 0xFFFF)($at)
    /* 40DA4 801C9D1C 06000224 */  addiu      $v0, $zero, 0x6
    /* 40DA8 801C9D20 801F013C */  lui        $at, (0x1F800164 >> 16)
    /* 40DAC 801C9D24 640122A4 */  sh         $v0, (0x1F800164 & 0xFFFF)($at)
    /* 40DB0 801C9D28 10000224 */  addiu      $v0, $zero, 0x10
    /* 40DB4 801C9D2C 801F013C */  lui        $at, (0x1F80015C >> 16)
    /* 40DB8 801C9D30 5C0120AC */  sw         $zero, (0x1F80015C & 0xFFFF)($at)
    /* 40DBC 801C9D34 801F013C */  lui        $at, (0x1F800166 >> 16)
    /* 40DC0 801C9D38 660122A4 */  sh         $v0, (0x1F800166 & 0xFFFF)($at)
    /* 40DC4 801C9D3C 0A00E010 */  beqz       $a3, .L801C9D68
    /* 40DC8 801C9D40 80100700 */   sll       $v0, $a3, 2
    /* 40DCC 801C9D44 21104B00 */  addu       $v0, $v0, $t3
    /* 40DD0 801C9D48 A67F4394 */  lhu        $v1, 0x7FA6($v0)
    /* 40DD4 801C9D4C 801F013C */  lui        $at, (0x1F80016C >> 16)
    /* 40DD8 801C9D50 6C0123A4 */  sh         $v1, (0x1F80016C & 0xFFFF)($at)
    /* 40DDC 801C9D54 A47F4294 */  lhu        $v0, 0x7FA4($v0)
    /* 40DE0 801C9D58 801F013C */  lui        $at, (0x1F80016E >> 16)
    /* 40DE4 801C9D5C 6E0122A4 */  sh         $v0, (0x1F80016E & 0xFFFF)($at)
    /* 40DE8 801C9D60 63270708 */  j          .L801C9D8C
    /* 40DEC 801C9D64 80000224 */   addiu     $v0, $zero, 0x80
  .L801C9D68:
    /* 40DF0 801C9D68 1080023C */  lui        $v0, %hi(D_8010770E)
    /* 40DF4 801C9D6C 0E774294 */  lhu        $v0, %lo(D_8010770E)($v0)
    /* 40DF8 801C9D70 1080033C */  lui        $v1, %hi(D_8010770C)
    /* 40DFC 801C9D74 0C776394 */  lhu        $v1, %lo(D_8010770C)($v1)
    /* 40E00 801C9D78 801F013C */  lui        $at, (0x1F80016C >> 16)
    /* 40E04 801C9D7C 6C0122A4 */  sh         $v0, (0x1F80016C & 0xFFFF)($at)
    /* 40E08 801C9D80 801F013C */  lui        $at, (0x1F80016E >> 16)
    /* 40E0C 801C9D84 6E0123A4 */  sh         $v1, (0x1F80016E & 0xFFFF)($at)
    /* 40E10 801C9D88 80000224 */  addiu      $v0, $zero, 0x80
  .L801C9D8C:
    /* 40E14 801C9D8C 700102A1 */  sb         $v0, (0x1F800170 & 0xFFFF)($t0)
    /* 40E18 801C9D90 710102A1 */  sb         $v0, (0x1F800171 & 0xFFFF)($t0)
    /* 40E1C 801C9D94 720102A1 */  sb         $v0, (0x1F800172 & 0xFFFF)($t0)
    /* 40E20 801C9D98 0100A224 */  addiu      $v0, $a1, 0x1
    /* 40E24 801C9D9C 600102A5 */  sh         $v0, (0x1F800160 & 0xFFFF)($t0)
    /* 40E28 801C9DA0 60000224 */  addiu      $v0, $zero, 0x60
    /* 40E2C 801C9DA4 6A0102A1 */  sb         $v0, (0x1F80016A & 0xFFFF)($t0)
    /* 40E30 801C9DA8 10000224 */  addiu      $v0, $zero, 0x10
  .L801C9DAC:
    /* 40E34 801C9DAC 620106A5 */  sh         $a2, (0x1F800162 & 0xFFFF)($t0)
    /* 40E38 801C9DB0 D9270708 */  j          .L801C9F64
    /* 40E3C 801C9DB4 6B0102A1 */   sb        $v0, (0x1F80016B & 0xFFFF)($t0)
  .L801C9DB8:
    /* 40E40 801C9DB8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 40E44 801C9DBC 3000422C */  sltiu      $v0, $v0, 0x30
    /* 40E48 801C9DC0 33004010 */  beqz       $v0, .L801C9E90
    /* 40E4C 801C9DC4 17000224 */   addiu     $v0, $zero, 0x17
    /* 40E50 801C9DC8 801F013C */  lui        $at, (0x1F800168 >> 16)
    /* 40E54 801C9DCC 680122A4 */  sh         $v0, (0x1F800168 & 0xFFFF)($at)
    /* 40E58 801C9DD0 08000224 */  addiu      $v0, $zero, 0x8
    /* 40E5C 801C9DD4 801F013C */  lui        $at, (0x1F800164 >> 16)
    /* 40E60 801C9DD8 640122A4 */  sh         $v0, (0x1F800164 & 0xFFFF)($at)
    /* 40E64 801C9DDC 10000224 */  addiu      $v0, $zero, 0x10
    /* 40E68 801C9DE0 801F013C */  lui        $at, (0x1F80015C >> 16)
    /* 40E6C 801C9DE4 5C0120AC */  sw         $zero, (0x1F80015C & 0xFFFF)($at)
    /* 40E70 801C9DE8 801F013C */  lui        $at, (0x1F800166 >> 16)
    /* 40E74 801C9DEC 660122A4 */  sh         $v0, (0x1F800166 & 0xFFFF)($at)
    /* 40E78 801C9DF0 0A00E010 */  beqz       $a3, .L801C9E1C
    /* 40E7C 801C9DF4 80100700 */   sll       $v0, $a3, 2
    /* 40E80 801C9DF8 21104B00 */  addu       $v0, $v0, $t3
    /* 40E84 801C9DFC A67F4394 */  lhu        $v1, 0x7FA6($v0)
    /* 40E88 801C9E00 801F013C */  lui        $at, (0x1F80016C >> 16)
    /* 40E8C 801C9E04 6C0123A4 */  sh         $v1, (0x1F80016C & 0xFFFF)($at)
    /* 40E90 801C9E08 A47F4294 */  lhu        $v0, 0x7FA4($v0)
    /* 40E94 801C9E0C 801F013C */  lui        $at, (0x1F80016E >> 16)
    /* 40E98 801C9E10 6E0122A4 */  sh         $v0, (0x1F80016E & 0xFFFF)($at)
    /* 40E9C 801C9E14 90270708 */  j          .L801C9E40
    /* 40EA0 801C9E18 80000224 */   addiu     $v0, $zero, 0x80
  .L801C9E1C:
    /* 40EA4 801C9E1C 1080023C */  lui        $v0, %hi(D_8010770E)
    /* 40EA8 801C9E20 0E774294 */  lhu        $v0, %lo(D_8010770E)($v0)
    /* 40EAC 801C9E24 1080033C */  lui        $v1, %hi(D_8010770C)
    /* 40EB0 801C9E28 0C776394 */  lhu        $v1, %lo(D_8010770C)($v1)
    /* 40EB4 801C9E2C 801F013C */  lui        $at, (0x1F80016C >> 16)
    /* 40EB8 801C9E30 6C0122A4 */  sh         $v0, (0x1F80016C & 0xFFFF)($at)
    /* 40EBC 801C9E34 801F013C */  lui        $at, (0x1F80016E >> 16)
    /* 40EC0 801C9E38 6E0123A4 */  sh         $v1, (0x1F80016E & 0xFFFF)($at)
    /* 40EC4 801C9E3C 80000224 */  addiu      $v0, $zero, 0x80
  .L801C9E40:
    /* 40EC8 801C9E40 4F004325 */  addiu      $v1, $t2, 0x4F
    /* 40ECC 801C9E44 700102A1 */  sb         $v0, (0x1F800170 & 0xFFFF)($t0)
    /* 40ED0 801C9E48 710102A1 */  sb         $v0, (0x1F800171 & 0xFFFF)($t0)
    /* 40ED4 801C9E4C 720102A1 */  sb         $v0, (0x1F800172 & 0xFFFF)($t0)
    /* 40ED8 801C9E50 FF006230 */  andi       $v0, $v1, 0xFF
    /* 40EDC 801C9E54 1F00422C */  sltiu      $v0, $v0, 0x1F
    /* 40EE0 801C9E58 600105A5 */  sh         $a1, (0x1F800160 & 0xFFFF)($t0)
    /* 40EE4 801C9E5C 06004010 */  beqz       $v0, .L801C9E78
    /* 40EE8 801C9E60 620106A5 */   sh        $a2, (0x1F800162 & 0xFFFF)($t0)
    /* 40EEC 801C9E64 C0100300 */  sll        $v0, $v1, 3
    /* 40EF0 801C9E68 6A0102A1 */  sb         $v0, (0x1F80016A & 0xFFFF)($t0)
    /* 40EF4 801C9E6C 50000224 */  addiu      $v0, $zero, 0x50
    /* 40EF8 801C9E70 D9270708 */  j          .L801C9F64
    /* 40EFC 801C9E74 6B0102A1 */   sb        $v0, (0x1F80016B & 0xFFFF)($t0)
  .L801C9E78:
    /* 40F00 801C9E78 30004225 */  addiu      $v0, $t2, 0x30
    /* 40F04 801C9E7C C0100200 */  sll        $v0, $v0, 3
    /* 40F08 801C9E80 6A0102A1 */  sb         $v0, (0x1F80016A & 0xFFFF)($t0)
    /* 40F0C 801C9E84 60000224 */  addiu      $v0, $zero, 0x60
    /* 40F10 801C9E88 D9270708 */  j          .L801C9F64
    /* 40F14 801C9E8C 6B0102A1 */   sb        $v0, (0x1F80016B & 0xFFFF)($t0)
  .L801C9E90:
    /* 40F18 801C9E90 E0FF6224 */  addiu      $v0, $v1, -0x20
    /* 40F1C 801C9E94 40100200 */  sll        $v0, $v0, 1
    /* 40F20 801C9E98 1D80013C */  lui        $at, %hi(D_801D1BF8)
    /* 40F24 801C9E9C 21082200 */  addu       $at, $at, $v0
    /* 40F28 801C9EA0 F81B2290 */  lbu        $v0, %lo(D_801D1BF8)($at)
    /* 40F2C 801C9EA4 801F013C */  lui        $at, (0x1F80016A >> 16)
    /* 40F30 801C9EA8 6A0122A0 */  sb         $v0, (0x1F80016A & 0xFFFF)($at)
    /* 40F34 801C9EAC 4100622C */  sltiu      $v0, $v1, 0x41
    /* 40F38 801C9EB0 05004014 */  bnez       $v0, .L801C9EC8
    /* 40F3C 801C9EB4 10000224 */   addiu     $v0, $zero, 0x10
    /* 40F40 801C9EB8 6100622C */  sltiu      $v0, $v1, 0x61
    /* 40F44 801C9EBC 02004014 */  bnez       $v0, .L801C9EC8
    /* 40F48 801C9EC0 20000224 */   addiu     $v0, $zero, 0x20
    /* 40F4C 801C9EC4 30000224 */  addiu      $v0, $zero, 0x30
  .L801C9EC8:
    /* 40F50 801C9EC8 801F013C */  lui        $at, (0x1F80016B >> 16)
    /* 40F54 801C9ECC 6B0122A0 */  sb         $v0, (0x1F80016B & 0xFFFF)($at)
    /* 40F58 801C9ED0 FF004231 */  andi       $v0, $t2, 0xFF
    /* 40F5C 801C9ED4 E0FF4224 */  addiu      $v0, $v0, -0x20
    /* 40F60 801C9ED8 40100200 */  sll        $v0, $v0, 1
    /* 40F64 801C9EDC 1D80013C */  lui        $at, %hi(D_801D1BF9)
    /* 40F68 801C9EE0 21082200 */  addu       $at, $at, $v0
    /* 40F6C 801C9EE4 F91B2390 */  lbu        $v1, %lo(D_801D1BF9)($at)
    /* 40F70 801C9EE8 10000224 */  addiu      $v0, $zero, 0x10
    /* 40F74 801C9EEC 660102A5 */  sh         $v0, (0x1F800166 & 0xFFFF)($t0)
    /* 40F78 801C9EF0 17000224 */  addiu      $v0, $zero, 0x17
    /* 40F7C 801C9EF4 680102A5 */  sh         $v0, (0x1F800168 & 0xFFFF)($t0)
    /* 40F80 801C9EF8 0900E010 */  beqz       $a3, .L801C9F20
    /* 40F84 801C9EFC 640103A5 */   sh        $v1, (0x1F800164 & 0xFFFF)($t0)
    /* 40F88 801C9F00 80100700 */  sll        $v0, $a3, 2
    /* 40F8C 801C9F04 21106201 */  addu       $v0, $t3, $v0
    /* 40F90 801C9F08 A67F4394 */  lhu        $v1, 0x7FA6($v0)
    /* 40F94 801C9F0C 00000000 */  nop
    /* 40F98 801C9F10 6C0103A5 */  sh         $v1, (0x1F80016C & 0xFFFF)($t0)
    /* 40F9C 801C9F14 A47F4294 */  lhu        $v0, 0x7FA4($v0)
    /* 40FA0 801C9F18 CC270708 */  j          .L801C9F30
    /* 40FA4 801C9F1C 6E0102A5 */   sh        $v0, (0x1F80016E & 0xFFFF)($t0)
  .L801C9F20:
    /* 40FA8 801C9F20 C67F6295 */  lhu        $v0, 0x7FC6($t3)
    /* 40FAC 801C9F24 C47F6395 */  lhu        $v1, 0x7FC4($t3)
    /* 40FB0 801C9F28 6C0102A5 */  sh         $v0, (0x1F80016C & 0xFFFF)($t0)
    /* 40FB4 801C9F2C 6E0103A5 */  sh         $v1, (0x1F80016E & 0xFFFF)($t0)
  .L801C9F30:
    /* 40FB8 801C9F30 80000224 */  addiu      $v0, $zero, 0x80
    /* 40FBC 801C9F34 FF004331 */  andi       $v1, $t2, 0xFF
    /* 40FC0 801C9F38 700102A1 */  sb         $v0, (0x1F800170 & 0xFFFF)($t0)
    /* 40FC4 801C9F3C 710102A1 */  sb         $v0, (0x1F800171 & 0xFFFF)($t0)
    /* 40FC8 801C9F40 720102A1 */  sb         $v0, (0x1F800172 & 0xFFFF)($t0)
    /* 40FCC 801C9F44 5E000224 */  addiu      $v0, $zero, 0x5E
    /* 40FD0 801C9F48 5C0100AD */  sw         $zero, (0x1F80015C & 0xFFFF)($t0)
    /* 40FD4 801C9F4C 04006214 */  bne        $v1, $v0, .L801C9F60
    /* 40FD8 801C9F50 600105A5 */   sh        $a1, (0x1F800160 & 0xFFFF)($t0)
    /* 40FDC 801C9F54 FEFFC224 */  addiu      $v0, $a2, -0x2
    /* 40FE0 801C9F58 D9270708 */  j          .L801C9F64
    /* 40FE4 801C9F5C 620102A5 */   sh        $v0, (0x1F800162 & 0xFFFF)($t0)
  .L801C9F60:
    /* 40FE8 801C9F60 620106A5 */  sh         $a2, (0x1F800162 & 0xFFFF)($t0)
  .L801C9F64:
    /* 40FEC 801C9F64 0800E003 */  jr         $ra
    /* 40FF0 801C9F68 00000000 */   nop
endlabel func_801C9A18
