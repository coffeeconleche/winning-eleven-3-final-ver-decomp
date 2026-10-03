nonmatching func_80197BE0, 0x98

glabel func_80197BE0
    /* EC68 80197BE0 1080033C */  lui        $v1, %hi(D_800FF748)
    /* EC6C 80197BE4 48F76324 */  addiu      $v1, $v1, %lo(D_800FF748)
    /* EC70 80197BE8 D0FF8424 */  addiu      $a0, $a0, -0x30
    /* EC74 80197BEC FF008230 */  andi       $v0, $a0, 0xFF
    /* EC78 80197BF0 0A00422C */  sltiu      $v0, $v0, 0xA
    /* EC7C 80197BF4 1E004010 */  beqz       $v0, .L80197C70
    /* EC80 80197BF8 09000224 */   addiu     $v0, $zero, 0x9
    /* EC84 80197BFC 801F013C */  lui        $at, (0x1F800168 >> 16)
    /* EC88 80197C00 680122A4 */  sh         $v0, (0x1F800168 & 0xFFFF)($at)
    /* EC8C 80197C04 FF00E230 */  andi       $v0, $a3, 0xFF
    /* EC90 80197C08 80100200 */  sll        $v0, $v0, 2
    /* EC94 80197C0C 21104300 */  addu       $v0, $v0, $v1
    /* EC98 80197C10 801F013C */  lui        $at, (0x1F80015C >> 16)
    /* EC9C 80197C14 5C0120AC */  sw         $zero, (0x1F80015C & 0xFFFF)($at)
    /* ECA0 80197C18 801F013C */  lui        $at, (0x1F800160 >> 16)
    /* ECA4 80197C1C 600125A4 */  sh         $a1, (0x1F800160 & 0xFFFF)($at)
    /* ECA8 80197C20 801F013C */  lui        $at, (0x1F800162 >> 16)
    /* ECAC 80197C24 620126A4 */  sh         $a2, (0x1F800162 & 0xFFFF)($at)
    /* ECB0 80197C28 A67F4394 */  lhu        $v1, 0x7FA6($v0)
    /* ECB4 80197C2C 801F013C */  lui        $at, (0x1F80016C >> 16)
    /* ECB8 80197C30 6C0123A4 */  sh         $v1, (0x1F80016C & 0xFFFF)($at)
    /* ECBC 80197C34 A47F4394 */  lhu        $v1, 0x7FA4($v0)
    /* ECC0 80197C38 C0100400 */  sll        $v0, $a0, 3
    /* ECC4 80197C3C 801F013C */  lui        $at, (0x1F80016A >> 16)
    /* ECC8 80197C40 6A0122A0 */  sb         $v0, (0x1F80016A & 0xFFFF)($at)
    /* ECCC 80197C44 90000224 */  addiu      $v0, $zero, 0x90
    /* ECD0 80197C48 801F013C */  lui        $at, (0x1F80016B >> 16)
    /* ECD4 80197C4C 6B0122A0 */  sb         $v0, (0x1F80016B & 0xFFFF)($at)
    /* ECD8 80197C50 08000224 */  addiu      $v0, $zero, 0x8
    /* ECDC 80197C54 801F013C */  lui        $at, (0x1F800164 >> 16)
    /* ECE0 80197C58 640122A4 */  sh         $v0, (0x1F800164 & 0xFFFF)($at)
    /* ECE4 80197C5C 10000224 */  addiu      $v0, $zero, 0x10
    /* ECE8 80197C60 801F013C */  lui        $at, (0x1F800166 >> 16)
    /* ECEC 80197C64 660122A4 */  sh         $v0, (0x1F800166 & 0xFFFF)($at)
    /* ECF0 80197C68 801F013C */  lui        $at, (0x1F80016E >> 16)
    /* ECF4 80197C6C 6E0123A4 */  sh         $v1, (0x1F80016E & 0xFFFF)($at)
  .L80197C70:
    /* ECF8 80197C70 0800E003 */  jr         $ra
    /* ECFC 80197C74 00000000 */   nop
endlabel func_80197BE0
