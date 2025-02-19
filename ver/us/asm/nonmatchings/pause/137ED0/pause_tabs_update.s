.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel pause_tabs_update
/* 1388FC 802455BC 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 138900 802455C0 AFB3001C */  sw        $s3, 0x1c($sp)
/* 138904 802455C4 0080982D */  daddu     $s3, $a0, $zero
/* 138908 802455C8 AFBF0034 */  sw        $ra, 0x34($sp)
/* 13890C 802455CC AFBE0030 */  sw        $fp, 0x30($sp)
/* 138910 802455D0 AFB7002C */  sw        $s7, 0x2c($sp)
/* 138914 802455D4 AFB60028 */  sw        $s6, 0x28($sp)
/* 138918 802455D8 AFB50024 */  sw        $s5, 0x24($sp)
/* 13891C 802455DC AFB40020 */  sw        $s4, 0x20($sp)
/* 138920 802455E0 AFB20018 */  sw        $s2, 0x18($sp)
/* 138924 802455E4 AFB10014 */  sw        $s1, 0x14($sp)
/* 138928 802455E8 AFB00010 */  sw        $s0, 0x10($sp)
/* 13892C 802455EC 82620001 */  lb        $v0, 1($s3)
/* 138930 802455F0 00021880 */  sll       $v1, $v0, 2
/* 138934 802455F4 00621821 */  addu      $v1, $v1, $v0
/* 138938 802455F8 00031100 */  sll       $v0, $v1, 4
/* 13893C 802455FC 00431023 */  subu      $v0, $v0, $v1
/* 138940 80245600 3C038027 */  lui       $v1, %hi(D_8027014C)
/* 138944 80245604 8C63014C */  lw        $v1, %lo(D_8027014C)($v1)
/* 138948 80245608 00021080 */  sll       $v0, $v0, 2
/* 13894C 8024560C 00431023 */  subu      $v0, $v0, $v1
/* 138950 80245610 44820000 */  mtc1      $v0, $f0
/* 138954 80245614 00000000 */  nop
/* 138958 80245618 46800020 */  cvt.s.w   $f0, $f0
/* 13895C 8024561C 4600018D */  trunc.w.s $f6, $f0
/* 138960 80245620 44043000 */  mfc1      $a0, $f6
/* 138964 80245624 00000000 */  nop
/* 138968 80245628 04810002 */  bgez      $a0, .L80245634
/* 13896C 8024562C 0080802D */   daddu    $s0, $a0, $zero
/* 138970 80245630 00108023 */  negu      $s0, $s0
.L80245634:
/* 138974 80245634 0C00A52C */  jal       sign
/* 138978 80245638 00000000 */   nop
/* 13897C 8024563C 0040182D */  daddu     $v1, $v0, $zero
/* 138980 80245640 2A020010 */  slti      $v0, $s0, 0x10
/* 138984 80245644 14400012 */  bnez      $v0, .L80245690
/* 138988 80245648 00000000 */   nop
/* 13898C 8024564C 3C013FE0 */  lui       $at, 0x3fe0
/* 138990 80245650 44811800 */  mtc1      $at, $f3
/* 138994 80245654 44801000 */  mtc1      $zero, $f2
/* 138998 80245658 44900000 */  mtc1      $s0, $f0
/* 13899C 8024565C 00000000 */  nop
/* 1389A0 80245660 46800021 */  cvt.d.w   $f0, $f0
/* 1389A4 80245664 46220002 */  mul.d     $f0, $f0, $f2
/* 1389A8 80245668 00000000 */  nop
/* 1389AC 8024566C 3C014200 */  lui       $at, 0x4200
/* 1389B0 80245670 44812000 */  mtc1      $at, $f4
/* 1389B4 80245674 462000A0 */  cvt.s.d   $f2, $f0
/* 1389B8 80245678 4602203C */  c.lt.s    $f4, $f2
/* 1389BC 8024567C 00000000 */  nop
/* 1389C0 80245680 45030009 */  bc1tl     .L802456A8
/* 1389C4 80245684 46002086 */   mov.s    $f2, $f4
/* 1389C8 80245688 080915AA */  j         .L802456A8
/* 1389CC 8024568C 00000000 */   nop
.L80245690:
/* 1389D0 80245690 3C028025 */  lui       $v0, %hi(D_8024F300)
/* 1389D4 80245694 00501021 */  addu      $v0, $v0, $s0
/* 1389D8 80245698 9042F300 */  lbu       $v0, %lo(D_8024F300)($v0)
/* 1389DC 8024569C 44821000 */  mtc1      $v0, $f2
/* 1389E0 802456A0 00000000 */  nop
/* 1389E4 802456A4 468010A0 */  cvt.s.w   $f2, $f2
.L802456A8:
/* 1389E8 802456A8 44830000 */  mtc1      $v1, $f0
/* 1389EC 802456AC 00000000 */  nop
/* 1389F0 802456B0 46800020 */  cvt.s.w   $f0, $f0
/* 1389F4 802456B4 46001082 */  mul.s     $f2, $f2, $f0
/* 1389F8 802456B8 00000000 */  nop
/* 1389FC 802456BC 3C028027 */  lui       $v0, %hi(D_8027014C)
/* 138A00 802456C0 2442014C */  addiu     $v0, $v0, %lo(D_8027014C)
/* 138A04 802456C4 C4400000 */  lwc1      $f0, ($v0)
/* 138A08 802456C8 46800020 */  cvt.s.w   $f0, $f0
/* 138A0C 802456CC 46020000 */  add.s     $f0, $f0, $f2
/* 138A10 802456D0 3C048027 */  lui       $a0, %hi(D_80270148)
/* 138A14 802456D4 8C840148 */  lw        $a0, %lo(D_80270148)($a0)
/* 138A18 802456D8 4600018D */  trunc.w.s $f6, $f0
/* 138A1C 802456DC E4460000 */  swc1      $f6, ($v0)
/* 138A20 802456E0 14800004 */  bnez      $a0, .L802456F4
/* 138A24 802456E4 24020005 */   addiu    $v0, $zero, 5
/* 138A28 802456E8 82630001 */  lb        $v1, 1($s3)
/* 138A2C 802456EC 10620011 */  beq       $v1, $v0, .L80245734
/* 138A30 802456F0 00000000 */   nop
.L802456F4:
/* 138A34 802456F4 82630001 */  lb        $v1, 1($s3)
/* 138A38 802456F8 0083102A */  slt       $v0, $a0, $v1
/* 138A3C 802456FC 14400005 */  bnez      $v0, .L80245714
/* 138A40 80245700 24020005 */   addiu    $v0, $zero, 5
/* 138A44 80245704 1482000B */  bne       $a0, $v0, .L80245734
/* 138A48 80245708 00000000 */   nop
/* 138A4C 8024570C 14600009 */  bnez      $v1, .L80245734
/* 138A50 80245710 00000000 */   nop
.L80245714:
/* 138A54 80245714 3C148024 */  lui       $s4, %hi(func_80243238)
/* 138A58 80245718 26943238 */  addiu     $s4, $s4, %lo(func_80243238)
/* 138A5C 8024571C 3C128024 */  lui       $s2, %hi(func_802432E8)
/* 138A60 80245720 265232E8 */  addiu     $s2, $s2, %lo(func_802432E8)
/* 138A64 80245724 080915D2 */  j         .L80245748
/* 138A68 80245728 0000202D */   daddu    $a0, $zero, $zero
.L8024572C:
/* 138A6C 8024572C 080915EE */  j         .L802457B8
/* 138A70 80245730 24040001 */   addiu    $a0, $zero, 1
.L80245734:
/* 138A74 80245734 3C148024 */  lui       $s4, %hi(func_80243188)
/* 138A78 80245738 26943188 */  addiu     $s4, $s4, %lo(func_80243188)
/* 138A7C 8024573C 3C128024 */  lui       $s2, %hi(func_80243388)
/* 138A80 80245740 26523388 */  addiu     $s2, $s2, %lo(func_80243388)
/* 138A84 80245744 0000202D */  daddu     $a0, $zero, $zero
.L80245748:
/* 138A88 80245748 0080802D */  daddu     $s0, $a0, $zero
/* 138A8C 8024574C 3C078025 */  lui       $a3, %hi(gPauseMenuPanels)
/* 138A90 80245750 24E7EF80 */  addiu     $a3, $a3, %lo(gPauseMenuPanels)
/* 138A94 80245754 3C068025 */  lui       $a2, %hi(D_8024F1D0)
/* 138A98 80245758 24C6F1D0 */  addiu     $a2, $a2, %lo(D_8024F1D0)
/* 138A9C 8024575C 3C058016 */  lui       $a1, %hi(gWindows)
/* 138AA0 80245760 24A59D50 */  addiu     $a1, $a1, %lo(gWindows)
/* 138AA4 80245764 3C038025 */  lui       $v1, %hi(D_8024F1E0)
/* 138AA8 80245768 2463F1E0 */  addiu     $v1, $v1, %lo(D_8024F1E0)
/* 138AAC 8024576C 02061021 */  addu      $v0, $s0, $a2
.L80245770:
/* 138AB0 80245770 90420000 */  lbu       $v0, ($v0)
/* 138AB4 80245774 00021080 */  sll       $v0, $v0, 2
/* 138AB8 80245778 00471021 */  addu      $v0, $v0, $a3
/* 138ABC 8024577C 8C420000 */  lw        $v0, ($v0)
/* 138AC0 80245780 90420000 */  lbu       $v0, ($v0)
/* 138AC4 80245784 50400009 */  beql      $v0, $zero, .L802457AC
/* 138AC8 80245788 26100001 */   addiu    $s0, $s0, 1
/* 138ACC 8024578C 02031021 */  addu      $v0, $s0, $v1
/* 138AD0 80245790 90420000 */  lbu       $v0, ($v0)
/* 138AD4 80245794 00021140 */  sll       $v0, $v0, 5
/* 138AD8 80245798 00451021 */  addu      $v0, $v0, $a1
/* 138ADC 8024579C 90420000 */  lbu       $v0, ($v0)
/* 138AE0 802457A0 30420008 */  andi      $v0, $v0, 8
/* 138AE4 802457A4 1440FFE1 */  bnez      $v0, .L8024572C
/* 138AE8 802457A8 26100001 */   addiu    $s0, $s0, 1
.L802457AC:
/* 138AEC 802457AC 2A020006 */  slti      $v0, $s0, 6
/* 138AF0 802457B0 1440FFEF */  bnez      $v0, .L80245770
/* 138AF4 802457B4 02061021 */   addu     $v0, $s0, $a2
.L802457B8:
/* 138AF8 802457B8 14800051 */  bnez      $a0, .L80245900
/* 138AFC 802457BC 0000802D */   daddu    $s0, $zero, $zero
/* 138B00 802457C0 3C1E8024 */  lui       $fp, %hi(func_80243238)
/* 138B04 802457C4 27DE3238 */  addiu     $fp, $fp, %lo(func_80243238)
/* 138B08 802457C8 3C178024 */  lui       $s7, %hi(func_80243188)
/* 138B0C 802457CC 26F73188 */  addiu     $s7, $s7, %lo(func_80243188)
/* 138B10 802457D0 3C168014 */  lui       $s6, %hi(basic_window_update)
/* 138B14 802457D4 26D67474 */  addiu     $s6, $s6, %lo(basic_window_update)
/* 138B18 802457D8 24150001 */  addiu     $s5, $zero, 1
/* 138B1C 802457DC 3C118025 */  lui       $s1, %hi(D_8024F1E0)
/* 138B20 802457E0 2631F1E0 */  addiu     $s1, $s1, %lo(D_8024F1E0)
.L802457E4:
/* 138B24 802457E4 3C088025 */  lui       $t0, %hi(D_8024F1D0)
/* 138B28 802457E8 2508F1D0 */  addiu     $t0, $t0, %lo(D_8024F1D0)
/* 138B2C 802457EC 02081021 */  addu      $v0, $s0, $t0
/* 138B30 802457F0 90420000 */  lbu       $v0, ($v0)
/* 138B34 802457F4 3C088025 */  lui       $t0, %hi(gPauseMenuPanels)
/* 138B38 802457F8 2508EF80 */  addiu     $t0, $t0, %lo(gPauseMenuPanels)
/* 138B3C 802457FC 00021080 */  sll       $v0, $v0, 2
/* 138B40 80245800 00481021 */  addu      $v0, $v0, $t0
/* 138B44 80245804 8C420000 */  lw        $v0, ($v0)
/* 138B48 80245808 90420000 */  lbu       $v0, ($v0)
/* 138B4C 8024580C 50400017 */  beql      $v0, $zero, .L8024586C
/* 138B50 80245810 26100001 */   addiu    $s0, $s0, 1
/* 138B54 80245814 3C088016 */  lui       $t0, %hi(gWindows)
/* 138B58 80245818 25089D50 */  addiu     $t0, $t0, %lo(gWindows)
/* 138B5C 8024581C 92220000 */  lbu       $v0, ($s1)
/* 138B60 80245820 82630001 */  lb        $v1, 1($s3)
/* 138B64 80245824 00021140 */  sll       $v0, $v0, 5
/* 138B68 80245828 00481021 */  addu      $v0, $v0, $t0
/* 138B6C 8024582C 8C420004 */  lw        $v0, 4($v0)
/* 138B70 80245830 5203000E */  beql      $s0, $v1, .L8024586C
/* 138B74 80245834 26100001 */   addiu    $s0, $s0, 1
/* 138B78 80245838 105E0007 */  beq       $v0, $fp, .L80245858
/* 138B7C 8024583C 00000000 */   nop
/* 138B80 80245840 10570005 */  beq       $v0, $s7, .L80245858
/* 138B84 80245844 00000000 */   nop
/* 138B88 80245848 10560003 */  beq       $v0, $s6, .L80245858
/* 138B8C 8024584C 00000000 */   nop
/* 138B90 80245850 54550006 */  bnel      $v0, $s5, .L8024586C
/* 138B94 80245854 26100001 */   addiu    $s0, $s0, 1
.L80245858:
/* 138B98 80245858 92240000 */  lbu       $a0, ($s1)
/* 138B9C 8024585C 0C051F9F */  jal       set_window_update
/* 138BA0 80245860 0240282D */   daddu    $a1, $s2, $zero
/* 138BA4 80245864 24040001 */  addiu     $a0, $zero, 1
/* 138BA8 80245868 26100001 */  addiu     $s0, $s0, 1
.L8024586C:
/* 138BAC 8024586C 2A020006 */  slti      $v0, $s0, 6
/* 138BB0 80245870 1440FFDC */  bnez      $v0, .L802457E4
/* 138BB4 80245874 26310001 */   addiu    $s1, $s1, 1
/* 138BB8 80245878 14800021 */  bnez      $a0, .L80245900
/* 138BBC 8024587C 00000000 */   nop
/* 138BC0 80245880 82620001 */  lb        $v0, 1($s3)
/* 138BC4 80245884 3C018025 */  lui       $at, %hi(D_8024F1E0)
/* 138BC8 80245888 00220821 */  addu      $at, $at, $v0
/* 138BCC 8024588C 9022F1E0 */  lbu       $v0, %lo(D_8024F1E0)($at)
/* 138BD0 80245890 00021140 */  sll       $v0, $v0, 5
/* 138BD4 80245894 3C038016 */  lui       $v1, %hi(D_80159D54)
/* 138BD8 80245898 00621821 */  addu      $v1, $v1, $v0
/* 138BDC 8024589C 8C639D54 */  lw        $v1, %lo(D_80159D54)($v1)
/* 138BE0 802458A0 3C028024 */  lui       $v0, %hi(func_802432E8)
/* 138BE4 802458A4 244232E8 */  addiu     $v0, $v0, %lo(func_802432E8)
/* 138BE8 802458A8 10620007 */  beq       $v1, $v0, .L802458C8
/* 138BEC 802458AC 00000000 */   nop
/* 138BF0 802458B0 3C028024 */  lui       $v0, %hi(func_80243388)
/* 138BF4 802458B4 24423388 */  addiu     $v0, $v0, %lo(func_80243388)
/* 138BF8 802458B8 10620003 */  beq       $v1, $v0, .L802458C8
/* 138BFC 802458BC 24020002 */   addiu    $v0, $zero, 2
/* 138C00 802458C0 1462000F */  bne       $v1, $v0, .L80245900
/* 138C04 802458C4 00000000 */   nop
.L802458C8:
/* 138C08 802458C8 3C038025 */  lui       $v1, %hi(D_8024F310)
/* 138C0C 802458CC 2463F310 */  addiu     $v1, $v1, %lo(D_8024F310)
/* 138C10 802458D0 8C620000 */  lw        $v0, ($v1)
/* 138C14 802458D4 10400004 */  beqz      $v0, .L802458E8
/* 138C18 802458D8 00000000 */   nop
/* 138C1C 802458DC 3C148014 */  lui       $s4, %hi(basic_window_update)
/* 138C20 802458E0 26947474 */  addiu     $s4, $s4, %lo(basic_window_update)
/* 138C24 802458E4 AC600000 */  sw        $zero, ($v1)
.L802458E8:
/* 138C28 802458E8 82620001 */  lb        $v0, 1($s3)
/* 138C2C 802458EC 3C048025 */  lui       $a0, %hi(D_8024F1E0)
/* 138C30 802458F0 00822021 */  addu      $a0, $a0, $v0
/* 138C34 802458F4 9084F1E0 */  lbu       $a0, %lo(D_8024F1E0)($a0)
/* 138C38 802458F8 0C051F9F */  jal       set_window_update
/* 138C3C 802458FC 0280282D */   daddu    $a1, $s4, $zero
.L80245900:
/* 138C40 80245900 8FBF0034 */  lw        $ra, 0x34($sp)
/* 138C44 80245904 8FBE0030 */  lw        $fp, 0x30($sp)
/* 138C48 80245908 8FB7002C */  lw        $s7, 0x2c($sp)
/* 138C4C 8024590C 8FB60028 */  lw        $s6, 0x28($sp)
/* 138C50 80245910 8FB50024 */  lw        $s5, 0x24($sp)
/* 138C54 80245914 8FB40020 */  lw        $s4, 0x20($sp)
/* 138C58 80245918 8FB3001C */  lw        $s3, 0x1c($sp)
/* 138C5C 8024591C 8FB20018 */  lw        $s2, 0x18($sp)
/* 138C60 80245920 8FB10014 */  lw        $s1, 0x14($sp)
/* 138C64 80245924 8FB00010 */  lw        $s0, 0x10($sp)
/* 138C68 80245928 03E00008 */  jr        $ra
/* 138C6C 8024592C 27BD0038 */   addiu    $sp, $sp, 0x38
