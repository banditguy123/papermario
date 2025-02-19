.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80238668_704158
/* 704158 80238668 3C03800E */  lui       $v1, %hi(gBattleStatus+0xDC)
/* 70415C 8023866C 8C63C14C */  lw        $v1, %lo(gBattleStatus+0xDC)($v1)
/* 704160 80238670 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 704164 80238674 AFBF001C */  sw        $ra, 0x1c($sp)
/* 704168 80238678 AFB00018 */  sw        $s0, 0x18($sp)
/* 70416C 8023867C F7B80030 */  sdc1      $f24, 0x30($sp)
/* 704170 80238680 F7B60028 */  sdc1      $f22, 0x28($sp)
/* 704174 80238684 F7B40020 */  sdc1      $f20, 0x20($sp)
/* 704178 80238688 84620150 */  lh        $v0, 0x150($v1)
/* 70417C 8023868C C4620144 */  lwc1      $f2, 0x144($v1)
/* 704180 80238690 44820000 */  mtc1      $v0, $f0
/* 704184 80238694 00000000 */  nop
/* 704188 80238698 46800020 */  cvt.s.w   $f0, $f0
/* 70418C 8023869C 46001600 */  add.s     $f24, $f2, $f0
/* 704190 802386A0 84620152 */  lh        $v0, 0x152($v1)
/* 704194 802386A4 C4620148 */  lwc1      $f2, 0x148($v1)
/* 704198 802386A8 44820000 */  mtc1      $v0, $f0
/* 70419C 802386AC 00000000 */  nop
/* 7041A0 802386B0 46800020 */  cvt.s.w   $f0, $f0
/* 7041A4 802386B4 46001080 */  add.s     $f2, $f2, $f0
/* 7041A8 802386B8 8062019A */  lb        $v0, 0x19a($v1)
/* 7041AC 802386BC 0080802D */  daddu     $s0, $a0, $zero
/* 7041B0 802386C0 44820000 */  mtc1      $v0, $f0
/* 7041B4 802386C4 00000000 */  nop
/* 7041B8 802386C8 46800020 */  cvt.s.w   $f0, $f0
/* 7041BC 802386CC 46001080 */  add.s     $f2, $f2, $f0
/* 7041C0 802386D0 3C014140 */  lui       $at, 0x4140
/* 7041C4 802386D4 44810000 */  mtc1      $at, $f0
/* 7041C8 802386D8 84620154 */  lh        $v0, 0x154($v1)
/* 7041CC 802386DC 46001580 */  add.s     $f22, $f2, $f0
/* 7041D0 802386E0 44820000 */  mtc1      $v0, $f0
/* 7041D4 802386E4 00000000 */  nop
/* 7041D8 802386E8 46800020 */  cvt.s.w   $f0, $f0
/* 7041DC 802386EC C462014C */  lwc1      $f2, 0x14c($v1)
/* 7041E0 802386F0 8E02000C */  lw        $v0, 0xc($s0)
/* 7041E4 802386F4 10A00010 */  beqz      $a1, .L80238738
/* 7041E8 802386F8 46001500 */   add.s    $f20, $f2, $f0
/* 7041EC 802386FC 8C450000 */  lw        $a1, ($v0)
/* 7041F0 80238700 0C0B1EAF */  jal       evt_get_variable
/* 7041F4 80238704 00000000 */   nop
/* 7041F8 80238708 4405C000 */  mfc1      $a1, $f24
/* 7041FC 8023870C 3C013F80 */  lui       $at, 0x3f80
/* 704200 80238710 44810000 */  mtc1      $at, $f0
/* 704204 80238714 4406B000 */  mfc1      $a2, $f22
/* 704208 80238718 4407A000 */  mfc1      $a3, $f20
/* 70420C 8023871C 0000202D */  daddu     $a0, $zero, $zero
/* 704210 80238720 AE020070 */  sw        $v0, 0x70($s0)
/* 704214 80238724 3C028024 */  lui       $v0, %hi(D_8023C1B0)
/* 704218 80238728 2442C1B0 */  addiu     $v0, $v0, %lo(D_8023C1B0)
/* 70421C 8023872C AFA20014 */  sw        $v0, 0x14($sp)
/* 704220 80238730 0C01C3C4 */  jal       playFX_3C
/* 704224 80238734 E7A00010 */   swc1     $f0, 0x10($sp)
.L80238738:
/* 704228 80238738 8E020070 */  lw        $v0, 0x70($s0)
/* 70422C 8023873C 2442FFFF */  addiu     $v0, $v0, -1
/* 704230 80238740 10400003 */  beqz      $v0, .L80238750
/* 704234 80238744 AE020070 */   sw       $v0, 0x70($s0)
/* 704238 80238748 0808E1DA */  j         .L80238768
/* 70423C 8023874C 0000102D */   daddu    $v0, $zero, $zero
.L80238750:
/* 704240 80238750 3C038024 */  lui       $v1, %hi(D_8023C1B0)
/* 704244 80238754 8C63C1B0 */  lw        $v1, %lo(D_8023C1B0)($v1)
/* 704248 80238758 24020002 */  addiu     $v0, $zero, 2
/* 70424C 8023875C 8C64000C */  lw        $a0, 0xc($v1)
/* 704250 80238760 24030005 */  addiu     $v1, $zero, 5
/* 704254 80238764 AC830014 */  sw        $v1, 0x14($a0)
.L80238768:
/* 704258 80238768 8FBF001C */  lw        $ra, 0x1c($sp)
/* 70425C 8023876C 8FB00018 */  lw        $s0, 0x18($sp)
/* 704260 80238770 D7B80030 */  ldc1      $f24, 0x30($sp)
/* 704264 80238774 D7B60028 */  ldc1      $f22, 0x28($sp)
/* 704268 80238778 D7B40020 */  ldc1      $f20, 0x20($sp)
/* 70426C 8023877C 03E00008 */  jr        $ra
/* 704270 80238780 27BD0038 */   addiu    $sp, $sp, 0x38
