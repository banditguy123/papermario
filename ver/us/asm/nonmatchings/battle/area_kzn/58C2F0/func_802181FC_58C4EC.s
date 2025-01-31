.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802181FC_58C4EC
/* 58C4EC 802181FC 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 58C4F0 80218200 AFB1001C */  sw        $s1, 0x1c($sp)
/* 58C4F4 80218204 0080882D */  daddu     $s1, $a0, $zero
/* 58C4F8 80218208 AFBF0034 */  sw        $ra, 0x34($sp)
/* 58C4FC 8021820C AFB60030 */  sw        $s6, 0x30($sp)
/* 58C500 80218210 AFB5002C */  sw        $s5, 0x2c($sp)
/* 58C504 80218214 AFB40028 */  sw        $s4, 0x28($sp)
/* 58C508 80218218 AFB30024 */  sw        $s3, 0x24($sp)
/* 58C50C 8021821C AFB20020 */  sw        $s2, 0x20($sp)
/* 58C510 80218220 AFB00018 */  sw        $s0, 0x18($sp)
/* 58C514 80218224 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 58C518 80218228 8E30000C */  lw        $s0, 0xc($s1)
/* 58C51C 8021822C 8E050000 */  lw        $a1, ($s0)
/* 58C520 80218230 0C0B1EAF */  jal       evt_get_variable
/* 58C524 80218234 26100004 */   addiu    $s0, $s0, 4
/* 58C528 80218238 8E050000 */  lw        $a1, ($s0)
/* 58C52C 8021823C 26100004 */  addiu     $s0, $s0, 4
/* 58C530 80218240 0C0B1EAF */  jal       evt_get_variable
/* 58C534 80218244 0220202D */   daddu    $a0, $s1, $zero
/* 58C538 80218248 8E050000 */  lw        $a1, ($s0)
/* 58C53C 8021824C 26100004 */  addiu     $s0, $s0, 4
/* 58C540 80218250 0220202D */  daddu     $a0, $s1, $zero
/* 58C544 80218254 0C0B1EAF */  jal       evt_get_variable
/* 58C548 80218258 0040B02D */   daddu    $s6, $v0, $zero
/* 58C54C 8021825C 8E050000 */  lw        $a1, ($s0)
/* 58C550 80218260 26100004 */  addiu     $s0, $s0, 4
/* 58C554 80218264 0220202D */  daddu     $a0, $s1, $zero
/* 58C558 80218268 0C0B1EAF */  jal       evt_get_variable
/* 58C55C 8021826C 0040A82D */   daddu    $s5, $v0, $zero
/* 58C560 80218270 8E050000 */  lw        $a1, ($s0)
/* 58C564 80218274 26100004 */  addiu     $s0, $s0, 4
/* 58C568 80218278 0220202D */  daddu     $a0, $s1, $zero
/* 58C56C 8021827C 0C0B210B */  jal       evt_get_float_variable
/* 58C570 80218280 0040A02D */   daddu    $s4, $v0, $zero
/* 58C574 80218284 8E050000 */  lw        $a1, ($s0)
/* 58C578 80218288 26100004 */  addiu     $s0, $s0, 4
/* 58C57C 8021828C 0220202D */  daddu     $a0, $s1, $zero
/* 58C580 80218290 0C0B1EAF */  jal       evt_get_variable
/* 58C584 80218294 46000506 */   mov.s    $f20, $f0
/* 58C588 80218298 8E050000 */  lw        $a1, ($s0)
/* 58C58C 8021829C 26100004 */  addiu     $s0, $s0, 4
/* 58C590 802182A0 0220202D */  daddu     $a0, $s1, $zero
/* 58C594 802182A4 0C0B1EAF */  jal       evt_get_variable
/* 58C598 802182A8 0040902D */   daddu    $s2, $v0, $zero
/* 58C59C 802182AC 8E050000 */  lw        $a1, ($s0)
/* 58C5A0 802182B0 26100004 */  addiu     $s0, $s0, 4
/* 58C5A4 802182B4 0220202D */  daddu     $a0, $s1, $zero
/* 58C5A8 802182B8 0C0B1EAF */  jal       evt_get_variable
/* 58C5AC 802182BC 0040982D */   daddu    $s3, $v0, $zero
/* 58C5B0 802182C0 0220202D */  daddu     $a0, $s1, $zero
/* 58C5B4 802182C4 8E050000 */  lw        $a1, ($s0)
/* 58C5B8 802182C8 0C0B1EAF */  jal       evt_get_variable
/* 58C5BC 802182CC 0040882D */   daddu    $s1, $v0, $zero
/* 58C5C0 802182D0 24040001 */  addiu     $a0, $zero, 1
/* 58C5C4 802182D4 44961000 */  mtc1      $s6, $f2
/* 58C5C8 802182D8 00000000 */  nop
/* 58C5CC 802182DC 468010A0 */  cvt.s.w   $f2, $f2
/* 58C5D0 802182E0 44051000 */  mfc1      $a1, $f2
/* 58C5D4 802182E4 44951000 */  mtc1      $s5, $f2
/* 58C5D8 802182E8 00000000 */  nop
/* 58C5DC 802182EC 468010A0 */  cvt.s.w   $f2, $f2
/* 58C5E0 802182F0 44061000 */  mfc1      $a2, $f2
/* 58C5E4 802182F4 44941000 */  mtc1      $s4, $f2
/* 58C5E8 802182F8 00000000 */  nop
/* 58C5EC 802182FC 468010A0 */  cvt.s.w   $f2, $f2
/* 58C5F0 80218300 44071000 */  mfc1      $a3, $f2
/* 58C5F4 80218304 0040802D */  daddu     $s0, $v0, $zero
/* 58C5F8 80218308 E7B40010 */  swc1      $f20, 0x10($sp)
/* 58C5FC 8021830C 0C01C88C */  jal       playFX_6F
/* 58C600 80218310 AFB20014 */   sw       $s2, 0x14($sp)
/* 58C604 80218314 8C43000C */  lw        $v1, 0xc($v0)
/* 58C608 80218318 AC730018 */  sw        $s3, 0x18($v1)
/* 58C60C 8021831C 8C43000C */  lw        $v1, 0xc($v0)
/* 58C610 80218320 AC71001C */  sw        $s1, 0x1c($v1)
/* 58C614 80218324 8C43000C */  lw        $v1, 0xc($v0)
/* 58C618 80218328 AC700020 */  sw        $s0, 0x20($v1)
/* 58C61C 8021832C 8C43000C */  lw        $v1, 0xc($v0)
/* 58C620 80218330 240400FF */  addiu     $a0, $zero, 0xff
/* 58C624 80218334 AC640028 */  sw        $a0, 0x28($v1)
/* 58C628 80218338 8C43000C */  lw        $v1, 0xc($v0)
/* 58C62C 8021833C AC64002C */  sw        $a0, 0x2c($v1)
/* 58C630 80218340 8C43000C */  lw        $v1, 0xc($v0)
/* 58C634 80218344 AC640030 */  sw        $a0, 0x30($v1)
/* 58C638 80218348 8FBF0034 */  lw        $ra, 0x34($sp)
/* 58C63C 8021834C 8FB60030 */  lw        $s6, 0x30($sp)
/* 58C640 80218350 8FB5002C */  lw        $s5, 0x2c($sp)
/* 58C644 80218354 8FB40028 */  lw        $s4, 0x28($sp)
/* 58C648 80218358 8FB30024 */  lw        $s3, 0x24($sp)
/* 58C64C 8021835C 8FB20020 */  lw        $s2, 0x20($sp)
/* 58C650 80218360 8FB1001C */  lw        $s1, 0x1c($sp)
/* 58C654 80218364 8FB00018 */  lw        $s0, 0x18($sp)
/* 58C658 80218368 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 58C65C 8021836C 24020002 */  addiu     $v0, $zero, 2
/* 58C660 80218370 03E00008 */  jr        $ra
/* 58C664 80218374 27BD0040 */   addiu    $sp, $sp, 0x40
/* 58C668 80218378 00000000 */  nop
/* 58C66C 8021837C 00000000 */  nop
