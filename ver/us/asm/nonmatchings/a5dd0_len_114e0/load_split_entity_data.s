.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel jtbl_8014F858
.word L80111478_A7B78, L80111480_A7B80, L80111478_A7B78, L80111480_A7B80, L80111478_A7B78, L80111480_A7B80, L80111478_A7B78, L80111480_A7B80

.section .text

glabel load_split_entity_data
/* A7B08 80111408 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* A7B0C 8011140C AFB40028 */  sw        $s4, 0x28($sp)
/* A7B10 80111410 0080A02D */  daddu     $s4, $a0, $zero
/* A7B14 80111414 AFB60030 */  sw        $s6, 0x30($sp)
/* A7B18 80111418 00A0B02D */  daddu     $s6, $a1, $zero
/* A7B1C 8011141C AFBF0034 */  sw        $ra, 0x34($sp)
/* A7B20 80111420 AFB5002C */  sw        $s5, 0x2c($sp)
/* A7B24 80111424 AFB30024 */  sw        $s3, 0x24($sp)
/* A7B28 80111428 AFB20020 */  sw        $s2, 0x20($sp)
/* A7B2C 8011142C AFB1001C */  sw        $s1, 0x1c($sp)
/* A7B30 80111430 AFB00018 */  sw        $s0, 0x18($sp)
/* A7B34 80111434 96C20000 */  lhu       $v0, ($s6)
/* A7B38 80111438 30420008 */  andi      $v0, $v0, 8
/* A7B3C 8011143C 104000A8 */  beqz      $v0, .L801116E0
/* A7B40 80111440 0000A82D */   daddu    $s5, $zero, $zero
/* A7B44 80111444 8ED30018 */  lw        $s3, 0x18($s6)
/* A7B48 80111448 2402000A */  addiu     $v0, $zero, 0xa
/* A7B4C 8011144C A6820012 */  sh        $v0, 0x12($s4)
/* A7B50 80111450 92C20020 */  lbu       $v0, 0x20($s6)
/* A7B54 80111454 2443FFBD */  addiu     $v1, $v0, -0x43
/* A7B58 80111458 2C620008 */  sltiu     $v0, $v1, 8
/* A7B5C 8011145C 1040000A */  beqz      $v0, .L80111488
/* A7B60 80111460 00031080 */   sll      $v0, $v1, 2
/* A7B64 80111464 3C018015 */  lui       $at, %hi(jtbl_8014F858)
/* A7B68 80111468 00220821 */  addu      $at, $at, $v0
/* A7B6C 8011146C 8C22F858 */  lw        $v0, %lo(jtbl_8014F858)($at)
/* A7B70 80111470 00400008 */  jr        $v0
/* A7B74 80111474 00000000 */   nop
glabel L80111478_A7B78
/* A7B78 80111478 08044523 */  j         .L8011148C
/* A7B7C 8011147C 24121000 */   addiu    $s2, $zero, 0x1000
glabel L80111480_A7B80
/* A7B80 80111480 08044523 */  j         .L8011148C
/* A7B84 80111484 24122BC0 */   addiu    $s2, $zero, 0x2bc0
.L80111488:
/* A7B88 80111488 0000902D */  daddu     $s2, $zero, $zero
.L8011148C:
/* A7B8C 8011148C 12400020 */  beqz      $s2, .L80111510
/* A7B90 80111490 24020043 */   addiu    $v0, $zero, 0x43
/* A7B94 80111494 92C30020 */  lbu       $v1, 0x20($s6)
/* A7B98 80111498 54620007 */  bnel      $v1, $v0, .L801114B8
/* A7B9C 8011149C 2652F000 */   addiu    $s2, $s2, -0x1000
/* A7BA0 801114A0 0280202D */  daddu     $a0, $s4, $zero
/* A7BA4 801114A4 02C0282D */  daddu     $a1, $s6, $zero
/* A7BA8 801114A8 27A60010 */  addiu     $a2, $sp, 0x10
/* A7BAC 801114AC 0C044457 */  jal       is_entity_data_loaded
/* A7BB0 801114B0 27A70014 */   addiu    $a3, $sp, 0x14
/* A7BB4 801114B4 2652F000 */  addiu     $s2, $s2, -0x1000
.L801114B8:
/* A7BB8 801114B8 3C118015 */  lui       $s1, %hi(D_80151300)
/* A7BBC 801114BC 26311300 */  addiu     $s1, $s1, %lo(D_80151300)
/* A7BC0 801114C0 00129080 */  sll       $s2, $s2, 2
/* A7BC4 801114C4 8E640000 */  lw        $a0, ($s3)
/* A7BC8 801114C8 8E260000 */  lw        $a2, ($s1)
/* A7BCC 801114CC 8E650004 */  lw        $a1, 4($s3)
/* A7BD0 801114D0 0C00A5CF */  jal       dma_copy
/* A7BD4 801114D4 00D23021 */   addu     $a2, $a2, $s2
/* A7BD8 801114D8 00028082 */  srl       $s0, $v0, 2
/* A7BDC 801114DC 8E260000 */  lw        $a2, ($s1)
/* A7BE0 801114E0 00108080 */  sll       $s0, $s0, 2
/* A7BE4 801114E4 00D23021 */  addu      $a2, $a2, $s2
/* A7BE8 801114E8 AE860044 */  sw        $a2, 0x44($s4)
/* A7BEC 801114EC 8E640008 */  lw        $a0, 8($s3)
/* A7BF0 801114F0 8E65000C */  lw        $a1, 0xc($s3)
/* A7BF4 801114F4 0C00A5CF */  jal       dma_copy
/* A7BF8 801114F8 00D03021 */   addu     $a2, $a2, $s0
/* A7BFC 801114FC 8E220000 */  lw        $v0, ($s1)
/* A7C00 80111500 24150001 */  addiu     $s5, $zero, 1
/* A7C04 80111504 00521021 */  addu      $v0, $v0, $s2
/* A7C08 80111508 080445C4 */  j         .L80111710
/* A7C0C 8011150C 00508021 */   addu     $s0, $v0, $s0
.L80111510:
/* A7C10 80111510 0280202D */  daddu     $a0, $s4, $zero
/* A7C14 80111514 02C0282D */  daddu     $a1, $s6, $zero
/* A7C18 80111518 27A60010 */  addiu     $a2, $sp, 0x10
/* A7C1C 8011151C 0C044457 */  jal       is_entity_data_loaded
/* A7C20 80111520 27A70014 */   addiu    $a3, $sp, 0x14
/* A7C24 80111524 10400055 */  beqz      $v0, .L8011167C
/* A7C28 80111528 00000000 */   nop
/* A7C2C 8011152C 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* A7C30 80111530 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* A7C34 80111534 80420070 */  lb        $v0, 0x70($v0)
/* A7C38 80111538 14400005 */  bnez      $v0, .L80111550
/* A7C3C 8011153C 00000000 */   nop
/* A7C40 80111540 3C128015 */  lui       $s2, %hi(wStaticEntityDataSize)
/* A7C44 80111544 8E52165C */  lw        $s2, %lo(wStaticEntityDataSize)($s2)
/* A7C48 80111548 08044556 */  j         .L80111558
/* A7C4C 8011154C 00000000 */   nop
.L80111550:
/* A7C50 80111550 3C128015 */  lui       $s2, %hi(bStaticEntityDataSize)
/* A7C54 80111554 8E521660 */  lw        $s2, %lo(bStaticEntityDataSize)($s2)
.L80111558:
/* A7C58 80111558 8E620004 */  lw        $v0, 4($s3)
/* A7C5C 8011155C 8E630000 */  lw        $v1, ($s3)
/* A7C60 80111560 00431023 */  subu      $v0, $v0, $v1
/* A7C64 80111564 00021083 */  sra       $v0, $v0, 2
/* A7C68 80111568 02421021 */  addu      $v0, $s2, $v0
/* A7C6C 8011156C 2C425FFD */  sltiu     $v0, $v0, 0x5ffd
/* A7C70 80111570 14400005 */  bnez      $v0, .L80111588
/* A7C74 80111574 00000000 */   nop
/* A7C78 80111578 0C0441A9 */  jal       get_entity_type
/* A7C7C 8011157C 92840004 */   lbu      $a0, 4($s4)
.L80111580:
/* A7C80 80111580 08044560 */  j         .L80111580
/* A7C84 80111584 00000000 */   nop
.L80111588:
/* A7C88 80111588 8E62000C */  lw        $v0, 0xc($s3)
/* A7C8C 8011158C 8E630008 */  lw        $v1, 8($s3)
/* A7C90 80111590 00431023 */  subu      $v0, $v0, $v1
/* A7C94 80111594 00021083 */  sra       $v0, $v0, 2
/* A7C98 80111598 02421021 */  addu      $v0, $s2, $v0
/* A7C9C 8011159C 2C425FFD */  sltiu     $v0, $v0, 0x5ffd
/* A7CA0 801115A0 14400006 */  bnez      $v0, .L801115BC
/* A7CA4 801115A4 00128080 */   sll      $s0, $s2, 2
/* A7CA8 801115A8 92840004 */  lbu       $a0, 4($s4)
/* A7CAC 801115AC 0C0441A9 */  jal       get_entity_type
/* A7CB0 801115B0 00000000 */   nop
.L801115B4:
/* A7CB4 801115B4 0804456D */  j         .L801115B4
/* A7CB8 801115B8 00000000 */   nop
.L801115BC:
/* A7CBC 801115BC 3C118015 */  lui       $s1, %hi(gEntityHeapBase)
/* A7CC0 801115C0 263112C4 */  addiu     $s1, $s1, %lo(gEntityHeapBase)
/* A7CC4 801115C4 8E640000 */  lw        $a0, ($s3)
/* A7CC8 801115C8 8E260000 */  lw        $a2, ($s1)
/* A7CCC 801115CC 8E650004 */  lw        $a1, 4($s3)
/* A7CD0 801115D0 00D03023 */  subu      $a2, $a2, $s0
/* A7CD4 801115D4 00C53023 */  subu      $a2, $a2, $a1
/* A7CD8 801115D8 00063083 */  sra       $a2, $a2, 2
/* A7CDC 801115DC 00063080 */  sll       $a2, $a2, 2
/* A7CE0 801115E0 0C00A5CF */  jal       dma_copy
/* A7CE4 801115E4 00863021 */   addu     $a2, $a0, $a2
/* A7CE8 801115E8 00021082 */  srl       $v0, $v0, 2
/* A7CEC 801115EC 02429021 */  addu      $s2, $s2, $v0
/* A7CF0 801115F0 8E260000 */  lw        $a2, ($s1)
/* A7CF4 801115F4 00021080 */  sll       $v0, $v0, 2
/* A7CF8 801115F8 00D08023 */  subu      $s0, $a2, $s0
/* A7CFC 801115FC 02028023 */  subu      $s0, $s0, $v0
/* A7D00 80111600 AE900044 */  sw        $s0, 0x44($s4)
/* A7D04 80111604 00128080 */  sll       $s0, $s2, 2
/* A7D08 80111608 00D03023 */  subu      $a2, $a2, $s0
/* A7D0C 8011160C 8E65000C */  lw        $a1, 0xc($s3)
/* A7D10 80111610 8E640008 */  lw        $a0, 8($s3)
/* A7D14 80111614 00C53023 */  subu      $a2, $a2, $a1
/* A7D18 80111618 00063083 */  sra       $a2, $a2, 2
/* A7D1C 8011161C 00063080 */  sll       $a2, $a2, 2
/* A7D20 80111620 0C00A5CF */  jal       dma_copy
/* A7D24 80111624 00863021 */   addu     $a2, $a0, $a2
/* A7D28 80111628 00021082 */  srl       $v0, $v0, 2
/* A7D2C 8011162C 02429021 */  addu      $s2, $s2, $v0
/* A7D30 80111630 00021080 */  sll       $v0, $v0, 2
/* A7D34 80111634 8E230000 */  lw        $v1, ($s1)
/* A7D38 80111638 92840004 */  lbu       $a0, 4($s4)
/* A7D3C 8011163C 00701823 */  subu      $v1, $v1, $s0
/* A7D40 80111640 0C0441A9 */  jal       get_entity_type
/* A7D44 80111644 00628023 */   subu     $s0, $v1, $v0
/* A7D48 80111648 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* A7D4C 8011164C 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* A7D50 80111650 80420070 */  lb        $v0, 0x70($v0)
/* A7D54 80111654 14400005 */  bnez      $v0, .L8011166C
/* A7D58 80111658 24150001 */   addiu    $s5, $zero, 1
/* A7D5C 8011165C 3C018015 */  lui       $at, %hi(wStaticEntityDataSize)
/* A7D60 80111660 AC32165C */  sw        $s2, %lo(wStaticEntityDataSize)($at)
/* A7D64 80111664 080445C4 */  j         .L80111710
/* A7D68 80111668 00000000 */   nop
.L8011166C:
/* A7D6C 8011166C 3C018015 */  lui       $at, %hi(bStaticEntityDataSize)
/* A7D70 80111670 AC321660 */  sw        $s2, %lo(bStaticEntityDataSize)($at)
/* A7D74 80111674 080445C4 */  j         .L80111710
/* A7D78 80111678 00000000 */   nop
.L8011167C:
/* A7D7C 8011167C 8E620004 */  lw        $v0, 4($s3)
/* A7D80 80111680 8E630000 */  lw        $v1, ($s3)
/* A7D84 80111684 3C058015 */  lui       $a1, %hi(gEntityHeapBase)
/* A7D88 80111688 8CA512C4 */  lw        $a1, %lo(gEntityHeapBase)($a1)
/* A7D8C 8011168C 00431023 */  subu      $v0, $v0, $v1
/* A7D90 80111690 00021883 */  sra       $v1, $v0, 2
/* A7D94 80111694 8FA20010 */  lw        $v0, 0x10($sp)
/* A7D98 80111698 00031880 */  sll       $v1, $v1, 2
/* A7D9C 8011169C 00021080 */  sll       $v0, $v0, 2
/* A7DA0 801116A0 00A21023 */  subu      $v0, $a1, $v0
/* A7DA4 801116A4 00431023 */  subu      $v0, $v0, $v1
/* A7DA8 801116A8 AE820044 */  sw        $v0, 0x44($s4)
/* A7DAC 801116AC 8E63000C */  lw        $v1, 0xc($s3)
/* A7DB0 801116B0 8E620008 */  lw        $v0, 8($s3)
/* A7DB4 801116B4 92840004 */  lbu       $a0, 4($s4)
/* A7DB8 801116B8 00621823 */  subu      $v1, $v1, $v0
/* A7DBC 801116BC 8FA20014 */  lw        $v0, 0x14($sp)
/* A7DC0 801116C0 00031883 */  sra       $v1, $v1, 2
/* A7DC4 801116C4 00021080 */  sll       $v0, $v0, 2
/* A7DC8 801116C8 00A22823 */  subu      $a1, $a1, $v0
/* A7DCC 801116CC 00031080 */  sll       $v0, $v1, 2
/* A7DD0 801116D0 0C0441A9 */  jal       get_entity_type
/* A7DD4 801116D4 00A28023 */   subu     $s0, $a1, $v0
/* A7DD8 801116D8 080445C4 */  j         .L80111710
/* A7DDC 801116DC 00000000 */   nop
.L801116E0:
/* A7DE0 801116E0 0C04792E */  jal       create_model_animator
/* A7DE4 801116E4 8EC40004 */   lw       $a0, 4($s6)
/* A7DE8 801116E8 A6820014 */  sh        $v0, 0x14($s4)
/* A7DEC 801116EC 00021400 */  sll       $v0, $v0, 0x10
/* A7DF0 801116F0 8EC50008 */  lw        $a1, 8($s6)
/* A7DF4 801116F4 0C0480EB */  jal       load_model_animator_tree
/* A7DF8 801116F8 00022403 */   sra      $a0, $v0, 0x10
/* A7DFC 801116FC 86840014 */  lh        $a0, 0x14($s4)
/* A7E00 80111700 0C047A2F */  jal       update_model_animator
/* A7E04 80111704 00000000 */   nop
/* A7E08 80111708 080445DA */  j         .L80111768
/* A7E0C 8011170C 00000000 */   nop
.L80111710:
/* A7E10 80111710 8EC20008 */  lw        $v0, 8($s6)
/* A7E14 80111714 8ED10004 */  lw        $s1, 4($s6)
/* A7E18 80111718 12A00005 */  beqz      $s5, .L80111730
/* A7E1C 8011171C 02029021 */   addu     $s2, $s0, $v0
/* A7E20 80111720 02C0202D */  daddu     $a0, $s6, $zero
/* A7E24 80111724 8E860044 */  lw        $a2, 0x44($s4)
/* A7E28 80111728 0C04442D */  jal       entity_anim_make_vertex_pointers
/* A7E2C 8011172C 0200282D */   daddu    $a1, $s0, $zero
.L80111730:
/* A7E30 80111730 0220202D */  daddu     $a0, $s1, $zero
/* A7E34 80111734 0C047978 */  jal       create_mesh_animator
/* A7E38 80111738 0200282D */   daddu    $a1, $s0, $zero
/* A7E3C 8011173C 00022400 */  sll       $a0, $v0, 0x10
/* A7E40 80111740 00042403 */  sra       $a0, $a0, 0x10
/* A7E44 80111744 0240282D */  daddu     $a1, $s2, $zero
/* A7E48 80111748 0C04811D */  jal       load_mesh_animator_tree
/* A7E4C 8011174C A6820014 */   sh       $v0, 0x14($s4)
/* A7E50 80111750 86840014 */  lh        $a0, 0x14($s4)
/* A7E54 80111754 0C047A2F */  jal       update_model_animator
/* A7E58 80111758 00000000 */   nop
/* A7E5C 8011175C 8E820000 */  lw        $v0, ($s4)
/* A7E60 80111760 34420008 */  ori       $v0, $v0, 8
/* A7E64 80111764 AE820000 */  sw        $v0, ($s4)
.L80111768:
/* A7E68 80111768 8FBF0034 */  lw        $ra, 0x34($sp)
/* A7E6C 8011176C 8FB60030 */  lw        $s6, 0x30($sp)
/* A7E70 80111770 8FB5002C */  lw        $s5, 0x2c($sp)
/* A7E74 80111774 8FB40028 */  lw        $s4, 0x28($sp)
/* A7E78 80111778 8FB30024 */  lw        $s3, 0x24($sp)
/* A7E7C 8011177C 8FB20020 */  lw        $s2, 0x20($sp)
/* A7E80 80111780 8FB1001C */  lw        $s1, 0x1c($sp)
/* A7E84 80111784 8FB00018 */  lw        $s0, 0x18($sp)
/* A7E88 80111788 03E00008 */  jr        $ra
/* A7E8C 8011178C 27BD0038 */   addiu    $sp, $sp, 0x38
