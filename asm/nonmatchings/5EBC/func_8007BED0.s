nonmatching func_8007BED0, 0x1CC

glabel func_8007BED0
    /* 6C6D0 8007BED0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6C6D4 8007BED4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 6C6D8 8007BED8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6C6DC 8007BEDC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6C6E0 8007BEE0 0A61020C */  jal        func_80098428
    /* 6C6E4 8007BEE4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 6C6E8 8007BEE8 1080013C */  lui        $at, %hi(D_80105D2C)
    /* 6C6EC 8007BEEC 2C5D20A0 */  sb         $zero, %lo(D_80105D2C)($at)
    /* 6C6F0 8007BEF0 1080013C */  lui        $at, %hi(D_80105D54)
    /* 6C6F4 8007BEF4 545D20A0 */  sb         $zero, %lo(D_80105D54)($at)
    /* 6C6F8 8007BEF8 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 6C6FC 8007BEFC 940220A4 */  sh         $zero, (0x1F800294 & 0xFFFF)($at)
    /* 6C700 8007BF00 1458020C */  jal        func_80096050
    /* 6C704 8007BF04 00000000 */   nop
    /* 6C708 8007BF08 801F033C */  lui        $v1, (0x1F8002AE >> 16)
    /* 6C70C 8007BF0C AE026390 */  lbu        $v1, (0x1F8002AE & 0xFFFF)($v1)
    /* 6C710 8007BF10 AAAA113C */  lui        $s1, (0xAAAAAAAB >> 16)
    /* 6C714 8007BF14 ABAA3136 */  ori        $s1, $s1, (0xAAAAAAAB & 0xFFFF)
    /* 6C718 8007BF18 19007100 */  multu      $v1, $s1
    /* 6C71C 8007BF1C 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 6C720 8007BF20 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 6C724 8007BF24 10400000 */  mfhi       $t0
    /* 6C728 8007BF28 02210800 */  srl        $a0, $t0, 4
    /* 6C72C 8007BF2C 40100400 */  sll        $v0, $a0, 1
    /* 6C730 8007BF30 21104400 */  addu       $v0, $v0, $a0
    /* 6C734 8007BF34 C0100200 */  sll        $v0, $v0, 3
    /* 6C738 8007BF38 23186200 */  subu       $v1, $v1, $v0
    /* 6C73C 8007BF3C FF006330 */  andi       $v1, $v1, 0xFF
    /* 6C740 8007BF40 40810300 */  sll        $s0, $v1, 5
    /* 6C744 8007BF44 23800302 */  subu       $s0, $s0, $v1
    /* 6C748 8007BF48 80801000 */  sll        $s0, $s0, 2
    /* 6C74C 8007BF4C 21800302 */  addu       $s0, $s0, $v1
    /* 6C750 8007BF50 C0801000 */  sll        $s0, $s0, 3
    /* 6C754 8007BF54 21801202 */  addu       $s0, $s0, $s2
    /* 6C758 8007BF58 02000296 */  lhu        $v0, 0x2($s0)
    /* 6C75C 8007BF5C 801F013C */  lui        $at, (0x1F8002BC >> 16)
    /* 6C760 8007BF60 BC0222A4 */  sh         $v0, (0x1F8002BC & 0xFFFF)($at)
    /* 6C764 8007BF64 06000296 */  lhu        $v0, 0x6($s0)
    /* 6C768 8007BF68 801F013C */  lui        $at, (0x1F8002BE >> 16)
    /* 6C76C 8007BF6C BE0222A4 */  sh         $v0, (0x1F8002BE & 0xFFFF)($at)
    /* 6C770 8007BF70 02000386 */  lh         $v1, 0x2($s0)
    /* 6C774 8007BF74 801F023C */  lui        $v0, (0x1F8001F0 >> 16)
    /* 6C778 8007BF78 F001428C */  lw         $v0, (0x1F8001F0 & 0xFFFF)($v0)
    /* 6C77C 8007BF7C 00000000 */  nop
    /* 6C780 8007BF80 23104300 */  subu       $v0, $v0, $v1
    /* 6C784 8007BF84 18004200 */  mult       $v0, $v0
    /* 6C788 8007BF88 06000386 */  lh         $v1, 0x6($s0)
    /* 6C78C 8007BF8C 801F023C */  lui        $v0, (0x1F8001F8 >> 16)
    /* 6C790 8007BF90 F801428C */  lw         $v0, (0x1F8001F8 & 0xFFFF)($v0)
    /* 6C794 8007BF94 12200000 */  mflo       $a0
    /* 6C798 8007BF98 23104300 */  subu       $v0, $v0, $v1
    /* 6C79C 8007BF9C 00000000 */  nop
    /* 6C7A0 8007BFA0 18004200 */  mult       $v0, $v0
    /* 6C7A4 8007BFA4 12180000 */  mflo       $v1
    /* 6C7A8 8007BFA8 4AC4020C */  jal        func_800B1128
    /* 6C7AC 8007BFAC 21208300 */   addu      $a0, $a0, $v1
    /* 6C7B0 8007BFB0 C0180200 */  sll        $v1, $v0, 3
    /* 6C7B4 8007BFB4 21186200 */  addu       $v1, $v1, $v0
    /* 6C7B8 8007BFB8 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 6C7BC 8007BFBC CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 6C7C0 8007BFC0 19006200 */  multu      $v1, $v0
    /* 6C7C4 8007BFC4 801F063C */  lui        $a2, (0x1F8001F0 >> 16)
    /* 6C7C8 8007BFC8 F001C684 */  lh         $a2, (0x1F8001F0 & 0xFFFF)($a2)
    /* 6C7CC 8007BFCC 801F073C */  lui        $a3, (0x1F8001F8 >> 16)
    /* 6C7D0 8007BFD0 F801E784 */  lh         $a3, (0x1F8001F8 & 0xFFFF)($a3)
    /* 6C7D4 8007BFD4 10400000 */  mfhi       $t0
    /* 6C7D8 8007BFD8 C2100800 */  srl        $v0, $t0, 3
    /* 6C7DC 8007BFDC 801F013C */  lui        $at, (0x1F8002EA >> 16)
    /* 6C7E0 8007BFE0 EA0222A4 */  sh         $v0, (0x1F8002EA & 0xFFFF)($at)
    /* 6C7E4 8007BFE4 02000486 */  lh         $a0, 0x2($s0)
    /* 6C7E8 8007BFE8 06000586 */  lh         $a1, 0x6($s0)
    /* 6C7EC 8007BFEC DB6C010C */  jal        func_8005B36C
    /* 6C7F0 8007BFF0 00000000 */   nop
    /* 6C7F4 8007BFF4 801F013C */  lui        $at, (0x1F8002E7 >> 16)
    /* 6C7F8 8007BFF8 E70222A0 */  sb         $v0, (0x1F8002E7 & 0xFFFF)($at)
    /* 6C7FC 8007BFFC 0F8A000C */  jal        func_8002283C
    /* 6C800 8007C000 00000000 */   nop
    /* 6C804 8007C004 B428010C */  jal        func_8004A2D0
    /* 6C808 8007C008 00000000 */   nop
    /* 6C80C 8007C00C 801F033C */  lui        $v1, (0x1F8002AD >> 16)
    /* 6C810 8007C010 AD026390 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($v1)
    /* 6C814 8007C014 00000000 */  nop
    /* 6C818 8007C018 19007100 */  multu      $v1, $s1
    /* 6C81C 8007C01C 01000224 */  addiu      $v0, $zero, 0x1
    /* 6C820 8007C020 801F013C */  lui        $at, (0x1F8001E8 >> 16)
    /* 6C824 8007C024 E80122A0 */  sb         $v0, (0x1F8001E8 & 0xFFFF)($at)
    /* 6C828 8007C028 801F013C */  lui        $at, (0x1F8001EC >> 16)
    /* 6C82C 8007C02C EC0120A0 */  sb         $zero, (0x1F8001EC & 0xFFFF)($at)
    /* 6C830 8007C030 801F013C */  lui        $at, (0x1F8002C2 >> 16)
    /* 6C834 8007C034 C20220A0 */  sb         $zero, (0x1F8002C2 & 0xFFFF)($at)
    /* 6C838 8007C038 801F013C */  lui        $at, (0x1F8002A1 >> 16)
    /* 6C83C 8007C03C A10220A0 */  sb         $zero, (0x1F8002A1 & 0xFFFF)($at)
    /* 6C840 8007C040 10400000 */  mfhi       $t0
    /* 6C844 8007C044 02210800 */  srl        $a0, $t0, 4
    /* 6C848 8007C048 40100400 */  sll        $v0, $a0, 1
    /* 6C84C 8007C04C 21104400 */  addu       $v0, $v0, $a0
    /* 6C850 8007C050 C0100200 */  sll        $v0, $v0, 3
    /* 6C854 8007C054 23186200 */  subu       $v1, $v1, $v0
    /* 6C858 8007C058 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6C85C 8007C05C 40210300 */  sll        $a0, $v1, 5
    /* 6C860 8007C060 23208300 */  subu       $a0, $a0, $v1
    /* 6C864 8007C064 80200400 */  sll        $a0, $a0, 2
    /* 6C868 8007C068 21208300 */  addu       $a0, $a0, $v1
    /* 6C86C 8007C06C C0200400 */  sll        $a0, $a0, 3
    /* 6C870 8007C070 9B5C010C */  jal        func_8005726C
    /* 6C874 8007C074 21209200 */   addu      $a0, $a0, $s2
    /* 6C878 8007C078 775C000C */  jal        func_800171DC
    /* 6C87C 8007C07C 00000000 */   nop
    /* 6C880 8007C080 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 6C884 8007C084 1800B28F */  lw         $s2, 0x18($sp)
    /* 6C888 8007C088 1400B18F */  lw         $s1, 0x14($sp)
    /* 6C88C 8007C08C 1000B08F */  lw         $s0, 0x10($sp)
    /* 6C890 8007C090 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6C894 8007C094 0800E003 */  jr         $ra
    /* 6C898 8007C098 00000000 */   nop
endlabel func_8007BED0
