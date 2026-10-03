nonmatching func_8001C5A8, 0x458

glabel func_8001C5A8
    /* CDA8 8001C5A8 1080063C */  lui        $a2, %hi(D_800FF748)
    /* CDAC 8001C5AC 48F7C624 */  addiu      $a2, $a2, %lo(D_800FF748)
    /* CDB0 8001C5B0 801F033C */  lui        $v1, (0x1F8001EC >> 16)
    /* CDB4 8001C5B4 EC016390 */  lbu        $v1, (0x1F8001EC & 0xFFFF)($v1)
    /* CDB8 8001C5B8 01000224 */  addiu      $v0, $zero, 0x1
    /* CDBC 8001C5BC 79006210 */  beq        $v1, $v0, .L8001C7A4
    /* CDC0 8001C5C0 801F083C */   lui       $t0, (0x1F8001FC >> 16)
    /* CDC4 8001C5C4 02006228 */  slti       $v0, $v1, 0x2
    /* CDC8 8001C5C8 03004014 */  bnez       $v0, .L8001C5D8
    /* CDCC 8001C5CC 03000224 */   addiu     $v0, $zero, 0x3
    /* CDD0 8001C5D0 27006210 */  beq        $v1, $v0, .L8001C670
    /* CDD4 8001C5D4 01000324 */   addiu     $v1, $zero, 0x1
  .L8001C5D8:
    /* CDD8 8001C5D8 1180013C */  lui        $at, %hi(D_8010A328)
    /* CDDC 8001C5DC 28A320A0 */  sb         $zero, %lo(D_8010A328)($at)
    /* CDE0 8001C5E0 1080013C */  lui        $at, %hi(D_80105F35)
    /* CDE4 8001C5E4 355F20A0 */  sb         $zero, %lo(D_80105F35)($at)
    /* CDE8 8001C5E8 1080013C */  lui        $at, %hi(D_80105FC5)
    /* CDEC 8001C5EC C55F20A0 */  sb         $zero, %lo(D_80105FC5)($at)
    /* CDF0 8001C5F0 1080013C */  lui        $at, %hi(D_80106055)
    /* CDF4 8001C5F4 556020A0 */  sb         $zero, %lo(D_80106055)($at)
    /* CDF8 8001C5F8 1080013C */  lui        $at, %hi(D_801060E5)
    /* CDFC 8001C5FC E56020A0 */  sb         $zero, %lo(D_801060E5)($at)
    /* CE00 8001C600 1080013C */  lui        $at, %hi(D_80106175)
    /* CE04 8001C604 756120A0 */  sb         $zero, %lo(D_80106175)($at)
    /* CE08 8001C608 1080013C */  lui        $at, %hi(D_80106205)
    /* CE0C 8001C60C 056220A0 */  sb         $zero, %lo(D_80106205)($at)
    /* CE10 8001C610 1080013C */  lui        $at, %hi(D_80106295)
    /* CE14 8001C614 956220A0 */  sb         $zero, %lo(D_80106295)($at)
    /* CE18 8001C618 1080013C */  lui        $at, %hi(D_80106325)
    /* CE1C 8001C61C 256320A0 */  sb         $zero, %lo(D_80106325)($at)
    /* CE20 8001C620 1080013C */  lui        $at, %hi(D_801063B5)
    /* CE24 8001C624 B56320A0 */  sb         $zero, %lo(D_801063B5)($at)
    /* CE28 8001C628 1080013C */  lui        $at, %hi(D_80106445)
    /* CE2C 8001C62C 456420A0 */  sb         $zero, %lo(D_80106445)($at)
    /* CE30 8001C630 1080013C */  lui        $at, %hi(D_801064D5)
    /* CE34 8001C634 D56420A0 */  sb         $zero, %lo(D_801064D5)($at)
    /* CE38 8001C638 1080013C */  lui        $at, %hi(D_80106565)
    /* CE3C 8001C63C 656520A0 */  sb         $zero, %lo(D_80106565)($at)
    /* CE40 8001C640 1080013C */  lui        $at, %hi(D_801065F5)
    /* CE44 8001C644 F56520A0 */  sb         $zero, %lo(D_801065F5)($at)
    /* CE48 8001C648 1080013C */  lui        $at, %hi(D_80106685)
    /* CE4C 8001C64C 856620A0 */  sb         $zero, %lo(D_80106685)($at)
    /* CE50 8001C650 1080013C */  lui        $at, %hi(D_80106715)
    /* CE54 8001C654 156720A0 */  sb         $zero, %lo(D_80106715)($at)
    /* CE58 8001C658 1080013C */  lui        $at, %hi(D_801067A5)
    /* CE5C 8001C65C A56720A0 */  sb         $zero, %lo(D_801067A5)($at)
    /* CE60 8001C660 1080013C */  lui        $at, %hi(D_80106835)
    /* CE64 8001C664 356820A0 */  sb         $zero, %lo(D_80106835)($at)
    /* CE68 8001C668 7E720008 */  j          .L8001C9F8
    /* CE6C 8001C66C 00000000 */   nop
  .L8001C670:
    /* CE70 8001C670 801F023C */  lui        $v0, (0x1F800204 >> 16)
    /* CE74 8001C674 0402428C */  lw         $v0, (0x1F800204 & 0xFFFF)($v0)
    /* CE78 8001C678 1180013C */  lui        $at, %hi(D_8010A328)
    /* CE7C 8001C67C 28A323A0 */  sb         $v1, %lo(D_8010A328)($at)
    /* CE80 8001C680 1080013C */  lui        $at, %hi(D_80105F35)
    /* CE84 8001C684 355F20A0 */  sb         $zero, %lo(D_80105F35)($at)
    /* CE88 8001C688 1080013C */  lui        $at, %hi(D_80105FC5)
    /* CE8C 8001C68C C55F20A0 */  sb         $zero, %lo(D_80105FC5)($at)
    /* CE90 8001C690 1080013C */  lui        $at, %hi(D_80106055)
    /* CE94 8001C694 556020A0 */  sb         $zero, %lo(D_80106055)($at)
    /* CE98 8001C698 1080013C */  lui        $at, %hi(D_801060E5)
    /* CE9C 8001C69C E56020A0 */  sb         $zero, %lo(D_801060E5)($at)
    /* CEA0 8001C6A0 1080013C */  lui        $at, %hi(D_80106175)
    /* CEA4 8001C6A4 756120A0 */  sb         $zero, %lo(D_80106175)($at)
    /* CEA8 8001C6A8 1080013C */  lui        $at, %hi(D_80106205)
    /* CEAC 8001C6AC 056220A0 */  sb         $zero, %lo(D_80106205)($at)
    /* CEB0 8001C6B0 1080013C */  lui        $at, %hi(D_80106295)
    /* CEB4 8001C6B4 956220A0 */  sb         $zero, %lo(D_80106295)($at)
    /* CEB8 8001C6B8 1080013C */  lui        $at, %hi(D_80106325)
    /* CEBC 8001C6BC 256320A0 */  sb         $zero, %lo(D_80106325)($at)
    /* CEC0 8001C6C0 1080013C */  lui        $at, %hi(D_801063B5)
    /* CEC4 8001C6C4 B56320A0 */  sb         $zero, %lo(D_801063B5)($at)
    /* CEC8 8001C6C8 1080013C */  lui        $at, %hi(D_80106445)
    /* CECC 8001C6CC 456420A0 */  sb         $zero, %lo(D_80106445)($at)
    /* CED0 8001C6D0 1080013C */  lui        $at, %hi(D_801064D5)
    /* CED4 8001C6D4 D56420A0 */  sb         $zero, %lo(D_801064D5)($at)
    /* CED8 8001C6D8 1080013C */  lui        $at, %hi(D_80106565)
    /* CEDC 8001C6DC 656523A0 */  sb         $v1, %lo(D_80106565)($at)
    /* CEE0 8001C6E0 1080013C */  lui        $at, %hi(D_801065F5)
    /* CEE4 8001C6E4 F56520A0 */  sb         $zero, %lo(D_801065F5)($at)
    /* CEE8 8001C6E8 1080013C */  lui        $at, %hi(D_80106685)
    /* CEEC 8001C6EC 856620A0 */  sb         $zero, %lo(D_80106685)($at)
    /* CEF0 8001C6F0 1080013C */  lui        $at, %hi(D_80106715)
    /* CEF4 8001C6F4 156720A0 */  sb         $zero, %lo(D_80106715)($at)
    /* CEF8 8001C6F8 1080013C */  lui        $at, %hi(D_801067A5)
    /* CEFC 8001C6FC A56720A0 */  sb         $zero, %lo(D_801067A5)($at)
    /* CF00 8001C700 1080013C */  lui        $at, %hi(D_80106835)
    /* CF04 8001C704 356823A0 */  sb         $v1, %lo(D_80106835)($at)
    /* CF08 8001C708 07004018 */  blez       $v0, .L8001C728
    /* CF0C 8001C70C 00000000 */   nop
    /* CF10 8001C710 1080013C */  lui        $at, %hi(D_80106715)
    /* CF14 8001C714 156720A0 */  sb         $zero, %lo(D_80106715)($at)
    /* CF18 8001C718 1080013C */  lui        $at, %hi(D_801067A5)
    /* CF1C 8001C71C A56723A0 */  sb         $v1, %lo(D_801067A5)($at)
    /* CF20 8001C720 CE710008 */  j          .L8001C738
    /* CF24 8001C724 00000000 */   nop
  .L8001C728:
    /* CF28 8001C728 1080013C */  lui        $at, %hi(D_80106715)
    /* CF2C 8001C72C 156723A0 */  sb         $v1, %lo(D_80106715)($at)
    /* CF30 8001C730 1080013C */  lui        $at, %hi(D_801067A5)
    /* CF34 8001C734 A56720A0 */  sb         $zero, %lo(D_801067A5)($at)
  .L8001C738:
    /* CF38 8001C738 FC01028D */  lw         $v0, (0x1F8001FC & 0xFFFF)($t0)
    /* CF3C 8001C73C 00000000 */  nop
    /* CF40 8001C740 06004018 */  blez       $v0, .L8001C75C
    /* CF44 8001C744 01000224 */   addiu     $v0, $zero, 0x1
    /* CF48 8001C748 3D6FC0A0 */  sb         $zero, 0x6F3D($a2)
    /* CF4C 8001C74C AD6EC2A0 */  sb         $v0, 0x6EAD($a2)
    /* CF50 8001C750 DD6BC2A0 */  sb         $v0, 0x6BDD($a2)
    /* CF54 8001C754 DB710008 */  j          .L8001C76C
    /* CF58 8001C758 6D6CC0A0 */   sb        $zero, 0x6C6D($a2)
  .L8001C75C:
    /* CF5C 8001C75C 3D6FC2A0 */  sb         $v0, 0x6F3D($a2)
    /* CF60 8001C760 AD6EC0A0 */  sb         $zero, 0x6EAD($a2)
    /* CF64 8001C764 DD6BC0A0 */  sb         $zero, 0x6BDD($a2)
    /* CF68 8001C768 6D6CC2A0 */  sb         $v0, 0x6C6D($a2)
  .L8001C76C:
    /* CF6C 8001C76C E7020291 */  lbu        $v0, (0x1F8002E7 & 0xFFFF)($t0)
    /* CF70 8001C770 00000000 */  nop
    /* CF74 8001C774 FF004330 */  andi       $v1, $v0, 0xFF
    /* CF78 8001C778 05006010 */  beqz       $v1, .L8001C790
    /* CF7C 8001C77C 80000224 */   addiu     $v0, $zero, 0x80
    /* CF80 8001C780 06006210 */  beq        $v1, $v0, .L8001C79C
    /* CF84 8001C784 01000224 */   addiu     $v0, $zero, 0x1
    /* CF88 8001C788 7E720008 */  j          .L8001C9F8
    /* CF8C 8001C78C 00000000 */   nop
  .L8001C790:
    /* CF90 8001C790 01000224 */  addiu      $v0, $zero, 0x1
    /* CF94 8001C794 7E720008 */  j          .L8001C9F8
    /* CF98 8001C798 AD6EC2A0 */   sb        $v0, 0x6EAD($a2)
  .L8001C79C:
    /* CF9C 8001C79C 7E720008 */  j          .L8001C9F8
    /* CFA0 8001C7A0 3D6FC2A0 */   sb        $v0, 0x6F3D($a2)
  .L8001C7A4:
    /* CFA4 8001C7A4 406FC724 */  addiu      $a3, $a2, 0x6F40
    /* CFA8 8001C7A8 801F033C */  lui        $v1, (0x1F8002E6 >> 16)
    /* CFAC 8001C7AC E6026390 */  lbu        $v1, (0x1F8002E6 & 0xFFFF)($v1)
    /* CFB0 8001C7B0 01000424 */  addiu      $a0, $zero, 0x1
    /* CFB4 8001C7B4 1180013C */  lui        $at, %hi(D_8010A328)
    /* CFB8 8001C7B8 28A324A0 */  sb         $a0, %lo(D_8010A328)($at)
    /* CFBC 8001C7BC 1080013C */  lui        $at, %hi(D_80105F35)
    /* CFC0 8001C7C0 355F20A0 */  sb         $zero, %lo(D_80105F35)($at)
    /* CFC4 8001C7C4 1080013C */  lui        $at, %hi(D_80105FC5)
    /* CFC8 8001C7C8 C55F20A0 */  sb         $zero, %lo(D_80105FC5)($at)
    /* CFCC 8001C7CC 1080013C */  lui        $at, %hi(D_80106055)
    /* CFD0 8001C7D0 556020A0 */  sb         $zero, %lo(D_80106055)($at)
    /* CFD4 8001C7D4 1080013C */  lui        $at, %hi(D_801060E5)
    /* CFD8 8001C7D8 E56020A0 */  sb         $zero, %lo(D_801060E5)($at)
    /* CFDC 8001C7DC 1080013C */  lui        $at, %hi(D_80106175)
    /* CFE0 8001C7E0 756120A0 */  sb         $zero, %lo(D_80106175)($at)
    /* CFE4 8001C7E4 1080013C */  lui        $at, %hi(D_80106205)
    /* CFE8 8001C7E8 056220A0 */  sb         $zero, %lo(D_80106205)($at)
    /* CFEC 8001C7EC 1080013C */  lui        $at, %hi(D_80106295)
    /* CFF0 8001C7F0 956220A0 */  sb         $zero, %lo(D_80106295)($at)
    /* CFF4 8001C7F4 1080013C */  lui        $at, %hi(D_80106325)
    /* CFF8 8001C7F8 256320A0 */  sb         $zero, %lo(D_80106325)($at)
    /* CFFC 8001C7FC 1080013C */  lui        $at, %hi(D_801063B5)
    /* D000 8001C800 B56320A0 */  sb         $zero, %lo(D_801063B5)($at)
    /* D004 8001C804 1080013C */  lui        $at, %hi(D_80106445)
    /* D008 8001C808 456420A0 */  sb         $zero, %lo(D_80106445)($at)
    /* D00C 8001C80C 1080013C */  lui        $at, %hi(D_801064D5)
    /* D010 8001C810 D56420A0 */  sb         $zero, %lo(D_801064D5)($at)
    /* D014 8001C814 1080013C */  lui        $at, %hi(D_80106565)
    /* D018 8001C818 656524A0 */  sb         $a0, %lo(D_80106565)($at)
    /* D01C 8001C81C 1080013C */  lui        $at, %hi(D_801065F5)
    /* D020 8001C820 F56520A0 */  sb         $zero, %lo(D_801065F5)($at)
    /* D024 8001C824 1080013C */  lui        $at, %hi(D_80106685)
    /* D028 8001C828 856620A0 */  sb         $zero, %lo(D_80106685)($at)
    /* D02C 8001C82C 1080013C */  lui        $at, %hi(D_80106715)
    /* D030 8001C830 156720A0 */  sb         $zero, %lo(D_80106715)($at)
    /* D034 8001C834 1080013C */  lui        $at, %hi(D_801067A5)
    /* D038 8001C838 A56724A0 */  sb         $a0, %lo(D_801067A5)($at)
    /* D03C 8001C83C 1080013C */  lui        $at, %hi(D_80106835)
    /* D040 8001C840 356824A0 */  sb         $a0, %lo(D_80106835)($at)
    /* D044 8001C844 03006238 */  xori       $v0, $v1, 0x3
    /* D048 8001C848 0100422C */  sltiu      $v0, $v0, 0x1
    /* D04C 8001C84C 23100200 */  negu       $v0, $v0
    /* D050 8001C850 0400632C */  sltiu      $v1, $v1, 0x4
    /* D054 8001C854 51006010 */  beqz       $v1, .L8001C99C
    /* D058 8001C858 00094230 */   andi      $v0, $v0, 0x900
    /* D05C 8001C85C 21284000 */  addu       $a1, $v0, $zero
    /* D060 8001C860 E21B0224 */  addiu      $v0, $zero, 0x1BE2
    /* D064 8001C864 801F033C */  lui        $v1, (0x1F8001FC >> 16)
    /* D068 8001C868 FC01638C */  lw         $v1, (0x1F8001FC & 0xFFFF)($v1)
    /* D06C 8001C86C 23104500 */  subu       $v0, $v0, $a1
    /* D070 8001C870 2A106200 */  slt        $v0, $v1, $v0
    /* D074 8001C874 06004010 */  beqz       $v0, .L8001C890
    /* D078 8001C878 1EE4A224 */   addiu     $v0, $a1, -0x1BE2
    /* D07C 8001C87C E06BC724 */  addiu      $a3, $a2, 0x6BE0
    /* D080 8001C880 1080013C */  lui        $at, %hi(D_80106685)
    /* D084 8001C884 856624A0 */  sb         $a0, %lo(D_80106685)($at)
    /* D088 8001C888 1080013C */  lui        $at, %hi(D_801063B5)
    /* D08C 8001C88C B56324A0 */  sb         $a0, %lo(D_801063B5)($at)
  .L8001C890:
    /* D090 8001C890 2A104300 */  slt        $v0, $v0, $v1
    /* D094 8001C894 06004010 */  beqz       $v0, .L8001C8B0
    /* D098 8001C898 00000000 */   nop
    /* D09C 8001C89C 506BC724 */  addiu      $a3, $a2, 0x6B50
    /* D0A0 8001C8A0 1080013C */  lui        $at, %hi(D_801065F5)
    /* D0A4 8001C8A4 F56524A0 */  sb         $a0, %lo(D_801065F5)($at)
    /* D0A8 8001C8A8 1080013C */  lui        $at, %hi(D_80106325)
    /* D0AC 8001C8AC 256324A0 */  sb         $a0, %lo(D_80106325)($at)
  .L8001C8B0:
    /* D0B0 8001C8B0 801F023C */  lui        $v0, (0x1F800204 >> 16)
    /* D0B4 8001C8B4 0402428C */  lw         $v0, (0x1F800204 & 0xFFFF)($v0)
    /* D0B8 8001C8B8 00000000 */  nop
    /* D0BC 8001C8BC 00F04228 */  slti       $v0, $v0, -0x1000
    /* D0C0 8001C8C0 34004010 */  beqz       $v0, .L8001C994
    /* D0C4 8001C8C4 00000000 */   nop
    /* D0C8 8001C8C8 8D00E4A0 */  sb         $a0, 0x8D($a3)
    /* D0CC 8001C8CC 801F033C */  lui        $v1, (0x1F8001FC >> 16)
    /* D0D0 8001C8D0 FC01638C */  lw         $v1, (0x1F8001FC & 0xFFFF)($v1)
    /* D0D4 8001C8D4 1080013C */  lui        $at, %hi(D_80106175)
    /* D0D8 8001C8D8 756124A0 */  sb         $a0, %lo(D_80106175)($at)
    /* D0DC 8001C8DC 02006104 */  bgez       $v1, .L8001C8E8
    /* D0E0 8001C8E0 21106000 */   addu      $v0, $v1, $zero
    /* D0E4 8001C8E4 23100200 */  negu       $v0, $v0
  .L8001C8E8:
    /* D0E8 8001C8E8 E21B4228 */  slti       $v0, $v0, 0x1BE2
    /* D0EC 8001C8EC 1B004010 */  beqz       $v0, .L8001C95C
    /* D0F0 8001C8F0 00000000 */   nop
    /* D0F4 8001C8F4 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* D0F8 8001C8F8 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* D0FC 8001C8FC 00000000 */  nop
    /* D100 8001C900 0C00628C */  lw         $v0, 0xC($v1)
    /* D104 8001C904 00000000 */  nop
    /* D108 8001C908 02004104 */  bgez       $v0, .L8001C914
    /* D10C 8001C90C 00000000 */   nop
    /* D110 8001C910 23100200 */  negu       $v0, $v0
  .L8001C914:
    /* D114 8001C914 002E4228 */  slti       $v0, $v0, 0x2E00
    /* D118 8001C918 37004010 */  beqz       $v0, .L8001C9F8
    /* D11C 8001C91C 00000000 */   nop
    /* D120 8001C920 1080013C */  lui        $at, %hi(D_80105F35)
    /* D124 8001C924 355F24A0 */  sb         $a0, %lo(D_80105F35)($at)
    /* D128 8001C928 1080013C */  lui        $at, %hi(D_80105FC5)
    /* D12C 8001C92C C55F24A0 */  sb         $a0, %lo(D_80105FC5)($at)
    /* D130 8001C930 1080013C */  lui        $at, %hi(D_80106445)
    /* D134 8001C934 456424A0 */  sb         $a0, %lo(D_80106445)($at)
    /* D138 8001C938 02006284 */  lh         $v0, 0x2($v1)
    /* D13C 8001C93C 00000000 */  nop
    /* D140 8001C940 00F64228 */  slti       $v0, $v0, -0xA00
    /* D144 8001C944 17004010 */  beqz       $v0, .L8001C9A4
    /* D148 8001C948 00000000 */   nop
    /* D14C 8001C94C 1080013C */  lui        $at, %hi(D_801064D5)
    /* D150 8001C950 D56424A0 */  sb         $a0, %lo(D_801064D5)($at)
    /* D154 8001C954 69720008 */  j          .L8001C9A4
    /* D158 8001C958 00000000 */   nop
  .L8001C95C:
    /* D15C 8001C95C 07006104 */  bgez       $v1, .L8001C97C
    /* D160 8001C960 00000000 */   nop
    /* D164 8001C964 1080013C */  lui        $at, %hi(D_80105FC5)
    /* D168 8001C968 C55F24A0 */  sb         $a0, %lo(D_80105FC5)($at)
    /* D16C 8001C96C 1080013C */  lui        $at, %hi(D_801064D5)
    /* D170 8001C970 D56424A0 */  sb         $a0, %lo(D_801064D5)($at)
    /* D174 8001C974 69720008 */  j          .L8001C9A4
    /* D178 8001C978 00000000 */   nop
  .L8001C97C:
    /* D17C 8001C97C 1080013C */  lui        $at, %hi(D_80105F35)
    /* D180 8001C980 355F24A0 */  sb         $a0, %lo(D_80105F35)($at)
    /* D184 8001C984 1080013C */  lui        $at, %hi(D_80106445)
    /* D188 8001C988 456424A0 */  sb         $a0, %lo(D_80106445)($at)
    /* D18C 8001C98C 69720008 */  j          .L8001C9A4
    /* D190 8001C990 00000000 */   nop
  .L8001C994:
    /* D194 8001C994 69720008 */  j          .L8001C9A4
    /* D198 8001C998 8D00E0A0 */   sb        $zero, 0x8D($a3)
  .L8001C99C:
    /* D19C 8001C99C 1080013C */  lui        $at, %hi(D_80106715)
    /* D1A0 8001C9A0 156720A0 */  sb         $zero, %lo(D_80106715)($at)
  .L8001C9A4:
    /* D1A4 8001C9A4 F402028D */  lw         $v0, (0x1F8002F4 & 0xFFFF)($t0)
    /* D1A8 8001C9A8 00000000 */  nop
    /* D1AC 8001C9AC 0C00428C */  lw         $v0, 0xC($v0)
    /* D1B0 8001C9B0 00000000 */  nop
    /* D1B4 8001C9B4 02004104 */  bgez       $v0, .L8001C9C0
    /* D1B8 8001C9B8 00000000 */   nop
    /* D1BC 8001C9BC 23100200 */  negu       $v0, $v0
  .L8001C9C0:
    /* D1C0 8001C9C0 002E4228 */  slti       $v0, $v0, 0x2E00
    /* D1C4 8001C9C4 0C004010 */  beqz       $v0, .L8001C9F8
    /* D1C8 8001C9C8 00000000 */   nop
    /* D1CC 8001C9CC FC01038D */  lw         $v1, (0x1F8001FC & 0xFFFF)($t0)
    /* D1D0 8001C9D0 00000000 */  nop
    /* D1D4 8001C9D4 00F26228 */  slti       $v0, $v1, -0xE00
    /* D1D8 8001C9D8 03004010 */  beqz       $v0, .L8001C9E8
    /* D1DC 8001C9DC 01000224 */   addiu     $v0, $zero, 0x1
    /* D1E0 8001C9E0 7E720008 */  j          .L8001C9F8
    /* D1E4 8001C9E4 9D69C2A0 */   sb        $v0, 0x699D($a2)
  .L8001C9E8:
    /* D1E8 8001C9E8 010E6228 */  slti       $v0, $v1, 0xE01
    /* D1EC 8001C9EC 02004014 */  bnez       $v0, .L8001C9F8
    /* D1F0 8001C9F0 01000224 */   addiu     $v0, $zero, 0x1
    /* D1F4 8001C9F4 0D69C2A0 */  sb         $v0, 0x690D($a2)
  .L8001C9F8:
    /* D1F8 8001C9F8 0800E003 */  jr         $ra
    /* D1FC 8001C9FC 00000000 */   nop
endlabel func_8001C5A8
