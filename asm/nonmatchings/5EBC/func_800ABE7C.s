nonmatching func_800ABE7C, 0x1F0

glabel func_800ABE7C
    /* 9C67C 800ABE7C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9C680 800ABE80 EA008397 */  lhu        $v1, %gp_rel(D_800E6B76)($gp)
    /* 9C684 800ABE84 04020234 */  ori        $v0, $zero, 0x204
    /* 9C688 800ABE88 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 9C68C 800ABE8C 72006210 */  beq        $v1, $v0, .L800AC058
    /* 9C690 800ABE90 1800B0AF */   sw        $s0, 0x18($sp)
    /* 9C694 800ABE94 00FB8224 */  addiu      $v0, $a0, -0x500
    /* 9C698 800ABE98 A80082A7 */  sh         $v0, %gp_rel(D_800E6B34)($gp)
    /* 9C69C 800ABE9C 00088228 */  slti       $v0, $a0, 0x800
    /* 9C6A0 800ABEA0 63004010 */  beqz       $v0, .L800AC030
    /* 9C6A4 800ABEA4 DC058228 */   slti      $v0, $a0, 0x5DC
    /* 9C6A8 800ABEA8 6B004010 */  beqz       $v0, .L800AC058
    /* 9C6AC 800ABEAC 00000000 */   nop
    /* 9C6B0 800ABEB0 A8008297 */  lhu        $v0, %gp_rel(D_800E6B34)($gp)
    /* 9C6B4 800ABEB4 00000000 */  nop
    /* 9C6B8 800ABEB8 C0100200 */  sll        $v0, $v0, 3
    /* 9C6BC 800ABEBC 0D80013C */  lui        $at, %hi(D_800CE86C + 0x3)
    /* 9C6C0 800ABEC0 6FE82124 */  addiu      $at, $at, %lo(D_800CE86C + 0x3)
    /* 9C6C4 800ABEC4 21082200 */  addu       $at, $at, $v0
    /* 9C6C8 800ABEC8 00002390 */  lbu        $v1, 0x0($at)
    /* 9C6CC 800ABECC 00000000 */  nop
    /* 9C6D0 800ABED0 36006010 */  beqz       $v1, .L800ABFAC
    /* 9C6D4 800ABED4 00000000 */   nop
    /* 9C6D8 800ABED8 40100300 */  sll        $v0, $v1, 1
    /* 9C6DC 800ABEDC 0F80103C */  lui        $s0, %hi(D_800EF898)
    /* 9C6E0 800ABEE0 98F81026 */  addiu      $s0, $s0, %lo(D_800EF898)
    /* 9C6E4 800ABEE4 0F80013C */  lui        $at, %hi(D_800EF898)
    /* 9C6E8 800ABEE8 98F82124 */  addiu      $at, $at, %lo(D_800EF898)
    /* 9C6EC 800ABEEC 21082200 */  addu       $at, $at, $v0
    /* 9C6F0 800ABEF0 00002384 */  lh         $v1, 0x0($at)
    /* 9C6F4 800ABEF4 0F270234 */  ori        $v0, $zero, 0x270F
    /* 9C6F8 800ABEF8 0B006210 */  beq        $v1, $v0, .L800ABF28
    /* 9C6FC 800ABEFC C0100300 */   sll       $v0, $v1, 3
    /* 9C700 800ABF00 0D80013C */  lui        $at, %hi(D_800CE868)
    /* 9C704 800ABF04 68E82124 */  addiu      $at, $at, %lo(D_800CE868)
    /* 9C708 800ABF08 21082200 */  addu       $at, $at, $v0
    /* 9C70C 800ABF0C 00002484 */  lh         $a0, 0x0($at)
    /* 9C710 800ABF10 0D80013C */  lui        $at, %hi(D_800CE86A)
    /* 9C714 800ABF14 6AE82124 */  addiu      $at, $at, %lo(D_800CE86A)
    /* 9C718 800ABF18 21082200 */  addu       $at, $at, $v0
    /* 9C71C 800ABF1C 00002584 */  lh         $a1, 0x0($at)
    /* 9C720 800ABF20 AEF3020C */  jal        func_800BCEB8
    /* 9C724 800ABF24 00000000 */   nop
  .L800ABF28:
    /* 9C728 800ABF28 A8008297 */  lhu        $v0, %gp_rel(D_800E6B34)($gp)
    /* 9C72C 800ABF2C 00000000 */  nop
    /* 9C730 800ABF30 C0100200 */  sll        $v0, $v0, 3
    /* 9C734 800ABF34 0D80013C */  lui        $at, %hi(D_800CE868)
    /* 9C738 800ABF38 68E82124 */  addiu      $at, $at, %lo(D_800CE868)
    /* 9C73C 800ABF3C 21082200 */  addu       $at, $at, $v0
    /* 9C740 800ABF40 00002484 */  lh         $a0, 0x0($at)
    /* 9C744 800ABF44 0D80013C */  lui        $at, %hi(D_800CE86A)
    /* 9C748 800ABF48 6AE82124 */  addiu      $at, $at, %lo(D_800CE86A)
    /* 9C74C 800ABF4C 21082200 */  addu       $at, $at, $v0
    /* 9C750 800ABF50 00002584 */  lh         $a1, 0x0($at)
    /* 9C754 800ABF54 0D80013C */  lui        $at, %hi(D_800CE86C)
    /* 9C758 800ABF58 6CE82124 */  addiu      $at, $at, %lo(D_800CE86C)
    /* 9C75C 800ABF5C 21082200 */  addu       $at, $at, $v0
    /* 9C760 800ABF60 00002690 */  lbu        $a2, 0x0($at)
    /* 9C764 800ABF64 0D80013C */  lui        $at, %hi(D_800CE86C + 0x1)
    /* 9C768 800ABF68 6DE82124 */  addiu      $at, $at, %lo(D_800CE86C + 0x1)
    /* 9C76C 800ABF6C 21082200 */  addu       $at, $at, $v0
    /* 9C770 800ABF70 00002790 */  lbu        $a3, 0x0($at)
    /* 9C774 800ABF74 BEF3020C */  jal        func_800BCEF8
    /* 9C778 800ABF78 00000000 */   nop
    /* 9C77C 800ABF7C A8008397 */  lhu        $v1, %gp_rel(D_800E6B34)($gp)
    /* 9C780 800ABF80 00000000 */  nop
    /* 9C784 800ABF84 C0100300 */  sll        $v0, $v1, 3
    /* 9C788 800ABF88 0D80013C */  lui        $at, %hi(D_800CE86C + 0x3)
    /* 9C78C 800ABF8C 6FE82124 */  addiu      $at, $at, %lo(D_800CE86C + 0x3)
    /* 9C790 800ABF90 21082200 */  addu       $at, $at, $v0
    /* 9C794 800ABF94 00002290 */  lbu        $v0, 0x0($at)
    /* 9C798 800ABF98 00000000 */  nop
    /* 9C79C 800ABF9C 40100200 */  sll        $v0, $v0, 1
    /* 9C7A0 800ABFA0 21105000 */  addu       $v0, $v0, $s0
    /* 9C7A4 800ABFA4 16B00208 */  j          .L800AC058
    /* 9C7A8 800ABFA8 000043A4 */   sh        $v1, 0x0($v0)
  .L800ABFAC:
    /* 9C7AC 800ABFAC 0D80013C */  lui        $at, %hi(D_800CE868)
    /* 9C7B0 800ABFB0 68E82124 */  addiu      $at, $at, %lo(D_800CE868)
    /* 9C7B4 800ABFB4 21082200 */  addu       $at, $at, $v0
    /* 9C7B8 800ABFB8 00002484 */  lh         $a0, 0x0($at)
    /* 9C7BC 800ABFBC 0D80013C */  lui        $at, %hi(D_800CE86A)
    /* 9C7C0 800ABFC0 6AE82124 */  addiu      $at, $at, %lo(D_800CE86A)
    /* 9C7C4 800ABFC4 21082200 */  addu       $at, $at, $v0
    /* 9C7C8 800ABFC8 00002584 */  lh         $a1, 0x0($at)
    /* 9C7CC 800ABFCC AEF3020C */  jal        func_800BCEB8
    /* 9C7D0 800ABFD0 00000000 */   nop
    /* 9C7D4 800ABFD4 A8008297 */  lhu        $v0, %gp_rel(D_800E6B34)($gp)
    /* 9C7D8 800ABFD8 00000000 */  nop
    /* 9C7DC 800ABFDC C0100200 */  sll        $v0, $v0, 3
    /* 9C7E0 800ABFE0 0D80013C */  lui        $at, %hi(D_800CE868)
    /* 9C7E4 800ABFE4 68E82124 */  addiu      $at, $at, %lo(D_800CE868)
    /* 9C7E8 800ABFE8 21082200 */  addu       $at, $at, $v0
    /* 9C7EC 800ABFEC 00002484 */  lh         $a0, 0x0($at)
    /* 9C7F0 800ABFF0 0D80013C */  lui        $at, %hi(D_800CE86A)
    /* 9C7F4 800ABFF4 6AE82124 */  addiu      $at, $at, %lo(D_800CE86A)
    /* 9C7F8 800ABFF8 21082200 */  addu       $at, $at, $v0
    /* 9C7FC 800ABFFC 00002584 */  lh         $a1, 0x0($at)
    /* 9C800 800AC000 0D80013C */  lui        $at, %hi(D_800CE86C)
    /* 9C804 800AC004 6CE82124 */  addiu      $at, $at, %lo(D_800CE86C)
    /* 9C808 800AC008 21082200 */  addu       $at, $at, $v0
    /* 9C80C 800AC00C 00002690 */  lbu        $a2, 0x0($at)
    /* 9C810 800AC010 0D80013C */  lui        $at, %hi(D_800CE86C + 0x1)
    /* 9C814 800AC014 6DE82124 */  addiu      $at, $at, %lo(D_800CE86C + 0x1)
    /* 9C818 800AC018 21082200 */  addu       $at, $at, $v0
    /* 9C81C 800AC01C 00002790 */  lbu        $a3, 0x0($at)
    /* 9C820 800AC020 BEF3020C */  jal        func_800BCEF8
    /* 9C824 800AC024 00000000 */   nop
    /* 9C828 800AC028 16B00208 */  j          .L800AC058
    /* 9C82C 800AC02C 00000000 */   nop
  .L800AC030:
    /* 9C830 800AC030 E8140234 */  ori        $v0, $zero, 0x14E8
    /* 9C834 800AC034 08006210 */  beq        $v1, $v0, .L800AC058
    /* 9C838 800AC038 00000000 */   nop
    /* 9C83C 800AC03C 01020234 */  ori        $v0, $zero, 0x201
    /* 9C840 800AC040 05006210 */  beq        $v1, $v0, .L800AC058
    /* 9C844 800AC044 00000000 */   nop
    /* 9C848 800AC048 C00080A7 */  sh         $zero, %gp_rel(D_800E6B4C)($gp)
    /* 9C84C 800AC04C EA0080A7 */  sh         $zero, %gp_rel(D_800E6B76)($gp)
    /* 9C850 800AC050 DDAA020C */  jal        func_800AAB74
    /* 9C854 800AC054 00000000 */   nop
  .L800AC058:
    /* 9C858 800AC058 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 9C85C 800AC05C 1800B08F */  lw         $s0, 0x18($sp)
    /* 9C860 800AC060 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 9C864 800AC064 0800E003 */  jr         $ra
    /* 9C868 800AC068 00000000 */   nop
endlabel func_800ABE7C
