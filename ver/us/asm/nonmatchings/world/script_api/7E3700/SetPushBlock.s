.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel SetPushBlock
/* 7E42FC 8028347C 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 7E4300 80283480 AFB30034 */  sw        $s3, 0x34($sp)
/* 7E4304 80283484 0080982D */  daddu     $s3, $a0, $zero
/* 7E4308 80283488 AFBF0038 */  sw        $ra, 0x38($sp)
/* 7E430C 8028348C AFB20030 */  sw        $s2, 0x30($sp)
/* 7E4310 80283490 AFB1002C */  sw        $s1, 0x2c($sp)
/* 7E4314 80283494 AFB00028 */  sw        $s0, 0x28($sp)
/* 7E4318 80283498 8E70000C */  lw        $s0, 0xc($s3)
/* 7E431C 8028349C 8E050000 */  lw        $a1, ($s0)
/* 7E4320 802834A0 0C0B1EAF */  jal       evt_get_variable
/* 7E4324 802834A4 26100004 */   addiu    $s0, $s0, 4
/* 7E4328 802834A8 8E050000 */  lw        $a1, ($s0)
/* 7E432C 802834AC 26100004 */  addiu     $s0, $s0, 4
/* 7E4330 802834B0 0260202D */  daddu     $a0, $s3, $zero
/* 7E4334 802834B4 0C0B1EAF */  jal       evt_get_variable
/* 7E4338 802834B8 0040882D */   daddu    $s1, $v0, $zero
/* 7E433C 802834BC 8E050000 */  lw        $a1, ($s0)
/* 7E4340 802834C0 26100004 */  addiu     $s0, $s0, 4
/* 7E4344 802834C4 0260202D */  daddu     $a0, $s3, $zero
/* 7E4348 802834C8 0C0B1EAF */  jal       evt_get_variable
/* 7E434C 802834CC 0040902D */   daddu    $s2, $v0, $zero
/* 7E4350 802834D0 0260202D */  daddu     $a0, $s3, $zero
/* 7E4354 802834D4 8E050000 */  lw        $a1, ($s0)
/* 7E4358 802834D8 0C0B1EAF */  jal       evt_get_variable
/* 7E435C 802834DC 0040802D */   daddu    $s0, $v0, $zero
/* 7E4360 802834E0 00118880 */  sll       $s1, $s1, 2
/* 7E4364 802834E4 3C01802E */  lui       $at, %hi(D_802DBC88)
/* 7E4368 802834E8 00310821 */  addu      $at, $at, $s1
/* 7E436C 802834EC 8C31BC88 */  lw        $s1, %lo(D_802DBC88)($at)
/* 7E4370 802834F0 92230004 */  lbu       $v1, 4($s1)
/* 7E4374 802834F4 02030018 */  mult      $s0, $v1
/* 7E4378 802834F8 8E230000 */  lw        $v1, ($s1)
/* 7E437C 802834FC 00004012 */  mflo      $t0
/* 7E4380 80283500 02482021 */  addu      $a0, $s2, $t0
/* 7E4384 80283504 00641821 */  addu      $v1, $v1, $a0
/* 7E4388 80283508 A0620000 */  sb        $v0, ($v1)
/* 7E438C 8028350C 24030001 */  addiu     $v1, $zero, 1
/* 7E4390 80283510 14430023 */  bne       $v0, $v1, .L802835A0
/* 7E4394 80283514 3C028000 */   lui      $v0, 0x8000
/* 7E4398 80283518 3C04802F */  lui       $a0, %hi(D_802EA2BC)
/* 7E439C 8028351C 2484A2BC */  addiu     $a0, $a0, %lo(D_802EA2BC)
/* 7E43A0 80283520 8E250008 */  lw        $a1, 8($s1)
/* 7E43A4 80283524 8E26000C */  lw        $a2, 0xc($s1)
/* 7E43A8 80283528 8E270010 */  lw        $a3, 0x10($s1)
/* 7E43AC 8028352C AFA20020 */  sw        $v0, 0x20($sp)
/* 7E43B0 80283530 00721004 */  sllv      $v0, $s2, $v1
/* 7E43B4 80283534 00521021 */  addu      $v0, $v0, $s2
/* 7E43B8 80283538 000210C0 */  sll       $v0, $v0, 3
/* 7E43BC 8028353C 00521021 */  addu      $v0, $v0, $s2
/* 7E43C0 80283540 AFA00010 */  sw        $zero, 0x10($sp)
/* 7E43C4 80283544 AFA00014 */  sw        $zero, 0x14($sp)
/* 7E43C8 80283548 AFA00018 */  sw        $zero, 0x18($sp)
/* 7E43CC 8028354C AFA0001C */  sw        $zero, 0x1c($sp)
/* 7E43D0 80283550 00A22821 */  addu      $a1, $a1, $v0
/* 7E43D4 80283554 24A5000C */  addiu     $a1, $a1, 0xc
/* 7E43D8 80283558 00701004 */  sllv      $v0, $s0, $v1
/* 7E43DC 8028355C 00501021 */  addu      $v0, $v0, $s0
/* 7E43E0 80283560 000210C0 */  sll       $v0, $v0, 3
/* 7E43E4 80283564 00501021 */  addu      $v0, $v0, $s0
/* 7E43E8 80283568 00E23821 */  addu      $a3, $a3, $v0
/* 7E43EC 8028356C 0C044631 */  jal       create_entity
/* 7E43F0 80283570 24E7000C */   addiu    $a3, $a3, 0xc
/* 7E43F4 80283574 3C048028 */  lui       $a0, %hi(D_80285674_7E64F4)
/* 7E43F8 80283578 24845674 */  addiu     $a0, $a0, %lo(D_80285674_7E64F4)
/* 7E43FC 8028357C 24050040 */  addiu     $a1, $zero, 0x40
/* 7E4400 80283580 0040802D */  daddu     $s0, $v0, $zero
/* 7E4404 80283584 26064000 */  addiu     $a2, $s0, 0x4000
/* 7E4408 80283588 0220382D */  daddu     $a3, $s1, $zero
/* 7E440C 8028358C 24020003 */  addiu     $v0, $zero, 3
/* 7E4410 80283590 AFB00010 */  sw        $s0, 0x10($sp)
/* 7E4414 80283594 0C0B10AA */  jal       bind_trigger_1
/* 7E4418 80283598 AFA20014 */   sw       $v0, 0x14($sp)
/* 7E441C 8028359C AE700084 */  sw        $s0, 0x84($s3)
.L802835A0:
/* 7E4420 802835A0 8FBF0038 */  lw        $ra, 0x38($sp)
/* 7E4424 802835A4 8FB30034 */  lw        $s3, 0x34($sp)
/* 7E4428 802835A8 8FB20030 */  lw        $s2, 0x30($sp)
/* 7E442C 802835AC 8FB1002C */  lw        $s1, 0x2c($sp)
/* 7E4430 802835B0 8FB00028 */  lw        $s0, 0x28($sp)
/* 7E4434 802835B4 24020002 */  addiu     $v0, $zero, 2
/* 7E4438 802835B8 03E00008 */  jr        $ra
/* 7E443C 802835BC 27BD0040 */   addiu    $sp, $sp, 0x40
