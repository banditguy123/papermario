.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E00205D0
/* 334490 E00205D0 27BDFF20 */  addiu     $sp, $sp, -0xe0
/* 334494 E00205D4 3C06DB06 */  lui       $a2, 0xdb06
/* 334498 E00205D8 AFB600C0 */  sw        $s6, 0xc0($sp)
/* 33449C E00205DC 3C16800A */  lui       $s6, %hi(gMasterGfxPos)
/* 3344A0 E00205E0 26D6A66C */  addiu     $s6, $s6, %lo(gMasterGfxPos)
/* 3344A4 E00205E4 34C60024 */  ori       $a2, $a2, 0x24
/* 3344A8 E00205E8 AFBF00CC */  sw        $ra, 0xcc($sp)
/* 3344AC E00205EC AFBE00C8 */  sw        $fp, 0xc8($sp)
/* 3344B0 E00205F0 AFB700C4 */  sw        $s7, 0xc4($sp)
/* 3344B4 E00205F4 AFB500BC */  sw        $s5, 0xbc($sp)
/* 3344B8 E00205F8 AFB400B8 */  sw        $s4, 0xb8($sp)
/* 3344BC E00205FC AFB300B4 */  sw        $s3, 0xb4($sp)
/* 3344C0 E0020600 AFB200B0 */  sw        $s2, 0xb0($sp)
/* 3344C4 E0020604 AFB100AC */  sw        $s1, 0xac($sp)
/* 3344C8 E0020608 AFB000A8 */  sw        $s0, 0xa8($sp)
/* 3344CC E002060C F7B600D8 */  sdc1      $f22, 0xd8($sp)
/* 3344D0 E0020610 F7B400D0 */  sdc1      $f20, 0xd0($sp)
/* 3344D4 E0020614 8EC50000 */  lw        $a1, ($s6)
/* 3344D8 E0020618 8C94000C */  lw        $s4, 0xc($a0)
/* 3344DC E002061C 00A0182D */  daddu     $v1, $a1, $zero
/* 3344E0 E0020620 24A50008 */  addiu     $a1, $a1, 8
/* 3344E4 E0020624 AEC50000 */  sw        $a1, ($s6)
/* 3344E8 E0020628 8E950000 */  lw        $s5, ($s4)
/* 3344EC E002062C 3C02E700 */  lui       $v0, 0xe700
/* 3344F0 E0020630 AC620000 */  sw        $v0, ($v1)
/* 3344F4 E0020634 AC600004 */  sw        $zero, 4($v1)
/* 3344F8 E0020638 ACA60000 */  sw        $a2, ($a1)
/* 3344FC E002063C 8C830010 */  lw        $v1, 0x10($a0)
/* 334500 E0020640 24A20008 */  addiu     $v0, $a1, 8
/* 334504 E0020644 AEC20000 */  sw        $v0, ($s6)
/* 334508 E0020648 8C62001C */  lw        $v0, 0x1c($v1)
/* 33450C E002064C 3C038000 */  lui       $v1, 0x8000
/* 334510 E0020650 00431021 */  addu      $v0, $v0, $v1
/* 334514 E0020654 ACA20004 */  sw        $v0, 4($a1)
/* 334518 E0020658 24020001 */  addiu     $v0, $zero, 1
/* 33451C E002065C 12A2006D */  beq       $s5, $v0, .LE0020814
/* 334520 E0020660 27A40018 */   addiu    $a0, $sp, 0x18
/* 334524 E0020664 3C130001 */  lui       $s3, 1
/* 334528 E0020668 8E850004 */  lw        $a1, 4($s4)
/* 33452C E002066C 8E860008 */  lw        $a2, 8($s4)
/* 334530 E0020670 8E87000C */  lw        $a3, 0xc($s4)
/* 334534 E0020674 0C080108 */  jal       shim_guTranslateF
/* 334538 E0020678 36731630 */   ori      $s3, $s3, 0x1630
/* 33453C E002067C 27B00058 */  addiu     $s0, $sp, 0x58
/* 334540 E0020680 4480B000 */  mtc1      $zero, $f22
/* 334544 E0020684 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* 334548 E0020688 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* 33454C E002068C 3C013F80 */  lui       $at, 0x3f80
/* 334550 E0020690 4481A000 */  mtc1      $at, $f20
/* 334554 E0020694 00031080 */  sll       $v0, $v1, 2
/* 334558 E0020698 00431021 */  addu      $v0, $v0, $v1
/* 33455C E002069C 00021080 */  sll       $v0, $v0, 2
/* 334560 E00206A0 00431023 */  subu      $v0, $v0, $v1
/* 334564 E00206A4 000218C0 */  sll       $v1, $v0, 3
/* 334568 E00206A8 00431021 */  addu      $v0, $v0, $v1
/* 33456C E00206AC 000210C0 */  sll       $v0, $v0, 3
/* 334570 E00206B0 4406B000 */  mfc1      $a2, $f22
/* 334574 E00206B4 3C01800B */  lui       $at, %hi(gCameras+0x6C)
/* 334578 E00206B8 00220821 */  addu      $at, $at, $v0
/* 33457C E00206BC C4201DEC */  lwc1      $f0, %lo(gCameras+0x6C)($at)
/* 334580 E00206C0 4407A000 */  mfc1      $a3, $f20
/* 334584 E00206C4 46000007 */  neg.s     $f0, $f0
/* 334588 E00206C8 44050000 */  mfc1      $a1, $f0
/* 33458C E00206CC 0200202D */  daddu     $a0, $s0, $zero
/* 334590 E00206D0 0C080104 */  jal       shim_guRotateF
/* 334594 E00206D4 E7B60010 */   swc1     $f22, 0x10($sp)
/* 334598 E00206D8 0200202D */  daddu     $a0, $s0, $zero
/* 33459C E00206DC 27A50018 */  addiu     $a1, $sp, 0x18
/* 3345A0 E00206E0 0C080114 */  jal       shim_guMtxCatF
/* 3345A4 E00206E4 00A0302D */   daddu    $a2, $a1, $zero
/* 3345A8 E00206E8 27A40018 */  addiu     $a0, $sp, 0x18
/* 3345AC E00206EC 3C118007 */  lui       $s1, %hi(gMatrixListPos)
/* 3345B0 E00206F0 263141F0 */  addiu     $s1, $s1, %lo(gMatrixListPos)
/* 3345B4 E00206F4 3C12800A */  lui       $s2, %hi(gDisplayContext)
/* 3345B8 E00206F8 2652A674 */  addiu     $s2, $s2, %lo(gDisplayContext)
/* 3345BC E00206FC 96220000 */  lhu       $v0, ($s1)
/* 3345C0 E0020700 8E460000 */  lw        $a2, ($s2)
/* 3345C4 E0020704 00022980 */  sll       $a1, $v0, 6
/* 3345C8 E0020708 00B32821 */  addu      $a1, $a1, $s3
/* 3345CC E002070C 00C52821 */  addu      $a1, $a2, $a1
/* 3345D0 E0020710 24430001 */  addiu     $v1, $v0, 1
/* 3345D4 E0020714 00021180 */  sll       $v0, $v0, 6
/* 3345D8 E0020718 00531021 */  addu      $v0, $v0, $s3
/* 3345DC E002071C 00C23021 */  addu      $a2, $a2, $v0
/* 3345E0 E0020720 A6230000 */  sh        $v1, ($s1)
/* 3345E4 E0020724 0C080118 */  jal       shim_guMtxF2L
/* 3345E8 E0020728 AFA60098 */   sw       $a2, 0x98($sp)
/* 3345EC E002072C 4405A000 */  mfc1      $a1, $f20
/* 3345F0 E0020730 3C063F4C */  lui       $a2, 0x3f4c
/* 3345F4 E0020734 34C6CCCD */  ori       $a2, $a2, 0xcccd
/* 3345F8 E0020738 4407A000 */  mfc1      $a3, $f20
/* 3345FC E002073C 0C080110 */  jal       shim_guScaleF
/* 334600 E0020740 0200202D */   daddu    $a0, $s0, $zero
/* 334604 E0020744 0200202D */  daddu     $a0, $s0, $zero
/* 334608 E0020748 27A50018 */  addiu     $a1, $sp, 0x18
/* 33460C E002074C 0C080114 */  jal       shim_guMtxCatF
/* 334610 E0020750 00A0302D */   daddu    $a2, $a1, $zero
/* 334614 E0020754 4406B000 */  mfc1      $a2, $f22
/* 334618 E0020758 0200202D */  daddu     $a0, $s0, $zero
/* 33461C E002075C E7B40010 */  swc1      $f20, 0x10($sp)
/* 334620 E0020760 8E850024 */  lw        $a1, 0x24($s4)
/* 334624 E0020764 0C080104 */  jal       shim_guRotateF
/* 334628 E0020768 00C0382D */   daddu    $a3, $a2, $zero
/* 33462C E002076C 0200202D */  daddu     $a0, $s0, $zero
/* 334630 E0020770 27A50018 */  addiu     $a1, $sp, 0x18
/* 334634 E0020774 0C080114 */  jal       shim_guMtxCatF
/* 334638 E0020778 00A0302D */   daddu    $a2, $a1, $zero
/* 33463C E002077C 27A40018 */  addiu     $a0, $sp, 0x18
/* 334640 E0020780 96250000 */  lhu       $a1, ($s1)
/* 334644 E0020784 8E420000 */  lw        $v0, ($s2)
/* 334648 E0020788 00052980 */  sll       $a1, $a1, 6
/* 33464C E002078C 00B32821 */  addu      $a1, $a1, $s3
/* 334650 E0020790 0C080118 */  jal       shim_guMtxF2L
/* 334654 E0020794 00452821 */   addu     $a1, $v0, $a1
/* 334658 E0020798 3C03DA38 */  lui       $v1, 0xda38
/* 33465C E002079C 34630002 */  ori       $v1, $v1, 2
/* 334660 E00207A0 3C06D838 */  lui       $a2, 0xd838
/* 334664 E00207A4 34C60002 */  ori       $a2, $a2, 2
/* 334668 E00207A8 8EC40000 */  lw        $a0, ($s6)
/* 33466C E00207AC 96220000 */  lhu       $v0, ($s1)
/* 334670 E00207B0 0080282D */  daddu     $a1, $a0, $zero
/* 334674 E00207B4 24840008 */  addiu     $a0, $a0, 8
/* 334678 E00207B8 AEC40000 */  sw        $a0, ($s6)
/* 33467C E00207BC ACA30000 */  sw        $v1, ($a1)
/* 334680 E00207C0 24430001 */  addiu     $v1, $v0, 1
/* 334684 E00207C4 3042FFFF */  andi      $v0, $v0, 0xffff
/* 334688 E00207C8 00021180 */  sll       $v0, $v0, 6
/* 33468C E00207CC A6230000 */  sh        $v1, ($s1)
/* 334690 E00207D0 8E430000 */  lw        $v1, ($s2)
/* 334694 E00207D4 00531021 */  addu      $v0, $v0, $s3
/* 334698 E00207D8 00621821 */  addu      $v1, $v1, $v0
/* 33469C E00207DC 24820008 */  addiu     $v0, $a0, 8
/* 3346A0 E00207E0 ACA30004 */  sw        $v1, 4($a1)
/* 3346A4 E00207E4 AEC20000 */  sw        $v0, ($s6)
/* 3346A8 E00207E8 3C02DE00 */  lui       $v0, 0xde00
/* 3346AC E00207EC AC820000 */  sw        $v0, ($a0)
/* 3346B0 E00207F0 3C020900 */  lui       $v0, 0x900
/* 3346B4 E00207F4 24422170 */  addiu     $v0, $v0, 0x2170
/* 3346B8 E00207F8 AC820004 */  sw        $v0, 4($a0)
/* 3346BC E00207FC 24820010 */  addiu     $v0, $a0, 0x10
/* 3346C0 E0020800 AEC20000 */  sw        $v0, ($s6)
/* 3346C4 E0020804 24020040 */  addiu     $v0, $zero, 0x40
/* 3346C8 E0020808 AC860008 */  sw        $a2, 8($a0)
/* 3346CC E002080C 08008276 */  j         .LE00209D8
/* 3346D0 E0020810 AC82000C */   sw       $v0, 0xc($a0)
.LE0020814:
/* 3346D4 E0020814 8E820038 */  lw        $v0, 0x38($s4)
/* 3346D8 E0020818 1440010F */  bnez      $v0, .LE0020C58
/* 3346DC E002081C 0000982D */   daddu    $s3, $zero, $zero
/* 3346E0 E0020820 27B10058 */  addiu     $s1, $sp, 0x58
/* 3346E4 E0020824 3C1E800A */  lui       $fp, %hi(gDisplayContext)
/* 3346E8 E0020828 27DEA674 */  addiu     $fp, $fp, %lo(gDisplayContext)
/* 3346EC E002082C 3C178007 */  lui       $s7, %hi(gMatrixListPos)
/* 3346F0 E0020830 26F741F0 */  addiu     $s7, $s7, %lo(gMatrixListPos)
/* 3346F4 E0020834 3C150001 */  lui       $s5, 1
/* 3346F8 E0020838 36B51630 */  ori       $s5, $s5, 0x1630
/* 3346FC E002083C 02C0902D */  daddu     $s2, $s6, $zero
/* 334700 E0020840 26900028 */  addiu     $s0, $s4, 0x28
/* 334704 E0020844 4480A000 */  mtc1      $zero, $f20
/* 334708 E0020848 3C013F80 */  lui       $at, 0x3f80
/* 33470C E002084C 4481B000 */  mtc1      $at, $f22
.LE0020850:
/* 334710 E0020850 27A40018 */  addiu     $a0, $sp, 0x18
/* 334714 E0020854 8E05FFDC */  lw        $a1, -0x24($s0)
/* 334718 E0020858 8E06FFE0 */  lw        $a2, -0x20($s0)
/* 33471C E002085C 8E07FFE4 */  lw        $a3, -0x1c($s0)
/* 334720 E0020860 0C080108 */  jal       shim_guTranslateF
/* 334724 E0020864 26730001 */   addiu    $s3, $s3, 1
/* 334728 E0020868 3C09800B */  lui       $t1, %hi(gCameras)
/* 33472C E002086C 25291D80 */  addiu     $t1, $t1, %lo(gCameras)
/* 334730 E0020870 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* 334734 E0020874 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* 334738 E0020878 4406A000 */  mfc1      $a2, $f20
/* 33473C E002087C 00031080 */  sll       $v0, $v1, 2
/* 334740 E0020880 00431021 */  addu      $v0, $v0, $v1
/* 334744 E0020884 00021080 */  sll       $v0, $v0, 2
/* 334748 E0020888 00431023 */  subu      $v0, $v0, $v1
/* 33474C E002088C 000218C0 */  sll       $v1, $v0, 3
/* 334750 E0020890 00431021 */  addu      $v0, $v0, $v1
/* 334754 E0020894 000210C0 */  sll       $v0, $v0, 3
/* 334758 E0020898 00491021 */  addu      $v0, $v0, $t1
/* 33475C E002089C C440006C */  lwc1      $f0, 0x6c($v0)
/* 334760 E00208A0 4407B000 */  mfc1      $a3, $f22
/* 334764 E00208A4 46000007 */  neg.s     $f0, $f0
/* 334768 E00208A8 44050000 */  mfc1      $a1, $f0
/* 33476C E00208AC 0220202D */  daddu     $a0, $s1, $zero
/* 334770 E00208B0 0C080104 */  jal       shim_guRotateF
/* 334774 E00208B4 E7B40010 */   swc1     $f20, 0x10($sp)
/* 334778 E00208B8 0220202D */  daddu     $a0, $s1, $zero
/* 33477C E00208BC 27A50018 */  addiu     $a1, $sp, 0x18
/* 334780 E00208C0 0C080114 */  jal       shim_guMtxCatF
/* 334784 E00208C4 00A0302D */   daddu    $a2, $a1, $zero
/* 334788 E00208C8 E7B60010 */  swc1      $f22, 0x10($sp)
/* 33478C E00208CC 8E05FFFC */  lw        $a1, -4($s0)
/* 334790 E00208D0 4406A000 */  mfc1      $a2, $f20
/* 334794 E00208D4 4407A000 */  mfc1      $a3, $f20
/* 334798 E00208D8 0C080104 */  jal       shim_guRotateF
/* 33479C E00208DC 0220202D */   daddu    $a0, $s1, $zero
/* 3347A0 E00208E0 0220202D */  daddu     $a0, $s1, $zero
/* 3347A4 E00208E4 27A50018 */  addiu     $a1, $sp, 0x18
/* 3347A8 E00208E8 0C080114 */  jal       shim_guMtxCatF
/* 3347AC E00208EC 00A0302D */   daddu    $a2, $a1, $zero
/* 3347B0 E00208F0 0220202D */  daddu     $a0, $s1, $zero
/* 3347B4 E00208F4 8E050000 */  lw        $a1, ($s0)
/* 3347B8 E00208F8 26100040 */  addiu     $s0, $s0, 0x40
/* 3347BC E00208FC 4407B000 */  mfc1      $a3, $f22
/* 3347C0 E0020900 0C080110 */  jal       shim_guScaleF
/* 3347C4 E0020904 00A0302D */   daddu    $a2, $a1, $zero
/* 3347C8 E0020908 0220202D */  daddu     $a0, $s1, $zero
/* 3347CC E002090C 27A50018 */  addiu     $a1, $sp, 0x18
/* 3347D0 E0020910 0C080114 */  jal       shim_guMtxCatF
/* 3347D4 E0020914 00A0302D */   daddu    $a2, $a1, $zero
/* 3347D8 E0020918 27A40018 */  addiu     $a0, $sp, 0x18
/* 3347DC E002091C 96E50000 */  lhu       $a1, ($s7)
/* 3347E0 E0020920 8FC20000 */  lw        $v0, ($fp)
/* 3347E4 E0020924 00052980 */  sll       $a1, $a1, 6
/* 3347E8 E0020928 00B52821 */  addu      $a1, $a1, $s5
/* 3347EC E002092C 0C080118 */  jal       shim_guMtxF2L
/* 3347F0 E0020930 00452821 */   addu     $a1, $v0, $a1
/* 3347F4 E0020934 3C05EB1C */  lui       $a1, 0xeb1c
/* 3347F8 E0020938 34A500FF */  ori       $a1, $a1, 0xff
/* 3347FC E002093C 3C06DA38 */  lui       $a2, 0xda38
/* 334800 E0020940 34C60002 */  ori       $a2, $a2, 2
/* 334804 E0020944 3C07D838 */  lui       $a3, 0xd838
/* 334808 E0020948 34E70002 */  ori       $a3, $a3, 2
/* 33480C E002094C 8E440000 */  lw        $a0, ($s2)
/* 334810 E0020950 3C02FA00 */  lui       $v0, 0xfa00
/* 334814 E0020954 0080182D */  daddu     $v1, $a0, $zero
/* 334818 E0020958 24840008 */  addiu     $a0, $a0, 8
/* 33481C E002095C AE440000 */  sw        $a0, ($s2)
/* 334820 E0020960 AC620000 */  sw        $v0, ($v1)
/* 334824 E0020964 AC650004 */  sw        $a1, 4($v1)
/* 334828 E0020968 96E30000 */  lhu       $v1, ($s7)
/* 33482C E002096C 24820008 */  addiu     $v0, $a0, 8
/* 334830 E0020970 AE420000 */  sw        $v0, ($s2)
/* 334834 E0020974 AC860000 */  sw        $a2, ($a0)
/* 334838 E0020978 24620001 */  addiu     $v0, $v1, 1
/* 33483C E002097C 3063FFFF */  andi      $v1, $v1, 0xffff
/* 334840 E0020980 00031980 */  sll       $v1, $v1, 6
/* 334844 E0020984 A6E20000 */  sh        $v0, ($s7)
/* 334848 E0020988 8FC20000 */  lw        $v0, ($fp)
/* 33484C E002098C 00751821 */  addu      $v1, $v1, $s5
/* 334850 E0020990 00431021 */  addu      $v0, $v0, $v1
/* 334854 E0020994 AC820004 */  sw        $v0, 4($a0)
/* 334858 E0020998 24820010 */  addiu     $v0, $a0, 0x10
/* 33485C E002099C AE420000 */  sw        $v0, ($s2)
/* 334860 E00209A0 3C02DE00 */  lui       $v0, 0xde00
/* 334864 E00209A4 AC820008 */  sw        $v0, 8($a0)
/* 334868 E00209A8 3C020900 */  lui       $v0, 0x900
/* 33486C E00209AC 24422578 */  addiu     $v0, $v0, 0x2578
/* 334870 E00209B0 AC82000C */  sw        $v0, 0xc($a0)
/* 334874 E00209B4 24820018 */  addiu     $v0, $a0, 0x18
/* 334878 E00209B8 AE420000 */  sw        $v0, ($s2)
/* 33487C E00209BC 24020040 */  addiu     $v0, $zero, 0x40
/* 334880 E00209C0 AC820014 */  sw        $v0, 0x14($a0)
/* 334884 E00209C4 2A620003 */  slti      $v0, $s3, 3
/* 334888 E00209C8 1440FFA1 */  bnez      $v0, .LE0020850
/* 33488C E00209CC AC870010 */   sw       $a3, 0x10($a0)
/* 334890 E00209D0 08008316 */  j         .LE0020C58
/* 334894 E00209D4 00000000 */   nop
.LE00209D8:
/* 334898 E00209D8 3C03DA38 */  lui       $v1, 0xda38
/* 33489C E00209DC 3C06800A */  lui       $a2, %hi(gMasterGfxPos)
/* 3348A0 E00209E0 24C6A66C */  addiu     $a2, $a2, %lo(gMasterGfxPos)
/* 3348A4 E00209E4 8CC50000 */  lw        $a1, ($a2)
/* 3348A8 E00209E8 34630002 */  ori       $v1, $v1, 2
/* 3348AC E00209EC 00A0102D */  daddu     $v0, $a1, $zero
/* 3348B0 E00209F0 24A50008 */  addiu     $a1, $a1, 8
/* 3348B4 E00209F4 ACC50000 */  sw        $a1, ($a2)
/* 3348B8 E00209F8 AC430000 */  sw        $v1, ($v0)
/* 3348BC E00209FC 8FA90098 */  lw        $t1, 0x98($sp)
/* 3348C0 E0020A00 24030002 */  addiu     $v1, $zero, 2
/* 3348C4 E0020A04 AC490004 */  sw        $t1, 4($v0)
/* 3348C8 E0020A08 00151080 */  sll       $v0, $s5, 2
/* 3348CC E0020A0C 8E840038 */  lw        $a0, 0x38($s4)
/* 3348D0 E0020A10 3C07E002 */  lui       $a3, %hi(D_E0020CA4)
/* 3348D4 E0020A14 00E23821 */  addu      $a3, $a3, $v0
/* 3348D8 E0020A18 8CE70CA4 */  lw        $a3, %lo(D_E0020CA4)($a3)
/* 3348DC E0020A1C 3C08E002 */  lui       $t0, %hi(D_E0020C90)
/* 3348E0 E0020A20 01024021 */  addu      $t0, $t0, $v0
/* 3348E4 E0020A24 8D080C90 */  lw        $t0, %lo(D_E0020C90)($t0)
/* 3348E8 E0020A28 12A30016 */  beq       $s5, $v1, .LE0020A84
/* 3348EC E0020A2C 2AA20003 */   slti     $v0, $s5, 3
/* 3348F0 E0020A30 50400005 */  beql      $v0, $zero, .LE0020A48
/* 3348F4 E0020A34 24020003 */   addiu    $v0, $zero, 3
/* 3348F8 E0020A38 12A00009 */  beqz      $s5, .LE0020A60
/* 3348FC E0020A3C 24090010 */   addiu    $t1, $zero, 0x10
/* 334900 E0020A40 080082E2 */  j         .LE0020B88
/* 334904 E0020A44 00000000 */   nop
.LE0020A48:
/* 334908 E0020A48 12A2001E */  beq       $s5, $v0, .LE0020AC4
/* 33490C E0020A4C 24020004 */   addiu    $v0, $zero, 4
/* 334910 E0020A50 12A20046 */  beq       $s5, $v0, .LE0020B6C
/* 334914 E0020A54 24090020 */   addiu    $t1, $zero, 0x20
/* 334918 E0020A58 080082E2 */  j         .LE0020B88
/* 33491C E0020A5C 00000000 */   nop
.LE0020A60:
/* 334920 E0020A60 00041900 */  sll       $v1, $a0, 4
/* 334924 E0020A64 24020080 */  addiu     $v0, $zero, 0x80
/* 334928 E0020A68 0043B823 */  subu      $s7, $v0, $v1
/* 33492C E0020A6C 0000F02D */  daddu     $fp, $zero, $zero
/* 334930 E0020A70 3C03DC00 */  lui       $v1, 0xdc00
/* 334934 E0020A74 346300FF */  ori       $v1, $v1, 0xff
/* 334938 E0020A78 24A20008 */  addiu     $v0, $a1, 8
/* 33493C E0020A7C 080082AB */  j         .LE0020AAC
/* 334940 E0020A80 AFA9009C */   sw       $t1, 0x9c($sp)
.LE0020A84:
/* 334944 E0020A84 24090020 */  addiu     $t1, $zero, 0x20
/* 334948 E0020A88 AFA9009C */  sw        $t1, 0x9c($sp)
/* 33494C E0020A8C 24090030 */  addiu     $t1, $zero, 0x30
/* 334950 E0020A90 00041940 */  sll       $v1, $a0, 5
/* 334954 E0020A94 24020080 */  addiu     $v0, $zero, 0x80
/* 334958 E0020A98 0043B823 */  subu      $s7, $v0, $v1
/* 33495C E0020A9C 0000F02D */  daddu     $fp, $zero, $zero
/* 334960 E0020AA0 3C03DC00 */  lui       $v1, 0xdc00
/* 334964 E0020AA4 346300FF */  ori       $v1, $v1, 0xff
/* 334968 E0020AA8 24A20008 */  addiu     $v0, $a1, 8
.LE0020AAC:
/* 33496C E0020AAC AFA900A0 */  sw        $t1, 0xa0($sp)
/* 334970 E0020AB0 ACC20000 */  sw        $v0, ($a2)
/* 334974 E0020AB4 3C02FA00 */  lui       $v0, 0xfa00
/* 334978 E0020AB8 ACA20000 */  sw        $v0, ($a1)
/* 33497C E0020ABC 080082E2 */  j         .LE0020B88
/* 334980 E0020AC0 ACA30004 */   sw       $v1, 4($a1)
.LE0020AC4:
/* 334984 E0020AC4 24090020 */  addiu     $t1, $zero, 0x20
/* 334988 E0020AC8 00041940 */  sll       $v1, $a0, 5
/* 33498C E0020ACC 24020080 */  addiu     $v0, $zero, 0x80
/* 334990 E0020AD0 0043B823 */  subu      $s7, $v0, $v1
/* 334994 E0020AD4 0000F02D */  daddu     $fp, $zero, $zero
/* 334998 E0020AD8 3C039249 */  lui       $v1, 0x9249
/* 33499C E0020ADC AFA9009C */  sw        $t1, 0x9c($sp)
/* 3349A0 E0020AE0 AFA900A0 */  sw        $t1, 0xa0($sp)
/* 3349A4 E0020AE4 8E82002C */  lw        $v0, 0x2c($s4)
/* 3349A8 E0020AE8 34632493 */  ori       $v1, $v1, 0x2493
/* 3349AC E0020AEC 00022040 */  sll       $a0, $v0, 1
/* 3349B0 E0020AF0 00822021 */  addu      $a0, $a0, $v0
/* 3349B4 E0020AF4 24A20008 */  addiu     $v0, $a1, 8
/* 3349B8 E0020AF8 00830018 */  mult      $a0, $v1
/* 3349BC E0020AFC ACC20000 */  sw        $v0, ($a2)
/* 3349C0 E0020B00 3C02FA00 */  lui       $v0, 0xfa00
/* 3349C4 E0020B04 00041FC3 */  sra       $v1, $a0, 0x1f
/* 3349C8 E0020B08 ACA20000 */  sw        $v0, ($a1)
/* 3349CC E0020B0C 00004810 */  mfhi      $t1
/* 3349D0 E0020B10 01241021 */  addu      $v0, $t1, $a0
/* 3349D4 E0020B14 00021083 */  sra       $v0, $v0, 2
/* 3349D8 E0020B18 00431823 */  subu      $v1, $v0, $v1
/* 3349DC E0020B1C 000310C0 */  sll       $v0, $v1, 3
/* 3349E0 E0020B20 00431023 */  subu      $v0, $v0, $v1
/* 3349E4 E0020B24 00821823 */  subu      $v1, $a0, $v0
/* 3349E8 E0020B28 3C02E002 */  lui       $v0, %hi(D_E0020D94)
/* 3349EC E0020B2C 00431021 */  addu      $v0, $v0, $v1
/* 3349F0 E0020B30 90420D94 */  lbu       $v0, %lo(D_E0020D94)($v0)
/* 3349F4 E0020B34 3C04E002 */  lui       $a0, %hi(D_E0020D95)
/* 3349F8 E0020B38 00832021 */  addu      $a0, $a0, $v1
/* 3349FC E0020B3C 90840D95 */  lbu       $a0, %lo(D_E0020D95)($a0)
/* 334A00 E0020B40 3C01E002 */  lui       $at, %hi(D_E0020D96)
/* 334A04 E0020B44 00230821 */  addu      $at, $at, $v1
/* 334A08 E0020B48 90230D96 */  lbu       $v1, %lo(D_E0020D96)($at)
/* 334A0C E0020B4C 00021600 */  sll       $v0, $v0, 0x18
/* 334A10 E0020B50 00042400 */  sll       $a0, $a0, 0x10
/* 334A14 E0020B54 00441025 */  or        $v0, $v0, $a0
/* 334A18 E0020B58 00031A00 */  sll       $v1, $v1, 8
/* 334A1C E0020B5C 00431025 */  or        $v0, $v0, $v1
/* 334A20 E0020B60 344200FF */  ori       $v0, $v0, 0xff
/* 334A24 E0020B64 080082E2 */  j         .LE0020B88
/* 334A28 E0020B68 ACA20004 */   sw       $v0, 4($a1)
.LE0020B6C:
/* 334A2C E0020B6C AFA9009C */  sw        $t1, 0x9c($sp)
/* 334A30 E0020B70 24090008 */  addiu     $t1, $zero, 8
/* 334A34 E0020B74 00041940 */  sll       $v1, $a0, 5
/* 334A38 E0020B78 24020080 */  addiu     $v0, $zero, 0x80
/* 334A3C E0020B7C 0043B823 */  subu      $s7, $v0, $v1
/* 334A40 E0020B80 0000F02D */  daddu     $fp, $zero, $zero
/* 334A44 E0020B84 AFA900A0 */  sw        $t1, 0xa0($sp)
.LE0020B88:
/* 334A48 E0020B88 10E0000A */  beqz      $a3, .LE0020BB4
/* 334A4C E0020B8C 00000000 */   nop
/* 334A50 E0020B90 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* 334A54 E0020B94 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* 334A58 E0020B98 8C620000 */  lw        $v0, ($v1)
/* 334A5C E0020B9C 0040202D */  daddu     $a0, $v0, $zero
/* 334A60 E0020BA0 24420008 */  addiu     $v0, $v0, 8
/* 334A64 E0020BA4 AC620000 */  sw        $v0, ($v1)
/* 334A68 E0020BA8 3C02DE00 */  lui       $v0, 0xde00
/* 334A6C E0020BAC AC820000 */  sw        $v0, ($a0)
/* 334A70 E0020BB0 AC870004 */  sw        $a3, 4($a0)
.LE0020BB4:
/* 334A74 E0020BB4 3C07800A */  lui       $a3, %hi(gMasterGfxPos)
/* 334A78 E0020BB8 24E7A66C */  addiu     $a3, $a3, %lo(gMasterGfxPos)
/* 334A7C E0020BBC 00171080 */  sll       $v0, $s7, 2
/* 334A80 E0020BC0 30420FFF */  andi      $v0, $v0, 0xfff
/* 334A84 E0020BC4 00021300 */  sll       $v0, $v0, 0xc
/* 334A88 E0020BC8 001E1880 */  sll       $v1, $fp, 2
/* 334A8C E0020BCC 30630FFF */  andi      $v1, $v1, 0xfff
/* 334A90 E0020BD0 3C04F200 */  lui       $a0, 0xf200
/* 334A94 E0020BD4 00641825 */  or        $v1, $v1, $a0
/* 334A98 E0020BD8 8CE60000 */  lw        $a2, ($a3)
/* 334A9C E0020BDC 00431025 */  or        $v0, $v0, $v1
/* 334AA0 E0020BE0 00C0282D */  daddu     $a1, $a2, $zero
/* 334AA4 E0020BE4 24C60008 */  addiu     $a2, $a2, 8
/* 334AA8 E0020BE8 ACE60000 */  sw        $a2, ($a3)
/* 334AAC E0020BEC ACA20000 */  sw        $v0, ($a1)
/* 334AB0 E0020BF0 8FA9009C */  lw        $t1, 0x9c($sp)
/* 334AB4 E0020BF4 02E91821 */  addu      $v1, $s7, $t1
/* 334AB8 E0020BF8 00031880 */  sll       $v1, $v1, 2
/* 334ABC E0020BFC 30630FFF */  andi      $v1, $v1, 0xfff
/* 334AC0 E0020C00 8FA900A0 */  lw        $t1, 0xa0($sp)
/* 334AC4 E0020C04 00031B00 */  sll       $v1, $v1, 0xc
/* 334AC8 E0020C08 03C91021 */  addu      $v0, $fp, $t1
/* 334ACC E0020C0C 00021080 */  sll       $v0, $v0, 2
/* 334AD0 E0020C10 30420FFF */  andi      $v0, $v0, 0xfff
/* 334AD4 E0020C14 00621825 */  or        $v1, $v1, $v0
/* 334AD8 E0020C18 11000006 */  beqz      $t0, .LE0020C34
/* 334ADC E0020C1C ACA30004 */   sw       $v1, 4($a1)
/* 334AE0 E0020C20 24C20008 */  addiu     $v0, $a2, 8
/* 334AE4 E0020C24 ACE20000 */  sw        $v0, ($a3)
/* 334AE8 E0020C28 3C02DE00 */  lui       $v0, 0xde00
/* 334AEC E0020C2C ACC20000 */  sw        $v0, ($a2)
/* 334AF0 E0020C30 ACC80004 */  sw        $t0, 4($a2)
.LE0020C34:
/* 334AF4 E0020C34 3C04D838 */  lui       $a0, 0xd838
/* 334AF8 E0020C38 8CE20000 */  lw        $v0, ($a3)
/* 334AFC E0020C3C 34840002 */  ori       $a0, $a0, 2
/* 334B00 E0020C40 0040182D */  daddu     $v1, $v0, $zero
/* 334B04 E0020C44 24420008 */  addiu     $v0, $v0, 8
/* 334B08 E0020C48 ACE20000 */  sw        $v0, ($a3)
/* 334B0C E0020C4C 24020040 */  addiu     $v0, $zero, 0x40
/* 334B10 E0020C50 AC640000 */  sw        $a0, ($v1)
/* 334B14 E0020C54 AC620004 */  sw        $v0, 4($v1)
.LE0020C58:
/* 334B18 E0020C58 8FBF00CC */  lw        $ra, 0xcc($sp)
/* 334B1C E0020C5C 8FBE00C8 */  lw        $fp, 0xc8($sp)
/* 334B20 E0020C60 8FB700C4 */  lw        $s7, 0xc4($sp)
/* 334B24 E0020C64 8FB600C0 */  lw        $s6, 0xc0($sp)
/* 334B28 E0020C68 8FB500BC */  lw        $s5, 0xbc($sp)
/* 334B2C E0020C6C 8FB400B8 */  lw        $s4, 0xb8($sp)
/* 334B30 E0020C70 8FB300B4 */  lw        $s3, 0xb4($sp)
/* 334B34 E0020C74 8FB200B0 */  lw        $s2, 0xb0($sp)
/* 334B38 E0020C78 8FB100AC */  lw        $s1, 0xac($sp)
/* 334B3C E0020C7C 8FB000A8 */  lw        $s0, 0xa8($sp)
/* 334B40 E0020C80 D7B600D8 */  ldc1      $f22, 0xd8($sp)
/* 334B44 E0020C84 D7B400D0 */  ldc1      $f20, 0xd0($sp)
/* 334B48 E0020C88 03E00008 */  jr        $ra
/* 334B4C E0020C8C 27BD00E0 */   addiu    $sp, $sp, 0xe0
