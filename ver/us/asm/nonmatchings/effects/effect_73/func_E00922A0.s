.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E00922A0
/* 391FD0 E00922A0 44800000 */  mtc1      $zero, $f0
/* 391FD4 E00922A4 27BDFEE8 */  addiu     $sp, $sp, -0x118
/* 391FD8 E00922A8 AFB000E0 */  sw        $s0, 0xe0($sp)
/* 391FDC E00922AC 27B00098 */  addiu     $s0, $sp, 0x98
/* 391FE0 E00922B0 AFA40118 */  sw        $a0, 0x118($sp)
/* 391FE4 E00922B4 8FA90118 */  lw        $t1, 0x118($sp)
/* 391FE8 E00922B8 0200202D */  daddu     $a0, $s0, $zero
/* 391FEC E00922BC AFB100E4 */  sw        $s1, 0xe4($sp)
/* 391FF0 E00922C0 3C110001 */  lui       $s1, 1
/* 391FF4 E00922C4 F7B40108 */  sdc1      $f20, 0x108($sp)
/* 391FF8 E00922C8 3C013F80 */  lui       $at, 0x3f80
/* 391FFC E00922CC 4481A000 */  mtc1      $at, $f20
/* 392000 E00922D0 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* 392004 E00922D4 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* 392008 E00922D8 36311630 */  ori       $s1, $s1, 0x1630
/* 39200C E00922DC AFBF0104 */  sw        $ra, 0x104($sp)
/* 392010 E00922E0 AFBE0100 */  sw        $fp, 0x100($sp)
/* 392014 E00922E4 AFB700FC */  sw        $s7, 0xfc($sp)
/* 392018 E00922E8 AFB600F8 */  sw        $s6, 0xf8($sp)
/* 39201C E00922EC AFB500F4 */  sw        $s5, 0xf4($sp)
/* 392020 E00922F0 AFB400F0 */  sw        $s4, 0xf0($sp)
/* 392024 E00922F4 AFB300EC */  sw        $s3, 0xec($sp)
/* 392028 E00922F8 AFB200E8 */  sw        $s2, 0xe8($sp)
/* 39202C E00922FC F7B60110 */  sdc1      $f22, 0x110($sp)
/* 392030 E0092300 00031080 */  sll       $v0, $v1, 2
/* 392034 E0092304 00431021 */  addu      $v0, $v0, $v1
/* 392038 E0092308 00021080 */  sll       $v0, $v0, 2
/* 39203C E009230C 00431023 */  subu      $v0, $v0, $v1
/* 392040 E0092310 000218C0 */  sll       $v1, $v0, 3
/* 392044 E0092314 00431021 */  addu      $v0, $v0, $v1
/* 392048 E0092318 000210C0 */  sll       $v0, $v0, 3
/* 39204C E009231C 8D34000C */  lw        $s4, 0xc($t1)
/* 392050 E0092320 44060000 */  mfc1      $a2, $f0
/* 392054 E0092324 3C01800B */  lui       $at, %hi(gCameras+0x6C)
/* 392058 E0092328 00220821 */  addu      $at, $at, $v0
/* 39205C E009232C C4201DEC */  lwc1      $f0, %lo(gCameras+0x6C)($at)
/* 392060 E0092330 4407A000 */  mfc1      $a3, $f20
/* 392064 E0092334 46000007 */  neg.s     $f0, $f0
/* 392068 E0092338 44050000 */  mfc1      $a1, $f0
/* 39206C E009233C 24130001 */  addiu     $s3, $zero, 1
/* 392070 E0092340 0C080104 */  jal       shim_guRotateF
/* 392074 E0092344 AFA60010 */   sw       $a2, 0x10($sp)
/* 392078 E0092348 0200202D */  daddu     $a0, $s0, $zero
/* 39207C E009234C 3C128007 */  lui       $s2, %hi(gMatrixListPos)
/* 392080 E0092350 265241F0 */  addiu     $s2, $s2, %lo(gMatrixListPos)
/* 392084 E0092354 3C16800A */  lui       $s6, %hi(gDisplayContext)
/* 392088 E0092358 26D6A674 */  addiu     $s6, $s6, %lo(gDisplayContext)
/* 39208C E009235C 96450000 */  lhu       $a1, ($s2)
/* 392090 E0092360 8EC20000 */  lw        $v0, ($s6)
/* 392094 E0092364 00052980 */  sll       $a1, $a1, 6
/* 392098 E0092368 00B12821 */  addu      $a1, $a1, $s1
/* 39209C E009236C 0C080118 */  jal       shim_guMtxF2L
/* 3920A0 E0092370 00452821 */   addu     $a1, $v0, $a1
/* 3920A4 E0092374 3C06DB06 */  lui       $a2, 0xdb06
/* 3920A8 E0092378 34C60024 */  ori       $a2, $a2, 0x24
/* 3920AC E009237C 3C10800A */  lui       $s0, %hi(gMasterGfxPos)
/* 3920B0 E0092380 2610A66C */  addiu     $s0, $s0, %lo(gMasterGfxPos)
/* 3920B4 E0092384 27A40018 */  addiu     $a0, $sp, 0x18
/* 3920B8 E0092388 8E050000 */  lw        $a1, ($s0)
/* 3920BC E009238C 96480000 */  lhu       $t0, ($s2)
/* 3920C0 E0092390 00A0182D */  daddu     $v1, $a1, $zero
/* 3920C4 E0092394 24A50008 */  addiu     $a1, $a1, 8
/* 3920C8 E0092398 01131021 */  addu      $v0, $t0, $s3
/* 3920CC E009239C A6420000 */  sh        $v0, ($s2)
/* 3920D0 E00923A0 3C02E700 */  lui       $v0, 0xe700
/* 3920D4 E00923A4 AE050000 */  sw        $a1, ($s0)
/* 3920D8 E00923A8 AC620000 */  sw        $v0, ($v1)
/* 3920DC E00923AC 24A20008 */  addiu     $v0, $a1, 8
/* 3920E0 E00923B0 3108FFFF */  andi      $t0, $t0, 0xffff
/* 3920E4 E00923B4 AC600004 */  sw        $zero, 4($v1)
/* 3920E8 E00923B8 ACA60000 */  sw        $a2, ($a1)
/* 3920EC E00923BC 8FA90118 */  lw        $t1, 0x118($sp)
/* 3920F0 E00923C0 00084180 */  sll       $t0, $t0, 6
/* 3920F4 E00923C4 8D230010 */  lw        $v1, 0x10($t1)
/* 3920F8 E00923C8 01114021 */  addu      $t0, $t0, $s1
/* 3920FC E00923CC AE020000 */  sw        $v0, ($s0)
/* 392100 E00923D0 8C62001C */  lw        $v0, 0x1c($v1)
/* 392104 E00923D4 3C038000 */  lui       $v1, 0x8000
/* 392108 E00923D8 00431021 */  addu      $v0, $v0, $v1
/* 39210C E00923DC ACA20004 */  sw        $v0, 4($a1)
/* 392110 E00923E0 8E850008 */  lw        $a1, 8($s4)
/* 392114 E00923E4 8E86000C */  lw        $a2, 0xc($s4)
/* 392118 E00923E8 8EC20000 */  lw        $v0, ($s6)
/* 39211C E00923EC 8E870010 */  lw        $a3, 0x10($s4)
/* 392120 E00923F0 00481021 */  addu      $v0, $v0, $t0
/* 392124 E00923F4 0C080108 */  jal       shim_guTranslateF
/* 392128 E00923F8 AFA200D8 */   sw       $v0, 0xd8($sp)
/* 39212C E00923FC 27A40018 */  addiu     $a0, $sp, 0x18
/* 392130 E0092400 96450000 */  lhu       $a1, ($s2)
/* 392134 E0092404 8EC20000 */  lw        $v0, ($s6)
/* 392138 E0092408 00052980 */  sll       $a1, $a1, 6
/* 39213C E009240C 00B12821 */  addu      $a1, $a1, $s1
/* 392140 E0092410 0C080118 */  jal       shim_guMtxF2L
/* 392144 E0092414 00452821 */   addu     $a1, $v0, $a1
/* 392148 E0092418 3C03DA38 */  lui       $v1, 0xda38
/* 39214C E009241C 34630002 */  ori       $v1, $v1, 2
/* 392150 E0092420 3C06FFFF */  lui       $a2, 0xffff
/* 392154 E0092424 34C60FFF */  ori       $a2, $a2, 0xfff
/* 392158 E0092428 8E040000 */  lw        $a0, ($s0)
/* 39215C E009242C 96420000 */  lhu       $v0, ($s2)
/* 392160 E0092430 0080282D */  daddu     $a1, $a0, $zero
/* 392164 E0092434 24840008 */  addiu     $a0, $a0, 8
/* 392168 E0092438 AE040000 */  sw        $a0, ($s0)
/* 39216C E009243C ACA30000 */  sw        $v1, ($a1)
/* 392170 E0092440 00531821 */  addu      $v1, $v0, $s3
/* 392174 E0092444 3042FFFF */  andi      $v0, $v0, 0xffff
/* 392178 E0092448 00021180 */  sll       $v0, $v0, 6
/* 39217C E009244C A6430000 */  sh        $v1, ($s2)
/* 392180 E0092450 8EC30000 */  lw        $v1, ($s6)
/* 392184 E0092454 00511021 */  addu      $v0, $v0, $s1
/* 392188 E0092458 00621821 */  addu      $v1, $v1, $v0
/* 39218C E009245C 24820008 */  addiu     $v0, $a0, 8
/* 392190 E0092460 ACA30004 */  sw        $v1, 4($a1)
/* 392194 E0092464 AE020000 */  sw        $v0, ($s0)
/* 392198 E0092468 3C02DE00 */  lui       $v0, 0xde00
/* 39219C E009246C AC820000 */  sw        $v0, ($a0)
/* 3921A0 E0092470 3C020900 */  lui       $v0, 0x900
/* 3921A4 E0092474 244202C0 */  addiu     $v0, $v0, 0x2c0
/* 3921A8 E0092478 AC820004 */  sw        $v0, 4($a0)
/* 3921AC E009247C 3C02FA00 */  lui       $v0, 0xfa00
/* 3921B0 E0092480 AC820008 */  sw        $v0, 8($a0)
/* 3921B4 E0092484 AC86000C */  sw        $a2, 0xc($a0)
/* 3921B8 E0092488 8FA90118 */  lw        $t1, 0x118($sp)
/* 3921BC E009248C 26940024 */  addiu     $s4, $s4, 0x24
/* 3921C0 E0092490 8D220008 */  lw        $v0, 8($t1)
/* 3921C4 E0092494 24840010 */  addiu     $a0, $a0, 0x10
/* 3921C8 E0092498 0262102A */  slt       $v0, $s3, $v0
/* 3921CC E009249C 1040005B */  beqz      $v0, .LE009260C
/* 3921D0 E00924A0 AE040000 */   sw       $a0, ($s0)
/* 3921D4 E00924A4 4600A586 */  mov.s     $f22, $f20
/* 3921D8 E00924A8 27B50058 */  addiu     $s5, $sp, 0x58
/* 3921DC E00924AC 02C0F02D */  daddu     $fp, $s6, $zero
/* 3921E0 E00924B0 0240B02D */  daddu     $s6, $s2, $zero
/* 3921E4 E00924B4 3C120001 */  lui       $s2, 1
/* 3921E8 E00924B8 36521630 */  ori       $s2, $s2, 0x1630
/* 3921EC E00924BC 0200882D */  daddu     $s1, $s0, $zero
/* 3921F0 E00924C0 3C17DE00 */  lui       $s7, 0xde00
/* 3921F4 E00924C4 26900004 */  addiu     $s0, $s4, 4
.LE00924C8:
/* 3921F8 E00924C8 8E02001C */  lw        $v0, 0x1c($s0)
/* 3921FC E00924CC 14400049 */  bnez      $v0, .LE00925F4
/* 392200 E00924D0 00000000 */   nop
/* 392204 E00924D4 8E050004 */  lw        $a1, 4($s0)
/* 392208 E00924D8 8E060008 */  lw        $a2, 8($s0)
/* 39220C E00924DC 8E07000C */  lw        $a3, 0xc($s0)
/* 392210 E00924E0 C6140018 */  lwc1      $f20, 0x18($s0)
/* 392214 E00924E4 0C080108 */  jal       shim_guTranslateF
/* 392218 E00924E8 27A40018 */   addiu    $a0, $sp, 0x18
/* 39221C E00924EC 4616A032 */  c.eq.s    $f20, $f22
/* 392220 E00924F0 00000000 */  nop
/* 392224 E00924F4 4501000B */  bc1t      .LE0092524
/* 392228 E00924F8 27A40018 */   addiu    $a0, $sp, 0x18
/* 39222C E00924FC 02A0202D */  daddu     $a0, $s5, $zero
/* 392230 E0092500 4405A000 */  mfc1      $a1, $f20
/* 392234 E0092504 4407B000 */  mfc1      $a3, $f22
/* 392238 E0092508 0C080110 */  jal       shim_guScaleF
/* 39223C E009250C 00A0302D */   daddu    $a2, $a1, $zero
/* 392240 E0092510 02A0202D */  daddu     $a0, $s5, $zero
/* 392244 E0092514 27A50018 */  addiu     $a1, $sp, 0x18
/* 392248 E0092518 0C080114 */  jal       shim_guMtxCatF
/* 39224C E009251C 00A0302D */   daddu    $a2, $a1, $zero
/* 392250 E0092520 27A40018 */  addiu     $a0, $sp, 0x18
.LE0092524:
/* 392254 E0092524 96C50000 */  lhu       $a1, ($s6)
/* 392258 E0092528 8FC20000 */  lw        $v0, ($fp)
/* 39225C E009252C 00052980 */  sll       $a1, $a1, 6
/* 392260 E0092530 00B22821 */  addu      $a1, $a1, $s2
/* 392264 E0092534 0C080118 */  jal       shim_guMtxF2L
/* 392268 E0092538 00452821 */   addu     $a1, $v0, $a1
/* 39226C E009253C 3C06DA38 */  lui       $a2, 0xda38
/* 392270 E0092540 34C60001 */  ori       $a2, $a2, 1
/* 392274 E0092544 3C07D838 */  lui       $a3, 0xd838
/* 392278 E0092548 8E240000 */  lw        $a0, ($s1)
/* 39227C E009254C 34E70002 */  ori       $a3, $a3, 2
/* 392280 E0092550 0080282D */  daddu     $a1, $a0, $zero
/* 392284 E0092554 24840008 */  addiu     $a0, $a0, 8
/* 392288 E0092558 AE240000 */  sw        $a0, ($s1)
/* 39228C E009255C 96C20000 */  lhu       $v0, ($s6)
/* 392290 E0092560 3C03DA38 */  lui       $v1, 0xda38
/* 392294 E0092564 ACA30000 */  sw        $v1, ($a1)
/* 392298 E0092568 24430001 */  addiu     $v1, $v0, 1
/* 39229C E009256C 3042FFFF */  andi      $v0, $v0, 0xffff
/* 3922A0 E0092570 00021180 */  sll       $v0, $v0, 6
/* 3922A4 E0092574 A6C30000 */  sh        $v1, ($s6)
/* 3922A8 E0092578 8FC30000 */  lw        $v1, ($fp)
/* 3922AC E009257C 00521021 */  addu      $v0, $v0, $s2
/* 3922B0 E0092580 00621821 */  addu      $v1, $v1, $v0
/* 3922B4 E0092584 24820008 */  addiu     $v0, $a0, 8
/* 3922B8 E0092588 ACA30004 */  sw        $v1, 4($a1)
/* 3922BC E009258C AE220000 */  sw        $v0, ($s1)
/* 3922C0 E0092590 24820010 */  addiu     $v0, $a0, 0x10
/* 3922C4 E0092594 AC860000 */  sw        $a2, ($a0)
/* 3922C8 E0092598 8FA900D8 */  lw        $t1, 0xd8($sp)
/* 3922CC E009259C 24830018 */  addiu     $v1, $a0, 0x18
/* 3922D0 E00925A0 AC890004 */  sw        $t1, 4($a0)
/* 3922D4 E00925A4 AE220000 */  sw        $v0, ($s1)
/* 3922D8 E00925A8 AC970008 */  sw        $s7, 8($a0)
/* 3922DC E00925AC 8E020000 */  lw        $v0, ($s0)
/* 3922E0 E00925B0 3C09E009 */  lui       $t1, %hi(D_E0092690)
/* 3922E4 E00925B4 25292690 */  addiu     $t1, $t1, %lo(D_E0092690)
/* 3922E8 E00925B8 AE230000 */  sw        $v1, ($s1)
/* 3922EC E00925BC 00021043 */  sra       $v0, $v0, 1
/* 3922F0 E00925C0 00021080 */  sll       $v0, $v0, 2
/* 3922F4 E00925C4 00491021 */  addu      $v0, $v0, $t1
/* 3922F8 E00925C8 8C430000 */  lw        $v1, ($v0)
/* 3922FC E00925CC 24820020 */  addiu     $v0, $a0, 0x20
/* 392300 E00925D0 AE220000 */  sw        $v0, ($s1)
/* 392304 E00925D4 3C020900 */  lui       $v0, 0x900
/* 392308 E00925D8 24420470 */  addiu     $v0, $v0, 0x470
/* 39230C E00925DC AC820014 */  sw        $v0, 0x14($a0)
/* 392310 E00925E0 24020040 */  addiu     $v0, $zero, 0x40
/* 392314 E00925E4 AC970010 */  sw        $s7, 0x10($a0)
/* 392318 E00925E8 AC870018 */  sw        $a3, 0x18($a0)
/* 39231C E00925EC AC82001C */  sw        $v0, 0x1c($a0)
/* 392320 E00925F0 AC83000C */  sw        $v1, 0xc($a0)
.LE00925F4:
/* 392324 E00925F4 8FA90118 */  lw        $t1, 0x118($sp)
/* 392328 E00925F8 26730001 */  addiu     $s3, $s3, 1
/* 39232C E00925FC 8D220008 */  lw        $v0, 8($t1)
/* 392330 E0092600 0262102A */  slt       $v0, $s3, $v0
/* 392334 E0092604 1440FFB0 */  bnez      $v0, .LE00924C8
/* 392338 E0092608 26100024 */   addiu    $s0, $s0, 0x24
.LE009260C:
/* 39233C E009260C 3C03D838 */  lui       $v1, 0xd838
/* 392340 E0092610 3C04800A */  lui       $a0, %hi(gMasterGfxPos)
/* 392344 E0092614 2484A66C */  addiu     $a0, $a0, %lo(gMasterGfxPos)
/* 392348 E0092618 8C820000 */  lw        $v0, ($a0)
/* 39234C E009261C 34630002 */  ori       $v1, $v1, 2
/* 392350 E0092620 0040282D */  daddu     $a1, $v0, $zero
/* 392354 E0092624 24420008 */  addiu     $v0, $v0, 8
/* 392358 E0092628 AC820000 */  sw        $v0, ($a0)
/* 39235C E009262C ACA30000 */  sw        $v1, ($a1)
/* 392360 E0092630 24030040 */  addiu     $v1, $zero, 0x40
/* 392364 E0092634 ACA30004 */  sw        $v1, 4($a1)
/* 392368 E0092638 24430008 */  addiu     $v1, $v0, 8
/* 39236C E009263C AC830000 */  sw        $v1, ($a0)
/* 392370 E0092640 3C03E700 */  lui       $v1, 0xe700
/* 392374 E0092644 AC430000 */  sw        $v1, ($v0)
/* 392378 E0092648 AC400004 */  sw        $zero, 4($v0)
/* 39237C E009264C 8FBF0104 */  lw        $ra, 0x104($sp)
/* 392380 E0092650 8FBE0100 */  lw        $fp, 0x100($sp)
/* 392384 E0092654 8FB700FC */  lw        $s7, 0xfc($sp)
/* 392388 E0092658 8FB600F8 */  lw        $s6, 0xf8($sp)
/* 39238C E009265C 8FB500F4 */  lw        $s5, 0xf4($sp)
/* 392390 E0092660 8FB400F0 */  lw        $s4, 0xf0($sp)
/* 392394 E0092664 8FB300EC */  lw        $s3, 0xec($sp)
/* 392398 E0092668 8FB200E8 */  lw        $s2, 0xe8($sp)
/* 39239C E009266C 8FB100E4 */  lw        $s1, 0xe4($sp)
/* 3923A0 E0092670 8FB000E0 */  lw        $s0, 0xe0($sp)
/* 3923A4 E0092674 D7B60110 */  ldc1      $f22, 0x110($sp)
/* 3923A8 E0092678 D7B40108 */  ldc1      $f20, 0x108($sp)
/* 3923AC E009267C 03E00008 */  jr        $ra
/* 3923B0 E0092680 27BD0118 */   addiu    $sp, $sp, 0x118
/* 3923B4 E0092684 00000000 */  nop
/* 3923B8 E0092688 00000000 */  nop
/* 3923BC E009268C 00000000 */  nop
