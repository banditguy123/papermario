.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024146C_A2B6AC
/* A2B6AC 8024146C 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* A2B6B0 80241470 3C04800B */  lui       $a0, %hi(gCameras)
/* A2B6B4 80241474 24841D80 */  addiu     $a0, $a0, %lo(gCameras)
/* A2B6B8 80241478 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* A2B6BC 8024147C 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* A2B6C0 80241480 3C05800A */  lui       $a1, %hi(nuGfxCfb_ptr)
/* A2B6C4 80241484 8CA5A64C */  lw        $a1, %lo(nuGfxCfb_ptr)($a1)
/* A2B6C8 80241488 3C088025 */  lui       $t0, %hi(D_802498D4_A33B14)
/* A2B6CC 8024148C 250898D4 */  addiu     $t0, $t0, %lo(D_802498D4_A33B14)
/* A2B6D0 80241490 AFBF0034 */  sw        $ra, 0x34($sp)
/* A2B6D4 80241494 AFB60030 */  sw        $s6, 0x30($sp)
/* A2B6D8 80241498 AFB5002C */  sw        $s5, 0x2c($sp)
/* A2B6DC 8024149C AFB40028 */  sw        $s4, 0x28($sp)
/* A2B6E0 802414A0 AFB30024 */  sw        $s3, 0x24($sp)
/* A2B6E4 802414A4 AFB20020 */  sw        $s2, 0x20($sp)
/* A2B6E8 802414A8 AFB1001C */  sw        $s1, 0x1c($sp)
/* A2B6EC 802414AC AFB00018 */  sw        $s0, 0x18($sp)
/* A2B6F0 802414B0 F7B60040 */  sdc1      $f22, 0x40($sp)
/* A2B6F4 802414B4 F7B40038 */  sdc1      $f20, 0x38($sp)
/* A2B6F8 802414B8 00031080 */  sll       $v0, $v1, 2
/* A2B6FC 802414BC 00431021 */  addu      $v0, $v0, $v1
/* A2B700 802414C0 00021080 */  sll       $v0, $v0, 2
/* A2B704 802414C4 00431023 */  subu      $v0, $v0, $v1
/* A2B708 802414C8 000218C0 */  sll       $v1, $v0, 3
/* A2B70C 802414CC 00431021 */  addu      $v0, $v0, $v1
/* A2B710 802414D0 000210C0 */  sll       $v0, $v0, 3
/* A2B714 802414D4 8D030000 */  lw        $v1, ($t0)
/* A2B718 802414D8 14A30003 */  bne       $a1, $v1, .L802414E8
/* A2B71C 802414DC 0044B021 */   addu     $s6, $v0, $a0
/* A2B720 802414E0 080905A3 */  j         .L8024168C
/* A2B724 802414E4 0000102D */   daddu    $v0, $zero, $zero
.L802414E8:
/* A2B728 802414E8 3C138025 */  lui       $s3, %hi(D_802498D0_A33B10)
/* A2B72C 802414EC 267398D0 */  addiu     $s3, $s3, %lo(D_802498D0_A33B10)
/* A2B730 802414F0 3C01437A */  lui       $at, 0x437a
/* A2B734 802414F4 44816000 */  mtc1      $at, $f12
/* A2B738 802414F8 8E660000 */  lw        $a2, ($s3)
/* A2B73C 802414FC 3C073F00 */  lui       $a3, 0x3f00
/* A2B740 80241500 4480B000 */  mtc1      $zero, $f22
/* A2B744 80241504 AD050000 */  sw        $a1, ($t0)
/* A2B748 80241508 AFB30010 */  sw        $s3, 0x10($sp)
/* A2B74C 8024150C 0C090411 */  jal       func_80241044_A2B284
/* A2B750 80241510 4600B386 */   mov.s    $f14, $f22
/* A2B754 80241514 24040002 */  addiu     $a0, $zero, 2
/* A2B758 80241518 3C108025 */  lui       $s0, %hi(D_8024963C_A3387C)
/* A2B75C 8024151C 2610963C */  addiu     $s0, $s0, %lo(D_8024963C_A3387C)
/* A2B760 80241520 3C148025 */  lui       $s4, %hi(D_802498FC_A33B3C)
/* A2B764 80241524 269498FC */  addiu     $s4, $s4, %lo(D_802498FC_A33B3C)
/* A2B768 80241528 C6800000 */  lwc1      $f0, ($s4)
/* A2B76C 8024152C 46800020 */  cvt.s.w   $f0, $f0
/* A2B770 80241530 3C054302 */  lui       $a1, 0x4302
/* A2B774 80241534 34A56666 */  ori       $a1, $a1, 0x6666
/* A2B778 80241538 8E060004 */  lw        $a2, 4($s0)
/* A2B77C 8024153C 44070000 */  mfc1      $a3, $f0
/* A2B780 80241540 3C0143EB */  lui       $at, 0x43eb
/* A2B784 80241544 44810000 */  mtc1      $at, $f0
/* A2B788 80241548 3C158025 */  lui       $s5, %hi(D_802498E8_A33B28)
/* A2B78C 8024154C 26B598E8 */  addiu     $s5, $s5, %lo(D_802498E8_A33B28)
/* A2B790 80241550 AFB50014 */  sw        $s5, 0x14($sp)
/* A2B794 80241554 0C090439 */  jal       func_802410E4_A2B324
/* A2B798 80241558 E7A00010 */   swc1     $f0, 0x10($sp)
/* A2B79C 8024155C 3C128025 */  lui       $s2, %hi(D_802498EC_A33B2C)
/* A2B7A0 80241560 265298EC */  addiu     $s2, $s2, %lo(D_802498EC_A33B2C)
/* A2B7A4 80241564 3C014146 */  lui       $at, 0x4146
/* A2B7A8 80241568 34216666 */  ori       $at, $at, 0x6666
/* A2B7AC 8024156C 44816000 */  mtc1      $at, $f12
/* A2B7B0 80241570 C60E0008 */  lwc1      $f14, 8($s0)
/* A2B7B4 80241574 3C013D4C */  lui       $at, 0x3d4c
/* A2B7B8 80241578 3421CCCD */  ori       $at, $at, 0xcccd
/* A2B7BC 8024157C 4481A000 */  mtc1      $at, $f20
/* A2B7C0 80241580 8E460000 */  lw        $a2, ($s2)
/* A2B7C4 80241584 4407A000 */  mfc1      $a3, $f20
/* A2B7C8 80241588 0C090411 */  jal       func_80241044_A2B284
/* A2B7CC 8024158C AFB20010 */   sw       $s2, 0x10($sp)
/* A2B7D0 80241590 3C118025 */  lui       $s1, %hi(D_802498F0_A33B30)
/* A2B7D4 80241594 263198F0 */  addiu     $s1, $s1, %lo(D_802498F0_A33B30)
/* A2B7D8 80241598 3C01C186 */  lui       $at, 0xc186
/* A2B7DC 8024159C 34216666 */  ori       $at, $at, 0x6666
/* A2B7E0 802415A0 44816000 */  mtc1      $at, $f12
/* A2B7E4 802415A4 C60E0024 */  lwc1      $f14, 0x24($s0)
/* A2B7E8 802415A8 8E260000 */  lw        $a2, ($s1)
/* A2B7EC 802415AC 4407A000 */  mfc1      $a3, $f20
/* A2B7F0 802415B0 0C090411 */  jal       func_80241044_A2B284
/* A2B7F4 802415B4 AFB10010 */   sw       $s1, 0x10($sp)
/* A2B7F8 802415B8 3C108025 */  lui       $s0, %hi(D_802498F4_A33B34)
/* A2B7FC 802415BC 261098F4 */  addiu     $s0, $s0, %lo(D_802498F4_A33B34)
/* A2B800 802415C0 3C014278 */  lui       $at, 0x4278
/* A2B804 802415C4 44816000 */  mtc1      $at, $f12
/* A2B808 802415C8 3C014244 */  lui       $at, 0x4244
/* A2B80C 802415CC 44817000 */  mtc1      $at, $f14
/* A2B810 802415D0 8E060000 */  lw        $a2, ($s0)
/* A2B814 802415D4 3C073DCC */  lui       $a3, 0x3dcc
/* A2B818 802415D8 34E7CCCD */  ori       $a3, $a3, 0xcccd
/* A2B81C 802415DC 0C090411 */  jal       func_80241044_A2B284
/* A2B820 802415E0 AFB00010 */   sw       $s0, 0x10($sp)
/* A2B824 802415E4 8E050000 */  lw        $a1, ($s0)
/* A2B828 802415E8 0C090355 */  jal       func_80240D54_A2AF94
/* A2B82C 802415EC 0000202D */   daddu    $a0, $zero, $zero
/* A2B830 802415F0 C6A00000 */  lwc1      $f0, ($s5)
/* A2B834 802415F4 C66C0000 */  lwc1      $f12, ($s3)
/* A2B838 802415F8 C6420000 */  lwc1      $f2, ($s2)
/* A2B83C 802415FC C6240000 */  lwc1      $f4, ($s1)
/* A2B840 80241600 E6C004DC */  swc1      $f0, 0x4dc($s6)
/* A2B844 80241604 E6C204E0 */  swc1      $f2, 0x4e0($s6)
/* A2B848 80241608 0C00A8BB */  jal       sin_deg
/* A2B84C 8024160C E6C404FC */   swc1     $f4, 0x4fc($s6)
/* A2B850 80241610 3C0143FA */  lui       $at, 0x43fa
/* A2B854 80241614 44811000 */  mtc1      $at, $f2
/* A2B858 80241618 00000000 */  nop
/* A2B85C 8024161C 46020002 */  mul.s     $f0, $f0, $f2
/* A2B860 80241620 00000000 */  nop
/* A2B864 80241624 C66C0000 */  lwc1      $f12, ($s3)
/* A2B868 80241628 0C00A8D4 */  jal       cos_deg
/* A2B86C 8024162C E6C004F0 */   swc1     $f0, 0x4f0($s6)
/* A2B870 80241630 3C01C3FA */  lui       $at, 0xc3fa
/* A2B874 80241634 44811000 */  mtc1      $at, $f2
/* A2B878 80241638 24020001 */  addiu     $v0, $zero, 1
/* A2B87C 8024163C A6C20506 */  sh        $v0, 0x506($s6)
/* A2B880 80241640 46020002 */  mul.s     $f0, $f0, $f2
/* A2B884 80241644 00000000 */  nop
/* A2B888 80241648 8E820000 */  lw        $v0, ($s4)
/* A2B88C 8024164C C6620000 */  lwc1      $f2, ($s3)
/* A2B890 80241650 24420001 */  addiu     $v0, $v0, 1
/* A2B894 80241654 AE820000 */  sw        $v0, ($s4)
/* A2B898 80241658 46161032 */  c.eq.s    $f2, $f22
/* A2B89C 8024165C 00000000 */  nop
/* A2B8A0 80241660 45000006 */  bc1f      .L8024167C
/* A2B8A4 80241664 E6C004F8 */   swc1     $f0, 0x4f8($s6)
/* A2B8A8 80241668 3C038025 */  lui       $v1, %hi(D_802498F8_A33B38)
/* A2B8AC 8024166C 246398F8 */  addiu     $v1, $v1, %lo(D_802498F8_A33B38)
/* A2B8B0 80241670 8C620000 */  lw        $v0, ($v1)
/* A2B8B4 80241674 24420001 */  addiu     $v0, $v0, 1
/* A2B8B8 80241678 AC620000 */  sw        $v0, ($v1)
.L8024167C:
/* A2B8BC 8024167C 3C028025 */  lui       $v0, %hi(D_802498F8_A33B38)
/* A2B8C0 80241680 8C4298F8 */  lw        $v0, %lo(D_802498F8_A33B38)($v0)
/* A2B8C4 80241684 2842001F */  slti      $v0, $v0, 0x1f
/* A2B8C8 80241688 38420001 */  xori      $v0, $v0, 1
.L8024168C:
/* A2B8CC 8024168C 8FBF0034 */  lw        $ra, 0x34($sp)
/* A2B8D0 80241690 8FB60030 */  lw        $s6, 0x30($sp)
/* A2B8D4 80241694 8FB5002C */  lw        $s5, 0x2c($sp)
/* A2B8D8 80241698 8FB40028 */  lw        $s4, 0x28($sp)
/* A2B8DC 8024169C 8FB30024 */  lw        $s3, 0x24($sp)
/* A2B8E0 802416A0 8FB20020 */  lw        $s2, 0x20($sp)
/* A2B8E4 802416A4 8FB1001C */  lw        $s1, 0x1c($sp)
/* A2B8E8 802416A8 8FB00018 */  lw        $s0, 0x18($sp)
/* A2B8EC 802416AC D7B60040 */  ldc1      $f22, 0x40($sp)
/* A2B8F0 802416B0 D7B40038 */  ldc1      $f20, 0x38($sp)
/* A2B8F4 802416B4 03E00008 */  jr        $ra
/* A2B8F8 802416B8 27BD0048 */   addiu    $sp, $sp, 0x48
