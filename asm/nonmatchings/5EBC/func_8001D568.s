nonmatching func_8001D568, 0x140

glabel func_8001D568
    /* DD68 8001D568 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* DD6C 8001D56C 1000B0AF */  sw         $s0, 0x10($sp)
    /* DD70 8001D570 21808000 */  addu       $s0, $a0, $zero
    /* DD74 8001D574 1400BFAF */  sw         $ra, 0x14($sp)
    /* DD78 8001D578 0E000392 */  lbu        $v1, 0xE($s0)
    /* DD7C 8001D57C C0010224 */  addiu      $v0, $zero, 0x1C0
    /* DD80 8001D580 23184300 */  subu       $v1, $v0, $v1
    /* DD84 8001D584 02006104 */  bgez       $v1, .L8001D590
    /* DD88 8001D588 21106000 */   addu      $v0, $v1, $zero
    /* DD8C 8001D58C FF006224 */  addiu      $v0, $v1, 0xFF
  .L8001D590:
    /* DD90 8001D590 03120200 */  sra        $v0, $v0, 8
    /* DD94 8001D594 00120200 */  sll        $v0, $v0, 8
    /* DD98 8001D598 23106200 */  subu       $v0, $v1, $v0
    /* DD9C 8001D59C 08000386 */  lh         $v1, 0x8($s0)
    /* DDA0 8001D5A0 00110200 */  sll        $v0, $v0, 4
    /* DDA4 8001D5A4 160002A6 */  sh         $v0, 0x16($s0)
    /* DDA8 8001D5A8 801F013C */  lui        $at, (0x1F80013C >> 16)
    /* DDAC 8001D5AC 3C0123AC */  sw         $v1, (0x1F80013C & 0xFFFF)($at)
    /* DDB0 8001D5B0 0A000286 */  lh         $v0, 0xA($s0)
    /* DDB4 8001D5B4 801F013C */  lui        $at, (0x1F800140 >> 16)
    /* DDB8 8001D5B8 400122AC */  sw         $v0, (0x1F800140 & 0xFFFF)($at)
    /* DDBC 8001D5BC 0C000286 */  lh         $v0, 0xC($s0)
    /* DDC0 8001D5C0 801F013C */  lui        $at, (0x1F800144 >> 16)
    /* DDC4 8001D5C4 440122AC */  sw         $v0, (0x1F800144 & 0xFFFF)($at)
    /* DDC8 8001D5C8 14000296 */  lhu        $v0, 0x14($s0)
    /* DDCC 8001D5CC 801F013C */  lui        $at, (0x1F800124 >> 16)
    /* DDD0 8001D5D0 240122A4 */  sh         $v0, (0x1F800124 & 0xFFFF)($at)
    /* DDD4 8001D5D4 16000296 */  lhu        $v0, 0x16($s0)
    /* DDD8 8001D5D8 801F013C */  lui        $at, (0x1F800126 >> 16)
    /* DDDC 8001D5DC 260122A4 */  sh         $v0, (0x1F800126 & 0xFFFF)($at)
    /* DDE0 8001D5E0 18000296 */  lhu        $v0, 0x18($s0)
    /* DDE4 8001D5E4 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* DDE8 8001D5E8 801F013C */  lui        $at, (0x1F800128 >> 16)
    /* DDEC 8001D5EC 280122A4 */  sh         $v0, (0x1F800128 & 0xFFFF)($at)
    /* DDF0 8001D5F0 1C00028E */  lw         $v0, 0x1C($s0)
    /* DDF4 8001D5F4 24018434 */  ori        $a0, $a0, (0x1F800124 & 0xFFFF)
    /* DDF8 8001D5F8 801F013C */  lui        $at, (0x1F80014C >> 16)
    /* DDFC 8001D5FC 4C0122AC */  sw         $v0, (0x1F80014C & 0xFFFF)($at)
    /* DE00 8001D600 2000028E */  lw         $v0, 0x20($s0)
    /* DE04 8001D604 801F053C */  lui        $a1, (0x1F800104 >> 16)
    /* DE08 8001D608 801F013C */  lui        $at, (0x1F800150 >> 16)
    /* DE0C 8001D60C 500122AC */  sw         $v0, (0x1F800150 & 0xFFFF)($at)
    /* DE10 8001D610 2400028E */  lw         $v0, 0x24($s0)
    /* DE14 8001D614 801F013C */  lui        $at, (0x1F800154 >> 16)
    /* DE18 8001D618 540122AC */  sw         $v0, (0x1F800154 & 0xFFFF)($at)
    /* DE1C 8001D61C 22C5020C */  jal        func_800B1488
    /* DE20 8001D620 0401A534 */   ori       $a1, $a1, (0x1F800104 & 0xFFFF)
    /* DE24 8001D624 801F043C */  lui        $a0, (0x1F800104 >> 16)
    /* DE28 8001D628 04018434 */  ori        $a0, $a0, (0x1F800104 & 0xFFFF)
    /* DE2C 8001D62C 801F053C */  lui        $a1, (0x1F80014C >> 16)
    /* DE30 8001D630 D2C4020C */  jal        func_800B1348
    /* DE34 8001D634 4C01A534 */   ori       $a1, $a1, (0x1F80014C & 0xFFFF)
    /* DE38 8001D638 801F043C */  lui        $a0, (0x1F800104 >> 16)
    /* DE3C 8001D63C 04018434 */  ori        $a0, $a0, (0x1F800104 & 0xFFFF)
    /* DE40 8001D640 801F053C */  lui        $a1, (0x1F80013C >> 16)
    /* DE44 8001D644 C6C4020C */  jal        func_800B1318
    /* DE48 8001D648 3C01A534 */   ori       $a1, $a1, (0x1F80013C & 0xFFFF)
    /* DE4C 8001D64C 801F053C */  lui        $a1, (0x1F800104 >> 16)
    /* DE50 8001D650 0401A534 */  ori        $a1, $a1, (0x1F800104 & 0xFFFF)
    /* DE54 8001D654 0000A28C */  lw         $v0, 0x0($a1)
    /* DE58 8001D658 0400A38C */  lw         $v1, 0x4($a1)
    /* DE5C 8001D65C 0800A48C */  lw         $a0, 0x8($a1)
    /* DE60 8001D660 300002AE */  sw         $v0, 0x30($s0)
    /* DE64 8001D664 340003AE */  sw         $v1, 0x34($s0)
    /* DE68 8001D668 380004AE */  sw         $a0, 0x38($s0)
    /* DE6C 8001D66C 0C00A28C */  lw         $v0, 0xC($a1)
    /* DE70 8001D670 1000A38C */  lw         $v1, 0x10($a1)
    /* DE74 8001D674 1400A48C */  lw         $a0, 0x14($a1)
    /* DE78 8001D678 3C0002AE */  sw         $v0, 0x3C($s0)
    /* DE7C 8001D67C 400003AE */  sw         $v1, 0x40($s0)
    /* DE80 8001D680 440004AE */  sw         $a0, 0x44($s0)
    /* DE84 8001D684 1800A28C */  lw         $v0, 0x18($a1)
    /* DE88 8001D688 1C00A38C */  lw         $v1, 0x1C($a1)
    /* DE8C 8001D68C 480002AE */  sw         $v0, 0x48($s0)
    /* DE90 8001D690 4C0003AE */  sw         $v1, 0x4C($s0)
    /* DE94 8001D694 1400BF8F */  lw         $ra, 0x14($sp)
    /* DE98 8001D698 1000B08F */  lw         $s0, 0x10($sp)
    /* DE9C 8001D69C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* DEA0 8001D6A0 0800E003 */  jr         $ra
    /* DEA4 8001D6A4 00000000 */   nop
endlabel func_8001D568
