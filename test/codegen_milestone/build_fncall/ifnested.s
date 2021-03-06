	.globl  glob1
	.data   
	.align  2
	.type   glob1, @object
	.size   glob1, 4
glob1:
	.word   10

	.globl  glob2
	.align  2
	.type   glob2, @object
	.size   glob2, 4
glob2:
	.word   67

	.globl  glob3
	.align  2
	.type   glob3, @object
	.size   glob3, 4
glob3:
	.word   80

	.globl  glob4
	.align  2
	.type   glob4, @object
	.size   glob4, 4
glob4:
	.word   0

	.text   
	.align	2
	.globl fn
	.ent fn
	.type fn, @function
fn:
	addiu   $sp, $sp, -40		# Allocate memory on the stack
	sw      $fp, 36($sp)		# Store value of $fp on the bottom of the stack
	addiu   $fp, $sp, 32		# Point $fp to the bottom of the available memory
	sw      $ra, 0($fp)		# Store the return address for the current subroutine
	sw      $a0, -4($fp)
	sw      $a1, -8($fp)
	sw      $a2, -12($fp)
	sw      $a3, -16($fp)
	lw      $t0, -4($fp)
	beq     $t0, $0, $LKDHGF4
	lw      $t0, -4($fp)
	beq     $0, $t0, $LKDHGF6
	lw      $t1, -8($fp)
	beq     $0, $t1, $LKDHGF6
	li      $t2, 1
	sw      $t2, -20($fp)
	b       $LKDHGF7
$LKDHGF6:
	move    $t2, $0
	sw      $t2, -20($fp)
$LKDHGF7:
	lw      $t0, -20($fp)
	beq     $t0, $0, $LKDHGF5
	lui     $t9, %hi(glob1)
	lw      $v0, %lo(glob1)($t9)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 40		# Restore the value of the stack pointer
	j       $ra
	nop     
	b       $LKDHGF5
	nop     
$LKDHGF5:
	b       $LKDHGF3
	nop     
$LKDHGF4:
	lw      $t0, -8($fp)
	beq     $t0, $0, $LKDHGF9
	lw      $t0, 32($fp)
	bne     $0, $t0, $LKDHGF11
	nop     
	lw      $t1, -8($fp)
	bne     $0, $t1, $LKDHGF11
	move    $t2, $0
	sw      $t2, -20($fp)
	b       $LKDHGF12
$LKDHGF11:
	li      $t2, 1
	sw      $t2, -20($fp)
$LKDHGF12:
	lw      $t0, -20($fp)
	beq     $t0, $0, $LKDHGF10
	lui     $t9, %hi(glob2)
	lw      $v0, %lo(glob2)($t9)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 40		# Restore the value of the stack pointer
	j       $ra
	nop     
	b       $LKDHGF10
	nop     
$LKDHGF10:
	b       $LKDHGF8
	nop     
$LKDHGF9:
	lw      $t0, -12($fp)
	beq     $t0, $0, $LKDHGF14
	lui     $t9, %hi(glob3)
	lw      $v0, %lo(glob3)($t9)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 40		# Restore the value of the stack pointer
	j       $ra
	nop     
	b       $LKDHGF13
	nop     
$LKDHGF14:
	lw      $t0, -16($fp)
	beq     $t0, $0, $LKDHGF16
	lui     $t9, %hi(glob4)
	lw      $t0, %lo(glob4)($t9)
	lui     $t9, %hi(glob2)
	lw      $t1, %lo(glob2)($t9)
	and     $t2, $t0, $t1
	sw      $t2, -20($fp)
	lw      $t0, -20($fp)
	beq     $t0, $0, $LKDHGF17
	lw      $v0, 32($fp)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 40		# Restore the value of the stack pointer
	j       $ra
	nop     
	b       $LKDHGF17
	nop     
$LKDHGF17:
	b       $LKDHGF15
	nop     
$LKDHGF16:
	lw      $t0, 24($fp)
	beq     $t0, $0, $LKDHGF19
	lui     $t9, %hi(glob2)
	lw      $t0, %lo(glob2)($t9)
	beq     $t0, $0, $LKDHGF20
	lw      $v0, -12($fp)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 40		# Restore the value of the stack pointer
	j       $ra
	nop     
	b       $LKDHGF20
	nop     
$LKDHGF20:
	b       $LKDHGF18
	nop     
$LKDHGF19:
	lw      $t0, 28($fp)
	beq     $t0, $0, $LKDHGF22
	lui     $t9, %hi(glob4)
	lw      $t0, %lo(glob4)($t9)
	beq     $t0, $0, $LKDHGF24
	lw      $v0, -12($fp)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 40		# Restore the value of the stack pointer
	j       $ra
	nop     
	b       $LKDHGF23
	nop     
$LKDHGF24:
	lw      $t0, 32($fp)
	lui     $t9, %hi(glob1)
	lw      $t1, %lo(glob1)($t9)
	mul     $t2, $t0, $t1
	sw      $t2, -20($fp)
	lw      $t0, -20($fp)
	beq     $t0, $0, $LKDHGF25
	lui     $t9, %hi(glob1)
	lw      $v0, %lo(glob1)($t9)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 40		# Restore the value of the stack pointer
	j       $ra
	nop     
	b       $LKDHGF25
	nop     
$LKDHGF25:
$LKDHGF23:
	b       $LKDHGF21
	nop     
$LKDHGF22:
	lw      $t0, 32($fp)
	beq     $t0, $0, $LKDHGF27
	lui     $t9, %hi(glob4)
	lw      $t0, %lo(glob4)($t9)
	beq     $t0, $0, $LKDHGF29
	lw      $t0, -4($fp)
	lw      $t1, -8($fp)
	mul     $t2, $t0, $t1
	sw      $t2, -20($fp)
	lw      $v0, -20($fp)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 40		# Restore the value of the stack pointer
	j       $ra
	nop     
	b       $LKDHGF28
	nop     
$LKDHGF29:
	lui     $t9, %hi(glob4)
	lw      $t0, %lo(glob4)($t9)
	li      $t1, 10
	mul     $t2, $t0, $t1
	sw      $t2, -20($fp)
	lw      $t0, -20($fp)
	beq     $t0, $0, $LKDHGF31
	lw      $t0, -4($fp)
	lw      $t1, -8($fp)
	mul     $t2, $t0, $t1
	sw      $t2, -24($fp)
	lw      $t0, -24($fp)
	lw      $t1, 32($fp)
	mul     $t2, $t0, $t1
	sw      $t2, -28($fp)
	lw      $v0, -28($fp)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 40		# Restore the value of the stack pointer
	j       $ra
	nop     
	b       $LKDHGF30
	nop     
$LKDHGF31:
	lui     $t9, %hi(glob3)
	lw      $v0, %lo(glob3)($t9)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 40		# Restore the value of the stack pointer
	j       $ra
	nop     
$LKDHGF30:
$LKDHGF28:
	b       $LKDHGF26
	nop     
$LKDHGF27:
	lui     $t9, %hi(glob4)
	lw      $v0, %lo(glob4)($t9)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 40		# Restore the value of the stack pointer
	j       $ra
	nop     
$LKDHGF26:
$LKDHGF21:
$LKDHGF18:
$LKDHGF15:
$LKDHGF13:
$LKDHGF8:
$LKDHGF3:
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 40		# Restore the value of the stack pointer
	j       $ra
	nop     

	.end fn

	.align	2
	.globl fncall
	.ent fncall
	.type fncall, @function
fncall:
	addiu   $sp, $sp, -40		# Allocate memory on the stack
	sw      $fp, 36($sp)		# Store value of $fp on the bottom of the stack
	addiu   $fp, $sp, 32		# Point $fp to the bottom of the available memory
	sw      $ra, 0($fp)		# Store the return address for the current subroutine
	sw      $a0, -4($fp)
	sw      $a1, -8($fp)
	sw      $a2, -12($fp)
	sw      $a3, -16($fp)
	lw      $a0, -4($fp)
	lw      $a1, -8($fp)
	lw      $a2, -12($fp)
	lw      $a3, -16($fp)
	addiu   $sp, $sp, -32		# Allocate more memory
	lw      $t0, 24($fp)
	sw      $t0, 16($sp)
	lw      $t0, 28($fp)
	sw      $t0, 20($sp)
	lw      $t0, 32($fp)
	sw      $t0, 24($sp)
	la      $t0, fn
	jalr    $t0
	nop     
	sw      $v0, -20($fp)
	lw      $v0, -20($fp)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 72		# Restore the value of the stack pointer
	j       $ra
	nop     

	.end fncall

