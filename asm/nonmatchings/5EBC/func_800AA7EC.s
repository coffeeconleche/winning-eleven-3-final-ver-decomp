nonmatching func_800AA7EC, 0x1E0

glabel func_800AA7EC
    /* 9AFEC 800AA7EC 04008397 */  lhu        $v1, %gp_rel(D_800E6A90)($gp)
    /* 9AFF0 800AA7F0 D1070234 */  ori        $v0, $zero, 0x7D1
    /* 9AFF4 800AA7F4 06006214 */  bne        $v1, $v0, .L800AA810
    /* 9AFF8 800AA7F8 F8FFBD27 */   addiu     $sp, $sp, -0x8
    /* 9AFFC 800AA7FC 70000234 */  ori        $v0, $zero, 0x70
    /* 9B000 800AA800 400183AF */  sw         $v1, %gp_rel(D_800E6BCC)($gp)
    /* 9B004 800AA804 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9B008 800AA808 C80080A7 */  sh         $zero, %gp_rel(D_800E6B54)($gp)
    /* 9B00C 800AA80C 040080A7 */  sh         $zero, %gp_rel(D_800E6A90)($gp)
  .L800AA810:
    /* 9B010 800AA810 0C008487 */  lh         $a0, %gp_rel(D_800E6A98)($gp)
    /* 9B014 800AA814 0D80033C */  lui        $v1, %hi(D_800CE7B8)
    /* 9B018 800AA818 B8E76324 */  addiu      $v1, $v1, %lo(D_800CE7B8)
    /* 9B01C 800AA81C 40100400 */  sll        $v0, $a0, 1
    /* 9B020 800AA820 21284300 */  addu       $a1, $v0, $v1
    /* 9B024 800AA824 0000A394 */  lhu        $v1, 0x0($a1)
    /* 9B028 800AA828 00000000 */  nop
    /* 9B02C 800AA82C 12006010 */  beqz       $v1, .L800AA878
    /* 9B030 800AA830 01000234 */   ori       $v0, $zero, 0x1
    /* 9B034 800AA834 F8008297 */  lhu        $v0, %gp_rel(D_800E6B84)($gp)
    /* 9B038 800AA838 00000000 */  nop
    /* 9B03C 800AA83C 38004014 */  bnez       $v0, .L800AA920
    /* 9B040 800AA840 70000234 */   ori       $v0, $zero, 0x70
    /* 9B044 800AA844 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9B048 800AA848 01008224 */  addiu      $v0, $a0, 0x1
    /* 9B04C 800AA84C 0C0082A7 */  sh         $v0, %gp_rel(D_800E6A98)($gp)
    /* 9B050 800AA850 00140200 */  sll        $v0, $v0, 16
    /* 9B054 800AA854 03140200 */  sra        $v0, $v0, 16
    /* 9B058 800AA858 20004228 */  slti       $v0, $v0, 0x20
    /* 9B05C 800AA85C 400183AF */  sw         $v1, %gp_rel(D_800E6BCC)($gp)
    /* 9B060 800AA860 C80080A7 */  sh         $zero, %gp_rel(D_800E6B54)($gp)
    /* 9B064 800AA864 2E004014 */  bnez       $v0, .L800AA920
    /* 9B068 800AA868 0000A0A4 */   sh        $zero, 0x0($a1)
    /* 9B06C 800AA86C 0C0080A7 */  sh         $zero, %gp_rel(D_800E6A98)($gp)
    /* 9B070 800AA870 48AA0208 */  j          .L800AA920
    /* 9B074 800AA874 00000000 */   nop
  .L800AA878:
    /* 9B078 800AA878 0E80033C */  lui        $v1, %hi(D_800E6BD8)
    /* 9B07C 800AA87C D86B6390 */  lbu        $v1, %lo(D_800E6BD8)($v1)
    /* 9B080 800AA880 00000000 */  nop
    /* 9B084 800AA884 0B006214 */  bne        $v1, $v0, .L800AA8B4
    /* 9B088 800AA888 00000000 */   nop
    /* 9B08C 800AA88C 0800828F */  lw         $v0, %gp_rel(D_800E6A94)($gp)
    /* 9B090 800AA890 00000000 */  nop
    /* 9B094 800AA894 07004010 */  beqz       $v0, .L800AA8B4
    /* 9B098 800AA898 00000000 */   nop
    /* 9B09C 800AA89C 0800838F */  lw         $v1, %gp_rel(D_800E6A94)($gp)
    /* 9B0A0 800AA8A0 70000234 */  ori        $v0, $zero, 0x70
    /* 9B0A4 800AA8A4 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9B0A8 800AA8A8 C80080A7 */  sh         $zero, %gp_rel(D_800E6B54)($gp)
    /* 9B0AC 800AA8AC 080080AF */  sw         $zero, %gp_rel(D_800E6A94)($gp)
    /* 9B0B0 800AA8B0 400183AF */  sw         $v1, %gp_rel(D_800E6BCC)($gp)
  .L800AA8B4:
    /* 9B0B4 800AA8B4 F8008297 */  lhu        $v0, %gp_rel(D_800E6B84)($gp)
    /* 9B0B8 800AA8B8 00000000 */  nop
    /* 9B0BC 800AA8BC 0B004014 */  bnez       $v0, .L800AA8EC
    /* 9B0C0 800AA8C0 00000000 */   nop
    /* 9B0C4 800AA8C4 0800828F */  lw         $v0, %gp_rel(D_800E6A94)($gp)
    /* 9B0C8 800AA8C8 00000000 */  nop
    /* 9B0CC 800AA8CC 07004010 */  beqz       $v0, .L800AA8EC
    /* 9B0D0 800AA8D0 00000000 */   nop
    /* 9B0D4 800AA8D4 0800838F */  lw         $v1, %gp_rel(D_800E6A94)($gp)
    /* 9B0D8 800AA8D8 70000234 */  ori        $v0, $zero, 0x70
    /* 9B0DC 800AA8DC F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9B0E0 800AA8E0 C80080A7 */  sh         $zero, %gp_rel(D_800E6B54)($gp)
    /* 9B0E4 800AA8E4 080080AF */  sw         $zero, %gp_rel(D_800E6A94)($gp)
    /* 9B0E8 800AA8E8 400183AF */  sw         $v1, %gp_rel(D_800E6BCC)($gp)
  .L800AA8EC:
    /* 9B0EC 800AA8EC F8008297 */  lhu        $v0, %gp_rel(D_800E6B84)($gp)
    /* 9B0F0 800AA8F0 00000000 */  nop
    /* 9B0F4 800AA8F4 0A004014 */  bnez       $v0, .L800AA920
    /* 9B0F8 800AA8F8 00000000 */   nop
    /* 9B0FC 800AA8FC 04008297 */  lhu        $v0, %gp_rel(D_800E6A90)($gp)
    /* 9B100 800AA900 00000000 */  nop
    /* 9B104 800AA904 06004010 */  beqz       $v0, .L800AA920
    /* 9B108 800AA908 00000000 */   nop
    /* 9B10C 800AA90C 400182AF */  sw         $v0, %gp_rel(D_800E6BCC)($gp)
    /* 9B110 800AA910 70000234 */  ori        $v0, $zero, 0x70
    /* 9B114 800AA914 F80082A7 */  sh         $v0, %gp_rel(D_800E6B84)($gp)
    /* 9B118 800AA918 C80080A7 */  sh         $zero, %gp_rel(D_800E6B54)($gp)
    /* 9B11C 800AA91C 040080A7 */  sh         $zero, %gp_rel(D_800E6A90)($gp)
  .L800AA920:
    /* 9B120 800AA920 0E80013C */  lui        $at, %hi(D_800E6B86)
    /* 9B124 800AA924 866B20A4 */  sh         $zero, %lo(D_800E6B86)($at)
    /* 9B128 800AA928 21200000 */  addu       $a0, $zero, $zero
    /* 9B12C 800AA92C 0D80033C */  lui        $v1, %hi(D_800CE7B8)
    /* 9B130 800AA930 B8E76324 */  addiu      $v1, $v1, %lo(D_800CE7B8)
  .L800AA934:
    /* 9B134 800AA934 00006294 */  lhu        $v0, 0x0($v1)
    /* 9B138 800AA938 00000000 */  nop
    /* 9B13C 800AA93C 07004010 */  beqz       $v0, .L800AA95C
    /* 9B140 800AA940 02006324 */   addiu     $v1, $v1, 0x2
    /* 9B144 800AA944 0E80023C */  lui        $v0, %hi(D_800E6B86)
    /* 9B148 800AA948 866B4294 */  lhu        $v0, %lo(D_800E6B86)($v0)
    /* 9B14C 800AA94C 00000000 */  nop
    /* 9B150 800AA950 01004224 */  addiu      $v0, $v0, 0x1
    /* 9B154 800AA954 0E80013C */  lui        $at, %hi(D_800E6B86)
    /* 9B158 800AA958 866B22A4 */  sh         $v0, %lo(D_800E6B86)($at)
  .L800AA95C:
    /* 9B15C 800AA95C 01008424 */  addiu      $a0, $a0, 0x1
    /* 9B160 800AA960 18008228 */  slti       $v0, $a0, 0x18
    /* 9B164 800AA964 F3FF4014 */  bnez       $v0, .L800AA934
    /* 9B168 800AA968 01000234 */   ori       $v0, $zero, 0x1
    /* 9B16C 800AA96C 1180033C */  lui        $v1, %hi(D_8010A5D7)
    /* 9B170 800AA970 D7A56390 */  lbu        $v1, %lo(D_8010A5D7)($v1)
    /* 9B174 800AA974 00000000 */  nop
    /* 9B178 800AA978 07006214 */  bne        $v1, $v0, .L800AA998
    /* 9B17C 800AA97C 00000000 */   nop
    /* 9B180 800AA980 0E80023C */  lui        $v0, %hi(D_800E6B86)
    /* 9B184 800AA984 866B4294 */  lhu        $v0, %lo(D_800E6B86)($v0)
    /* 9B188 800AA988 00000000 */  nop
    /* 9B18C 800AA98C 01004224 */  addiu      $v0, $v0, 0x1
    /* 9B190 800AA990 0E80013C */  lui        $at, %hi(D_800E6B86)
    /* 9B194 800AA994 866B22A4 */  sh         $v0, %lo(D_800E6B86)($at)
  .L800AA998:
    /* 9B198 800AA998 F8008297 */  lhu        $v0, %gp_rel(D_800E6B84)($gp)
    /* 9B19C 800AA99C 00000000 */  nop
    /* 9B1A0 800AA9A0 07004010 */  beqz       $v0, .L800AA9C0
    /* 9B1A4 800AA9A4 00000000 */   nop
    /* 9B1A8 800AA9A8 0E80023C */  lui        $v0, %hi(D_800E6B86)
    /* 9B1AC 800AA9AC 866B4294 */  lhu        $v0, %lo(D_800E6B86)($v0)
    /* 9B1B0 800AA9B0 00000000 */  nop
    /* 9B1B4 800AA9B4 01004224 */  addiu      $v0, $v0, 0x1
    /* 9B1B8 800AA9B8 0E80013C */  lui        $at, %hi(D_800E6B86)
    /* 9B1BC 800AA9BC 866B22A4 */  sh         $v0, %lo(D_800E6B86)($at)
  .L800AA9C0:
    /* 9B1C0 800AA9C0 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 9B1C4 800AA9C4 0800E003 */  jr         $ra
    /* 9B1C8 800AA9C8 00000000 */   nop
endlabel func_800AA7EC
