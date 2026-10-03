nonmatching func_800BE938, 0x344

glabel func_800BE938
    /* AF138 800BE938 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* AF13C 800BE93C 5400B1AF */  sw         $s1, 0x54($sp)
    /* AF140 800BE940 21888000 */  addu       $s1, $a0, $zero
    /* AF144 800BE944 21200000 */  addu       $a0, $zero, $zero
    /* AF148 800BE948 6800BFAF */  sw         $ra, 0x68($sp)
    /* AF14C 800BE94C 6400B5AF */  sw         $s5, 0x64($sp)
    /* AF150 800BE950 6000B4AF */  sw         $s4, 0x60($sp)
    /* AF154 800BE954 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* AF158 800BE958 5800B2AF */  sw         $s2, 0x58($sp)
    /* AF15C 800BE95C E20F030C */  jal        func_800C3F88
    /* AF160 800BE960 5000B0AF */   sw        $s0, 0x50($sp)
    /* AF164 800BE964 0E80053C */  lui        $a1, %hi(D_800E7220)
    /* AF168 800BE968 2072A524 */  addiu      $a1, $a1, %lo(D_800E7220)
    /* AF16C 800BE96C 0F80013C */  lui        $at, %hi(D_800EF980)
    /* AF170 800BE970 80F920A4 */  sh         $zero, %lo(D_800EF980)($at)
    /* AF174 800BE974 AA07030C */  jal        func_800C1EA8
    /* AF178 800BE978 20000424 */   addiu     $a0, $zero, 0x20
    /* AF17C 800BE97C 21800000 */  addu       $s0, $zero, $zero
    /* AF180 800BE980 1180033C */  lui        $v1, %hi(D_8010A418)
    /* AF184 800BE984 18A46324 */  addiu      $v1, $v1, %lo(D_8010A418)
    /* AF188 800BE988 FFFF0232 */  andi       $v0, $s0, 0xFFFF
  .L800BE98C:
    /* AF18C 800BE98C 40100200 */  sll        $v0, $v0, 1
    /* AF190 800BE990 21104300 */  addu       $v0, $v0, $v1
    /* AF194 800BE994 000040A4 */  sh         $zero, 0x0($v0)
    /* AF198 800BE998 01001026 */  addiu      $s0, $s0, 0x1
    /* AF19C 800BE99C FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* AF1A0 800BE9A0 C000422C */  sltiu      $v0, $v0, 0xC0
    /* AF1A4 800BE9A4 F9FF4014 */  bnez       $v0, .L800BE98C
    /* AF1A8 800BE9A8 FFFF0232 */   andi      $v0, $s0, 0xFFFF
    /* AF1AC 800BE9AC 21800000 */  addu       $s0, $zero, $zero
    /* AF1B0 800BE9B0 FFFF0232 */  andi       $v0, $s0, 0xFFFF
  .L800BE9B4:
    /* AF1B4 800BE9B4 0F80013C */  lui        $at, %hi(D_800E81E0)
    /* AF1B8 800BE9B8 21082200 */  addu       $at, $at, $v0
    /* AF1BC 800BE9BC E08120A0 */  sb         $zero, %lo(D_800E81E0)($at)
    /* AF1C0 800BE9C0 01001026 */  addiu      $s0, $s0, 0x1
    /* AF1C4 800BE9C4 FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* AF1C8 800BE9C8 1800422C */  sltiu      $v0, $v0, 0x18
    /* AF1CC 800BE9CC F9FF4014 */  bnez       $v0, .L800BE9B4
    /* AF1D0 800BE9D0 FFFF0232 */   andi      $v0, $s0, 0xFFFF
    /* AF1D4 800BE9D4 1180013C */  lui        $at, %hi(D_8010CDD8)
    /* AF1D8 800BE9D8 D8CD20A4 */  sh         $zero, %lo(D_8010CDD8)($at)
    /* AF1DC 800BE9DC 21800000 */  addu       $s0, $zero, $zero
    /* AF1E0 800BE9E0 FFFF0232 */  andi       $v0, $s0, 0xFFFF
  .L800BE9E4:
    /* AF1E4 800BE9E4 1180013C */  lui        $at, %hi(D_8010A3F0)
    /* AF1E8 800BE9E8 21082200 */  addu       $at, $at, $v0
    /* AF1EC 800BE9EC F0A320A0 */  sb         $zero, %lo(D_8010A3F0)($at)
    /* AF1F0 800BE9F0 01001026 */  addiu      $s0, $s0, 0x1
    /* AF1F4 800BE9F4 FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* AF1F8 800BE9F8 1000422C */  sltiu      $v0, $v0, 0x10
    /* AF1FC 800BE9FC F9FF4014 */  bnez       $v0, .L800BE9E4
    /* AF200 800BEA00 FFFF0232 */   andi      $v0, $s0, 0xFFFF
    /* AF204 800BEA04 00161100 */  sll        $v0, $s1, 24
    /* AF208 800BEA08 031E0200 */  sra        $v1, $v0, 24
    /* AF20C 800BEA0C 1800622C */  sltiu      $v0, $v1, 0x18
    /* AF210 800BEA10 06004014 */  bnez       $v0, .L800BEA2C
    /* AF214 800BEA14 0600023C */   lui       $v0, (0x60093 >> 16)
    /* AF218 800BEA18 18000224 */  addiu      $v0, $zero, 0x18
    /* AF21C 800BEA1C 1080013C */  lui        $at, %hi(D_800FB578)
    /* AF220 800BEA20 78B522A0 */  sb         $v0, %lo(D_800FB578)($at)
    /* AF224 800BEA24 8DFA0208 */  j          .L800BEA34
    /* AF228 800BEA28 0600023C */   lui       $v0, (0x60093 >> 16)
  .L800BEA2C:
    /* AF22C 800BEA2C 1080013C */  lui        $at, %hi(D_800FB578)
    /* AF230 800BEA30 78B523A0 */  sb         $v1, %lo(D_800FB578)($at)
  .L800BEA34:
    /* AF234 800BEA34 93004234 */  ori        $v0, $v0, (0x60093 & 0xFFFF)
    /* AF238 800BEA38 1080033C */  lui        $v1, %hi(D_800FB578)
    /* AF23C 800BEA3C 78B56380 */  lb         $v1, %lo(D_800FB578)($v1)
    /* AF240 800BEA40 21800000 */  addu       $s0, $zero, $zero
    /* AF244 800BEA44 1400A2AF */  sw         $v0, 0x14($sp)
    /* AF248 800BEA48 00100224 */  addiu      $v0, $zero, 0x1000
    /* AF24C 800BEA4C 2400A2A7 */  sh         $v0, 0x24($sp)
    /* AF250 800BEA50 00100224 */  addiu      $v0, $zero, 0x1000
    /* AF254 800BEA54 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* AF258 800BEA58 FF800234 */  ori        $v0, $zero, 0x80FF
    /* AF25C 800BEA5C 4A00A2A7 */  sh         $v0, 0x4A($sp)
    /* AF260 800BEA60 00400224 */  addiu      $v0, $zero, 0x4000
    /* AF264 800BEA64 1800A0A7 */  sh         $zero, 0x18($sp)
    /* AF268 800BEA68 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* AF26C 800BEA6C 5D006018 */  blez       $v1, .L800BEBE4
    /* AF270 800BEA70 4C00A2A7 */   sh        $v0, 0x4C($sp)
    /* AF274 800BEA74 18001524 */  addiu      $s5, $zero, 0x18
    /* AF278 800BEA78 FF001124 */  addiu      $s1, $zero, 0xFF
    /* AF27C 800BEA7C FFFF1424 */  addiu      $s4, $zero, -0x1
    /* AF280 800BEA80 40001324 */  addiu      $s3, $zero, 0x40
    /* AF284 800BEA84 01001224 */  addiu      $s2, $zero, 0x1
    /* AF288 800BEA88 1000A427 */  addiu      $a0, $sp, 0x10
  .L800BEA8C:
    /* AF28C 800BEA8C FFFF0332 */  andi       $v1, $s0, 0xFFFF
    /* AF290 800BEA90 C0100300 */  sll        $v0, $v1, 3
    /* AF294 800BEA94 23104300 */  subu       $v0, $v0, $v1
    /* AF298 800BEA98 80100200 */  sll        $v0, $v0, 2
    /* AF29C 800BEA9C 23104300 */  subu       $v0, $v0, $v1
    /* AF2A0 800BEAA0 40100200 */  sll        $v0, $v0, 1
    /* AF2A4 800BEAA4 04187200 */  sllv       $v1, $s2, $v1
    /* AF2A8 800BEAA8 0E80013C */  lui        $at, %hi(D_800E78DA)
    /* AF2AC 800BEAAC 21082200 */  addu       $at, $at, $v0
    /* AF2B0 800BEAB0 DA7835A4 */  sh         $s5, %lo(D_800E78DA)($at)
    /* AF2B4 800BEAB4 0E80013C */  lui        $at, %hi(D_800E78D8)
    /* AF2B8 800BEAB8 21082200 */  addu       $at, $at, $v0
    /* AF2BC 800BEABC D87831A4 */  sh         $s1, %lo(D_800E78D8)($at)
    /* AF2C0 800BEAC0 0E80013C */  lui        $at, %hi(D_800E78F5)
    /* AF2C4 800BEAC4 21082200 */  addu       $at, $at, $v0
    /* AF2C8 800BEAC8 F57820A0 */  sb         $zero, %lo(D_800E78F5)($at)
    /* AF2CC 800BEACC 0E80013C */  lui        $at, %hi(D_800E78DC)
    /* AF2D0 800BEAD0 21082200 */  addu       $at, $at, $v0
    /* AF2D4 800BEAD4 DC7820A4 */  sh         $zero, %lo(D_800E78DC)($at)
    /* AF2D8 800BEAD8 0E80013C */  lui        $at, %hi(D_800E78DE)
    /* AF2DC 800BEADC 21082200 */  addu       $at, $at, $v0
    /* AF2E0 800BEAE0 DE7820A4 */  sh         $zero, %lo(D_800E78DE)($at)
    /* AF2E4 800BEAE4 0E80013C */  lui        $at, %hi(D_800E78E8)
    /* AF2E8 800BEAE8 21082200 */  addu       $at, $at, $v0
    /* AF2EC 800BEAEC E87834A4 */  sh         $s4, %lo(D_800E78E8)($at)
    /* AF2F0 800BEAF0 0E80013C */  lui        $at, %hi(D_800E78EA)
    /* AF2F4 800BEAF4 21082200 */  addu       $at, $at, $v0
    /* AF2F8 800BEAF8 EA7820A4 */  sh         $zero, %lo(D_800E78EA)($at)
    /* AF2FC 800BEAFC 0E80013C */  lui        $at, %hi(D_800E78EC)
    /* AF300 800BEB00 21082200 */  addu       $at, $at, $v0
    /* AF304 800BEB04 EC7820A4 */  sh         $zero, %lo(D_800E78EC)($at)
    /* AF308 800BEB08 0E80013C */  lui        $at, %hi(D_800E78EE)
    /* AF30C 800BEB0C 21082200 */  addu       $at, $at, $v0
    /* AF310 800BEB10 EE7831A4 */  sh         $s1, %lo(D_800E78EE)($at)
    /* AF314 800BEB14 0E80013C */  lui        $at, %hi(D_800E78E0)
    /* AF318 800BEB18 21082200 */  addu       $at, $at, $v0
    /* AF31C 800BEB1C E07820A4 */  sh         $zero, %lo(D_800E78E0)($at)
    /* AF320 800BEB20 0E80013C */  lui        $at, %hi(D_800E78E4)
    /* AF324 800BEB24 21082200 */  addu       $at, $at, $v0
    /* AF328 800BEB28 E47820A4 */  sh         $zero, %lo(D_800E78E4)($at)
    /* AF32C 800BEB2C 0E80013C */  lui        $at, %hi(D_800E78E2)
    /* AF330 800BEB30 21082200 */  addu       $at, $at, $v0
    /* AF334 800BEB34 E27833A0 */  sb         $s3, %lo(D_800E78E2)($at)
    /* AF338 800BEB38 0E80013C */  lui        $at, %hi(D_800E78F6)
    /* AF33C 800BEB3C 21082200 */  addu       $at, $at, $v0
    /* AF340 800BEB40 F67820A4 */  sh         $zero, %lo(D_800E78F6)($at)
    /* AF344 800BEB44 0E80013C */  lui        $at, %hi(D_800E78F8)
    /* AF348 800BEB48 21082200 */  addu       $at, $at, $v0
    /* AF34C 800BEB4C F87820A4 */  sh         $zero, %lo(D_800E78F8)($at)
    /* AF350 800BEB50 0E80013C */  lui        $at, %hi(D_800E78FA)
    /* AF354 800BEB54 21082200 */  addu       $at, $at, $v0
    /* AF358 800BEB58 FA7820A4 */  sh         $zero, %lo(D_800E78FA)($at)
    /* AF35C 800BEB5C 0E80013C */  lui        $at, %hi(D_800E78FC)
    /* AF360 800BEB60 21082200 */  addu       $at, $at, $v0
    /* AF364 800BEB64 FC7820A4 */  sh         $zero, %lo(D_800E78FC)($at)
    /* AF368 800BEB68 0E80013C */  lui        $at, %hi(D_800E7902)
    /* AF36C 800BEB6C 21082200 */  addu       $at, $at, $v0
    /* AF370 800BEB70 027920A4 */  sh         $zero, %lo(D_800E7902)($at)
    /* AF374 800BEB74 0E80013C */  lui        $at, %hi(D_800E7904)
    /* AF378 800BEB78 21082200 */  addu       $at, $at, $v0
    /* AF37C 800BEB7C 047920A4 */  sh         $zero, %lo(D_800E7904)($at)
    /* AF380 800BEB80 0E80013C */  lui        $at, %hi(D_800E7906)
    /* AF384 800BEB84 21082200 */  addu       $at, $at, $v0
    /* AF388 800BEB88 067920A4 */  sh         $zero, %lo(D_800E7906)($at)
    /* AF38C 800BEB8C 0E80013C */  lui        $at, %hi(D_800E7908)
    /* AF390 800BEB90 21082200 */  addu       $at, $at, $v0
    /* AF394 800BEB94 087920A4 */  sh         $zero, %lo(D_800E7908)($at)
    /* AF398 800BEB98 0E80013C */  lui        $at, %hi(D_800E790A)
    /* AF39C 800BEB9C 21082200 */  addu       $at, $at, $v0
    /* AF3A0 800BEBA0 0A7920A4 */  sh         $zero, %lo(D_800E790A)($at)
    /* AF3A4 800BEBA4 0E80013C */  lui        $at, %hi(D_800E78FE)
    /* AF3A8 800BEBA8 21082200 */  addu       $at, $at, $v0
    /* AF3AC 800BEBAC FE7820A4 */  sh         $zero, %lo(D_800E78FE)($at)
    /* AF3B0 800BEBB0 2A11030C */  jal        func_800C44A8
    /* AF3B4 800BEBB4 1000A3AF */   sw        $v1, 0x10($sp)
    /* AF3B8 800BEBB8 1180013C */  lui        $at, %hi(D_8010A3E2)
    /* AF3BC 800BEBBC E2A330A4 */  sh         $s0, %lo(D_8010A3E2)($at)
    /* AF3C0 800BEBC0 46FF020C */  jal        func_800BFD18
    /* AF3C4 800BEBC4 01000424 */   addiu     $a0, $zero, 0x1
    /* AF3C8 800BEBC8 01001026 */  addiu      $s0, $s0, 0x1
    /* AF3CC 800BEBCC 1080033C */  lui        $v1, %hi(D_800FB578)
    /* AF3D0 800BEBD0 78B56380 */  lb         $v1, %lo(D_800FB578)($v1)
    /* AF3D4 800BEBD4 FFFF0232 */  andi       $v0, $s0, 0xFFFF
    /* AF3D8 800BEBD8 2A104300 */  slt        $v0, $v0, $v1
    /* AF3DC 800BEBDC ABFF4014 */  bnez       $v0, .L800BEA8C
    /* AF3E0 800BEBE0 1000A427 */   addiu     $a0, $sp, 0x10
  .L800BEBE4:
    /* AF3E4 800BEBE4 0F80023C */  lui        $v0, %hi(D_800E81B8)
    /* AF3E8 800BEBE8 B8814224 */  addiu      $v0, $v0, %lo(D_800E81B8)
    /* AF3EC 800BEBEC FF3F0324 */  addiu      $v1, $zero, 0x3FFF
    /* AF3F0 800BEBF0 000040AC */  sw         $zero, 0x0($v0)
    /* AF3F4 800BEBF4 080043A4 */  sh         $v1, 0x8($v0)
    /* AF3F8 800BEBF8 0A0043A4 */  sh         $v1, 0xA($v0)
    /* AF3FC 800BEBFC 040040AC */  sw         $zero, 0x4($v0)
    /* AF400 800BEC00 80000224 */  addiu      $v0, $zero, 0x80
    /* AF404 800BEC04 0E80013C */  lui        $at, %hi(D_800E75F8)
    /* AF408 800BEC08 F87520A4 */  sh         $zero, %lo(D_800E75F8)($at)
    /* AF40C 800BEC0C 0E80013C */  lui        $at, %hi(D_800E75FA)
    /* AF410 800BEC10 FA7520A4 */  sh         $zero, %lo(D_800E75FA)($at)
    /* AF414 800BEC14 1180013C */  lui        $at, %hi(D_8010CE6C)
    /* AF418 800BEC18 6CCE20A4 */  sh         $zero, %lo(D_8010CE6C)($at)
    /* AF41C 800BEC1C 0E80013C */  lui        $at, %hi(D_800E75FC)
    /* AF420 800BEC20 FC7520A4 */  sh         $zero, %lo(D_800E75FC)($at)
    /* AF424 800BEC24 0E80013C */  lui        $at, %hi(D_800E75FE)
    /* AF428 800BEC28 FE7520A4 */  sh         $zero, %lo(D_800E75FE)($at)
    /* AF42C 800BEC2C 0E80013C */  lui        $at, %hi(D_800E7600)
    /* AF430 800BEC30 007620A4 */  sh         $zero, %lo(D_800E7600)($at)
    /* AF434 800BEC34 0E80013C */  lui        $at, %hi(D_800E764C)
    /* AF438 800BEC38 4C7620A4 */  sh         $zero, %lo(D_800E764C)($at)
    /* AF43C 800BEC3C 1180013C */  lui        $at, %hi(D_8010A5A0)
    /* AF440 800BEC40 A0A520A0 */  sb         $zero, %lo(D_8010A5A0)($at)
    /* AF444 800BEC44 0F80013C */  lui        $at, %hi(D_800F0F70)
    /* AF448 800BEC48 700F20A4 */  sh         $zero, %lo(D_800F0F70)($at)
    /* AF44C 800BEC4C 0F80013C */  lui        $at, %hi(D_800F106C)
    /* AF450 800BEC50 2AF9020C */  jal        func_800BE4A8
    /* AF454 800BEC54 6C1022A4 */   sh        $v0, %lo(D_800F106C)($at)
    /* AF458 800BEC58 6800BF8F */  lw         $ra, 0x68($sp)
    /* AF45C 800BEC5C 6400B58F */  lw         $s5, 0x64($sp)
    /* AF460 800BEC60 6000B48F */  lw         $s4, 0x60($sp)
    /* AF464 800BEC64 5C00B38F */  lw         $s3, 0x5C($sp)
    /* AF468 800BEC68 5800B28F */  lw         $s2, 0x58($sp)
    /* AF46C 800BEC6C 5400B18F */  lw         $s1, 0x54($sp)
    /* AF470 800BEC70 5000B08F */  lw         $s0, 0x50($sp)
    /* AF474 800BEC74 0800E003 */  jr         $ra
    /* AF478 800BEC78 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_800BE938
    /* AF47C 800BEC7C 00000000 */  nop
    /* AF480 800BEC80 00000000 */  nop
    /* AF484 800BEC84 00000000 */  nop
