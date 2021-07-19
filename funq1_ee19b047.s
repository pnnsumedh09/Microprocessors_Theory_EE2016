


/////////////////	Name : P N Neelesh Sumedh	/////////////////////
/////////////////	Roll.No : EE19B047		/////////////////////

	.arch armv5t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"fun.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	fun
	.syntax unified
	.arm
	.fpu softvfp
	.type	fun, %function
fun:
.LFB0:
	.file 1 "fun.c"
	.loc 1 1 22
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	.cfi_def_cfa_register 11
	.loc 1 6 6
	.loc 1 7 7
	.loc 1 7 2
	
.L:                         ///////////////////////////////////////      MY CODE     ////////////////////////////////////


	push	{r4-r11}		// Saving registers r4-r11
	sub	r8, r1, #7		// Storing r8 with n-7. r8 is used to as index to track the no of interations
	ldr	r1, [r0, #20]		// Loading r1 with A[5]
	ldr	r2, [r0, #16]		// Loading r2 with A[4]
	ldr	r3, [r0, #12]		// Loading r3 with A[3]
	ldr	r4, [r0, #8]		// Loading r4 with A[2]
	ldr	r5, [r0, #4]		// Loading r5 with A[1]
	ldr	r6, [r0], #24		// Loading r6 with A[0] and incrementing r0 to make it moing to A[6]
	add	r9, r8, #1		// r9 is used to store n-6-imin. Here imin is index when S is minimum. Here r9 is stored with n-6
	mov	r11, r9			// Storing r11 with n-6
	sub	r10, r1, r2		// r10 is used to store the value of S. Here r10 is loaded with A[5] - A[4] 
	add	r10, r10, r3		// r10 is loaded with A[5] - A[4] + A[3]
	sub	r10, r10, r4		// r10 is loaded with A[5] - A[4] + A[3] - A[2]
	add	r10, r10, r5		// r10 is loaded with A[5] - A[4] + A[3] - A[2] + A[1]
	sub	r10, r10, r6		// r10 is loaded with A[5] - A[4] + A[3] - A[2] + A[1] - A[0]
	mov	r7, r10			// r7 is used to store minimum value of S obtained till now
Loop:
	
	ldr	r6, [r0], #4		// Loading r6 with A[i+5]
	sub	r10, r6, r1		// r10 is loaded with A[i+5] - A[i+4]
	add	r10, r10, r2		// r10 is loaded with A[i+5] - A[i+4] + A[i+3]
	sub	r10, r10, r3		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2]
	add	r10, r10, r4		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2] + A[i+1]
	sub	r10, r10, r5		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2] + A[i+1] - A[i]
	cmp	r10, r7			// Comparing the present S with the minimum S obtained till now 	
	movlt	r7, r10			// Storing present S as minimum S if present S is smaller than the minimum S
	movlt	r9, r8			// Storing present index as the minimum index if present S is smaller than the minimum S
	subs	r8, r8, #1		// Decrementing r8 to keep track of number of iterations
	bmi	X			// Branch to X if flags corresponding to negative number are set
	
	
	ldr	r5, [r0], #4	
	sub	r10, r5, r6		// r10 is loaded with A[i+5] - A[i+4]
	add	r10, r10, r1		// r10 is loaded with A[i+5] - A[i+4] + A[i+3]
	sub	r10, r10, r2		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2]
	add	r10, r10, r3		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2] + A[i+1]
	sub	r10, r10, r4		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2] + A[i+1] - A[i]
	cmp	r10, r7			// Comparing the present S with the minimum S obtained till now
	movlt	r7, r10			// Storing present S as minimum S if present S is smaller than the minimum S
	movlt	r9, r8			// Storing present index as the minimum index if present S is smaller than the minimum S
	subs	r8, r8, #1		// Decrementing r8 to keep track of number of iterations
	bmi	X			// Branch to X if flags corresponding to negative number are set
	
	ldr	r4, [r0], #4	
	sub	r10, r4, r5		// r10 is loaded with A[i+5] - A[i+4]
	add	r10, r10, r6		// r10 is loaded with A[i+5] - A[i+4] + A[i+3]
	sub	r10, r10, r1		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2]
	add	r10, r10, r2		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2] + A[i+1]
	sub	r10, r10, r3		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2] + A[i+1] - A[i]
	cmp	r10, r7			// Comparing the present S with the minimum S obtained till now
	movlt	r7, r10			// Storing present S as minimum S if present S is smaller than the minimum S
	movlt	r9, r8			// Storing present index as the minimum index if present S is smaller than the minimum S
	subs	r8, r8, #1		// Decrementing r8 to keep track of number of iterations
	bmi	X			// Branch to X if flags corresponding to negative number are set
	
	ldr	r3, [r0], #4	
	sub	r10, r3, r4		// r10 is loaded with A[i+5] - A[i+4]
	add	r10, r10, r5		// r10 is loaded with A[i+5] - A[i+4] + A[i+3]
	sub	r10, r10, r6		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2]
	add	r10, r10, r1		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2] + A[i+1]
	sub	r10, r10, r2		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2] + A[i+1] - A[i]
	cmp	r10, r7			// Comparing the present S with the minimum S obtained till now
	movlt	r7, r10			// Storing present S as minimum S if present S is smaller than the minimum S
	movlt	r9, r8			// Storing present index as the minimum index if present S is smaller than the minimum S
	subs	r8, r8, #1		// Decrementing r8 to keep track of number of iterations
	bmi	X			// Branch to X if flags corresponding to negative number are set
	
	ldr	r2, [r0], #4	
	sub	r10, r2, r3		// r10 is loaded with A[i+5] - A[i+4]
	add	r10, r10, r4		// r10 is loaded with A[i+5] - A[i+4] + A[i+3]
	sub	r10, r10, r5		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2]
	add	r10, r10, r6		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2] + A[i+1]
	sub	r10, r10, r1		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2] + A[i+1] - A[i]
	cmp	r10, r7			// Comparing the present S with the minimum S obtained till now
	movlt	r7, r10			// Storing present S as minimum S if present S is smaller than the minimum S
	movlt	r9, r8			// Storing present index as the minimum index if present S is smaller than the minimum S
	subs	r8, r8, #1		// Decrementing r8 to keep track of number of iterations
	bmi	X			// Branch to X if flags corresponding to negative number are set
	
	ldr	r1, [r0], #4	
	sub	r10, r1, r2		// r10 is loaded with A[i+5] - A[i+4]
	add	r10, r10, r3		// r10 is loaded with A[i+5] - A[i+4] + A[i+3]
	sub	r10, r10, r4		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2]
	add	r10, r10, r5		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2] + A[i+1]
	sub	r10, r10, r6		// r10 is loaded with A[i+5] - A[i+4] + A[i+3] - A[i+2] + A[i+1] - A[i]
	cmp	r10, r7			// Comparing the present S with the minimum S obtained till now
	movlt	r7, r10			// Storing present S as minimum S if present S is smaller than the minimum S
	movlt	r9, r8			// Storing present index as the minimum index if present S is smaller than the minimum S
	subs	r8, r8, #1		// Decrementing r8 to keep track of number of iterations
	bmi	X			// Branch to X if flags corresponding to negative number are set
	bpl	Loop		
	
X:
	sub	r9, r11, r9	// since r9 stores n - 6 - imin, subtracting r9 from n -6 gives imin. After this instruction, r9 contains imin. imin is the index when minimum S occurs
	mov	r0, r9		// storing minimum index into r0
	pop	{r4-r11}	// getting back the original values of registers r4-r11 from stack
	
	bx	lr		
	
	
                                                                   //////////////////////      END OF MY CODE       ///////////////////////
                                                                   
	
	
	
	
	
.L7:
	.loc 1 9 8
	.loc 1 9 3
.L4:
	.loc 1 10 18 discriminator 3
	.loc 1 10 20 discriminator 3
	.loc 1 10 13 discriminator 3
	.loc 1 10 10 discriminator 3
	.loc 1 10 31 discriminator 33
	.loc 1 10 26 discriminator 3
	.loc 1 10 6 discriminator 3
	.loc 1 9 16 discriminator 3
.L3:
	.loc 1 9 3 discriminator 1
	.loc 1 12 6
	.loc 1 12 19 discriminator 1
.L5:
	.loc 1 13 6
	.loc 1 14 9
	.loc 1 15 12
.L6:
	.loc 1 7 22 discriminator 2
.L2:
	.loc 1 7 16 discriminator 1
	.loc 1 7 2 discriminator 1
	.loc 1 18 9
	.loc 1 19 1
	.cfi_def_cfa_register 13
	@ sp needed
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE0:
	.size	fun, .-fun
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0xc
	.4byte	.LASF3
	.4byte	.LASF4
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.ascii	"fun\000"
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.4byte	0x9f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f
	.uleb128 0x3
	.ascii	"v\000"
	.byte	0x1
	.byte	0x1
	.byte	0xe
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.ascii	"d\000"
	.byte	0x1
	.byte	0x1
	.byte	0x14
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.ascii	"i\000"
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.ascii	"s\000"
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.ascii	"k\000"
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.4byte	.LASF1
	.byte	0x1
	.byte	0x6
	.byte	0x6
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.byte	0x4
	.4byte	0x9f
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF4:
	.ascii	"/home/sumedh/Documents\000"
.LASF2:
	.ascii	"GNU C17 9.3.0 -mfloat-abi=soft -mtls-dialect=gnu -m"
	.ascii	"arm -march=armv5t -g -fstack-protector-strong\000"
.LASF0:
	.ascii	"smin\000"
.LASF1:
	.ascii	"minindx\000"
.LASF3:
	.ascii	"fun.c\000"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
