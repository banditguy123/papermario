.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel jtbl_80243A08_A6AB08
.word L80241164_A68264, L80241174_A68274, L8024118C_A6828C, L8024119C_A6829C, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802411B4_A682B4, L802411C4_A682C4, L802411DC_A682DC, L80241254_A68354, L8024126C_A6836C, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L80241284_A68384, L80241294_A68394, L802412A4_A683A4, L802412B4_A683B4, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412CC_A683CC, L802412C4_A683C4, 0, 0

.section .text

glabel func_80240FD4_A680D4
/* A680D4 80240FD4 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* A680D8 80240FD8 AFB3003C */  sw        $s3, 0x3c($sp)
/* A680DC 80240FDC 0080982D */  daddu     $s3, $a0, $zero
/* A680E0 80240FE0 AFBF0048 */  sw        $ra, 0x48($sp)
/* A680E4 80240FE4 AFB50044 */  sw        $s5, 0x44($sp)
/* A680E8 80240FE8 AFB40040 */  sw        $s4, 0x40($sp)
/* A680EC 80240FEC AFB20038 */  sw        $s2, 0x38($sp)
/* A680F0 80240FF0 AFB10034 */  sw        $s1, 0x34($sp)
/* A680F4 80240FF4 AFB00030 */  sw        $s0, 0x30($sp)
/* A680F8 80240FF8 8E720148 */  lw        $s2, 0x148($s3)
/* A680FC 80240FFC 86440008 */  lh        $a0, 8($s2)
/* A68100 80241000 8E70000C */  lw        $s0, 0xc($s3)
/* A68104 80241004 0C00EABB */  jal       get_npc_unsafe
/* A68108 80241008 00A0882D */   daddu    $s1, $a1, $zero
/* A6810C 8024100C 0260202D */  daddu     $a0, $s3, $zero
/* A68110 80241010 8E050000 */  lw        $a1, ($s0)
/* A68114 80241014 0C0B1EAF */  jal       evt_get_variable
/* A68118 80241018 0040A02D */   daddu    $s4, $v0, $zero
/* A6811C 8024101C AFA00010 */  sw        $zero, 0x10($sp)
/* A68120 80241020 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A68124 80241024 8C630030 */  lw        $v1, 0x30($v1)
/* A68128 80241028 AFA30014 */  sw        $v1, 0x14($sp)
/* A6812C 8024102C 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A68130 80241030 8C63001C */  lw        $v1, 0x1c($v1)
/* A68134 80241034 AFA30018 */  sw        $v1, 0x18($sp)
/* A68138 80241038 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A6813C 8024103C 8C630024 */  lw        $v1, 0x24($v1)
/* A68140 80241040 AFA3001C */  sw        $v1, 0x1c($sp)
/* A68144 80241044 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A68148 80241048 8C630028 */  lw        $v1, 0x28($v1)
/* A6814C 8024104C 27B50010 */  addiu     $s5, $sp, 0x10
/* A68150 80241050 AFA30020 */  sw        $v1, 0x20($sp)
/* A68154 80241054 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A68158 80241058 3C014220 */  lui       $at, 0x4220
/* A6815C 8024105C 44810000 */  mtc1      $at, $f0
/* A68160 80241060 8C63002C */  lw        $v1, 0x2c($v1)
/* A68164 80241064 0040802D */  daddu     $s0, $v0, $zero
/* A68168 80241068 E7A00028 */  swc1      $f0, 0x28($sp)
/* A6816C 8024106C A7A0002C */  sh        $zero, 0x2c($sp)
/* A68170 80241070 16200005 */  bnez      $s1, .L80241088
/* A68174 80241074 AFA30024 */   sw       $v1, 0x24($sp)
/* A68178 80241078 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A6817C 8024107C 30420004 */  andi      $v0, $v0, 4
/* A68180 80241080 1040002F */  beqz      $v0, .L80241140
/* A68184 80241084 00000000 */   nop
.L80241088:
/* A68188 80241088 2404F7FF */  addiu     $a0, $zero, -0x801
/* A6818C 8024108C AE600070 */  sw        $zero, 0x70($s3)
/* A68190 80241090 A680008E */  sh        $zero, 0x8e($s4)
/* A68194 80241094 8E4200CC */  lw        $v0, 0xcc($s2)
/* A68198 80241098 8E830000 */  lw        $v1, ($s4)
/* A6819C 8024109C 8C420000 */  lw        $v0, ($v0)
/* A681A0 802410A0 00641824 */  and       $v1, $v1, $a0
/* A681A4 802410A4 AE830000 */  sw        $v1, ($s4)
/* A681A8 802410A8 AE820028 */  sw        $v0, 0x28($s4)
/* A681AC 802410AC 8E4200D0 */  lw        $v0, 0xd0($s2)
/* A681B0 802410B0 8C420034 */  lw        $v0, 0x34($v0)
/* A681B4 802410B4 54400005 */  bnel      $v0, $zero, .L802410CC
/* A681B8 802410B8 2402FDFF */   addiu    $v0, $zero, -0x201
/* A681BC 802410BC 34620200 */  ori       $v0, $v1, 0x200
/* A681C0 802410C0 2403FFF7 */  addiu     $v1, $zero, -9
/* A681C4 802410C4 08090435 */  j         .L802410D4
/* A681C8 802410C8 00431024 */   and      $v0, $v0, $v1
.L802410CC:
/* A681CC 802410CC 00621024 */  and       $v0, $v1, $v0
/* A681D0 802410D0 34420008 */  ori       $v0, $v0, 8
.L802410D4:
/* A681D4 802410D4 AE820000 */  sw        $v0, ($s4)
/* A681D8 802410D8 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A681DC 802410DC 30420004 */  andi      $v0, $v0, 4
/* A681E0 802410E0 10400008 */  beqz      $v0, .L80241104
/* A681E4 802410E4 24020063 */   addiu    $v0, $zero, 0x63
/* A681E8 802410E8 AE620070 */  sw        $v0, 0x70($s3)
/* A681EC 802410EC AE600074 */  sw        $zero, 0x74($s3)
/* A681F0 802410F0 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A681F4 802410F4 2403FFFB */  addiu     $v1, $zero, -5
/* A681F8 802410F8 00431024 */  and       $v0, $v0, $v1
/* A681FC 802410FC 08090447 */  j         .L8024111C
/* A68200 80241100 AE4200B0 */   sw       $v0, 0xb0($s2)
.L80241104:
/* A68204 80241104 8E420000 */  lw        $v0, ($s2)
/* A68208 80241108 3C034000 */  lui       $v1, 0x4000
/* A6820C 8024110C 00431024 */  and       $v0, $v0, $v1
/* A68210 80241110 10400002 */  beqz      $v0, .L8024111C
/* A68214 80241114 2402000C */   addiu    $v0, $zero, 0xc
/* A68218 80241118 AE620070 */  sw        $v0, 0x70($s3)
.L8024111C:
/* A6821C 8024111C 3C05BFFF */  lui       $a1, 0xbfff
/* A68220 80241120 34A5FFFF */  ori       $a1, $a1, 0xffff
/* A68224 80241124 2404FFFB */  addiu     $a0, $zero, -5
/* A68228 80241128 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A6822C 8024112C 8E430000 */  lw        $v1, ($s2)
/* A68230 80241130 00441024 */  and       $v0, $v0, $a0
/* A68234 80241134 00651824 */  and       $v1, $v1, $a1
/* A68238 80241138 AE4200B0 */  sw        $v0, 0xb0($s2)
/* A6823C 8024113C AE430000 */  sw        $v1, ($s2)
.L80241140:
/* A68240 80241140 8E630070 */  lw        $v1, 0x70($s3)
/* A68244 80241144 2C620064 */  sltiu     $v0, $v1, 0x64
/* A68248 80241148 10400060 */  beqz      $v0, L802412CC_A683CC
/* A6824C 8024114C 00031080 */   sll      $v0, $v1, 2
/* A68250 80241150 3C018024 */  lui       $at, %hi(jtbl_80243A08_A6AB08)
/* A68254 80241154 00220821 */  addu      $at, $at, $v0
/* A68258 80241158 8C223A08 */  lw        $v0, %lo(jtbl_80243A08_A6AB08)($at)
/* A6825C 8024115C 00400008 */  jr        $v0
/* A68260 80241160 00000000 */   nop
glabel L80241164_A68264
/* A68264 80241164 0260202D */  daddu     $a0, $s3, $zero
/* A68268 80241168 0200282D */  daddu     $a1, $s0, $zero
/* A6826C 8024116C 0C012568 */  jal       func_800495A0
/* A68270 80241170 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241174_A68274
/* A68274 80241174 0260202D */  daddu     $a0, $s3, $zero
/* A68278 80241178 0200282D */  daddu     $a1, $s0, $zero
/* A6827C 8024117C 0C0125AE */  jal       func_800496B8
/* A68280 80241180 02A0302D */   daddu    $a2, $s5, $zero
/* A68284 80241184 080904B3 */  j         L802412CC_A683CC
/* A68288 80241188 00000000 */   nop
glabel L8024118C_A6828C
/* A6828C 8024118C 0260202D */  daddu     $a0, $s3, $zero
/* A68290 80241190 0200282D */  daddu     $a1, $s0, $zero
/* A68294 80241194 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* A68298 80241198 02A0302D */   daddu    $a2, $s5, $zero
glabel L8024119C_A6829C
/* A6829C 8024119C 0260202D */  daddu     $a0, $s3, $zero
/* A682A0 802411A0 0200282D */  daddu     $a1, $s0, $zero
/* A682A4 802411A4 0C012701 */  jal       func_80049C04
/* A682A8 802411A8 02A0302D */   daddu    $a2, $s5, $zero
/* A682AC 802411AC 080904B3 */  j         L802412CC_A683CC
/* A682B0 802411B0 00000000 */   nop
glabel L802411B4_A682B4
/* A682B4 802411B4 0260202D */  daddu     $a0, $s3, $zero
/* A682B8 802411B8 0200282D */  daddu     $a1, $s0, $zero
/* A682BC 802411BC 0C01278F */  jal       func_80049E3C
/* A682C0 802411C0 02A0302D */   daddu    $a2, $s5, $zero
glabel L802411C4_A682C4
/* A682C4 802411C4 0260202D */  daddu     $a0, $s3, $zero
/* A682C8 802411C8 0200282D */  daddu     $a1, $s0, $zero
/* A682CC 802411CC 0C0127B3 */  jal       func_80049ECC
/* A682D0 802411D0 02A0302D */   daddu    $a2, $s5, $zero
/* A682D4 802411D4 080904B3 */  j         L802412CC_A683CC
/* A682D8 802411D8 00000000 */   nop
glabel L802411DC_A682DC
/* A682DC 802411DC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* A682E0 802411E0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* A682E4 802411E4 C68C0038 */  lwc1      $f12, 0x38($s4)
/* A682E8 802411E8 C68E0040 */  lwc1      $f14, 0x40($s4)
/* A682EC 802411EC 8C460028 */  lw        $a2, 0x28($v0)
/* A682F0 802411F0 0C00A7B5 */  jal       dist2D
/* A682F4 802411F4 8C470030 */   lw       $a3, 0x30($v0)
/* A682F8 802411F8 8E42006C */  lw        $v0, 0x6c($s2)
/* A682FC 802411FC 10400008 */  beqz      $v0, .L80241220
/* A68300 80241200 46000086 */   mov.s    $f2, $f0
/* A68304 80241204 44820000 */  mtc1      $v0, $f0
/* A68308 80241208 00000000 */  nop
/* A6830C 8024120C 46800020 */  cvt.s.w   $f0, $f0
/* A68310 80241210 4602003C */  c.lt.s    $f0, $f2
/* A68314 80241214 00000000 */  nop
/* A68318 80241218 4500000B */  bc1f      .L80241248
/* A6831C 8024121C 0260202D */   daddu    $a0, $s3, $zero
.L80241220:
/* A68320 80241220 0260202D */  daddu     $a0, $s3, $zero
/* A68324 80241224 8E050024 */  lw        $a1, 0x24($s0)
/* A68328 80241228 8E060028 */  lw        $a2, 0x28($s0)
/* A6832C 8024122C 0C0900B4 */  jal       func_802402D0_A673D0
/* A68330 80241230 02A0382D */   daddu    $a3, $s5, $zero
/* A68334 80241234 8E630070 */  lw        $v1, 0x70($s3)
/* A68338 80241238 2402000C */  addiu     $v0, $zero, 0xc
/* A6833C 8024123C 14620023 */  bne       $v1, $v0, L802412CC_A683CC
/* A68340 80241240 00000000 */   nop
/* A68344 80241244 0260202D */  daddu     $a0, $s3, $zero
.L80241248:
/* A68348 80241248 0200282D */  daddu     $a1, $s0, $zero
/* A6834C 8024124C 0C0127DF */  jal       func_80049F7C
/* A68350 80241250 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241254_A68354
/* A68354 80241254 0260202D */  daddu     $a0, $s3, $zero
/* A68358 80241258 0200282D */  daddu     $a1, $s0, $zero
/* A6835C 8024125C 0C012849 */  jal       func_8004A124
/* A68360 80241260 02A0302D */   daddu    $a2, $s5, $zero
/* A68364 80241264 080904B3 */  j         L802412CC_A683CC
/* A68368 80241268 00000000 */   nop
glabel L8024126C_A6836C
/* A6836C 8024126C 0260202D */  daddu     $a0, $s3, $zero
/* A68370 80241270 0200282D */  daddu     $a1, $s0, $zero
/* A68374 80241274 0C0128FA */  jal       func_8004A3E8
/* A68378 80241278 02A0302D */   daddu    $a2, $s5, $zero
/* A6837C 8024127C 080904B3 */  j         L802412CC_A683CC
/* A68380 80241280 00000000 */   nop
glabel L80241284_A68384
/* A68384 80241284 0C090105 */  jal       func_80240414_A67514
/* A68388 80241288 0260202D */   daddu    $a0, $s3, $zero
/* A6838C 8024128C 080904B3 */  j         L802412CC_A683CC
/* A68390 80241290 00000000 */   nop
glabel L80241294_A68394
/* A68394 80241294 0C090145 */  jal       kpa_52_UnkSetDurationFunc
/* A68398 80241298 0260202D */   daddu    $a0, $s3, $zero
/* A6839C 8024129C 080904B3 */  j         L802412CC_A683CC
/* A683A0 802412A0 00000000 */   nop
glabel L802412A4_A683A4
/* A683A4 802412A4 0C090156 */  jal       kpa_52_UnkNpcAIFunc9
/* A683A8 802412A8 0260202D */   daddu    $a0, $s3, $zero
/* A683AC 802412AC 080904B3 */  j         L802412CC_A683CC
/* A683B0 802412B0 00000000 */   nop
glabel L802412B4_A683B4
/* A683B4 802412B4 0C09017E */  jal       kpa_52_UnkDurationCheck
/* A683B8 802412B8 0260202D */   daddu    $a0, $s3, $zero
/* A683BC 802412BC 080904B3 */  j         L802412CC_A683CC
/* A683C0 802412C0 00000000 */   nop
glabel L802412C4_A683C4
/* A683C4 802412C4 0C0129CF */  jal       func_8004A73C
/* A683C8 802412C8 0260202D */   daddu    $a0, $s3, $zero
glabel L802412CC_A683CC
/* A683CC 802412CC 8FBF0048 */  lw        $ra, 0x48($sp)
/* A683D0 802412D0 8FB50044 */  lw        $s5, 0x44($sp)
/* A683D4 802412D4 8FB40040 */  lw        $s4, 0x40($sp)
/* A683D8 802412D8 8FB3003C */  lw        $s3, 0x3c($sp)
/* A683DC 802412DC 8FB20038 */  lw        $s2, 0x38($sp)
/* A683E0 802412E0 8FB10034 */  lw        $s1, 0x34($sp)
/* A683E4 802412E4 8FB00030 */  lw        $s0, 0x30($sp)
/* A683E8 802412E8 0000102D */  daddu     $v0, $zero, $zero
/* A683EC 802412EC 03E00008 */  jr        $ra
/* A683F0 802412F0 27BD0050 */   addiu    $sp, $sp, 0x50
