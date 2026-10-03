nonmatching func_8003DB88, 0x67C

glabel func_8003DB88
    /* 2E388 8003DB88 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 2E38C 8003DB8C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2E390 8003DB90 21808000 */  addu       $s0, $a0, $zero
    /* 2E394 8003DB94 3000BFAF */  sw         $ra, 0x30($sp)
    /* 2E398 8003DB98 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 2E39C 8003DB9C 2800B6AF */  sw         $s6, 0x28($sp)
    /* 2E3A0 8003DBA0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2E3A4 8003DBA4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2E3A8 8003DBA8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2E3AC 8003DBAC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2E3B0 8003DBB0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2E3B4 8003DBB4 98030292 */  lbu        $v0, 0x398($s0)
    /* 2E3B8 8003DBB8 1080043C */  lui        $a0, %hi(D_800FF748)
    /* 2E3BC 8003DBBC 48F78424 */  addiu      $a0, $a0, %lo(D_800FF748)
    /* 2E3C0 8003DBC0 801F013C */  lui        $at, (0x1F8002CF >> 16)
    /* 2E3C4 8003DBC4 21084100 */  addu       $at, $v0, $at
    /* 2E3C8 8003DBC8 CF022290 */  lbu        $v0, (0x1F8002CF & 0xFFFF)($at)
    /* 2E3CC 8003DBCC 00000000 */  nop
    /* 2E3D0 8003DBD0 59014010 */  beqz       $v0, .L8003E138
    /* 2E3D4 8003DBD4 801F163C */   lui       $s6, (0x1F8002A9 >> 16)
    /* 2E3D8 8003DBD8 801F053C */  lui        $a1, (0x1F8002A9 >> 16)
    /* 2E3DC 8003DBDC A902A590 */  lbu        $a1, (0x1F8002A9 & 0xFFFF)($a1)
    /* 2E3E0 8003DBE0 00000000 */  nop
    /* 2E3E4 8003DBE4 7B01A010 */  beqz       $a1, .L8003E1D4
    /* 2E3E8 8003DBE8 21100000 */   addu      $v0, $zero, $zero
    /* 2E3EC 8003DBEC 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 2E3F0 8003DBF0 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 2E3F4 8003DBF4 00000000 */  nop
    /* 2E3F8 8003DBF8 04004284 */  lh         $v0, 0x4($v0)
    /* 2E3FC 8003DBFC 00000000 */  nop
    /* 2E400 8003DC00 8CFF4228 */  slti       $v0, $v0, -0x74
    /* 2E404 8003DC04 73014014 */  bnez       $v0, .L8003E1D4
    /* 2E408 8003DC08 21100000 */   addu      $v0, $zero, $zero
    /* 2E40C 8003DC0C AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 2E410 8003DC10 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 2E414 8003DC14 1900A200 */  multu      $a1, $v0
    /* 2E418 8003DC18 10480000 */  mfhi       $t1
    /* 2E41C 8003DC1C 02110900 */  srl        $v0, $t1, 4
    /* 2E420 8003DC20 40180200 */  sll        $v1, $v0, 1
    /* 2E424 8003DC24 21186200 */  addu       $v1, $v1, $v0
    /* 2E428 8003DC28 C0180300 */  sll        $v1, $v1, 3
    /* 2E42C 8003DC2C 2318A300 */  subu       $v1, $a1, $v1
    /* 2E430 8003DC30 FF006330 */  andi       $v1, $v1, 0xFF
    /* 2E434 8003DC34 40110300 */  sll        $v0, $v1, 5
    /* 2E438 8003DC38 23104300 */  subu       $v0, $v0, $v1
    /* 2E43C 8003DC3C 80100200 */  sll        $v0, $v0, 2
    /* 2E440 8003DC40 21104300 */  addu       $v0, $v0, $v1
    /* 2E444 8003DC44 C0100200 */  sll        $v0, $v0, 3
    /* 2E448 8003DC48 21984400 */  addu       $s3, $v0, $a0
    /* 2E44C 8003DC4C 644B010C */  jal        func_80052D90
    /* 2E450 8003DC50 21206002 */   addu      $a0, $s3, $zero
    /* 2E454 8003DC54 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2E458 8003DC58 5E014014 */  bnez       $v0, .L8003E1D4
    /* 2E45C 8003DC5C 21100000 */   addu      $v0, $zero, $zero
    /* 2E460 8003DC60 02000486 */  lh         $a0, 0x2($s0)
    /* 2E464 8003DC64 06000586 */  lh         $a1, 0x6($s0)
    /* 2E468 8003DC68 801F063C */  lui        $a2, (0x1F800036 >> 16)
    /* 2E46C 8003DC6C 3600C684 */  lh         $a2, (0x1F800036 & 0xFFFF)($a2)
    /* 2E470 8003DC70 801F073C */  lui        $a3, (0x1F800066 >> 16)
    /* 2E474 8003DC74 6600E784 */  lh         $a3, (0x1F800066 & 0xFFFF)($a3)
    /* 2E478 8003DC78 DB6C010C */  jal        func_8005B36C
    /* 2E47C 8003DC7C 00000000 */   nop
    /* 2E480 8003DC80 801F063C */  lui        $a2, (0x1F8002F4 >> 16)
    /* 2E484 8003DC84 F402C68C */  lw         $a2, (0x1F8002F4 & 0xFFFF)($a2)
    /* 2E488 8003DC88 02000386 */  lh         $v1, 0x2($s0)
    /* 2E48C 8003DC8C 0200C584 */  lh         $a1, 0x2($a2)
    /* 2E490 8003DC90 00000000 */  nop
    /* 2E494 8003DC94 23186500 */  subu       $v1, $v1, $a1
    /* 2E498 8003DC98 18006300 */  mult       $v1, $v1
    /* 2E49C 8003DC9C 0600C484 */  lh         $a0, 0x6($a2)
    /* 2E4A0 8003DCA0 06000386 */  lh         $v1, 0x6($s0)
    /* 2E4A4 8003DCA4 12400000 */  mflo       $t0
    /* 2E4A8 8003DCA8 23186400 */  subu       $v1, $v1, $a0
    /* 2E4AC 8003DCAC 00000000 */  nop
    /* 2E4B0 8003DCB0 18006300 */  mult       $v1, $v1
    /* 2E4B4 8003DCB4 02006386 */  lh         $v1, 0x2($s3)
    /* 2E4B8 8003DCB8 12380000 */  mflo       $a3
    /* 2E4BC 8003DCBC 23186500 */  subu       $v1, $v1, $a1
    /* 2E4C0 8003DCC0 00000000 */  nop
    /* 2E4C4 8003DCC4 18006300 */  mult       $v1, $v1
    /* 2E4C8 8003DCC8 06006386 */  lh         $v1, 0x6($s3)
    /* 2E4CC 8003DCCC 12280000 */  mflo       $a1
    /* 2E4D0 8003DCD0 23186400 */  subu       $v1, $v1, $a0
    /* 2E4D4 8003DCD4 00000000 */  nop
    /* 2E4D8 8003DCD8 18006300 */  mult       $v1, $v1
    /* 2E4DC 8003DCDC 21904000 */  addu       $s2, $v0, $zero
    /* 2E4E0 8003DCE0 21A00701 */  addu       $s4, $t0, $a3
    /* 2E4E4 8003DCE4 00408226 */  addiu      $v0, $s4, 0x4000
    /* 2E4E8 8003DCE8 12180000 */  mflo       $v1
    /* 2E4EC 8003DCEC 2188A300 */  addu       $s1, $a1, $v1
    /* 2E4F0 8003DCF0 2B105100 */  sltu       $v0, $v0, $s1
    /* 2E4F4 8003DCF4 37014014 */  bnez       $v0, .L8003E1D4
    /* 2E4F8 8003DCF8 21100000 */   addu      $v0, $zero, $zero
    /* 2E4FC 8003DCFC A403C290 */  lbu        $v0, 0x3A4($a2)
    /* 2E500 8003DD00 00000000 */  nop
    /* 2E504 8003DD04 23105200 */  subu       $v0, $v0, $s2
    /* 2E508 8003DD08 21A84000 */  addu       $s5, $v0, $zero
    /* 2E50C 8003DD0C B8FF4224 */  addiu      $v0, $v0, -0x48
    /* 2E510 8003DD10 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2E514 8003DD14 7100422C */  sltiu      $v0, $v0, 0x71
    /* 2E518 8003DD18 16004014 */  bnez       $v0, .L8003DD74
    /* 2E51C 8003DD1C 00000000 */   nop
    /* 2E520 8003DD20 A003628E */  lw         $v0, 0x3A0($s3)
    /* 2E524 8003DD24 00000000 */  nop
    /* 2E528 8003DD28 2900422C */  sltiu      $v0, $v0, 0x29
    /* 2E52C 8003DD2C 11004014 */  bnez       $v0, .L8003DD74
    /* 2E530 8003DD30 00000000 */   nop
    /* 2E534 8003DD34 A803C490 */  lbu        $a0, 0x3A8($a2)
    /* 2E538 8003DD38 00000000 */  nop
    /* 2E53C 8003DD3C 23109200 */  subu       $v0, $a0, $s2
    /* 2E540 8003DD40 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2E544 8003DD44 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2E548 8003DD48 08004014 */  bnez       $v0, .L8003DD6C
    /* 2E54C 8003DD4C 60006228 */   slti      $v0, $v1, 0x60
    /* 2E550 8003DD50 23104402 */  subu       $v0, $s2, $a0
    /* 2E554 8003DD54 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2E558 8003DD58 60004228 */  slti       $v0, $v0, 0x60
    /* 2E55C 8003DD5C 05004010 */  beqz       $v0, .L8003DD74
    /* 2E560 8003DD60 0400023C */   lui       $v0, (0x40000 >> 16)
    /* 2E564 8003DD64 20F80008 */  j          .L8003E080
    /* 2E568 8003DD68 00000000 */   nop
  .L8003DD6C:
    /* 2E56C 8003DD6C C4004014 */  bnez       $v0, .L8003E080
    /* 2E570 8003DD70 0400023C */   lui       $v0, (0x40000 >> 16)
  .L8003DD74:
    /* 2E574 8003DD74 AA030492 */  lbu        $a0, 0x3AA($s0)
    /* 2E578 8003DD78 00000000 */  nop
    /* 2E57C 8003DD7C 23104402 */  subu       $v0, $s2, $a0
    /* 2E580 8003DD80 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2E584 8003DD84 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2E588 8003DD88 04004014 */  bnez       $v0, .L8003DD9C
    /* 2E58C 8003DD8C 23109200 */   subu      $v0, $a0, $s2
    /* 2E590 8003DD90 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2E594 8003DD94 68F70008 */  j          .L8003DDA0
    /* 2E598 8003DD98 31004228 */   slti      $v0, $v0, 0x31
  .L8003DD9C:
    /* 2E59C 8003DD9C 31006228 */  slti       $v0, $v1, 0x31
  .L8003DDA0:
    /* 2E5A0 8003DDA0 0C014010 */  beqz       $v0, .L8003E1D4
    /* 2E5A4 8003DDA4 21100000 */   addu      $v0, $zero, $zero
    /* 2E5A8 8003DDA8 A4030492 */  lbu        $a0, 0x3A4($s0)
    /* 2E5AC 8003DDAC 00000000 */  nop
    /* 2E5B0 8003DDB0 23189200 */  subu       $v1, $a0, $s2
    /* 2E5B4 8003DDB4 FF006230 */  andi       $v0, $v1, 0xFF
    /* 2E5B8 8003DDB8 8100422C */  sltiu      $v0, $v0, 0x81
    /* 2E5BC 8003DDBC 02004014 */  bnez       $v0, .L8003DDC8
    /* 2E5C0 8003DDC0 21A86000 */   addu      $s5, $v1, $zero
    /* 2E5C4 8003DDC4 23A84402 */  subu       $s5, $s2, $a0
  .L8003DDC8:
    /* 2E5C8 8003DDC8 A003028E */  lw         $v0, 0x3A0($s0)
    /* 2E5CC 8003DDCC 00000000 */  nop
    /* 2E5D0 8003DDD0 3100422C */  sltiu      $v0, $v0, 0x31
    /* 2E5D4 8003DDD4 04004014 */  bnez       $v0, .L8003DDE8
    /* 2E5D8 8003DDD8 28000424 */   addiu     $a0, $zero, 0x28
    /* 2E5DC 8003DDDC 32000424 */  addiu      $a0, $zero, 0x32
    /* 2E5E0 8003DDE0 7BF70008 */  j          .L8003DDEC
    /* 2E5E4 8003DDE4 21B80000 */   addu      $s7, $zero, $zero
  .L8003DDE8:
    /* 2E5E8 8003DDE8 01001724 */  addiu      $s7, $zero, 0x1
  .L8003DDEC:
    /* 2E5EC 8003DDEC A4030292 */  lbu        $v0, 0x3A4($s0)
    /* 2E5F0 8003DDF0 00000000 */  nop
    /* 2E5F4 8003DDF4 23105200 */  subu       $v0, $v0, $s2
    /* 2E5F8 8003DDF8 80FF4524 */  addiu      $a1, $v0, -0x80
    /* 2E5FC 8003DDFC FF00A330 */  andi       $v1, $a1, 0xFF
    /* 2E600 8003DE00 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2E604 8003DE04 04004014 */  bnez       $v0, .L8003DE18
    /* 2E608 8003DE08 18008300 */   mult      $a0, $v1
    /* 2E60C 8003DE0C 23100500 */  negu       $v0, $a1
    /* 2E610 8003DE10 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2E614 8003DE14 18008200 */  mult       $a0, $v0
  .L8003DE18:
    /* 2E618 8003DE18 12480000 */  mflo       $t1
    /* 2E61C 8003DE1C C2210900 */  srl        $a0, $t1, 7
    /* 2E620 8003DE20 3C00C396 */  lhu        $v1, (0x1F80003C & 0xFFFF)($s6)
    /* 2E624 8003DE24 02000286 */  lh         $v0, 0x2($s0)
    /* 2E628 8003DE28 001C0300 */  sll        $v1, $v1, 16
    /* 2E62C 8003DE2C 031C0300 */  sra        $v1, $v1, 16
    /* 2E630 8003DE30 23104300 */  subu       $v0, $v0, $v1
    /* 2E634 8003DE34 18004200 */  mult       $v0, $v0
    /* 2E638 8003DE38 6C00C396 */  lhu        $v1, (0x1F80006C & 0xFFFF)($s6)
    /* 2E63C 8003DE3C 06000286 */  lh         $v0, 0x6($s0)
    /* 2E640 8003DE40 001C0300 */  sll        $v1, $v1, 16
    /* 2E644 8003DE44 12280000 */  mflo       $a1
    /* 2E648 8003DE48 031C0300 */  sra        $v1, $v1, 16
    /* 2E64C 8003DE4C 23104300 */  subu       $v0, $v0, $v1
    /* 2E650 8003DE50 18004200 */  mult       $v0, $v0
    /* 2E654 8003DE54 80100400 */  sll        $v0, $a0, 2
    /* 2E658 8003DE58 A0005124 */  addiu      $s1, $v0, 0xA0
    /* 2E65C 8003DE5C 12180000 */  mflo       $v1
    /* 2E660 8003DE60 4AC4020C */  jal        func_800B1128
    /* 2E664 8003DE64 2120A300 */   addu      $a0, $a1, $v1
    /* 2E668 8003DE68 21A04000 */  addu       $s4, $v0, $zero
    /* 2E66C 8003DE6C 2B109102 */  sltu       $v0, $s4, $s1
    /* 2E670 8003DE70 12004014 */  bnez       $v0, .L8003DEBC
    /* 2E674 8003DE74 00000000 */   nop
    /* 2E678 8003DE78 02000286 */  lh         $v0, 0x2($s0)
    /* 2E67C 8003DE7C 02006386 */  lh         $v1, 0x2($s3)
    /* 2E680 8003DE80 00000000 */  nop
    /* 2E684 8003DE84 23104300 */  subu       $v0, $v0, $v1
    /* 2E688 8003DE88 18004200 */  mult       $v0, $v0
    /* 2E68C 8003DE8C 06000286 */  lh         $v0, 0x6($s0)
    /* 2E690 8003DE90 06006386 */  lh         $v1, 0x6($s3)
    /* 2E694 8003DE94 12200000 */  mflo       $a0
    /* 2E698 8003DE98 23104300 */  subu       $v0, $v0, $v1
    /* 2E69C 8003DE9C 00000000 */  nop
    /* 2E6A0 8003DEA0 18004200 */  mult       $v0, $v0
    /* 2E6A4 8003DEA4 FF8F0234 */  ori        $v0, $zero, 0x8FFF
    /* 2E6A8 8003DEA8 12180000 */  mflo       $v1
    /* 2E6AC 8003DEAC 21188300 */  addu       $v1, $a0, $v1
    /* 2E6B0 8003DEB0 2A104300 */  slt        $v0, $v0, $v1
    /* 2E6B4 8003DEB4 C7004014 */  bnez       $v0, .L8003E1D4
    /* 2E6B8 8003DEB8 21100000 */   addu      $v0, $zero, $zero
  .L8003DEBC:
    /* 2E6BC 8003DEBC D10300A2 */  sb         $zero, 0x3D1($s0)
    /* 2E6C0 8003DEC0 A902C392 */  lbu        $v1, (0x1F8002A9 & 0xFFFF)($s6)
    /* 2E6C4 8003DEC4 92030492 */  lbu        $a0, 0x392($s0)
    /* 2E6C8 8003DEC8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E6CC 8003DECC C40302A6 */  sh         $v0, 0x3C4($s0)
    /* 2E6D0 8003DED0 C80300A6 */  sh         $zero, 0x3C8($s0)
    /* 2E6D4 8003DED4 C20303A6 */  sh         $v1, 0x3C2($s0)
    /* 2E6D8 8003DED8 40180400 */  sll        $v1, $a0, 1
    /* 2E6DC 8003DEDC 21186400 */  addu       $v1, $v1, $a0
    /* 2E6E0 8003DEE0 98030492 */  lbu        $a0, 0x398($s0)
    /* 2E6E4 8003DEE4 80180300 */  sll        $v1, $v1, 2
    /* 2E6E8 8003DEE8 40110400 */  sll        $v0, $a0, 5
    /* 2E6EC 8003DEEC 21104400 */  addu       $v0, $v0, $a0
    /* 2E6F0 8003DEF0 C0100200 */  sll        $v0, $v0, 3
    /* 2E6F4 8003DEF4 21186200 */  addu       $v1, $v1, $v0
    /* 2E6F8 8003DEF8 1180013C */  lui        $at, %hi(D_8010C330)
    /* 2E6FC 8003DEFC 21082300 */  addu       $at, $at, $v1
    /* 2E700 8003DF00 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 2E704 8003DF04 00000000 */  nop
    /* 2E708 8003DF08 02110200 */  srl        $v0, $v0, 4
    /* 2E70C 8003DF0C 01004230 */  andi       $v0, $v0, 0x1
    /* 2E710 8003DF10 AC0302A2 */  sb         $v0, 0x3AC($s0)
    /* 2E714 8003DF14 FF00A232 */  andi       $v0, $s5, 0xFF
    /* 2E718 8003DF18 7D004228 */  slti       $v0, $v0, 0x7D
    /* 2E71C 8003DF1C 05004010 */  beqz       $v0, .L8003DF34
    /* 2E720 8003DF20 0A000224 */   addiu     $v0, $zero, 0xA
    /* 2E724 8003DF24 96036392 */  lbu        $v1, 0x396($s3)
    /* 2E728 8003DF28 00000000 */  nop
    /* 2E72C 8003DF2C 03006214 */  bne        $v1, $v0, .L8003DF3C
    /* 2E730 8003DF30 00000000 */   nop
  .L8003DF34:
    /* 2E734 8003DF34 D9F70008 */  j          .L8003DF64
    /* 2E738 8003DF38 AB0312A2 */   sb        $s2, 0x3AB($s0)
  .L8003DF3C:
    /* 2E73C 8003DF3C 02000486 */  lh         $a0, 0x2($s0)
    /* 2E740 8003DF40 3E00C696 */  lhu        $a2, (0x1F80003E & 0xFFFF)($s6)
    /* 2E744 8003DF44 06000586 */  lh         $a1, 0x6($s0)
    /* 2E748 8003DF48 6E00C796 */  lhu        $a3, (0x1F80006E & 0xFFFF)($s6)
    /* 2E74C 8003DF4C 00340600 */  sll        $a2, $a2, 16
    /* 2E750 8003DF50 03340600 */  sra        $a2, $a2, 16
    /* 2E754 8003DF54 003C0700 */  sll        $a3, $a3, 16
    /* 2E758 8003DF58 DB6C010C */  jal        func_8005B36C
    /* 2E75C 8003DF5C 033C0700 */   sra       $a3, $a3, 16
    /* 2E760 8003DF60 AB0302A2 */  sb         $v0, 0x3AB($s0)
  .L8003DF64:
    /* 2E764 8003DF64 21200002 */  addu       $a0, $s0, $zero
    /* 2E768 8003DF68 0B000524 */  addiu      $a1, $zero, 0xB
    /* 2E76C 8003DF6C 8C6E010C */  jal        func_8005BA30
    /* 2E770 8003DF70 21300000 */   addu      $a2, $zero, $zero
    /* 2E774 8003DF74 A000822E */  sltiu      $v0, $s4, 0xA0
    /* 2E778 8003DF78 07004014 */  bnez       $v0, .L8003DF98
    /* 2E77C 8003DF7C 21200000 */   addu      $a0, $zero, $zero
    /* 2E780 8003DF80 60FF8226 */  addiu      $v0, $s4, -0xA0
    /* 2E784 8003DF84 82200200 */  srl        $a0, $v0, 2
    /* 2E788 8003DF88 3300822C */  sltiu      $v0, $a0, 0x33
    /* 2E78C 8003DF8C 02004014 */  bnez       $v0, .L8003DF98
    /* 2E790 8003DF90 00000000 */   nop
    /* 2E794 8003DF94 32000424 */  addiu      $a0, $zero, 0x32
  .L8003DF98:
    /* 2E798 8003DF98 C60304A6 */  sh         $a0, 0x3C6($s0)
    /* 2E79C 8003DF9C 1900E016 */  bnez       $s7, .L8003E004
    /* 2E7A0 8003DFA0 A00304AE */   sw        $a0, 0x3A0($s0)
    /* 2E7A4 8003DFA4 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 2E7A8 8003DFA8 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 2E7AC 8003DFAC F36D010C */  jal        func_8005B7CC
    /* 2E7B0 8003DFB0 0C000624 */   addiu     $a2, $zero, 0xC
    /* 2E7B4 8003DFB4 92030492 */  lbu        $a0, 0x392($s0)
    /* 2E7B8 8003DFB8 AA0302A2 */  sb         $v0, 0x3AA($s0)
    /* 2E7BC 8003DFBC 40180400 */  sll        $v1, $a0, 1
    /* 2E7C0 8003DFC0 21186400 */  addu       $v1, $v1, $a0
    /* 2E7C4 8003DFC4 98030492 */  lbu        $a0, 0x398($s0)
    /* 2E7C8 8003DFC8 80180300 */  sll        $v1, $v1, 2
    /* 2E7CC 8003DFCC 40110400 */  sll        $v0, $a0, 5
    /* 2E7D0 8003DFD0 21104400 */  addu       $v0, $v0, $a0
    /* 2E7D4 8003DFD4 C0100200 */  sll        $v0, $v0, 3
    /* 2E7D8 8003DFD8 21186200 */  addu       $v1, $v1, $v0
    /* 2E7DC 8003DFDC 1180013C */  lui        $at, %hi(D_8010C328)
    /* 2E7E0 8003DFE0 21082300 */  addu       $at, $at, $v1
    /* 2E7E4 8003DFE4 28C3228C */  lw         $v0, %lo(D_8010C328)($at)
    /* 2E7E8 8003DFE8 00000000 */  nop
    /* 2E7EC 8003DFEC 02170200 */  srl        $v0, $v0, 28
    /* 2E7F0 8003DFF0 0C80013C */  lui        $at, %hi(D_800C6D00)
    /* 2E7F4 8003DFF4 21082200 */  addu       $at, $at, $v0
    /* 2E7F8 8003DFF8 006D2290 */  lbu        $v0, %lo(D_800C6D00)($at)
    /* 2E7FC 8003DFFC 17F80008 */  j          .L8003E05C
    /* 2E800 8003E000 FCFF4224 */   addiu     $v0, $v0, -0x4
  .L8003E004:
    /* 2E804 8003E004 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 2E808 8003E008 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 2E80C 8003E00C F36D010C */  jal        func_8005B7CC
    /* 2E810 8003E010 06000624 */   addiu     $a2, $zero, 0x6
    /* 2E814 8003E014 92030492 */  lbu        $a0, 0x392($s0)
    /* 2E818 8003E018 AA0302A2 */  sb         $v0, 0x3AA($s0)
    /* 2E81C 8003E01C 40180400 */  sll        $v1, $a0, 1
    /* 2E820 8003E020 21186400 */  addu       $v1, $v1, $a0
    /* 2E824 8003E024 98030492 */  lbu        $a0, 0x398($s0)
    /* 2E828 8003E028 80180300 */  sll        $v1, $v1, 2
    /* 2E82C 8003E02C 40110400 */  sll        $v0, $a0, 5
    /* 2E830 8003E030 21104400 */  addu       $v0, $v0, $a0
    /* 2E834 8003E034 C0100200 */  sll        $v0, $v0, 3
    /* 2E838 8003E038 21186200 */  addu       $v1, $v1, $v0
    /* 2E83C 8003E03C 1180013C */  lui        $at, %hi(D_8010C328)
    /* 2E840 8003E040 21082300 */  addu       $at, $at, $v1
    /* 2E844 8003E044 28C3228C */  lw         $v0, %lo(D_8010C328)($at)
    /* 2E848 8003E048 00000000 */  nop
    /* 2E84C 8003E04C 02170200 */  srl        $v0, $v0, 28
    /* 2E850 8003E050 0C80013C */  lui        $at, %hi(D_800C6D00)
    /* 2E854 8003E054 21082200 */  addu       $at, $at, $v0
    /* 2E858 8003E058 006D2290 */  lbu        $v0, %lo(D_800C6D00)($at)
  .L8003E05C:
    /* 2E85C 8003E05C 00000000 */  nop
    /* 2E860 8003E060 CA0302A6 */  sh         $v0, 0x3CA($s0)
    /* 2E864 8003E064 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E868 8003E068 0C000324 */  addiu      $v1, $zero, 0xC
    /* 2E86C 8003E06C 960303A2 */  sb         $v1, 0x396($s0)
    /* 2E870 8003E070 20000324 */  addiu      $v1, $zero, 0x20
    /* 2E874 8003E074 CC0300A6 */  sh         $zero, 0x3CC($s0)
    /* 2E878 8003E078 75F80008 */  j          .L8003E1D4
    /* 2E87C 8003E07C 970303A2 */   sb        $v1, 0x397($s0)
  .L8003E080:
    /* 2E880 8003E080 2B105100 */  sltu       $v0, $v0, $s1
    /* 2E884 8003E084 53004014 */  bnez       $v0, .L8003E1D4
    /* 2E888 8003E088 21100000 */   addu      $v0, $zero, $zero
    /* 2E88C 8003E08C 02000286 */  lh         $v0, 0x2($s0)
    /* 2E890 8003E090 02006386 */  lh         $v1, 0x2($s3)
    /* 2E894 8003E094 00000000 */  nop
    /* 2E898 8003E098 23104300 */  subu       $v0, $v0, $v1
    /* 2E89C 8003E09C 18004200 */  mult       $v0, $v0
    /* 2E8A0 8003E0A0 06000286 */  lh         $v0, 0x6($s0)
    /* 2E8A4 8003E0A4 06006386 */  lh         $v1, 0x6($s3)
    /* 2E8A8 8003E0A8 12280000 */  mflo       $a1
    /* 2E8AC 8003E0AC 23104300 */  subu       $v0, $v0, $v1
    /* 2E8B0 8003E0B0 00000000 */  nop
    /* 2E8B4 8003E0B4 18004200 */  mult       $v0, $v0
    /* 2E8B8 8003E0B8 A003628E */  lw         $v0, 0x3A0($s3)
    /* 2E8BC 8003E0BC A003038E */  lw         $v1, 0x3A0($s0)
    /* 2E8C0 8003E0C0 70FF4224 */  addiu      $v0, $v0, -0x90
    /* 2E8C4 8003E0C4 23186200 */  subu       $v1, $v1, $v0
    /* 2E8C8 8003E0C8 12200000 */  mflo       $a0
    /* 2E8CC 8003E0CC 7F00A232 */  andi       $v0, $s5, 0x7F
    /* 2E8D0 8003E0D0 21886200 */  addu       $s1, $v1, $v0
    /* 2E8D4 8003E0D4 18003102 */  mult       $s1, $s1
    /* 2E8D8 8003E0D8 2118A400 */  addu       $v1, $a1, $a0
    /* 2E8DC 8003E0DC 12400000 */  mflo       $t0
    /* 2E8E0 8003E0E0 2B100301 */  sltu       $v0, $t0, $v1
    /* 2E8E4 8003E0E4 04004010 */  beqz       $v0, .L8003E0F8
    /* 2E8E8 8003E0E8 00C40234 */   ori       $v0, $zero, 0xC400
    /* 2E8EC 8003E0EC 2A104300 */  slt        $v0, $v0, $v1
    /* 2E8F0 8003E0F0 38004014 */  bnez       $v0, .L8003E1D4
    /* 2E8F4 8003E0F4 21100000 */   addu      $v0, $zero, $zero
  .L8003E0F8:
    /* 2E8F8 8003E0F8 AA030492 */  lbu        $a0, 0x3AA($s0)
    /* 2E8FC 8003E0FC 00000000 */  nop
    /* 2E900 8003E100 23104402 */  subu       $v0, $s2, $a0
    /* 2E904 8003E104 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2E908 8003E108 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2E90C 8003E10C 08004014 */  bnez       $v0, .L8003E130
    /* 2E910 8003E110 49006228 */   slti      $v0, $v1, 0x49
    /* 2E914 8003E114 23109200 */  subu       $v0, $a0, $s2
    /* 2E918 8003E118 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2E91C 8003E11C 49004228 */  slti       $v0, $v0, 0x49
    /* 2E920 8003E120 2C004010 */  beqz       $v0, .L8003E1D4
    /* 2E924 8003E124 21100000 */   addu      $v0, $zero, $zero
    /* 2E928 8003E128 50F80008 */  j          .L8003E140
    /* 2E92C 8003E12C 00000000 */   nop
  .L8003E130:
    /* 2E930 8003E130 03004014 */  bnez       $v0, .L8003E140
    /* 2E934 8003E134 00000000 */   nop
  .L8003E138:
    /* 2E938 8003E138 75F80008 */  j          .L8003E1D4
    /* 2E93C 8003E13C 21100000 */   addu      $v0, $zero, $zero
  .L8003E140:
    /* 2E940 8003E140 02000486 */  lh         $a0, 0x2($s0)
    /* 2E944 8003E144 06000586 */  lh         $a1, 0x6($s0)
    /* 2E948 8003E148 D10300A2 */  sb         $zero, 0x3D1($s0)
    /* 2E94C 8003E14C A902C392 */  lbu        $v1, (0x1F8002A9 & 0xFFFF)($s6)
    /* 2E950 8003E150 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E954 8003E154 C40302A6 */  sh         $v0, 0x3C4($s0)
    /* 2E958 8003E158 0C000224 */  addiu      $v0, $zero, 0xC
    /* 2E95C 8003E15C C80300A6 */  sh         $zero, 0x3C8($s0)
    /* 2E960 8003E160 960302A2 */  sb         $v0, 0x396($s0)
    /* 2E964 8003E164 C20303A6 */  sh         $v1, 0x3C2($s0)
    /* 2E968 8003E168 02006686 */  lh         $a2, 0x2($s3)
    /* 2E96C 8003E16C 06006786 */  lh         $a3, 0x6($s3)
    /* 2E970 8003E170 DB6C010C */  jal        func_8005B36C
    /* 2E974 8003E174 00000000 */   nop
    /* 2E978 8003E178 23104202 */  subu       $v0, $s2, $v0
    /* 2E97C 8003E17C FF004230 */  andi       $v0, $v0, 0xFF
    /* 2E980 8003E180 8100422C */  sltiu      $v0, $v0, 0x81
    /* 2E984 8003E184 A003038E */  lw         $v1, 0x3A0($s0)
    /* 2E988 8003E188 B4030492 */  lbu        $a0, 0x3B4($s0)
    /* 2E98C 8003E18C 01004238 */  xori       $v0, $v0, 0x1
    /* 2E990 8003E190 AC0302A2 */  sb         $v0, 0x3AC($s0)
    /* 2E994 8003E194 C60303A6 */  sh         $v1, 0x3C6($s0)
    /* 2E998 8003E198 001C0300 */  sll        $v1, $v1, 16
    /* 2E99C 8003E19C 031C0300 */  sra        $v1, $v1, 16
    /* 2E9A0 8003E1A0 FEFF8224 */  addiu      $v0, $a0, -0x2
    /* 2E9A4 8003E1A4 2A104300 */  slt        $v0, $v0, $v1
    /* 2E9A8 8003E1A8 02004010 */  beqz       $v0, .L8003E1B4
    /* 2E9AC 8003E1AC FEFF8224 */   addiu     $v0, $a0, -0x2
    /* 2E9B0 8003E1B0 C60302A6 */  sh         $v0, 0x3C6($s0)
  .L8003E1B4:
    /* 2E9B4 8003E1B4 21200002 */  addu       $a0, $s0, $zero
    /* 2E9B8 8003E1B8 18000524 */  addiu      $a1, $zero, 0x18
    /* 2E9BC 8003E1BC 8C6E010C */  jal        func_8005BA30
    /* 2E9C0 8003E1C0 21300000 */   addu      $a2, $zero, $zero
    /* 2E9C4 8003E1C4 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E9C8 8003E1C8 10000324 */  addiu      $v1, $zero, 0x10
    /* 2E9CC 8003E1CC 970303A2 */  sb         $v1, 0x397($s0)
    /* 2E9D0 8003E1D0 CC0300A6 */  sh         $zero, 0x3CC($s0)
  .L8003E1D4:
    /* 2E9D4 8003E1D4 3000BF8F */  lw         $ra, 0x30($sp)
    /* 2E9D8 8003E1D8 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 2E9DC 8003E1DC 2800B68F */  lw         $s6, 0x28($sp)
    /* 2E9E0 8003E1E0 2400B58F */  lw         $s5, 0x24($sp)
    /* 2E9E4 8003E1E4 2000B48F */  lw         $s4, 0x20($sp)
    /* 2E9E8 8003E1E8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2E9EC 8003E1EC 1800B28F */  lw         $s2, 0x18($sp)
    /* 2E9F0 8003E1F0 1400B18F */  lw         $s1, 0x14($sp)
    /* 2E9F4 8003E1F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 2E9F8 8003E1F8 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 2E9FC 8003E1FC 0800E003 */  jr         $ra
    /* 2EA00 8003E200 00000000 */   nop
endlabel func_8003DB88
