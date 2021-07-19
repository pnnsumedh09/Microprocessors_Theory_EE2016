

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
	.file	"funq2.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	fun2
	.syntax unified
	.arm
	.fpu softvfp
	.type	fun2, %function
fun2:
.LFB0:
	.file 1 "funq2.c"
	.loc 1 1 24
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	.cfi_def_cfa_register 11
	.loc 1 2 2
	
	
	
	                                                        /////////////////////       MY CODE       ////////////////////
	                                                        
	                                                        
	                                                        
	push	{r4-r8}	// Saving registers r4-r8 in stack
	ldr	r4, [r0, #20]	// Loading A[5] in r4.
	ldr	r6, [r0, #16]	// Loading A[4] in r6
	sub	r4, r4, r6	// Subtracting A[4] from A[5]
	ldr	r6, [r0, #12]	// Loading A[3] in r6
	add	r4, r4, r6	// Adding A[3] to A[5] - A[4]
	ldr	r6, [r0, #8]	// Loading A[2] in r6
	sub	r4, r4, r6	// Subtracting A[2] from A[5] - A[4] + A[3]
	ldr	r6, [r0, #4]	// Loading A[1] in r6
	add	r4, r4, r6	// Adding A[1] to A[5] - A[4] + A[3] - A[2]
	ldr	r6, [r0]	// Loading A[0] in r6
	sub	r4, r4, r6	// Subtracting A[0] from A[5] - A[4] + A[3] - A[2] + A[1]
	add	r3, r0, #24	// Storing r3 the address of A[6]. r3 is used to store A[i+5]
	
	mov	r7, r4		// r7 is used to store the minimum S obtained now. Since there is only one S calculated till now, that S is the minimum one which is stored in r4.
	sub	r8, r1, #7	// r8 is used to store n-6-i. n is the size of the array. r1 initially contains size of the array. In this intruction n-7 is stored into r8.
	add	r2, r8, #1	// r2 is used to store n -6 - imin where imin is the index when minimum S is obtained.

Loop:
	ldr	r5, [r3], #4	// Loading A[i+5] in r5 and incrementing the address. r5 is used to store S of the present iteration
	ldr	r6, [r0], #4	// Loading A[i-1] in r6 and incrementing the address.
	sub	r5, r5, r6	// Subtracting A[i-1] from A[i+5].
	sub	r5, r5, r4	// Subtracting S of previous iteration from A[i+5] - A[i-1]. r4 is used to store S of the previous iteration
	
	cmp	r5, r7		// Comparing present S with the minimum S obtained till now
	movlt	r7, r5		// Storing present S as the minimum S if present S is smaller than previously stored minimum S
	movlt	r2, r8		// Storing present index as the minimum index if the present S is smaller than previously stored minimum S
	
	mov	r4, r5		// Storing present S in r4 to use it in the next iteration
	subs	r8, r8, #1	// Decrementing r8 to keep track of the number of iterations and also setting condition flags
	bpl	Loop		// Branch to Loop if the condition flags are set which represent positive or equal to zero
	
	sub	r1, r1, #6	// Storing r1 with n-6. n is the size of array
	sub	r2, r1, r2	// Since r2 contains n - 6 - imin, to get imin subtracting r2 from n-6. After this instruction r2 contains imin. imin is the index when minimum S occurs.
	mov	r0, r2		// Moving imin into r0
	
	pop	{r4-r8}	// Restoring registers r4-r8
	
	bx	lr
	       
	                                            
	
	.cfi_def_cfa_register 13
	@ sp needed
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	.cfi_endproc
.LFE0:
	.size	fun2, .-fun2
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x64
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF0
	.byte	0xc
	.4byte	.LASF1
	.4byte	.LASF2
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.4byte	0x5a
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a
	.uleb128 0x3
	.ascii	"v\000"
	.byte	0x1
	.byte	0x1
	.byte	0xf
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3
	.ascii	"d\000"
	.byte	0x1
	.byte	0x1
	.byte	0x16
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
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
	.uleb128 0xe
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
	.uleb128 0x5
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
.LASF1:
	.ascii	"funq2.c\000"
.LASF2:
	.ascii	"/home/sumedh/Documents\000"
.LASF3:
	.ascii	"fun2\000"
.LASF0:
	.ascii	"GNU C17 9.3.0 -mfloat-abi=soft -mtls-dialect=gnu -m"
	.ascii	"arm -march=armv5t -g -fstack-protector-strong\000"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
