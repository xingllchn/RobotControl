	.def	 sl_drivepoint_output;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	16
.LCPI0_0:
	.quad	4751297606875873280     # double 4.294967e+09
                                        #  (0x0)
.LCPI0_1:
	.quad	4611686018427387904     # double 2.000000e+00
                                        #  (0x0)
.LCPI0_2:
	.quad	-9223372036854775808    # double -0.000000e+00
	.quad	-9223372036854775808    # double -0.000000e+00
.LCPI0_3:
	.quad	4614256656552045848     # double 3.141593e+00
                                        #  (0x54442d18)
.LCPI0_4:
	.quad	4618760256179416344     # double 6.283185e+00
                                        #  (0x54442d18)
.LCPI0_5:
	.quad	-4609115380302729960    # double -3.141593e+00
                                        #  (0x54442d18)
	.zero	8
.LCPI0_6:
	.quad	9223372036854775807     # double 1.#QNAN0e+00
	.quad	9223372036854775807     # double 1.#QNAN0e+00
.LCPI0_7:
	.quad	4372995238176751616     # double 2.220446e-16
                                        #  (0x0)
	.text
	.globl	sl_drivepoint_output
	.align	16, 0x90
sl_drivepoint_output:                   # @sl_drivepoint_output
# BB#0:                                 # %entry
	sub	RSP, 120
	movaps	XMMWORD PTR [RSP + 32], XMM10 # 16-byte Spill
	movaps	XMMWORD PTR [RSP + 48], XMM9 # 16-byte Spill
	movaps	XMMWORD PTR [RSP + 64], XMM8 # 16-byte Spill
	movaps	XMMWORD PTR [RSP + 80], XMM7 # 16-byte Spill
	movaps	XMMWORD PTR [RSP + 96], XMM6 # 16-byte Spill
	mov	EAX, DWORD PTR [RIP + sl_drivepoint_M_+776]
	test	EAX, EAX
	je	.LBB0_6
# BB#1:                                 # %entry
	cmp	EAX, 1
	jne	.LBB0_7
# BB#2:                                 # %if.then
	mov	RDX, QWORD PTR [RIP + sl_drivepoint_M_+704]
	mov	RCX, RDX
	shr	RCX, 32
	inc	EDX
	je	.LBB0_3
# BB#4:                                 # %if.else
	mov	EDX, EDX
	cvtsi2sd	XMM1, RDX
	movsd	XMM2, QWORD PTR [RIP + sl_drivepoint_M_+712]
	mulsd	XMM1, XMM2
	mov	ECX, ECX
	cvtsi2sd	XMM0, RCX
	mulsd	XMM0, XMM2
	mulsd	XMM0, QWORD PTR [RIP + .LCPI0_0]
	addsd	XMM0, XMM1
	jmp	.LBB0_5
.LBB0_3:                                # %if.then2
	inc	ECX
	cvtsi2sd	XMM0, RCX
	mulsd	XMM0, QWORD PTR [RIP + sl_drivepoint_M_+712]
	mulsd	XMM0, QWORD PTR [RIP + .LCPI0_0]
.LBB0_5:                                # %if.end24thread-pre-split
	movsd	QWORD PTR [RIP + sl_drivepoint_M_+88], XMM0
	test	EAX, EAX
	jne	.LBB0_7
.LBB0_6:                                # %if.then29
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+192]
	mov	RAX, QWORD PTR [RAX]
	movsd	XMM0, QWORD PTR [RAX]
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+824]
	movsd	QWORD PTR [RAX], XMM0
	mov	EAX, DWORD PTR [RIP + sl_drivepoint_M_+776]
.LBB0_7:                                # %if.end33
	cmp	EAX, 1
	jne	.LBB0_11
# BB#8:                                 # %if.then38
	movsd	XMM2, QWORD PTR [RIP + sl_drivepoint_P+56]
	lea	RDX, QWORD PTR [RIP + sl_drivepoint_PrevZCX]
	xor	ECX, ECX
	call	rt_ZCFcn
	test	EAX, EAX
	jne	.LBB0_10
# BB#9:                                 # %if.then38
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P+56]
	xorpd	XMM1, XMM1
	ucomisd	XMM0, XMM1
	jne	.LBB0_10
	jnp	.LBB0_11
.LBB0_10:                               # %if.then42
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P]
	movsd	QWORD PTR [RIP + sl_drivepoint_X], XMM0
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P+8]
	movsd	QWORD PTR [RIP + sl_drivepoint_X+8], XMM0
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P+16]
	movsd	QWORD PTR [RIP + sl_drivepoint_X+16], XMM0
.LBB0_11:                               # %if.end44
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_X]
	movsd	QWORD PTR [RIP + sl_drivepoint_B], XMM0
	movsd	XMM6, QWORD PTR [RIP + sl_drivepoint_X+8]
	movsd	QWORD PTR [RIP + sl_drivepoint_B+8], XMM6
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_X+16]
	movsd	QWORD PTR [RIP + sl_drivepoint_B+16], XMM1
	movsd	QWORD PTR [RIP + sl_drivepoint_Y], XMM0
	movsd	XMM8, QWORD PTR [RIP + .LCPI0_1]
	movsd	QWORD PTR [RIP + sl_drivepoint_Y+8], XMM6
	movsd	QWORD PTR [RIP + sl_drivepoint_Y+16], XMM1
	movsd	XMM10, QWORD PTR [RIP + sl_drivepoint_P+24]
	subsd	XMM10, XMM0
	movsd	XMM7, QWORD PTR [RIP + sl_drivepoint_P+32]
	movaps	XMM0, XMM10
	movapd	XMM1, XMM8
	call	rt_powd_snf
	movaps	XMM9, XMM0
	subsd	XMM7, XMM6
	movaps	XMM0, XMM7
	movapd	XMM1, XMM8
	call	rt_powd_snf
	xorpd	XMM1, XMM1
	addsd	XMM0, XMM9
	ucomisd	XMM1, XMM0
	jbe	.LBB0_13
# BB#12:                                # %if.then57
	movsd	XMM6, QWORD PTR [RIP + .LCPI0_2]
	xorpd	XMM0, XMM6
	call	sqrt
	xorpd	XMM0, XMM6
	jmp	.LBB0_14
.LBB0_13:                               # %if.else61
	call	sqrt
.LBB0_14:                               # %if.end63
	mulsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P+72]
	movsd	QWORD PTR [RIP + sl_drivepoint_B+24], XMM0
	movaps	XMM0, XMM7
	movaps	XMM1, XMM10
	call	rt_atan2d_snf
	movaps	XMM6, XMM0
	subsd	XMM6, QWORD PTR [RIP + sl_drivepoint_B+16]
	addsd	XMM6, QWORD PTR [RIP + .LCPI0_3]
	divsd	XMM6, QWORD PTR [RIP + .LCPI0_4]
	movapd	XMM0, XMM6
	call	rt_roundd_snf
	movsd	XMM1, QWORD PTR [RIP + .LCPI0_6]
	movapd	XMM2, XMM6
	subsd	XMM2, XMM0
	andpd	XMM2, XMM1
	andpd	XMM1, XMM6
	mulsd	XMM1, QWORD PTR [RIP + .LCPI0_7]
	ucomisd	XMM1, XMM2
	jae	.LBB0_15
# BB#16:                                # %if.else82
	roundsd	XMM0, XMM6, 1
	subsd	XMM6, XMM0
	mulsd	XMM6, QWORD PTR [RIP + .LCPI0_4]
	addsd	XMM6, QWORD PTR [RIP + .LCPI0_5]
	jmp	.LBB0_17
.LBB0_15:
	movsd	XMM6, QWORD PTR [RIP + .LCPI0_5]
.LBB0_17:                               # %if.end86
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P+64]
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_B+24]
	ucomisd	XMM1, XMM0
	ja	.LBB0_19
# BB#18:                                # %if.else90
	xorpd	XMM0, XMMWORD PTR [RIP + .LCPI0_2]
	maxsd	XMM0, XMM1
.LBB0_19:                               # %if.end98
	movsd	XMM4, QWORD PTR [RIP + sl_drivepoint_DW+8]
	ucomisd	XMM4, QWORD PTR [RIP + rtInf]
	jne	.LBB0_20
	jnp	.LBB0_24
.LBB0_20:                               # %if.else102
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+824]
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_DW]
	movapd	XMM3, XMM0
	subsd	XMM3, XMM1
	movsd	XMM2, QWORD PTR [RAX]
	subsd	XMM2, XMM4
	movsd	XMM4, QWORD PTR [RIP + sl_drivepoint_P+40]
	movapd	XMM5, XMM2
	mulsd	XMM5, XMM4
	ucomisd	XMM3, XMM5
	jbe	.LBB0_22
# BB#21:                                # %if.then111
	addsd	XMM1, XMM5
	movsd	QWORD PTR [RIP + sl_drivepoint_B+32], XMM1
	jmp	.LBB0_25
.LBB0_22:                               # %if.else113
	xorpd	XMM4, XMMWORD PTR [RIP + .LCPI0_2]
	mulsd	XMM2, XMM4
	ucomisd	XMM2, XMM3
	jbe	.LBB0_24
# BB#23:                                # %if.then118
	addsd	XMM1, XMM2
	movsd	QWORD PTR [RIP + sl_drivepoint_B+32], XMM1
	jmp	.LBB0_25
.LBB0_24:                               # %if.else120
	movsd	QWORD PTR [RIP + sl_drivepoint_B+32], XMM0
.LBB0_25:                               # %if.end123
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+16]
	call	cos
	mulsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+32]
	movsd	QWORD PTR [RIP + sl_drivepoint_B+40], XMM0
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+16]
	call	sin
	mulsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+32]
	movsd	QWORD PTR [RIP + sl_drivepoint_B+48], XMM0
	mulsd	XMM6, QWORD PTR [RIP + sl_drivepoint_P+80]
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P+48]
	ucomisd	XMM6, XMM0
	ja	.LBB0_28
# BB#26:                                # %if.else133
	movapd	XMM1, XMM0
	xorpd	XMM1, XMMWORD PTR [RIP + .LCPI0_2]
	ucomisd	XMM1, XMM6
	movapd	XMM0, XMM6
	jbe	.LBB0_28
# BB#27:                                # %if.then137
	movapd	XMM0, XMM1
.LBB0_28:                               # %if.end140
	call	tan
	mulsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+32]
	movsd	QWORD PTR [RIP + sl_drivepoint_B+56], XMM0
	movaps	XMM6, XMMWORD PTR [RSP + 96] # 16-byte Reload
	movaps	XMM7, XMMWORD PTR [RSP + 80] # 16-byte Reload
	movaps	XMM8, XMMWORD PTR [RSP + 64] # 16-byte Reload
	movaps	XMM9, XMMWORD PTR [RSP + 48] # 16-byte Reload
	movaps	XMM10, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 120
	ret

	.def	 sl_drivepoint_update;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	8
.LCPI1_0:
	.quad	4602678819172646912     # double 5.000000e-01
                                        #  (0x0)
.LCPI1_1:
	.quad	4604930618986332160     # double 7.500000e-01
                                        #  (0x0)
.LCPI1_2:
	.quad	4599676419421066581     # double 3.333333e-01
                                        #  (0x55555555)
.LCPI1_3:
	.quad	4597174419628082972     # double 2.222222e-01
                                        #  (0x1c71c71c)
.LCPI1_4:
	.quad	4601678019255453468     # double 4.444444e-01
                                        #  (0x1c71c71c)
.LCPI1_5:
	.quad	4751297606875873280     # double 4.294967e+09
                                        #  (0x0)
	.text
	.globl	sl_drivepoint_update
	.align	16, 0x90
sl_drivepoint_update:                   # @sl_drivepoint_update
# BB#0:                                 # %entry
	push	R15
	push	R14
	push	RSI
	push	RDI
	push	RBX
	sub	RSP, 96
	movapd	XMMWORD PTR [RSP + 32], XMM9 # 16-byte Spill
	movaps	XMMWORD PTR [RSP + 48], XMM8 # 16-byte Spill
	movaps	XMMWORD PTR [RSP + 64], XMM7 # 16-byte Spill
	movaps	XMMWORD PTR [RSP + 80], XMM6 # 16-byte Spill
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+32]
	movsd	QWORD PTR [RIP + sl_drivepoint_DW], XMM0
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+824]
	movsd	XMM0, QWORD PTR [RAX]
	movsd	QWORD PTR [RIP + sl_drivepoint_DW+8], XMM0
	cmp	DWORD PTR [RIP + sl_drivepoint_M_+776], 1
	jne	.LBB1_29
# BB#1:                                 # %if.then
	mov	RCX, QWORD PTR [RIP + sl_drivepoint_M_+192]
	mov	RDX, QWORD PTR [RIP + sl_drivepoint_M_+96]
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+64]
	mov	R14, QWORD PTR [RAX + 24]
	mov	R15, QWORD PTR [RAX + 16]
	movsd	XMM6, QWORD PTR [RDX]
	mov	RCX, QWORD PTR [RCX]
	movsd	XMM7, QWORD PTR [RCX]
	mov	RDI, QWORD PTR [RAX]
	mov	RSI, QWORD PTR [RAX + 8]
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+208]
	mov	RBX, QWORD PTR [RAX]
	movsd	XMM8, QWORD PTR [RIP + sl_drivepoint_M_+88]
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+56]
	mov	DWORD PTR [RAX], 0
	mov	RAX, QWORD PTR [RBX]
	mov	RCX, QWORD PTR [RBX + 8]
	mov	RDX, QWORD PTR [RBX + 16]
	mov	QWORD PTR [RDI + 16], RDX
	mov	QWORD PTR [RDI + 8], RCX
	mov	QWORD PTR [RDI], RAX
	xorpd	XMM0, XMM0
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+184]
	mov	QWORD PTR [RAX], RSI
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_P+56]
	ucomisd	XMM1, XMM0
	jne	.LBB1_3
	jp	.LBB1_3
# BB#2:                                 # %if.then.i.i
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+416]
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+40]
	movsd	QWORD PTR [RAX], XMM0
	jmp	.LBB1_4
.LBB1_3:                                # %if.else.i.i
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+416]
	mov	QWORD PTR [RAX], 0
.LBB1_4:                                # %if.end.i.i
	xorpd	XMM0, XMM0
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_P+56]
	ucomisd	XMM1, XMM0
	jne	.LBB1_6
	jp	.LBB1_6
# BB#5:                                 # %if.then6.i.i
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+48]
	movsd	QWORD PTR [RAX + 8], XMM0
	jmp	.LBB1_7
.LBB1_6:                                # %if.else11.i.i
	mov	QWORD PTR [RAX + 8], 0
.LBB1_7:                                # %if.end16.i.i
	xorpd	XMM0, XMM0
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_P+56]
	ucomisd	XMM1, XMM0
	jne	.LBB1_9
	jp	.LBB1_9
# BB#8:                                 # %if.then18.i.i
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+56]
	movsd	QWORD PTR [RAX + 16], XMM0
	jmp	.LBB1_10
.LBB1_9:                                # %if.else23.i.i
	mov	QWORD PTR [RAX + 16], 0
.LBB1_10:                               # %sl_drivepoint_derivatives.exit.i
	movsd	XMM0, QWORD PTR [RIP + .LCPI1_0]
	mulsd	XMM0, XMM6
	movsd	XMM1, QWORD PTR [RSI]
	mulsd	XMM1, XMM0
	addsd	XMM1, QWORD PTR [RDI]
	movsd	QWORD PTR [RBX], XMM1
	movsd	XMM2, QWORD PTR [RSI + 8]
	mulsd	XMM2, XMM0
	addsd	XMM2, QWORD PTR [RDI + 8]
	movaps	XMM1, XMM7
	addsd	XMM1, XMM0
	movsd	QWORD PTR [RBX + 8], XMM2
	mulsd	XMM0, QWORD PTR [RSI + 16]
	addsd	XMM0, QWORD PTR [RDI + 16]
	movsd	QWORD PTR [RBX + 16], XMM0
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+192]
	mov	RAX, QWORD PTR [RAX]
	movsd	QWORD PTR [RAX], XMM1
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+184]
	mov	QWORD PTR [RAX], R15
	call	sl_drivepoint_output
	xorpd	XMM0, XMM0
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_P+56]
	ucomisd	XMM1, XMM0
	jne	.LBB1_12
	jp	.LBB1_12
# BB#11:                                # %if.then.i18.i
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+416]
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+40]
	movsd	QWORD PTR [RAX], XMM0
	jmp	.LBB1_13
.LBB1_12:                               # %if.else.i19.i
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+416]
	mov	QWORD PTR [RAX], 0
.LBB1_13:                               # %if.end.i21.i
	xorpd	XMM0, XMM0
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_P+56]
	ucomisd	XMM1, XMM0
	jne	.LBB1_15
	jp	.LBB1_15
# BB#14:                                # %if.then6.i23.i
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+48]
	movsd	QWORD PTR [RAX + 8], XMM0
	jmp	.LBB1_16
.LBB1_15:                               # %if.else11.i25.i
	mov	QWORD PTR [RAX + 8], 0
.LBB1_16:                               # %if.end16.i27.i
	xorpd	XMM0, XMM0
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_P+56]
	ucomisd	XMM1, XMM0
	jne	.LBB1_18
	jp	.LBB1_18
# BB#17:                                # %if.then18.i29.i
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+56]
	movsd	QWORD PTR [RAX + 16], XMM0
	jmp	.LBB1_19
.LBB1_18:                               # %if.else23.i31.i
	mov	QWORD PTR [RAX + 16], 0
.LBB1_19:                               # %for.cond22.preheader.i
	movsd	XMM0, QWORD PTR [RIP + .LCPI1_1]
	mulsd	XMM0, XMM6
	movsd	XMM2, QWORD PTR [R15]
	mulsd	XMM2, XMM0
	xorpd	XMM9, XMM9
	movaps	XMM1, XMM6
	mulsd	XMM1, XMM9
	movsd	XMM3, QWORD PTR [RSI]
	mulsd	XMM3, XMM1
	addsd	XMM3, XMM2
	addsd	XMM3, QWORD PTR [RDI]
	movsd	QWORD PTR [RBX], XMM3
	movsd	XMM2, QWORD PTR [R15 + 8]
	mulsd	XMM2, XMM0
	movsd	XMM3, QWORD PTR [RSI + 8]
	mulsd	XMM3, XMM1
	addsd	XMM7, XMM0
	addsd	XMM3, XMM2
	addsd	XMM3, QWORD PTR [RDI + 8]
	movsd	QWORD PTR [RBX + 8], XMM3
	mulsd	XMM0, QWORD PTR [R15 + 16]
	mulsd	XMM1, QWORD PTR [RSI + 16]
	addsd	XMM1, XMM0
	addsd	XMM1, QWORD PTR [RDI + 16]
	movsd	QWORD PTR [RBX + 16], XMM1
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+192]
	mov	RAX, QWORD PTR [RAX]
	movsd	QWORD PTR [RAX], XMM7
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+184]
	mov	QWORD PTR [RAX], R14
	call	sl_drivepoint_output
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P+56]
	ucomisd	XMM0, XMM9
	jne	.LBB1_21
	jp	.LBB1_21
# BB#20:                                # %if.then.i2.i
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+416]
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+40]
	movsd	QWORD PTR [RAX], XMM0
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.i3.i
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+416]
	mov	QWORD PTR [RAX], 0
.LBB1_22:                               # %if.end.i5.i
	xorpd	XMM0, XMM0
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_P+56]
	ucomisd	XMM1, XMM0
	jne	.LBB1_24
	jp	.LBB1_24
# BB#23:                                # %if.then6.i7.i
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+48]
	movsd	QWORD PTR [RAX + 8], XMM0
	jmp	.LBB1_25
.LBB1_24:                               # %if.else11.i9.i
	mov	QWORD PTR [RAX + 8], 0
.LBB1_25:                               # %if.end16.i11.i
	xorpd	XMM0, XMM0
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_P+56]
	ucomisd	XMM1, XMM0
	jne	.LBB1_27
	jp	.LBB1_27
# BB#26:                                # %if.then18.i13.i
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+56]
	movsd	QWORD PTR [RAX + 16], XMM0
	jmp	.LBB1_28
.LBB1_27:                               # %if.else23.i15.i
	mov	QWORD PTR [RAX + 16], 0
.LBB1_28:                               # %rt_ertODEUpdateContinuousStates.exit
	movsd	XMM0, QWORD PTR [RIP + .LCPI1_2]
	mulsd	XMM0, XMM6
	movsd	XMM3, QWORD PTR [R15]
	mulsd	XMM3, XMM0
	movsd	XMM1, QWORD PTR [RIP + .LCPI1_3]
	mulsd	XMM1, XMM6
	movsd	XMM2, QWORD PTR [RSI]
	mulsd	XMM2, XMM1
	addsd	XMM2, XMM3
	mulsd	XMM6, QWORD PTR [RIP + .LCPI1_4]
	movsd	XMM3, QWORD PTR [R14]
	mulsd	XMM3, XMM6
	addsd	XMM3, XMM2
	addsd	XMM3, QWORD PTR [RDI]
	movsd	QWORD PTR [RBX], XMM3
	movsd	XMM3, QWORD PTR [R15 + 8]
	mulsd	XMM3, XMM0
	movsd	XMM2, QWORD PTR [RSI + 8]
	mulsd	XMM2, XMM1
	addsd	XMM2, XMM3
	movsd	XMM3, QWORD PTR [R14 + 8]
	mulsd	XMM3, XMM6
	addsd	XMM3, XMM2
	addsd	XMM3, QWORD PTR [RDI + 8]
	movsd	QWORD PTR [RBX + 8], XMM3
	mulsd	XMM0, QWORD PTR [R15 + 16]
	mulsd	XMM1, QWORD PTR [RSI + 16]
	addsd	XMM1, XMM0
	mulsd	XMM6, QWORD PTR [R14 + 16]
	addsd	XMM6, XMM1
	addsd	XMM6, QWORD PTR [RDI + 16]
	movsd	QWORD PTR [RBX + 16], XMM6
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+192]
	mov	RAX, QWORD PTR [RAX]
	movsd	QWORD PTR [RAX], XMM8
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+56]
	mov	DWORD PTR [RAX], 1
.LBB1_29:                               # %if.end
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+704]
	mov	ECX, EAX
	inc	ECX
	mov	DWORD PTR [RIP + sl_drivepoint_M_+704], ECX
	jne	.LBB1_31
# BB#30:                                # %if.then3
	shr	RAX, 32
	inc	EAX
	mov	DWORD PTR [RIP + sl_drivepoint_M_+708], EAX
.LBB1_31:                               # %if.end6
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+824]
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_M_+88]
	movsd	QWORD PTR [RAX], XMM0
	mov	RDX, QWORD PTR [RIP + sl_drivepoint_M_+720]
	mov	RCX, RDX
	shr	RCX, 32
	inc	EDX
	mov	DWORD PTR [RIP + sl_drivepoint_M_+720], EDX
	jne	.LBB1_33
# BB#32:                                # %if.then14
	inc	ECX
	mov	DWORD PTR [RIP + sl_drivepoint_M_+724], ECX
.LBB1_33:                               # %if.end17
	mov	EDX, EDX
	xorps	XMM0, XMM0
	cvtsi2sd	XMM0, RDX
	movsd	XMM2, QWORD PTR [RIP + sl_drivepoint_M_+728]
	mulsd	XMM0, XMM2
	mov	ECX, ECX
	cvtsi2sd	XMM1, RCX
	mulsd	XMM1, XMM2
	mulsd	XMM1, QWORD PTR [RIP + .LCPI1_5]
	addsd	XMM1, XMM0
	movsd	QWORD PTR [RAX + 8], XMM1
	movaps	XMM6, XMMWORD PTR [RSP + 80] # 16-byte Reload
	movaps	XMM7, XMMWORD PTR [RSP + 64] # 16-byte Reload
	movaps	XMM8, XMMWORD PTR [RSP + 48] # 16-byte Reload
	movaps	XMM9, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 96
	pop	RBX
	pop	RDI
	pop	RSI
	pop	R14
	pop	R15
	ret

	.def	 sl_drivepoint_derivatives;
	.scl	2;
	.type	32;
	.endef
	.globl	sl_drivepoint_derivatives
	.align	16, 0x90
sl_drivepoint_derivatives:              # @sl_drivepoint_derivatives
# BB#0:                                 # %entry
	xorpd	XMM0, XMM0
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_P+56]
	ucomisd	XMM1, XMM0
	jne	.LBB2_2
	jp	.LBB2_2
# BB#1:                                 # %if.then
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+416]
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+40]
	movsd	QWORD PTR [RAX], XMM0
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	mov	RAX, QWORD PTR [RIP + sl_drivepoint_M_+416]
	mov	QWORD PTR [RAX], 0
.LBB2_3:                                # %if.end
	xorpd	XMM0, XMM0
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_P+56]
	ucomisd	XMM1, XMM0
	jne	.LBB2_5
	jp	.LBB2_5
# BB#4:                                 # %if.then6
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+48]
	movsd	QWORD PTR [RAX + 8], XMM0
	jmp	.LBB2_6
.LBB2_5:                                # %if.else11
	mov	QWORD PTR [RAX + 8], 0
.LBB2_6:                                # %if.end16
	xorpd	XMM0, XMM0
	movsd	XMM1, QWORD PTR [RIP + sl_drivepoint_P+56]
	ucomisd	XMM1, XMM0
	jne	.LBB2_8
	jp	.LBB2_8
# BB#7:                                 # %if.then18
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_B+56]
	movsd	QWORD PTR [RAX + 16], XMM0
	ret
.LBB2_8:                                # %if.else23
	mov	QWORD PTR [RAX + 16], 0
	ret

	.def	 sl_drivepoint_initialize;
	.scl	2;
	.type	32;
	.endef
	.globl	sl_drivepoint_initialize
	.align	16, 0x90
sl_drivepoint_initialize:               # @sl_drivepoint_initialize
# BB#0:                                 # %entry
	mov	BYTE PTR [RIP + sl_drivepoint_PrevZCX], 3
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P]
	movsd	QWORD PTR [RIP + sl_drivepoint_X], XMM0
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P+8]
	movsd	QWORD PTR [RIP + sl_drivepoint_X+8], XMM0
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P+16]
	movsd	QWORD PTR [RIP + sl_drivepoint_X+16], XMM0
	movsd	XMM0, QWORD PTR [RIP + rtInf]
	movsd	QWORD PTR [RIP + sl_drivepoint_DW+8], XMM0
	ret

	.def	 sl_drivepoint_terminate;
	.scl	2;
	.type	32;
	.endef
	.globl	sl_drivepoint_terminate
	.align	16, 0x90
sl_drivepoint_terminate:                # @sl_drivepoint_terminate
# BB#0:                                 # %entry
	ret

	.def	 rt_ODECreateIntegrationData;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_ODECreateIntegrationData
	.align	16, 0x90
rt_ODECreateIntegrationData:            # @rt_ODECreateIntegrationData
# BB#0:                                 # %entry
	ret

	.def	 rt_ODEDestroyIntegrationData;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_ODEDestroyIntegrationData
	.align	16, 0x90
rt_ODEDestroyIntegrationData:           # @rt_ODEDestroyIntegrationData
# BB#0:                                 # %entry
	ret

	.def	 rt_ODEUpdateContinuousStates;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_ODEUpdateContinuousStates
	.align	16, 0x90
rt_ODEUpdateContinuousStates:           # @rt_ODEUpdateContinuousStates
# BB#0:                                 # %entry
	ret

	.def	 MdlOutputs;
	.scl	2;
	.type	32;
	.endef
	.globl	MdlOutputs
	.align	16, 0x90
MdlOutputs:                             # @MdlOutputs
# BB#0:                                 # %entry
	jmp	sl_drivepoint_output    # TAILCALL

	.def	 MdlUpdate;
	.scl	2;
	.type	32;
	.endef
	.globl	MdlUpdate
	.align	16, 0x90
MdlUpdate:                              # @MdlUpdate
# BB#0:                                 # %entry
	jmp	sl_drivepoint_update    # TAILCALL

	.def	 MdlInitializeSizes;
	.scl	2;
	.type	32;
	.endef
	.globl	MdlInitializeSizes
	.align	16, 0x90
MdlInitializeSizes:                     # @MdlInitializeSizes
# BB#0:                                 # %entry
	ret

	.def	 MdlInitializeSampleTimes;
	.scl	2;
	.type	32;
	.endef
	.globl	MdlInitializeSampleTimes
	.align	16, 0x90
MdlInitializeSampleTimes:               # @MdlInitializeSampleTimes
# BB#0:                                 # %entry
	ret

	.def	 MdlInitialize;
	.scl	2;
	.type	32;
	.endef
	.globl	MdlInitialize
	.align	16, 0x90
MdlInitialize:                          # @MdlInitialize
# BB#0:                                 # %entry
	ret

	.def	 MdlStart;
	.scl	2;
	.type	32;
	.endef
	.globl	MdlStart
	.align	16, 0x90
MdlStart:                               # @MdlStart
# BB#0:                                 # %entry
	mov	BYTE PTR [RIP + sl_drivepoint_PrevZCX], 3
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P]
	movsd	QWORD PTR [RIP + sl_drivepoint_X], XMM0
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P+8]
	movsd	QWORD PTR [RIP + sl_drivepoint_X+8], XMM0
	movsd	XMM0, QWORD PTR [RIP + sl_drivepoint_P+16]
	movsd	QWORD PTR [RIP + sl_drivepoint_X+16], XMM0
	movsd	XMM0, QWORD PTR [RIP + rtInf]
	movsd	QWORD PTR [RIP + sl_drivepoint_DW+8], XMM0
	ret

	.def	 MdlTerminate;
	.scl	2;
	.type	32;
	.endef
	.globl	MdlTerminate
	.align	16, 0x90
MdlTerminate:                           # @MdlTerminate
# BB#0:                                 # %entry
	ret

	.def	 sl_drivepoint;
	.scl	2;
	.type	32;
	.endef
	.globl	sl_drivepoint
	.align	16, 0x90
sl_drivepoint:                          # @sl_drivepoint
# BB#0:                                 # %entry
	push	R15
	push	R14
	push	R13
	push	R12
	push	RSI
	push	RDI
	push	RBP
	push	RBX
	sub	RSP, 40
	mov	ECX, 8
	call	rt_InitInfAndNaN
	lea	RCX, QWORD PTR [RIP + sl_drivepoint_M_]
	mov	R13, RCX
	xor	EDX, EDX
	mov	R8D, 912
	call	memset
	lea	RAX, QWORD PTR [RIP + sl_drivepoint_M_+776]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+56], RAX
	lea	RAX, QWORD PTR [RIP + sl_drivepoint_M_+824]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+192], RAX
	lea	RAX, QWORD PTR [RIP + sl_drivepoint_M_+712]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+96], RAX
	lea	RAX, QWORD PTR [RIP + sl_drivepoint_M_+24]
	lea	RSI, QWORD PTR [RIP + sl_drivepoint_M_+620]
	lea	RCX, QWORD PTR [RIP + sl_drivepoint_M_+408]
	lea	RBP, QWORD PTR [RIP + sl_drivepoint_M_+416]
	lea	RDX, QWORD PTR [RIP + sl_drivepoint_M_+464]
	lea	R10, QWORD PTR [RIP + sl_drivepoint_M_+864]
	lea	R9, QWORD PTR [RIP + .L.str]
	lea	R12, QWORD PTR [RIP + sl_drivepoint_M_+560]
	lea	R8, QWORD PTR [RIP + sl_drivepoint_M_+536]
	lea	RBX, QWORD PTR [RIP + sl_drivepoint_M_+512]
	lea	RDI, QWORD PTR [RIP + sl_drivepoint_M_+488]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+184], RBP
	lea	R14, QWORD PTR [RIP + sl_drivepoint_M_+848]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+208], RCX
	lea	R11, QWORD PTR [RIP + sl_drivepoint_M_+832]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+200], RSI
	movabs	RCX, 4624633867356078080
	mov	QWORD PTR [RIP + sl_drivepoint_M_+304], RAX
	mov	QWORD PTR [RIP + sl_drivepoint_M_+48], R13
	mov	DWORD PTR [RIP + sl_drivepoint_M_+776], 1
	lea	R15, QWORD PTR [RIP + sl_drivepoint_M_+872]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+560], RDX
	lea	RDX, QWORD PTR [RIP + sl_drivepoint_M_+896]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+568], RDI
	movabs	RAX, 4599075939470750515
	mov	QWORD PTR [RIP + sl_drivepoint_M_+576], RBX
	lea	RBX, QWORD PTR [RIP + sl_drivepoint.rt_ExtModeInfo]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+584], R8
	mov	QWORD PTR [RIP + sl_drivepoint_M_+64], R12
	lea	R12, QWORD PTR [RIP + sl_drivepoint_M_+600]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+72], R9
	mov	DWORD PTR [RIP + sl_drivepoint_M_+864], 0
	mov	DWORD PTR [RIP + sl_drivepoint_M_+868], 1
	lea	R9, QWORD PTR [RIP + sl_drivepoint_M_+680]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+800], R10
	lea	RSI, QWORD PTR [RIP + sl_drivepoint.rtAlwaysEnabled]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+784], R11
	lea	RBP, QWORD PTR [RIP + sl_drivepoint.systemRan]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+792], R14
	mov	QWORD PTR [RIP + sl_drivepoint_M_+832], 0
	mov	QWORD PTR [RIP + sl_drivepoint_M_+840], RAX
	mov	QWORD PTR [RIP + sl_drivepoint_M_+856], 0
	mov	QWORD PTR [RIP + sl_drivepoint_M_+848], 0
	mov	QWORD PTR [RIP + sl_drivepoint_M_+824], RDX
	mov	DWORD PTR [RIP + sl_drivepoint_M_+872], 1
	mov	DWORD PTR [RIP + sl_drivepoint_M_+876], 1
	lea	RDI, QWORD PTR [RIP + sl_drivepoint_B]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+808], R15
	lea	R15, QWORD PTR [RIP + sl_drivepoint_P]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+744], RCX
	mov	QWORD PTR [RIP + sl_drivepoint_M_+712], RAX
	mov	QWORD PTR [RIP + sl_drivepoint_M_+728], RAX
	mov	DWORD PTR [RIP + sl_drivepoint_M_+600], -125578504
	mov	DWORD PTR [RIP + sl_drivepoint_M_+604], -1543778121
	mov	DWORD PTR [RIP + sl_drivepoint_M_+608], 430399041
	mov	DWORD PTR [RIP + sl_drivepoint_M_+612], -1588781759
	lea	R10, QWORD PTR [RIP + sl_drivepoint_Y]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+40], RBX
	lea	RCX, QWORD PTR [RIP + sl_drivepoint_DW]
	mov	QWORD PTR [RIP + sl_drivepoint.rt_ExtModeInfo], RBP
	mov	QWORD PTR [RIP + sl_drivepoint.systemRan], RSI
	mov	QWORD PTR [RIP + sl_drivepoint.systemRan+8], RSI
	lea	RBX, QWORD PTR [RIP + sl_drivepoint_X]
	mov	QWORD PTR [RIP + sl_drivepoint.systemRan+16], RSI
	lea	R8, QWORD PTR [RIP + rtPTransTable]
	mov	QWORD PTR [RIP + sl_drivepoint.rt_ExtModeInfo+16], R9
	lea	R9, QWORD PTR [RIP + rtBTransTable]
	mov	QWORD PTR [RIP + sl_drivepoint.rt_ExtModeInfo+8], R12
	lea	R12, QWORD PTR [RIP + rtDataTypeNames]
	mov	QWORD PTR [RIP + sl_drivepoint.rt_ExtModeInfo+24], RDX
	lea	RDX, QWORD PTR [RIP + rtDataTypeSizes]
	lea	RBP, QWORD PTR [RIP + sl_drivepoint_M_+48]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+360], RBP
	mov	QWORD PTR [RIP + sl_drivepoint_M_+696], RAX
	lea	RSI, QWORD PTR [RIP + sl_drivepoint.dtInfo]
	mov	QWORD PTR [RIP + sl_drivepoint_M_+120], RAX
	mov	DWORD PTR [RIP + sl_drivepoint_M_+84], 1
	mov	QWORD PTR [RIP + sl_drivepoint_M_+376], RDI
	mov	QWORD PTR [RIP + sl_drivepoint_B+72], 0
	mov	QWORD PTR [RIP + sl_drivepoint_B+64], 0
	mov	QWORD PTR [RIP + sl_drivepoint_B+56], 0
	mov	QWORD PTR [RIP + sl_drivepoint_B+48], 0
	mov	QWORD PTR [RIP + sl_drivepoint_B+40], 0
	mov	QWORD PTR [RIP + sl_drivepoint_B+32], 0
	mov	QWORD PTR [RIP + sl_drivepoint_B+24], 0
	mov	QWORD PTR [RIP + sl_drivepoint_B+16], 0
	mov	QWORD PTR [RIP + sl_drivepoint_B+8], 0
	mov	QWORD PTR [RIP + sl_drivepoint_B], 0
	mov	QWORD PTR [RIP + sl_drivepoint_M_+392], R15
	mov	QWORD PTR [RIP + sl_drivepoint_M_+408], RBX
	mov	QWORD PTR [RIP + sl_drivepoint_X+16], 0
	mov	QWORD PTR [RIP + sl_drivepoint_X+8], 0
	mov	QWORD PTR [RIP + sl_drivepoint_X], 0
	mov	QWORD PTR [RIP + sl_drivepoint_M_+592], RCX
	mov	QWORD PTR [RIP + sl_drivepoint_DW+24], 0
	mov	QWORD PTR [RIP + sl_drivepoint_DW+16], 0
	mov	QWORD PTR [RIP + sl_drivepoint_DW+8], 0
	mov	QWORD PTR [RIP + sl_drivepoint_DW], 0
	mov	QWORD PTR [RIP + sl_drivepoint_M_+440], R10
	mov	QWORD PTR [RIP + sl_drivepoint_Y+16], 0
	mov	QWORD PTR [RIP + sl_drivepoint_Y+8], 0
	mov	QWORD PTR [RIP + sl_drivepoint_Y], 0
	mov	QWORD PTR [RIP + sl_drivepoint.dtInfo+64], 0
	mov	QWORD PTR [RIP + sl_drivepoint.dtInfo+56], 0
	mov	QWORD PTR [RIP + sl_drivepoint.dtInfo+48], 0
	mov	QWORD PTR [RIP + sl_drivepoint.dtInfo+40], 0
	mov	QWORD PTR [RIP + sl_drivepoint.dtInfo+32], 0
	mov	QWORD PTR [RIP + sl_drivepoint.dtInfo+24], 0
	mov	QWORD PTR [RIP + sl_drivepoint.dtInfo+16], 0
	mov	QWORD PTR [RIP + sl_drivepoint.dtInfo+8], 0
	mov	QWORD PTR [RIP + sl_drivepoint.dtInfo], 0
	mov	QWORD PTR [RIP + sl_drivepoint_M_+680], RSI
	mov	DWORD PTR [RIP + sl_drivepoint.dtInfo], 14
	mov	QWORD PTR [RIP + sl_drivepoint.dtInfo+8], RDX
	mov	QWORD PTR [RIP + sl_drivepoint.dtInfo+16], R12
	mov	QWORD PTR [RIP + sl_drivepoint.dtInfo+24], R9
	mov	QWORD PTR [RIP + sl_drivepoint.dtInfo+32], R8
	mov	DWORD PTR [RIP + sl_drivepoint_M_+620], 3
	mov	DWORD PTR [RIP + sl_drivepoint_M_+628], 3
	mov	DWORD PTR [RIP + sl_drivepoint_M_+624], 0
	mov	DWORD PTR [RIP + sl_drivepoint_M_+672], 0
	mov	DWORD PTR [RIP + sl_drivepoint_M_+632], 2
	mov	DWORD PTR [RIP + sl_drivepoint_M_+636], 26
	mov	DWORD PTR [RIP + sl_drivepoint_M_+640], 6
	mov	DWORD PTR [RIP + sl_drivepoint_M_+644], 11
	mov	RAX, R13
	add	RSP, 40
	pop	RBX
	pop	RBP
	pop	RDI
	pop	RSI
	pop	R12
	pop	R13
	pop	R14
	pop	R15
	ret

	.def	 sim_initialize;
	.scl	2;
	.type	32;
	.endef
	.globl	sim_initialize
	.align	16, 0x90
sim_initialize:                         # @sim_initialize
# BB#0:                                 # %entry
	push	RSI
	sub	RSP, 80
	xor	ECX, ECX
	xor	EDX, EDX
	call	ExtParseArgsAndInitUD
	mov	ECX, 8
	call	rt_InitInfAndNaN
	call	sl_drivepoint
	mov	QWORD PTR [RIP + S], RAX
	call	MdlInitializeSizes
	call	MdlInitializeSampleTimes
	mov	RAX, QWORD PTR [RIP + S]
	mov	R9, QWORD PTR [RAX + 792]
	mov	R8, QWORD PTR [RAX + 784]
	movsd	XMM1, QWORD PTR [RAX + 696]
	mov	ECX, DWORD PTR [RAX + 632]
	mov	R10, QWORD PTR [RAX + 808]
	mov	RSI, QWORD PTR [RAX + 800]
	movsd	XMM0, QWORD PTR [RAX + 736]
	lea	RDX, QWORD PTR [RAX + 760]
	mov	QWORD PTR [RSP + 64], RDX
	add	RAX, 776
	mov	QWORD PTR [RSP + 56], RAX
	movsd	QWORD PTR [RSP + 48], XMM0
	mov	QWORD PTR [RSP + 40], RSI
	mov	QWORD PTR [RSP + 32], R10
	call	rt_SimInitTimingEngine
	mov	ESI, 35
	test	RAX, RAX
	jne	.LBB16_3
# BB#1:                                 # %if.end
	mov	RCX, QWORD PTR [RIP + S]
	add	RCX, 48
	call	rt_ODECreateIntegrationData
	call	rt_ExtModeInit
	test	AL, AL
	jne	.LBB16_3
# BB#2:                                 # %if.end14
	mov	BYTE PTR [RIP + modelStopped.b], 0
	xor	ESI, ESI
.LBB16_3:                               # %return
	mov	EAX, ESI
	add	RSP, 80
	pop	RSI
	ret

	.def	 Disable;
	.scl	2;
	.type	32;
	.endef
	.globl	Disable
	.align	16, 0x90
Disable:                                # @Disable
# BB#0:                                 # %entry
	sub	RSP, 40
	call	MdlTerminate
	mov	RAX, QWORD PTR [RIP + S]
	mov	ECX, DWORD PTR [RAX + 632]
	add	RSP, 40
	jmp	rt_ExtModeShutdown      # TAILCALL

	.def	 Execute;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	8
.LCPI18_0:
	.quad	-4616189618054758400    # double -1.000000e+00
                                        #  (0x0)
	.text
	.globl	Execute
	.align	16, 0x90
Execute:                                # @Execute
# BB#0:                                 # %entry
	push	RSI
	sub	RSP, 32
	xorpd	XMM0, XMM0
	mov	AL, BYTE PTR [RIP + modelStopped.b]
	test	AL, AL
	jne	.LBB18_8
# BB#1:                                 # %if.end
	test	ECX, ECX
	setg	AL
	mov	RDX, QWORD PTR [RIP + S]
	cmp	BYTE PTR [RDX + 780], 0
	jne	.LBB18_4
# BB#2:                                 # %lor.lhs.false
	movsd	XMM0, QWORD PTR [RDX + 744]
	mov	RDX, QWORD PTR [RDX + 824]
	movsd	XMM1, QWORD PTR [RDX]
	ucomisd	XMM1, XMM0
	jb	.LBB18_5
# BB#3:                                 # %lor.lhs.false
	ucomisd	XMM0, QWORD PTR [RIP + .LCPI18_0]
	jne	.LBB18_4
	jnp	.LBB18_5
.LBB18_4:                               # %if.then12
	mov	BYTE PTR [RIP + modelStopped.b], 1
	xor	ECX, ECX
	call	MdlOutputs
	call	ExtModeAddTimePoint
	xor	ECX, ECX
	call	UploadPrepareForFinalFlush
	mov	ECX, 1
	call	UploadPrepareForFinalFlush
	call	SendShutdownPkt
	mov	RAX, QWORD PTR [RIP + S]
	mov	RAX, QWORD PTR [RAX + 784]
	movsd	XMM0, QWORD PTR [RAX + 8]
	jmp	.LBB18_8
.LBB18_5:                               # %if.end17
	movzx	ESI, AL
	add	ESI, ECX
	call	rt_SimGetNextSampleHit
	mov	RAX, QWORD PTR [RIP + S]
	movsd	QWORD PTR [RAX + 88], XMM0
	xor	ECX, ECX
	call	MdlOutputs
	call	ExtModeAddTimePoint
	xor	ECX, ECX
	call	MdlUpdate
	mov	RAX, QWORD PTR [RIP + S]
	mov	R9, QWORD PTR [RAX + 824]
	mov	R8, QWORD PTR [RAX + 808]
	mov	RDX, QWORD PTR [RAX + 760]
	mov	ECX, DWORD PTR [RAX + 632]
	call	rt_SimUpdateDiscreteTaskSampleHits
	xorpd	XMM0, XMM0
	mov	RCX, QWORD PTR [RIP + S]
	mov	RAX, QWORD PTR [RCX + 784]
	movsd	XMM1, QWORD PTR [RAX]
	ucomisd	XMM1, XMM0
	jne	.LBB18_7
	jp	.LBB18_7
# BB#6:                                 # %if.then27
	add	RCX, 48
	call	rt_ODEUpdateContinuousStates
	mov	RAX, QWORD PTR [RIP + S]
	mov	RAX, QWORD PTR [RAX + 784]
.LBB18_7:                               # %if.end29
	movsxd	RCX, ESI
	movsd	XMM0, QWORD PTR [RAX + 8*RCX]
.LBB18_8:                               # %return
	add	RSP, 32
	pop	RSI
	ret

	.def	 ExtModeAddTimePoint;
	.scl	3;
	.type	32;
	.endef
	.align	16, 0x90
ExtModeAddTimePoint:                    # @ExtModeAddTimePoint
# BB#0:                                 # %entry
	sub	RSP, 40
	mov	RAX, QWORD PTR [RIP + S]
	mov	EDX, DWORD PTR [RAX + 632]
	xor	ECX, ECX
	call	UploadCheckTrigger
	mov	RAX, QWORD PTR [RIP + S]
	cmp	DWORD PTR [RAX + 776], 1
	jne	.LBB19_5
# BB#1:                                 # %land.lhs.true
	mov	RCX, QWORD PTR [RAX + 800]
	mov	RDX, QWORD PTR [RAX + 808]
	movsxd	RCX, DWORD PTR [RCX]
	cmp	DWORD PTR [RDX + 4*RCX], 0
	je	.LBB19_3
# BB#2:                                 # %for.inc
	mov	RAX, QWORD PTR [RAX + 824]
	movsd	XMM1, QWORD PTR [RAX + 8*RCX]
	xor	ECX, ECX
	xor	R8D, R8D
	call	UploadBufAddTimePoint
	mov	RAX, QWORD PTR [RIP + S]
	cmp	DWORD PTR [RAX + 776], 1
	jne	.LBB19_5
.LBB19_3:                               # %land.lhs.true.1
	mov	RCX, QWORD PTR [RAX + 800]
	mov	RDX, QWORD PTR [RAX + 808]
	movsxd	RCX, DWORD PTR [RCX + 4]
	cmp	DWORD PTR [RDX + 4*RCX], 0
	je	.LBB19_5
# BB#4:                                 # %if.then10.1
	mov	RAX, QWORD PTR [RAX + 824]
	movsd	XMM1, QWORD PTR [RAX + 8*RCX]
	mov	ECX, 1
	xor	R8D, R8D
	call	UploadBufAddTimePoint
.LBB19_5:                               # %for.inc.1
	xor	ECX, ECX
	call	UploadCheckEndTrigger
	mov	RAX, QWORD PTR [RIP + S]
	mov	EDX, DWORD PTR [RAX + 632]
	mov	ECX, 1
	call	UploadCheckTrigger
	mov	RAX, QWORD PTR [RIP + S]
	cmp	DWORD PTR [RAX + 776], 1
	jne	.LBB19_10
# BB#6:                                 # %land.lhs.true.110
	mov	RCX, QWORD PTR [RAX + 800]
	mov	RDX, QWORD PTR [RAX + 808]
	movsxd	RCX, DWORD PTR [RCX]
	cmp	DWORD PTR [RDX + 4*RCX], 0
	je	.LBB19_8
# BB#7:                                 # %for.inc.114
	mov	RAX, QWORD PTR [RAX + 824]
	movsd	XMM1, QWORD PTR [RAX + 8*RCX]
	xor	ECX, ECX
	mov	R8D, 1
	call	UploadBufAddTimePoint
	mov	RAX, QWORD PTR [RIP + S]
	cmp	DWORD PTR [RAX + 776], 1
	jne	.LBB19_10
.LBB19_8:                               # %land.lhs.true.1.1
	mov	RCX, QWORD PTR [RAX + 800]
	mov	RDX, QWORD PTR [RAX + 808]
	movsxd	RCX, DWORD PTR [RCX + 4]
	cmp	DWORD PTR [RDX + 4*RCX], 0
	je	.LBB19_10
# BB#9:                                 # %if.then10.1.1
	mov	RAX, QWORD PTR [RAX + 824]
	movsd	XMM1, QWORD PTR [RAX + 8*RCX]
	mov	ECX, 1
	mov	R8D, 1
	call	UploadBufAddTimePoint
.LBB19_10:                              # %for.inc.1.1
	mov	ECX, 1
	add	RSP, 40
	jmp	UploadCheckEndTrigger   # TAILCALL

	.def	 Comm;
	.scl	2;
	.type	32;
	.endef
	.globl	Comm
	.align	16, 0x90
Comm:                                   # @Comm
# BB#0:                                 # %entry
	sub	RSP, 40
	cmp	ECX, 1
	je	.LBB20_4
# BB#1:                                 # %entry
	cmp	ECX, 3
	jne	.LBB20_2
# BB#5:                                 # %sw.bb2
	mov	RAX, QWORD PTR [RIP + S]
	mov	EAX, DWORD PTR [RAX + 632]
	mov	ECX, DWORD PTR [RDX]
	mov	EDX, EAX
	call	UploadEndLoggingSession
	jmp	.LBB20_6
.LBB20_4:                               # %sw.bb1
	mov	BYTE PTR [RSP + 39], 0
	mov	RAX, QWORD PTR [RIP + S]
	mov	EDX, DWORD PTR [RAX + 632]
	mov	RCX, QWORD PTR [RAX + 40]
	lea	R8, QWORD PTR [RSP + 39]
	call	rt_PktServerWork
	mov	RAX, QWORD PTR [RIP + S]
	mov	CL, BYTE PTR [RSP + 39]
	mov	BYTE PTR [RAX + 780], CL
	jmp	.LBB20_6
.LBB20_2:                               # %entry
	cmp	ECX, 4
	jne	.LBB20_6
# BB#3:                                 # %sw.bb
	call	MdlStart
.LBB20_6:                               # %sw.epilog
	xor	EAX, EAX
	add	RSP, 40
	ret

	.def	 Enable;
	.scl	2;
	.type	32;
	.endef
	.globl	Enable
	.align	16, 0x90
Enable:                                 # @Enable
# BB#0:                                 # %entry
	sub	RSP, 40
	call	sim_initialize
	test	EAX, EAX
	jne	.LBB21_2
# BB#1:                                 # %if.end
	mov	RAX, QWORD PTR [RIP + S]
	mov	ECX, DWORD PTR [RAX + 632]
	mov	DWORD PTR [RIP + ExtInfo], ECX
	mov	RAX, QWORD PTR [RAX + 40]
	mov	QWORD PTR [RIP + ExtInfo+8], RAX
	lea	RAX, QWORD PTR [RIP + uploadInfoArray]
	mov	QWORD PTR [RIP + ExtInfo+16], RAX
	xor	EAX, EAX
.LBB21_2:                               # %return
	add	RSP, 40
	ret

	.def	 rt_SimInitTimingEngine;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_SimInitTimingEngine
	.align	16, 0x90
rt_SimInitTimingEngine:                 # @rt_SimInitTimingEngine
# BB#0:                                 # %entry
	xorpd	XMM0, XMM0
	ucomisd	XMM0, QWORD PTR [RSP + 56]
	setp	AL
	setne	DL
	xor	ECX, ECX
	or	DL, AL
	lea	RAX, QWORD PTR [RIP + .L.str15]
	cmove	RAX, RCX
	ret

	.def	 rt_SimGetNextSampleHit;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	8
.LCPI23_0:
	.quad	-4616189618054758400    # double -1.000000e+00
                                        #  (0x0)
	.text
	.globl	rt_SimGetNextSampleHit
	.align	16, 0x90
rt_SimGetNextSampleHit:                 # @rt_SimGetNextSampleHit
# BB#0:                                 # %entry
	movsd	XMM0, QWORD PTR [RIP + .LCPI23_0]
	ret

	.def	 rt_SimUpdateDiscreteTaskSampleHits;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_SimUpdateDiscreteTaskSampleHits
	.align	16, 0x90
rt_SimUpdateDiscreteTaskSampleHits:     # @rt_SimUpdateDiscreteTaskSampleHits
# BB#0:                                 # %entry
	ret

	.def	 SendPktToHost;
	.scl	2;
	.type	32;
	.endef
	.globl	SendPktToHost
	.align	16, 0x90
SendPktToHost:                          # @SendPktToHost
# BB#0:                                 # %entry
	push	RSI
	push	RDI
	sub	RSP, 56
	mov	RDI, R8
	mov	ESI, EDX
	mov	DWORD PTR [RSP + 40], ECX
	mov	DWORD PTR [RSP + 44], ESI
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	R8, QWORD PTR [RSP + 40]
	lea	R9, QWORD PTR [RSP + 48]
	mov	EDX, 8
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB25_2
# BB#1:                                 # %entry
	xor	AL, AL
	cmp	DWORD PTR [RSP + 48], 8
	je	.LBB25_3
.LBB25_2:                               # %if.then.i
	lea	RCX, QWORD PTR [RIP + .L.str1032]
	mov	EDX, 24
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
	mov	AL, 1
.LBB25_3:                               # %SendPktHdrToHost.exit
	test	AL, AL
	jne	.LBB25_8
# BB#4:                                 # %SendPktHdrToHost.exit
	test	RDI, RDI
	je	.LBB25_8
# BB#5:                                 # %if.then4
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	R9, QWORD PTR [RSP + 52]
	mov	EDX, ESI
	mov	R8, RDI
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB25_7
# BB#6:                                 # %if.then4
	xor	AL, AL
	cmp	DWORD PTR [RSP + 52], ESI
	je	.LBB25_8
.LBB25_7:                               # %if.then.i20
	lea	RCX, QWORD PTR [RIP + .L.str1032]
	mov	EDX, 24
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
	mov	AL, 1
.LBB25_8:                               # %EXIT_POINT
	movzx	EAX, AL
	add	RSP, 56
	pop	RDI
	pop	RSI
	ret

	.def	 ExtParseArgsAndInitUD;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtParseArgsAndInitUD
	.align	16, 0x90
ExtParseArgsAndInitUD:                  # @ExtParseArgsAndInitUD
# BB#0:                                 # %entry
	push	RSI
	push	RDI
	sub	RSP, 40
	mov	RSI, RDX
	mov	EDI, ECX
	call	ExtUserDataCreate
	mov	QWORD PTR [RIP + extUD], RAX
	test	RAX, RAX
	je	.LBB26_1
# BB#2:                                 # %EXIT_POINT
	mov	RCX, RAX
	mov	EDX, EDI
	mov	R8, RSI
	call	ExtProcessArgs
	mov	RSI, RAX
	xor	EAX, EAX
	test	RSI, RSI
	je	.LBB26_5
# BB#3:                                 # %EXIT_POINT.if.then6_crit_edge
	mov	RCX, QWORD PTR [RIP + extUD]
	jmp	.LBB26_4
.LBB26_1:
	xor	ECX, ECX
	lea	RSI, QWORD PTR [RIP + .L.str22]
.LBB26_4:                               # %if.then6
	call	ExtUserDataDestroy
	mov	QWORD PTR [RIP + extUD], 0
	mov	RAX, RSI
.LBB26_5:                               # %if.end7
	add	RSP, 40
	pop	RDI
	pop	RSI
	ret

	.def	 ExtWaitForStartPkt;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtWaitForStartPkt
	.align	16, 0x90
ExtWaitForStartPkt:                     # @ExtWaitForStartPkt
# BB#0:                                 # %entry
	sub	RSP, 40
	mov	RCX, QWORD PTR [RIP + extUD]
	call	ExtWaitForStartPktFromHost
	movzx	EAX, AL
	add	RSP, 40
	ret

	.def	 UploadServerWork;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadServerWork
	.align	16, 0x90
UploadServerWork:                       # @UploadServerWork
# BB#0:                                 # %entry
	push	R15
	push	R14
	push	R13
	push	R12
	push	RSI
	push	RDI
	push	RBP
	push	RBX
	sub	RSP, 72
	mov	R15D, EDX
	mov	EDI, ECX
	cmp	BYTE PTR [RIP + connected], 0
	je	.LBB28_13
# BB#1:                                 # %if.end
	lea	RCX, QWORD PTR [RSP + 40]
	mov	EDX, EDI
	mov	R8D, R15D
	call	UploadBufGetData
	mov	EAX, DWORD PTR [RSP + 40]
	test	EAX, EAX
	jle	.LBB28_13
# BB#2:                                 # %for.cond.preheader.lr.ph
	lea	R12, QWORD PTR [RSP + 64]
	lea	R13, QWORD PTR [RSP + 68]
.LBB28_3:                               # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_5 Depth 2
	test	EAX, EAX
	jle	.LBB28_12
# BB#4:                                 #   in Loop: Header=BB28_3 Depth=1
	mov	EBX, 6
	xor	ESI, ESI
.LBB28_5:                               # %for.body
                                        #   Parent Loop BB28_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	R14, QWORD PTR [RSP + 48]
	mov	EBP, DWORD PTR [R14 + 4*RBX - 24]
	mov	R8, QWORD PTR [R14 + 4*RBX - 16]
	mov	RCX, QWORD PTR [RIP + extUD]
	mov	EDX, EBP
	mov	R9, R12
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB28_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB28_5 Depth=2
	cmp	DWORD PTR [RSP + 64], EBP
	jne	.LBB28_7
# BB#8:                                 # %if.end7
                                        #   in Loop: Header=BB28_5 Depth=2
	mov	EBP, DWORD PTR [R14 + 4*RBX - 8]
	test	EBP, EBP
	jle	.LBB28_11
# BB#9:                                 # %if.then10
                                        #   in Loop: Header=BB28_5 Depth=2
	mov	R8, QWORD PTR [R14 + 4*RBX]
	mov	RCX, QWORD PTR [RIP + extUD]
	mov	EDX, EBP
	mov	R9, R13
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB28_7
# BB#10:                                # %if.then10
                                        #   in Loop: Header=BB28_5 Depth=2
	cmp	DWORD PTR [RSP + 68], EBP
	jne	.LBB28_7
.LBB28_11:                              # %if.end19
                                        #   in Loop: Header=BB28_5 Depth=2
	mov	RAX, QWORD PTR [RSP + 56]
	mov	ECX, DWORD PTR [RAX + 4*RSI]
	mov	EDX, EDI
	call	UploadBufDataSent
	add	RBX, 8
	inc	RSI
	cmp	ESI, DWORD PTR [RSP + 40]
	jl	.LBB28_5
	.align	16, 0x90
.LBB28_12:                              # %for.end
                                        #   in Loop: Header=BB28_3 Depth=1
	lea	RCX, QWORD PTR [RSP + 40]
	mov	EDX, EDI
	mov	R8D, R15D
	call	UploadBufGetData
	mov	EAX, DWORD PTR [RSP + 40]
	test	EAX, EAX
	jg	.LBB28_3
	jmp	.LBB28_13
.LBB28_7:                               # %if.then5
	lea	RCX, QWORD PTR [RIP + .L.str1032]
	mov	EDX, 24
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
	lea	RCX, QWORD PTR [RIP + .L.str123]
	mov	EDX, 43
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
	mov	BYTE PTR [RIP + connected], 0
	mov	BYTE PTR [RIP + commInitialized.b], 0
	xor	ECX, ECX
	mov	EDX, R15D
	call	UploadEndLoggingSession
	mov	ECX, 1
	mov	EDX, R15D
	call	UploadEndLoggingSession
	mov	RCX, QWORD PTR [RIP + extUD]
	call	ExtForceDisconnect
.LBB28_13:                              # %if.end26
	add	RSP, 72
	pop	RBX
	pop	RBP
	pop	RDI
	pop	RSI
	pop	R12
	pop	R13
	pop	R14
	pop	R15
	ret

	.def	 rt_UploadServerWork;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_UploadServerWork
	.align	16, 0x90
rt_UploadServerWork:                    # @rt_UploadServerWork
# BB#0:                                 # %entry
	push	RSI
	sub	RSP, 32
	mov	ESI, ECX
	xor	ECX, ECX
	mov	EDX, ESI
	call	UploadServerWork
	mov	ECX, 1
	mov	EDX, ESI
	add	RSP, 32
	pop	RSI
	jmp	UploadServerWork        # TAILCALL

	.def	 rt_ExtModeInit;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_ExtModeInit
	.align	16, 0x90
rt_ExtModeInit:                         # @rt_ExtModeInit
# BB#0:                                 # %entry
	push	RBX
	sub	RSP, 32
	mov	RCX, QWORD PTR [RIP + extUD]
	call	ExtInit
	mov	BL, AL
	test	BL, BL
	jne	.LBB30_2
# BB#1:                                 # %for.cond.preheader
	xor	ECX, ECX
	call	UploadLogInfoReset
	mov	ECX, 1
	call	UploadLogInfoReset
.LBB30_2:                               # %EXIT_POINT
	movzx	EAX, BL
	add	RSP, 32
	pop	RBX
	ret

	.def	 rt_ExtModeSleep;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_ExtModeSleep
	.align	16, 0x90
rt_ExtModeSleep:                        # @rt_ExtModeSleep
# BB#0:                                 # %entry
	mov	EAX, EDX
	mov	EDX, ECX
	mov	RCX, QWORD PTR [RIP + extUD]
	mov	R8D, EAX
	jmp	ExtModeSleep            # TAILCALL

	.def	 rt_PktServerWork;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_PktServerWork
	.align	16, 0x90
rt_PktServerWork:                       # @rt_PktServerWork
# BB#0:                                 # %entry
	push	R15
	push	R14
	push	R12
	push	RSI
	push	RDI
	push	RBP
	push	RBX
	sub	RSP, 160
	mov	R14, R8
	mov	ESI, EDX
	mov	R15, RCX
	cmp	BYTE PTR [RIP + connected], 0
	jne	.LBB32_3
# BB#1:                                 # %if.then
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	RDX, QWORD PTR [RIP + connected]
	call	ExtOpenConnection
	test	AL, AL
	jne	.LBB32_93
# BB#2:                                 # %if.then
	mov	AL, BYTE PTR [RIP + connected]
	test	AL, AL
	je	.LBB32_93
.LBB32_3:                               # %if.end6
	mov	DWORD PTR [RSP + 152], 0
	xor	EAX, EAX
	lea	RBX, QWORD PTR [RSP + 152]
	mov	EDI, EAX
	.align	16, 0x90
.LBB32_4:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	cmp	EDI, 7
	jg	.LBB32_7
# BB#5:                                 # %while.body.i
                                        #   in Loop: Header=BB32_4 Depth=1
	mov	EDX, 8
	sub	EDX, EDI
	mov	RCX, QWORD PTR [RIP + extUD]
	movsxd	RAX, EDI
	lea	R9, QWORD PTR [RSP + RAX + 40]
	mov	R8, RBX
	call	ExtGetHostPkt
	test	AL, AL
	jne	.LBB32_91
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB32_4 Depth=1
	mov	EAX, DWORD PTR [RSP + 152]
	add	EDI, EAX
	jne	.LBB32_4
.LBB32_7:                               # %if.end13
	test	EAX, EAX
	jle	.LBB32_93
# BB#8:                                 # %if.end16
	mov	AL, BYTE PTR [RIP + commInitialized.b]
	test	AL, AL
	je	.LBB32_9
# BB#13:                                # %if.end19
	mov	EAX, DWORD PTR [RSP + 40]
	cmp	RAX, 15
	ja	.LBB32_90
# BB#14:                                # %if.end19
	lea	RCX, QWORD PTR [RIP + .LJTI32_0]
	movsxd	RAX, DWORD PTR [RCX + 4*RAX]
	add	RAX, RCX
	jmp	RAX
.LBB32_65:                              # %sw.bb72
	mov	QWORD PTR [RSP + 152], 17
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	R8, QWORD PTR [RSP + 152]
	lea	R9, QWORD PTR [RSP + 84]
	mov	EDX, 8
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB32_60
# BB#66:                                # %sw.bb72
	cmp	DWORD PTR [RSP + 84], 8
	jne	.LBB32_60
# BB#67:                                # %if.end78
	xor	ECX, ECX
	call	UploadPrepareForFinalFlush
	cmp	BYTE PTR [RIP + host_upstatus_is_uploading], 0
	je	.LBB32_69
# BB#68:                                # %if.then.i219
	xor	ECX, ECX
	mov	EDX, ESI
	call	UploadServerWork
.LBB32_69:                              # %if.end.i220
	xor	ECX, ECX
	mov	EDX, ESI
	call	UploadLogInfoTerm
	mov	ECX, 1
	call	UploadPrepareForFinalFlush
	cmp	BYTE PTR [RIP + host_upstatus_is_uploading], 0
	je	.LBB32_71
# BB#70:                                # %if.then.1.i
	mov	ECX, 1
	mov	EDX, ESI
	call	UploadServerWork
.LBB32_71:                              # %DisconnectFromHost.exit
	mov	ECX, 1
	mov	EDX, ESI
	call	UploadLogInfoTerm
	mov	BYTE PTR [RIP + connected], 0
	mov	BYTE PTR [RIP + commInitialized.b], 0
	mov	RCX, QWORD PTR [RIP + extUD]
	call	ExtCloseConnection
	jmp	.LBB32_93
.LBB32_91:                              # %EXIT_POINT
	lea	RCX, QWORD PTR [RIP + .L.str224]
	mov	EDX, 39
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
	lea	RCX, QWORD PTR [RIP + .L.str426]
	mov	EDX, 61
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
.LBB32_92:                              # %EXIT_POINT
	mov	BYTE PTR [RIP + connected], 0
	mov	BYTE PTR [RIP + commInitialized.b], 0
	xor	ECX, ECX
	mov	EDX, ESI
	call	UploadEndLoggingSession
	mov	ECX, 1
	mov	EDX, ESI
	call	UploadEndLoggingSession
	mov	RCX, QWORD PTR [RIP + extUD]
	call	ExtForceDisconnect
	jmp	.LBB32_93
.LBB32_9:                               # %if.end19.thread
	mov	DWORD PTR [RSP + 40], 0
.LBB32_10:                              # %sw.bb50
	mov	RAX, QWORD PTR [R15 + 16]
	mov	RSI, QWORD PTR [RAX]
	mov	EBP, DWORD PTR [RSI]
	mov	RDI, QWORD PTR [RSI + 8]
	movabs	RAX, 34359738384
	mov	QWORD PTR [RSP + 152], RAX
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	R8, QWORD PTR [RSP + 152]
	lea	R9, QWORD PTR [RSP + 84]
	mov	EDX, 8
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB32_12
# BB#11:                                # %sw.bb50
	cmp	DWORD PTR [RSP + 84], 8
	jne	.LBB32_12
# BB#33:                                # %if.end.i185
	mov	EAX, DWORD PTR [RSI]
	lea	EBX, DWORD PTR [4*RAX + 32]
	movsxd	RCX, EBX
	call	malloc
	mov	RSI, RAX
	test	RSI, RSI
	je	.LBB32_45
# BB#34:                                # %if.end12.i
	mov	DWORD PTR [RSP + 152], 16
	mov	DWORD PTR [RSP + 156], EBX
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	R8, QWORD PTR [RSP + 152]
	lea	R9, QWORD PTR [RSP + 84]
	mov	EDX, 8
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB32_36
# BB#35:                                # %if.end12.i
	cmp	DWORD PTR [RSP + 84], 8
	jne	.LBB32_36
# BB#38:                                # %if.end24.i
	mov	RAX, QWORD PTR [R15 + 8]
	mov	ECX, DWORD PTR [RAX]
	mov	DWORD PTR [RSI], ECX
	mov	ECX, DWORD PTR [RAX + 4]
	mov	DWORD PTR [RSI + 4], ECX
	mov	ECX, DWORD PTR [RAX + 8]
	mov	DWORD PTR [RSI + 8], ECX
	test	EBP, EBP
	mov	EAX, DWORD PTR [RAX + 12]
	mov	DWORD PTR [RSI + 12], EAX
	mov	DWORD PTR [RSI + 16], 0
	mov	DWORD PTR [RSI + 20], 4
	mov	EAX, DWORD PTR [RIP + modelStatus]
	mov	DWORD PTR [RSI + 24], EAX
	mov	DWORD PTR [RSI + 28], EBP
	jle	.LBB32_41
# BB#39:                                # %for.body.i.preheader
	lea	RAX, QWORD PTR [RSI + 32]
.LBB32_40:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	mov	ECX, DWORD PTR [RDI]
	mov	DWORD PTR [RAX], ECX
	add	RDI, 4
	add	RAX, 4
	dec	EBP
	jne	.LBB32_40
.LBB32_41:                              # %for.end.i
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	R9, QWORD PTR [RSP + 84]
	mov	EDX, EBX
	mov	R8, RSI
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB32_43
# BB#42:                                # %for.end.i
	cmp	DWORD PTR [RSP + 84], EBX
	jne	.LBB32_43
# BB#44:                                # %if.end53.i
	mov	BYTE PTR [RIP + commInitialized.b], 1
	jmp	.LBB32_45
.LBB32_12:                              # %if.then.i183
	lea	RCX, QWORD PTR [RIP + .L.str830]
	mov	EDX, 53
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
	xor	ESI, ESI
.LBB32_45:                              # %ProcessConnectPkt.exit
	mov	RCX, RSI
	call	free
	jmp	.LBB32_93
.LBB32_90:                              # %sw.default
	lea	RCX, QWORD PTR [RIP + .L.str325]
	mov	EDX, 25
.LBB32_61:                              # %SendPktHdrToHost.exit.i
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
.LBB32_93:                              # %if.end135
	add	RSP, 160
	pop	RBX
	pop	RBP
	pop	RDI
	pop	RSI
	pop	R12
	pop	R14
	pop	R15
	ret
.LBB32_36:                              # %if.then22.i
	lea	RCX, QWORD PTR [RIP + .L.str931]
	mov	EDX, 53
	jmp	.LBB32_37
.LBB32_46:                              # %sw.bb57
	mov	ECX, DWORD PTR [RSP + 44]
	call	GetPkt
	test	RAX, RAX
	je	.LBB32_47
# BB#49:                                # %if.end.i192
	mov	RCX, R15
	mov	RDX, RAX
	call	SetParam
	mov	DWORD PTR [RSP + 52], 0
	jmp	.LBB32_48
.LBB32_50:                              # %sw.bb65
	mov	RAX, QWORD PTR [R15 + 16]
	mov	RAX, QWORD PTR [RAX]
	mov	R15, QWORD PTR [RAX + 32]
	test	R15, R15
	je	.LBB32_63
# BB#51:                                # %if.then.i196
	mov	RSI, QWORD PTR [RAX + 8]
	mov	R12D, DWORD PTR [R15]
	xor	EAX, EAX
	test	R12D, R12D
	jle	.LBB32_54
# BB#52:                                # %for.body.lr.ph.i
	mov	RCX, QWORD PTR [R15 + 8]
	add	RCX, 16
	xor	EAX, EAX
	mov	EDX, R12D
.LBB32_53:                              # %for.body.i201
                                        # =>This Inner Loop Header: Depth=1
	movsxd	RBX, DWORD PTR [RCX - 8]
	mov	EBP, DWORD PTR [RCX]
	imul	EBP, DWORD PTR [RSI + 4*RBX]
	add	EAX, EBP
	add	RCX, 24
	dec	EDX
	jne	.LBB32_53
.LBB32_54:                              # %for.end.i203
	mov	DWORD PTR [RSP + 56], 19
	mov	DWORD PTR [RSP + 60], EAX
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	R8, QWORD PTR [RSP + 56]
	lea	R9, QWORD PTR [RSP + 68]
	mov	EDX, 8
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB32_60
# BB#55:                                # %for.end.i203
	cmp	DWORD PTR [RSP + 68], 8
	jne	.LBB32_60
# BB#56:                                # %for.cond11.preheader.i
	test	R12D, R12D
	jle	.LBB32_93
# BB#57:                                # %for.body14.lr.ph.i
	xor	EBX, EBX
	mov	EBP, 16
	lea	R14, QWORD PTR [RSP + 152]
.LBB32_58:                              # %for.body14.i
                                        # =>This Inner Loop Header: Depth=1
	mov	RAX, QWORD PTR [R15 + 8]
	movsxd	RCX, DWORD PTR [RAX + RBP - 8]
	mov	EDI, DWORD PTR [RAX + RBP]
	imul	EDI, DWORD PTR [RSI + 4*RCX]
	mov	R8, QWORD PTR [RAX + RBP - 16]
	mov	RCX, QWORD PTR [RIP + extUD]
	mov	EDX, EDI
	mov	R9, R14
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB32_60
# BB#59:                                # %for.body14.i
                                        #   in Loop: Header=BB32_58 Depth=1
	cmp	DWORD PTR [RSP + 152], EDI
	jne	.LBB32_60
# BB#62:                                # %for.inc39.i
                                        #   in Loop: Header=BB32_58 Depth=1
	add	RBP, 24
	inc	EBX
	cmp	EBX, R12D
	jl	.LBB32_58
	jmp	.LBB32_93
.LBB32_21:                              # %sw.bb34
	mov	ECX, DWORD PTR [RSP + 44]
	call	GetPkt
	test	RAX, RAX
	je	.LBB32_22
# BB#24:                                # %if.end.i158
	mov	EBX, DWORD PTR [RAX]
	add	RAX, 4
	mov	RCX, R15
	mov	EDX, ESI
	mov	R8, RAX
	mov	R9D, EBX
	call	UploadLogInfoInit
	test	AL, AL
	je	.LBB32_26
# BB#25:                                # %if.then8.i
	mov	DWORD PTR [RSP + 152], 1
	mov	DWORD PTR [RSP + 156], EBX
	lea	R8, QWORD PTR [RSP + 152]
	mov	ECX, 27
	mov	EDX, 8
	call	SendPktToHost
	mov	RAX, QWORD PTR [RIP + __imp_printf]
	lea	RCX, QWORD PTR [RIP + .L.str1133]
	lea	RDX, QWORD PTR [RIP + ERRMSG_PROCESSSELECTSIGNAL]
	call	RAX
	jmp	.LBB32_93
.LBB32_27:                              # %sw.bb42
	mov	ECX, DWORD PTR [RSP + 44]
	call	GetPkt
	test	RAX, RAX
	je	.LBB32_28
# BB#30:                                # %if.end.i167
	mov	ESI, DWORD PTR [RAX]
	add	RAX, 4
	mov	RCX, R15
	mov	RDX, RAX
	mov	R8D, ESI
	call	UploadInitTrigger
	test	AL, AL
	je	.LBB32_32
# BB#31:                                # %if.then8.i172
	mov	DWORD PTR [RSP + 152], 1
	mov	DWORD PTR [RSP + 156], ESI
	lea	R8, QWORD PTR [RSP + 152]
	mov	ECX, 28
	mov	EDX, 8
	call	SendPktToHost
	mov	RAX, QWORD PTR [RIP + __imp_printf]
	lea	RCX, QWORD PTR [RIP + .L.str1133]
	lea	RDX, QWORD PTR [RIP + ERRMSG_PROCESSSELECTTRIGGER]
	call	RAX
	jmp	.LBB32_93
.LBB32_16:                              # %sw.bb27
	mov	ECX, DWORD PTR [RSP + 44]
	call	GetPkt
	test	RAX, RAX
	je	.LBB32_17
# BB#20:                                # %if.end.i152
	mov	EDI, DWORD PTR [RAX]
	mov	ECX, EDI
	mov	EDX, ESI
	call	UploadArmTrigger
	mov	DWORD PTR [RSP + 152], 0
	mov	DWORD PTR [RSP + 156], EDI
	jmp	.LBB32_18
.LBB32_86:                              # %sw.bb118
	mov	ECX, DWORD PTR [RSP + 44]
	call	GetPkt
	test	RAX, RAX
	je	.LBB32_87
# BB#89:                                # %if.end.i286
	mov	ESI, DWORD PTR [RAX]
	mov	ECX, ESI
	call	UploadCancelLogging
	mov	DWORD PTR [RSP + 152], 0
	mov	DWORD PTR [RSP + 156], ESI
	jmp	.LBB32_88
.LBB32_72:                              # %sw.bb80
	mov	DWORD PTR [RIP + startModel], 1
	mov	QWORD PTR [RSP + 88], 22
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	R8, QWORD PTR [RSP + 88]
	lea	R9, QWORD PTR [RSP + 100]
	mov	EDX, 8
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB32_60
# BB#73:                                # %sw.bb80
	cmp	DWORD PTR [RSP + 100], 8
	jne	.LBB32_60
	jmp	.LBB32_93
.LBB32_74:                              # %sw.bb87
	mov	BYTE PTR [R14], 1
	jmp	.LBB32_93
.LBB32_75:                              # %sw.bb88
	mov	DWORD PTR [RIP + modelStatus], 4
	mov	DWORD PTR [RIP + startModel], 0
	mov	QWORD PTR [RSP + 104], 23
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	R8, QWORD PTR [RSP + 104]
	lea	R9, QWORD PTR [RSP + 116]
	mov	EDX, 8
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB32_60
# BB#76:                                # %sw.bb88
	cmp	DWORD PTR [RSP + 116], 8
	jne	.LBB32_60
	jmp	.LBB32_93
.LBB32_77:                              # %sw.bb95
	mov	EAX, DWORD PTR [RIP + modelStatus]
	cmp	EAX, 4
	jne	.LBB32_80
# BB#78:                                # %land.lhs.true
	cmp	DWORD PTR [RIP + startModel], 0
	jne	.LBB32_80
# BB#79:                                # %if.then99
	mov	DWORD PTR [RIP + startModel], 1
.LBB32_80:                              # %if.end100
	mov	QWORD PTR [RSP + 120], 24
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	R8, QWORD PTR [RSP + 120]
	lea	R9, QWORD PTR [RSP + 132]
	mov	EDX, 8
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB32_60
# BB#81:                                # %if.end100
	cmp	DWORD PTR [RSP + 132], 8
	jne	.LBB32_60
	jmp	.LBB32_93
.LBB32_82:                              # %sw.bb107
	mov	EAX, DWORD PTR [RIP + modelStatus]
	cmp	EAX, 4
	jne	.LBB32_84
# BB#83:                                # %if.then110
	mov	DWORD PTR [RIP + modelStatus], 3
	mov	DWORD PTR [RIP + startModel], 0
.LBB32_84:                              # %if.end111
	mov	QWORD PTR [RSP + 136], 25
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	R8, QWORD PTR [RSP + 136]
	lea	R9, QWORD PTR [RSP + 148]
	mov	EDX, 8
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB32_60
# BB#85:                                # %if.end111
	cmp	DWORD PTR [RSP + 148], 8
	jne	.LBB32_60
	jmp	.LBB32_93
.LBB32_15:                              # %sw.bb
	mov	RAX, QWORD PTR [R15 + 24]
	movsd	XMM0, QWORD PTR [RAX]
	movsd	QWORD PTR [RSP + 32], XMM0
	lea	R8, QWORD PTR [RSP + 32]
	mov	ECX, 21
	jmp	.LBB32_19
.LBB32_43:                              # %if.then51.i
	lea	RCX, QWORD PTR [RIP + .L.str1032]
	mov	EDX, 24
.LBB32_37:                              # %if.then22.i
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
	jmp	.LBB32_45
.LBB32_47:                              # %if.then.i190
	mov	DWORD PTR [RSP + 52], 1
.LBB32_48:                              # %if.then.i190
	lea	R8, QWORD PTR [RSP + 52]
	mov	ECX, 18
	mov	EDX, 4
	call	SendPktToHost
	jmp	.LBB32_93
.LBB32_63:                              # %if.else.i
	mov	QWORD PTR [RSP + 72], 19
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	R8, QWORD PTR [RSP + 72]
	lea	R9, QWORD PTR [RSP + 80]
	mov	EDX, 8
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB32_60
# BB#64:                                # %if.else.i
	cmp	DWORD PTR [RSP + 80], 8
	je	.LBB32_93
.LBB32_60:                              # %SendPktHdrToHost.exit.i
	lea	RCX, QWORD PTR [RIP + .L.str1032]
	mov	EDX, 24
	jmp	.LBB32_61
.LBB32_22:                              # %if.then.i155
	movabs	RAX, -4294967295
	mov	QWORD PTR [RSP + 152], RAX
	jmp	.LBB32_23
.LBB32_28:                              # %if.then.i164
	movabs	RAX, -4294967295
	mov	QWORD PTR [RSP + 152], RAX
	jmp	.LBB32_29
.LBB32_17:                              # %if.then.i
	movabs	RAX, -4294967295
	mov	QWORD PTR [RSP + 152], RAX
.LBB32_18:                              # %if.then.i
	lea	R8, QWORD PTR [RSP + 152]
	mov	ECX, 29
	jmp	.LBB32_19
.LBB32_87:                              # %if.then.i283
	movabs	RAX, -4294967295
	mov	QWORD PTR [RSP + 152], RAX
.LBB32_88:                              # %if.then.i283
	lea	R8, QWORD PTR [RSP + 152]
	mov	ECX, 30
	jmp	.LBB32_19
.LBB32_26:                              # %if.end11.i
	mov	DWORD PTR [RSP + 152], 0
	mov	DWORD PTR [RSP + 156], EBX
.LBB32_23:                              # %if.then.i155
	lea	R8, QWORD PTR [RSP + 152]
	mov	ECX, 27
	jmp	.LBB32_19
.LBB32_32:                              # %if.end11.i173
	mov	DWORD PTR [RSP + 152], 0
	mov	DWORD PTR [RSP + 156], ESI
.LBB32_29:                              # %if.then.i164
	lea	R8, QWORD PTR [RSP + 152]
	mov	ECX, 28
.LBB32_19:                              # %if.then.i
	mov	EDX, 8
	call	SendPktToHost
	jmp	.LBB32_93
	.align	4, 0x90
.L32_0_set_10 = .LBB32_10-.LJTI32_0
.L32_0_set_65 = .LBB32_65-.LJTI32_0
.L32_0_set_92 = .LBB32_92-.LJTI32_0
.L32_0_set_90 = .LBB32_90-.LJTI32_0
.L32_0_set_46 = .LBB32_46-.LJTI32_0
.L32_0_set_50 = .LBB32_50-.LJTI32_0
.L32_0_set_21 = .LBB32_21-.LJTI32_0
.L32_0_set_27 = .LBB32_27-.LJTI32_0
.L32_0_set_16 = .LBB32_16-.LJTI32_0
.L32_0_set_86 = .LBB32_86-.LJTI32_0
.L32_0_set_72 = .LBB32_72-.LJTI32_0
.L32_0_set_74 = .LBB32_74-.LJTI32_0
.L32_0_set_75 = .LBB32_75-.LJTI32_0
.L32_0_set_77 = .LBB32_77-.LJTI32_0
.L32_0_set_82 = .LBB32_82-.LJTI32_0
.L32_0_set_15 = .LBB32_15-.LJTI32_0
.LJTI32_0:
	.long	.L32_0_set_10
	.long	.L32_0_set_65
	.long	.L32_0_set_92
	.long	.L32_0_set_90
	.long	.L32_0_set_46
	.long	.L32_0_set_50
	.long	.L32_0_set_21
	.long	.L32_0_set_27
	.long	.L32_0_set_16
	.long	.L32_0_set_86
	.long	.L32_0_set_72
	.long	.L32_0_set_74
	.long	.L32_0_set_75
	.long	.L32_0_set_77
	.long	.L32_0_set_82
	.long	.L32_0_set_15

	.def	 rt_ExtModeShutdown;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_ExtModeShutdown
	.align	16, 0x90
rt_ExtModeShutdown:                     # @rt_ExtModeShutdown
# BB#0:                                 # %entry
	push	RSI
	push	RBX
	sub	RSP, 56
	mov	ESI, ECX
	xor	ECX, ECX
	call	UploadPrepareForFinalFlush
	xor	ECX, ECX
	mov	EDX, ESI
	call	UploadServerWork
	xor	ECX, ECX
	mov	EDX, ESI
	call	UploadLogInfoTerm
	mov	RCX, QWORD PTR [RIP + pktBuf]
	test	RCX, RCX
	je	.LBB33_2
# BB#1:                                 # %if.then.i
	call	free
	mov	QWORD PTR [RIP + pktBuf], 0
.LBB33_2:                               # %ExtModeShutdown.exit
	mov	ECX, 1
	call	UploadPrepareForFinalFlush
	mov	ECX, 1
	mov	EDX, ESI
	call	UploadServerWork
	mov	ECX, 1
	mov	EDX, ESI
	call	UploadLogInfoTerm
	mov	RCX, QWORD PTR [RIP + pktBuf]
	test	RCX, RCX
	je	.LBB33_4
# BB#3:                                 # %if.then.i.1
	call	free
	mov	QWORD PTR [RIP + pktBuf], 0
.LBB33_4:                               # %ExtModeShutdown.exit.1
	xor	BL, BL
	mov	AL, BYTE PTR [RIP + commInitialized.b]
	test	AL, AL
	je	.LBB33_9
# BB#5:                                 # %if.then
	mov	QWORD PTR [RSP + 40], 20
	mov	RCX, QWORD PTR [RIP + extUD]
	lea	R8, QWORD PTR [RSP + 40]
	lea	R9, QWORD PTR [RSP + 52]
	mov	EDX, 8
	call	ExtSetHostPkt
	test	AL, AL
	jne	.LBB33_7
# BB#6:                                 # %if.then
	xor	BL, BL
	cmp	DWORD PTR [RSP + 52], 8
	je	.LBB33_8
.LBB33_7:                               # %if.then3
	lea	RCX, QWORD PTR [RIP + .L.str1032]
	mov	EDX, 24
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
	lea	RCX, QWORD PTR [RIP + .L.str527]
	mov	EDX, 50
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
	mov	BL, 1
.LBB33_8:                               # %if.end
	mov	BYTE PTR [RIP + commInitialized.b], 0
.LBB33_9:                               # %if.end5
	cmp	BYTE PTR [RIP + connected], 0
	je	.LBB33_11
# BB#10:                                # %if.then7
	mov	BYTE PTR [RIP + connected], 0
	mov	DWORD PTR [RIP + modelStatus], 1
.LBB33_11:                              # %if.end8
	mov	RCX, QWORD PTR [RIP + extUD]
	call	ExtShutDown
	mov	RCX, QWORD PTR [RIP + extUD]
	call	ExtUserDataDestroy
	movzx	EAX, BL
	add	RSP, 56
	pop	RBX
	pop	RSI
	ret

	.def	 rt_UploadCheckTrigger;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_UploadCheckTrigger
	.align	16, 0x90
rt_UploadCheckTrigger:                  # @rt_UploadCheckTrigger
# BB#0:                                 # %entry
	push	RSI
	sub	RSP, 32
	mov	ESI, ECX
	xor	ECX, ECX
	mov	EDX, ESI
	call	UploadCheckTrigger
	mov	ECX, 1
	mov	EDX, ESI
	add	RSP, 32
	pop	RSI
	jmp	UploadCheckTrigger      # TAILCALL

	.def	 rt_UploadCheckEndTrigger;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_UploadCheckEndTrigger
	.align	16, 0x90
rt_UploadCheckEndTrigger:               # @rt_UploadCheckEndTrigger
# BB#0:                                 # %entry
	sub	RSP, 40
	xor	ECX, ECX
	call	UploadCheckEndTrigger
	mov	ECX, 1
	add	RSP, 40
	jmp	UploadCheckEndTrigger   # TAILCALL

	.def	 rt_UploadBufAddTimePoint;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_UploadBufAddTimePoint
	.align	16, 0x90
rt_UploadBufAddTimePoint:               # @rt_UploadBufAddTimePoint
# BB#0:                                 # %entry
	push	RSI
	sub	RSP, 48
	movaps	XMMWORD PTR [RSP + 32], XMM6 # 16-byte Spill
	movaps	XMM6, XMM1
	mov	ESI, ECX
	xor	R8D, R8D
	call	UploadBufAddTimePoint
	mov	ECX, ESI
	movaps	XMM1, XMM6
	mov	R8D, 1
	movaps	XMM6, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 48
	pop	RSI
	jmp	UploadBufAddTimePoint   # TAILCALL

	.def	 GetPkt;
	.scl	3;
	.type	32;
	.endef
	.align	16, 0x90
GetPkt:                                 # @GetPkt
# BB#0:                                 # %entry
	push	R14
	push	RSI
	push	RDI
	push	RBP
	push	RBX
	sub	RSP, 48
	mov	ESI, ECX
	cmp	DWORD PTR [RIP + pktBufSize], ESI
	jge	.LBB37_1
# BB#5:                                 # %if.then.i
	mov	RCX, QWORD PTR [RIP + pktBuf]
	test	RCX, RCX
	je	.LBB37_7
# BB#6:                                 # %if.then2.i
	call	free
	mov	DWORD PTR [RIP + pktBufSize], 0
.LBB37_7:                               # %if.end.i
	movsxd	RCX, ESI
	call	malloc
	mov	QWORD PTR [RIP + pktBuf], RAX
	test	RAX, RAX
	je	.LBB37_9
# BB#8:                                 # %if.end6.i
	mov	DWORD PTR [RIP + pktBufSize], ESI
.LBB37_1:                               # %while.cond.preheader
	mov	R14B, 1
	test	ESI, ESI
	jle	.LBB37_15
# BB#2:
	xor	EBX, EBX
	lea	RDI, QWORD PTR [RSP + 40]
	.align	16, 0x90
.LBB37_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	mov	EDX, ESI
	sub	EDX, EBX
	movsxd	R9, EBX
	add	R9, QWORD PTR [RIP + pktBuf]
	mov	RCX, QWORD PTR [RIP + extUD]
	mov	R8, RDI
	call	ExtGetHostPkt
	test	AL, AL
	jne	.LBB37_4
# BB#14:                                # %if.end8
                                        #   in Loop: Header=BB37_3 Depth=1
	add	EBX, DWORD PTR [RSP + 40]
	cmp	EBX, ESI
	jl	.LBB37_3
	jmp	.LBB37_15
.LBB37_4:                               # %if.then6
	lea	RCX, QWORD PTR [RIP + .L.str729]
	mov	EDX, 24
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
	xor	R14B, R14B
	jmp	.LBB37_15
.LBB37_9:                               # %if.then
	lea	RCX, QWORD PTR [RIP + .L.str628]
	mov	EDX, 58
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
	xor	R14B, R14B
	test	ESI, ESI
	jle	.LBB37_15
# BB#10:
	xor	EBP, EBP
	lea	RDI, QWORD PTR [RSP + 44]
	lea	RBX, QWORD PTR [RIP + ClearPkt.buffer]
	.align	16, 0x90
.LBB37_11:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	mov	RCX, QWORD PTR [RIP + extUD]
	mov	EDX, 1
	mov	R8, RDI
	mov	R9, RBX
	call	ExtGetHostPkt
	test	AL, AL
	jne	.LBB37_12
# BB#13:                                # %if.end.i24
                                        #   in Loop: Header=BB37_11 Depth=1
	add	EBP, DWORD PTR [RSP + 44]
	cmp	EBP, ESI
	jl	.LBB37_11
	jmp	.LBB37_15
.LBB37_12:                              # %if.then.i22
	lea	RCX, QWORD PTR [RIP + .L.str729]
	mov	EDX, 24
	mov	R8D, 1
	mov	R9D, 3
	call	fwrite
.LBB37_15:                              # %EXIT_POINT
	xor	EAX, EAX
	test	R14B, R14B
	cmovne	RAX, QWORD PTR [RIP + pktBuf]
	add	RSP, 48
	pop	RBX
	pop	RBP
	pop	RDI
	pop	RSI
	pop	R14
	ret

	.def	 SetParam;
	.scl	2;
	.type	32;
	.endef
	.globl	SetParam
	.align	16, 0x90
SetParam:                               # @SetParam
# BB#0:                                 # %entry
	push	R15
	push	R14
	push	R12
	push	RSI
	push	RDI
	push	RBP
	push	RBX
	sub	RSP, 32
	mov	RSI, RDX
	mov	R12D, DWORD PTR [RSI]
	test	R12D, R12D
	jle	.LBB38_5
# BB#1:                                 # %for.body.lr.ph
	mov	RAX, QWORD PTR [RCX + 16]
	mov	RAX, QWORD PTR [RAX]
	mov	R14, QWORD PTR [RAX + 8]
	mov	R15, QWORD PTR [RAX + 32]
	add	RSI, 4
	.align	16, 0x90
.LBB38_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	mov	RBX, QWORD PTR [R15 + 8]
	movsxd	RAX, DWORD PTR [RSI]
	lea	RBP, QWORD PTR [RAX + 2*RAX]
	movsxd	RAX, DWORD PTR [RSI + 12]
	mov	R9D, DWORD PTR [R14 + 4*RAX]
	mov	RCX, QWORD PTR [RBX + 8*RBP]
	lea	RDX, QWORD PTR [RSI + 16]
	mov	EAX, DWORD PTR [RSI + 4]
	mov	R8D, DWORD PTR [RSI + 8]
	mov	EDI, 2
	cmp	DWORD PTR [RBX + 8*RBP + 12], 0
	jne	.LBB38_4
# BB#3:                                 # %select.mid
                                        #   in Loop: Header=BB38_2 Depth=1
	mov	EDI, 1
.LBB38_4:                               # %select.end
                                        #   in Loop: Header=BB38_2 Depth=1
	imul	EDI, R9D
	imul	EAX, EDI
	movsxd	RAX, EAX
	add	RCX, RAX
	imul	EDI, R8D
	movsxd	RDI, EDI
	mov	R8, RDI
	call	memcpy
	lea	RSI, QWORD PTR [RDI + RSI + 16]
	dec	R12D
	jne	.LBB38_2
.LBB38_5:                               # %for.end
	add	RSP, 32
	pop	RBX
	pop	RBP
	pop	RDI
	pop	RSI
	pop	R12
	pop	R14
	pop	R15
	ret

	.def	 UploadLogInfoReset;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadLogInfoReset
	.align	16, 0x90
UploadLogInfoReset:                     # @UploadLogInfoReset
# BB#0:                                 # %entry
	push	R14
	push	RSI
	push	RDI
	push	RBX
	sub	RSP, 40
	movsxd	RAX, ECX
	mov	CL, BYTE PTR [RIP + UploadLogInfoReset.firstTime.b]
	test	CL, CL
	jne	.LBB39_2
# BB#1:                                 # %if.then
	lea	RCX, QWORD PTR [RAX + 8*RAX]
	shl	RCX, 4
	xorps	XMM0, XMM0
	lea	RDX, QWORD PTR [RIP + uploadInfoArray]
	movaps	XMMWORD PTR [RCX + RDX + 128], XMM0
	movaps	XMMWORD PTR [RCX + RDX + 112], XMM0
	movaps	XMMWORD PTR [RCX + RDX + 96], XMM0
	movaps	XMMWORD PTR [RCX + RDX + 80], XMM0
	movaps	XMMWORD PTR [RCX + RDX + 64], XMM0
	movaps	XMMWORD PTR [RCX + RDX + 48], XMM0
	movaps	XMMWORD PTR [RCX + RDX + 32], XMM0
	movaps	XMMWORD PTR [RCX + RDX + 16], XMM0
	movaps	XMMWORD PTR [RCX + RDX], XMM0
	mov	BYTE PTR [RIP + UploadLogInfoReset.firstTime.b], 1
.LBB39_2:                               # %if.end
	lea	RSI, QWORD PTR [RAX + 8*RAX]
	shl	RSI, 4
	lea	RDI, QWORD PTR [RIP + uploadInfoArray]
	mov	DWORD PTR [RSI + RDI + 20], 0
	mov	QWORD PTR [RSI + RDI + 12], 0
	mov	QWORD PTR [RSI + RDI + 4], 0
	mov	QWORD PTR [RSI + RDI + 40], 0
	mov	QWORD PTR [RSI + RDI + 32], 0
	lea	R14, QWORD PTR [RSI + RDI + 104]
	mov	RCX, QWORD PTR [RSI + RDI + 104]
	test	RCX, RCX
	je	.LBB39_4
# BB#3:                                 # %if.then.i
	call	free
	mov	QWORD PTR [R14], 0
.LBB39_4:                               # %if.end.i
	lea	RBX, QWORD PTR [RSI + RDI + 120]
	mov	RCX, QWORD PTR [RSI + RDI + 120]
	test	RCX, RCX
	je	.LBB39_6
# BB#5:                                 # %if.then5.i
	call	free
	mov	QWORD PTR [RBX], 0
.LBB39_6:                               # %UploadDestroyTrigger.exit
	mov	DWORD PTR [RSI + RDI + 48], 0
	mov	DWORD PTR [RSI + RDI + 56], 0
	mov	DWORD PTR [RSI + RDI + 60], 0
	mov	DWORD PTR [RSI + RDI + 64], 0
	xorps	XMM0, XMM0
	mov	DWORD PTR [RSI + RDI + 68], 1
	mov	DWORD PTR [RSI + RDI + 72], 0
	mov	QWORD PTR [R14], 0
	mov	DWORD PTR [RSI + RDI + 112], 0
	movaps	XMMWORD PTR [RSI + RDI + 80], XMM0
	mov	DWORD PTR [RSI + RDI + 96], 0
	mov	QWORD PTR [RBX + 16], 0
	mov	QWORD PTR [RBX + 8], 0
	mov	QWORD PTR [RBX], 0
	add	RSP, 40
	pop	RBX
	pop	RDI
	pop	RSI
	pop	R14
	ret

	.def	 UploadLogInfoTerm;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadLogInfoTerm
	.align	16, 0x90
UploadLogInfoTerm:                      # @UploadLogInfoTerm
# BB#0:                                 # %entry
	push	R15
	push	R14
	push	R13
	push	R12
	push	RSI
	push	RDI
	push	RBP
	push	RBX
	sub	RSP, 72
	mov	R15D, EDX
	movsxd	RAX, ECX
	lea	R12, QWORD PTR [RAX + 8*RAX]
	shl	R12, 4
	lea	RCX, QWORD PTR [RIP + uploadInfoArray]
	mov	EAX, DWORD PTR [R12 + RCX + 4]
	test	EAX, EAX
	je	.LBB40_27
# BB#1:                                 # %for.cond.preheader
	lea	R14, QWORD PTR [R12 + RCX + 4]
	lea	R13, QWORD PTR [R12 + RCX + 8]
	jle	.LBB40_11
# BB#2:                                 # %for.body.lr.ph
	test	R15D, R15D
	jle	.LBB40_9
# BB#3:
	xor	EBP, EBP
	.align	16, 0x90
.LBB40_8:                               # %for.body8.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_4 Depth 2
	mov	RAX, RBP
	shl	RAX, 4
	mov	RCX, QWORD PTR [R13]
	mov	RBX, QWORD PTR [RCX + RAX + 8]
	mov	RDI, RBX
	mov	ESI, R15D
	.align	16, 0x90
.LBB40_4:                               # %for.body8.us
                                        #   Parent Loop BB40_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	RAX, QWORD PTR [RDI]
	test	RAX, RAX
	je	.LBB40_6
# BB#5:                                 # %if.then12.us
                                        #   in Loop: Header=BB40_4 Depth=2
	mov	RCX, QWORD PTR [RAX + 8]
	call	free
	mov	RCX, QWORD PTR [RDI]
	call	free
.LBB40_6:                               # %for.inc.us
                                        #   in Loop: Header=BB40_4 Depth=2
	add	RDI, 8
	dec	ESI
	jne	.LBB40_4
# BB#7:                                 # %for.end.us
                                        #   in Loop: Header=BB40_8 Depth=1
	mov	RCX, RBX
	call	free
	inc	RBP
	cmp	EBP, DWORD PTR [R14]
	jge	.LBB40_11
	jmp	.LBB40_8
.LBB40_9:
	xor	ESI, ESI
	mov	EDI, 8
	.align	16, 0x90
.LBB40_10:                              # %for.end
                                        # =>This Inner Loop Header: Depth=1
	mov	RAX, QWORD PTR [R13]
	mov	RCX, QWORD PTR [RAX + RDI]
	call	free
	add	RDI, 16
	inc	ESI
	cmp	ESI, DWORD PTR [R14]
	jl	.LBB40_10
.LBB40_11:                              # %for.end20
	mov	RCX, QWORD PTR [R13]
	call	free
	lea	RBX, QWORD PTR [RIP + uploadInfoArray]
	mov	RCX, QWORD PTR [R12 + RBX + 16]
	test	RCX, RCX
	je	.LBB40_16
# BB#12:                                # %for.cond23.preheader
	test	R15D, R15D
	jle	.LBB40_15
# BB#13:
	lea	RSI, QWORD PTR [R12 + RBX + 16]
	mov	EDI, 8
	.align	16, 0x90
.LBB40_14:                              # %for.body25
                                        # =>This Inner Loop Header: Depth=1
	mov	RCX, QWORD PTR [RCX + RDI]
	call	free
	add	RDI, 48
	mov	RCX, QWORD PTR [RSI]
	dec	R15D
	jne	.LBB40_14
.LBB40_15:                              # %for.end31
	call	free
.LBB40_16:                              # %if.end33
	mov	RCX, QWORD PTR [R12 + RBX + 40]
	call	free
	mov	RCX, QWORD PTR [R12 + RBX + 32]
	call	free
	lea	RSI, QWORD PTR [R12 + RBX + 104]
	mov	RCX, QWORD PTR [R12 + RBX + 104]
	test	RCX, RCX
	je	.LBB40_18
# BB#17:                                # %if.then.i
	call	free
	mov	QWORD PTR [RSI], 0
.LBB40_18:                              # %if.end.i
	lea	RDI, QWORD PTR [R12 + RBX + 120]
	mov	RCX, QWORD PTR [R12 + RBX + 120]
	test	RCX, RCX
	je	.LBB40_20
# BB#19:                                # %if.then5.i
	call	free
	mov	QWORD PTR [RDI], 0
.LBB40_20:                              # %UploadDestroyTrigger.exit
	lea	RAX, QWORD PTR [R12 + RBX + 32]
	mov	DWORD PTR [R12 + RBX + 48], 0
	mov	DWORD PTR [R12 + RBX + 56], 0
	mov	DWORD PTR [R12 + RBX + 60], 0
	lea	R15, QWORD PTR [R12 + RBX + 112]
	mov	RDX, RBX
	lea	RBX, QWORD PTR [R12 + RDX + 80]
	lea	RCX, QWORD PTR [R12 + RDX + 72]
	mov	QWORD PTR [RSP + 64], RCX # 8-byte Spill
	lea	RCX, QWORD PTR [R12 + RDX + 68]
	mov	QWORD PTR [RSP + 56], RCX # 8-byte Spill
	lea	RCX, QWORD PTR [R12 + RDX + 64]
	mov	QWORD PTR [RSP + 48], RCX # 8-byte Spill
	mov	DWORD PTR [R12 + RDX + 64], 0
	lea	RCX, QWORD PTR [R12 + RDX + 60]
	mov	QWORD PTR [RSP + 40], RCX # 8-byte Spill
	lea	RBP, QWORD PTR [R12 + RDX + 56]
	lea	R13, QWORD PTR [R12 + RDX + 48]
	xorps	XMM0, XMM0
	mov	DWORD PTR [R12 + RDX + 68], 1
	mov	DWORD PTR [R12 + RDX + 72], 0
	mov	QWORD PTR [RSI], 0
	mov	DWORD PTR [R12 + RDX + 112], 0
	movaps	XMMWORD PTR [R12 + RDX + 80], XMM0
	mov	DWORD PTR [R12 + RDX + 96], 0
	mov	QWORD PTR [RDI + 16], 0
	mov	QWORD PTR [RDI + 8], 0
	mov	QWORD PTR [RDI], 0
	mov	CL, BYTE PTR [RIP + UploadLogInfoReset.firstTime.b]
	test	CL, CL
	je	.LBB40_22
# BB#21:                                # %if.end.i60.thread
	mov	DWORD PTR [R14 + 16], 0
	mov	QWORD PTR [R14 + 8], 0
	mov	QWORD PTR [R14], 0
	mov	QWORD PTR [RAX + 8], 0
	mov	QWORD PTR [RAX], 0
	jmp	.LBB40_24
.LBB40_22:                              # %if.end.i60
	movaps	XMMWORD PTR [R12 + RDX + 128], XMM0
	movaps	XMMWORD PTR [R12 + RDX + 112], XMM0
	movaps	XMMWORD PTR [R12 + RDX + 96], XMM0
	movaps	XMMWORD PTR [R12 + RDX + 80], XMM0
	movaps	XMMWORD PTR [R12 + RDX + 64], XMM0
	movaps	XMMWORD PTR [R12 + RDX + 48], XMM0
	movaps	XMMWORD PTR [R12 + RDX + 32], XMM0
	movaps	XMMWORD PTR [R12 + RDX + 16], XMM0
	movaps	XMMWORD PTR [R12 + RDX], XMM0
	mov	BYTE PTR [RIP + UploadLogInfoReset.firstTime.b], 1
	mov	RCX, QWORD PTR [RSI]
	mov	DWORD PTR [R14 + 16], 0
	mov	QWORD PTR [R14 + 8], 0
	mov	QWORD PTR [R14], 0
	mov	QWORD PTR [RAX + 8], 0
	mov	QWORD PTR [RAX], 0
	test	RCX, RCX
	je	.LBB40_24
# BB#23:                                # %if.then.i.i
	call	free
	mov	QWORD PTR [RSI], 0
.LBB40_24:                              # %if.end.i.i
	mov	RCX, QWORD PTR [RDI]
	test	RCX, RCX
	je	.LBB40_26
# BB#25:                                # %if.then5.i.i
	call	free
	mov	QWORD PTR [RDI], 0
.LBB40_26:                              # %UploadLogInfoReset.exit
	mov	DWORD PTR [R13], 0
	mov	DWORD PTR [RBP], 0
	mov	RAX, QWORD PTR [RSP + 40] # 8-byte Reload
	mov	DWORD PTR [RAX], 0
	mov	RAX, QWORD PTR [RSP + 48] # 8-byte Reload
	mov	DWORD PTR [RAX], 0
	mov	RAX, QWORD PTR [RSP + 56] # 8-byte Reload
	mov	DWORD PTR [RAX], 1
	mov	RAX, QWORD PTR [RSP + 64] # 8-byte Reload
	mov	DWORD PTR [RAX], 0
	xorps	XMM0, XMM0
	mov	QWORD PTR [RSI], 0
	mov	DWORD PTR [R15], 0
	movaps	XMMWORD PTR [RBX], XMM0
	mov	DWORD PTR [RBX + 16], 0
	mov	QWORD PTR [RDI + 16], 0
	mov	QWORD PTR [RDI + 8], 0
	mov	QWORD PTR [RDI], 0
.LBB40_27:                              # %return
	add	RSP, 72
	pop	RBX
	pop	RBP
	pop	RDI
	pop	RSI
	pop	R12
	pop	R13
	pop	R14
	pop	R15
	ret

	.def	 UploadPrepareForFinalFlush;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadPrepareForFinalFlush
	.align	16, 0x90
UploadPrepareForFinalFlush:             # @UploadPrepareForFinalFlush
# BB#0:                                 # %entry
	movsxd	RAX, ECX
	lea	RAX, QWORD PTR [RAX + 8*RAX]
	shl	RAX, 4
	lea	RCX, QWORD PTR [RIP + uploadInfoArray]
	mov	EDX, DWORD PTR [RAX + RCX + 48]
	add	EDX, -4
	cmp	EDX, 1
	ja	.LBB41_2
# BB#1:                                 # %sw.bb
	lea	RDX, QWORD PTR [RAX + RCX + 48]
	mov	DWORD PTR [RDX], 5
	mov	DWORD PTR [RAX + RCX + 60], -1
.LBB41_2:                               # %sw.epilog
	ret

	.def	 UploadLogInfoInit;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadLogInfoInit
	.align	16, 0x90
UploadLogInfoInit:                      # @UploadLogInfoInit
# BB#0:                                 # %entry
	push	R15
	push	R14
	push	R13
	push	R12
	push	RSI
	push	RDI
	push	RBP
	push	RBX
	sub	RSP, 104
	mov	DWORD PTR [RSP + 48], R9D # 4-byte Spill
	mov	R12, R8
	mov	DWORD PTR [RSP + 84], EDX # 4-byte Spill
	mov	RBX, RCX
	movsxd	RCX, R9D
	lea	RBP, QWORD PTR [RCX + 8*RCX]
	shl	RBP, 4
	lea	RSI, QWORD PTR [RIP + uploadInfoArray]
	mov	DWORD PTR [RBP + RSI], ECX
                                        # kill: ECX<def> ECX<kill> RCX<kill>
	call	UploadLogInfoTerm
	mov	R14D, DWORD PTR [R12]
	mov	DWORD PTR [RBP + RSI + 4], R14D
	movsxd	RCX, R14D
	mov	EDX, 16
	call	calloc
	mov	R15, RAX
	mov	BYTE PTR [RSP + 55], 1  # 1-byte Folded Spill
	mov	QWORD PTR [RBP + RSI + 8], R15
	test	R15, R15
	je	.LBB42_34
# BB#1:                                 # %for.cond.preheader
	add	R12, 4
	test	R14D, R14D
	jle	.LBB42_2
# BB#3:                                 # %for.body.lr.ph
	lea	RAX, QWORD PTR [RIP + uploadInfoArray]
	lea	RCX, QWORD PTR [RBP + RAX + 8]
	mov	QWORD PTR [RSP + 64], RCX # 8-byte Spill
	lea	RAX, QWORD PTR [RBP + RAX + 4]
	mov	QWORD PTR [RSP + 56], RAX # 8-byte Spill
	mov	QWORD PTR [RSP + 40], RBP # 8-byte Spill
	movsxd	RCX, DWORD PTR [RSP + 84] # 4-byte Folded Reload
	mov	QWORD PTR [RSP + 72], RCX # 8-byte Spill
	xor	EBP, EBP
	mov	R11, RBX
	jmp	.LBB42_4
	.align	16, 0x90
.LBB42_36:                              # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB42_4 Depth=1
	mov	RAX, QWORD PTR [RSP + 64] # 8-byte Reload
	mov	R15, QWORD PTR [RAX]
.LBB42_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_8 Depth 2
                                        #       Child Loop BB42_13 Depth 3
	mov	QWORD PTR [RSP + 88], RBP # 8-byte Spill
	movsxd	RAX, DWORD PTR [R12]
	mov	RDX, QWORD PTR [R11]
	mov	RBX, R11
	mov	RAX, QWORD PTR [RDX + 8*RAX]
	mov	RSI, RBP
	shl	RSI, 4
	mov	QWORD PTR [R15 + RSI], RAX
	mov	EDI, DWORD PTR [R12 + 4]
	mov	EDX, 8
	call	calloc
	mov	RBP, RAX
	mov	QWORD PTR [R15 + RSI + 8], RBP
	test	RBP, RBP
	je	.LBB42_34
# BB#5:                                 # %for.cond.preheader.i
                                        #   in Loop: Header=BB42_4 Depth=1
	add	R12, 8
	test	EDI, EDI
	jle	.LBB42_6
# BB#7:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB42_4 Depth=1
	mov	DWORD PTR [RSP + 96], EDI # 4-byte Spill
	lea	R15, QWORD PTR [R15 + RSI + 8]
	movsxd	RSI, DWORD PTR [R12]
	mov	ECX, 1
	mov	EDX, 24
	call	calloc
	mov	QWORD PTR [RBP + 8*RSI], RAX
	mov	RAX, QWORD PTR [R15]
	mov	R14, QWORD PTR [RAX + 8*RSI]
	mov	R13D, 1
	jmp	.LBB42_8
	.align	16, 0x90
.LBB42_19:                              # %for.inc40.for.body_crit_edge.i
                                        #   in Loop: Header=BB42_8 Depth=2
	mov	RBX, R11
	movsxd	RSI, DWORD PTR [R12]
	mov	RDI, QWORD PTR [R15]
	mov	ECX, 1
	mov	EDX, 24
	call	calloc
	mov	QWORD PTR [RDI + 8*RSI], RAX
	mov	RAX, QWORD PTR [R15]
	mov	R14, QWORD PTR [RAX + 8*RSI]
	inc	R13D
.LBB42_8:                               # %for.body.lr.ph.i
                                        #   Parent Loop BB42_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB42_13 Depth 3
	test	R14, R14
	je	.LBB42_34
# BB#9:                                 # %if.end17.i
                                        #   in Loop: Header=BB42_8 Depth=2
	movsxd	RCX, DWORD PTR [R12 + 4]
	mov	DWORD PTR [R14], ECX
	mov	EDX, 16
	call	calloc
	mov	QWORD PTR [R14 + 8], RAX
	test	RAX, RAX
	je	.LBB42_34
# BB#10:                                # %for.cond30.preheader.i
                                        #   in Loop: Header=BB42_8 Depth=2
	cmp	DWORD PTR [R14], 0
	jle	.LBB42_11
# BB#12:                                # %for.body34.lr.ph.i
                                        #   in Loop: Header=BB42_8 Depth=2
	xor	EDX, EDX
	mov	ECX, 24
	mov	R11, RBX
	jmp	.LBB42_13
	.align	16, 0x90
.LBB42_16:                              # %for.body34.for.body34_crit_edge.i
                                        #   in Loop: Header=BB42_13 Depth=3
	add	RCX, 16
	mov	RAX, QWORD PTR [R14 + 8]
.LBB42_13:                              # %for.body34.i
                                        #   Parent Loop BB42_4 Depth=1
                                        #     Parent Loop BB42_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mov	R10D, DWORD PTR [R12 + RCX - 12]
	mov	R8D, DWORD PTR [R12 + RCX - 8]
	movsxd	RDI, DWORD PTR [R12 + RCX - 16]
	movsxd	RBX, DWORD PTR [R12 + RCX - 4]
	mov	RBP, QWORD PTR [R11 + 16]
	mov	RBP, QWORD PTR [RBP]
	mov	RSI, QWORD PTR [RBP + 8]
	mov	RBP, QWORD PTR [RBP + 24]
	mov	R9D, DWORD PTR [RSI + 4*RBX]
	lea	RDI, QWORD PTR [RDI + 2*RDI]
	mov	RSI, QWORD PTR [RBP + 8]
	mov	RBX, QWORD PTR [RSI + 8*RDI]
	mov	EBP, 2
	cmp	DWORD PTR [RSI + 8*RDI + 12], 0
	jne	.LBB42_15
# BB#14:                                # %select.mid
                                        #   in Loop: Header=BB42_13 Depth=3
	mov	EBP, 1
.LBB42_15:                              # %select.end
                                        #   in Loop: Header=BB42_13 Depth=3
	imul	EBP, R9D
	imul	R10D, EBP
	movsxd	RDI, R10D
	add	RBX, RDI
	mov	QWORD PTR [RAX + RCX - 24], RBX
	imul	EBP, R8D
	mov	DWORD PTR [RAX + RCX - 16], EBP
	add	DWORD PTR [R14 + 16], EBP
	inc	EDX
	cmp	EDX, DWORD PTR [R14]
	jl	.LBB42_16
# BB#17:                                # %for.inc40.i.loopexit
                                        #   in Loop: Header=BB42_8 Depth=2
	add	R12, RCX
	jmp	.LBB42_18
	.align	16, 0x90
.LBB42_11:                              #   in Loop: Header=BB42_8 Depth=2
	add	R12, 8
	mov	R11, RBX
.LBB42_18:                              # %for.inc40.i
                                        #   in Loop: Header=BB42_8 Depth=2
	cmp	R13D, DWORD PTR [RSP + 96] # 4-byte Folded Reload
	jl	.LBB42_19
# BB#20:                                # %for.inc.loopexit
                                        #   in Loop: Header=BB42_4 Depth=1
	mov	RAX, QWORD PTR [RSP + 56] # 8-byte Reload
	mov	R14D, DWORD PTR [RAX]
	jmp	.LBB42_21
	.align	16, 0x90
.LBB42_6:                               #   in Loop: Header=BB42_4 Depth=1
	mov	R11, RBX
.LBB42_21:                              # %for.inc
                                        #   in Loop: Header=BB42_4 Depth=1
	mov	RBP, QWORD PTR [RSP + 88] # 8-byte Reload
	inc	RBP
	cmp	EBP, R14D
	mov	RCX, QWORD PTR [RSP + 72] # 8-byte Reload
	jl	.LBB42_36
# BB#22:
	mov	R14D, DWORD PTR [RSP + 84] # 4-byte Reload
	mov	RBP, QWORD PTR [RSP + 40] # 8-byte Reload
	jmp	.LBB42_23
.LBB42_2:                               # %for.cond.preheader.for.end_crit_edge
	mov	R14D, DWORD PTR [RSP + 84] # 4-byte Reload
	movsxd	RCX, R14D
.LBB42_23:                              # %for.end
	mov	DWORD PTR [RSP + 84], R14D # 4-byte Spill
	mov	EDX, 48
	call	calloc
	mov	RDI, RAX
	lea	RSI, QWORD PTR [RIP + uploadInfoArray]
	mov	QWORD PTR [RBP + RSI + 16], RDI
	xor	EBX, EBX
	test	R14D, R14D
	jle	.LBB42_32
# BB#24:
	lea	R15, QWORD PTR [RBP + RSI + 16]
	mov	R13, RBP
	xor	R14D, R14D
	mov	ESI, 8
	jmp	.LBB42_25
	.align	16, 0x90
.LBB42_30:                              # %if.end32.for.body22_crit_edge
                                        #   in Loop: Header=BB42_25 Depth=1
	add	RSI, 12
	mov	RDI, QWORD PTR [R15]
.LBB42_25:                              # %for.body22
                                        # =>This Inner Loop Header: Depth=1
	movsxd	RBP, DWORD PTR [R12 + 4*RBX]
	test	RBP, RBP
	js	.LBB42_34
# BB#26:                                # %if.end.i
                                        #   in Loop: Header=BB42_25 Depth=1
	mov	DWORD PTR [RDI + 4*RSI - 32], 1
	test	EBP, EBP
	jle	.LBB42_28
# BB#27:                                # %if.then2.i
                                        #   in Loop: Header=BB42_25 Depth=1
	mov	RCX, RBP
	call	malloc
	mov	QWORD PTR [RDI + 4*RSI - 24], RAX
	test	RAX, RAX
	jne	.LBB42_29
	jmp	.LBB42_34
	.align	16, 0x90
.LBB42_28:                              # %if.else.i
                                        #   in Loop: Header=BB42_25 Depth=1
	mov	QWORD PTR [RDI + 4*RSI - 24], 0
	xor	EAX, EAX
.LBB42_29:                              # %if.end32
                                        #   in Loop: Header=BB42_25 Depth=1
	mov	DWORD PTR [RDI + 4*RSI - 28], EBP
	mov	QWORD PTR [RDI + 4*RSI - 16], RAX
	mov	QWORD PTR [RDI + 4*RSI - 8], RAX
	cmp	EBP, 1
	mov	QWORD PTR [RDI + 4*RSI], 0
	sbb	R14D, -1
	inc	RBX
	cmp	EBX, DWORD PTR [RSP + 84] # 4-byte Folded Reload
	jl	.LBB42_30
# BB#31:                                # %for.cond19.for.end37_crit_edge
	movsxd	RBX, R14D
	mov	RBP, R13
	lea	RSI, QWORD PTR [RIP + uploadInfoArray]
.LBB42_32:                              # %for.end37
	mov	DWORD PTR [RBP + RSI + 24], 0
	mov	RCX, RBX
	shl	RCX, 5
	call	malloc
	mov	QWORD PTR [RBP + RSI + 40], RAX
	test	RAX, RAX
	je	.LBB42_34
# BB#33:                                # %EXIT_POINT
	shl	RBX, 2
	mov	RCX, RBX
	call	malloc
	mov	QWORD PTR [RBP + RSI + 32], RAX
	xor	CL, CL
	test	RAX, RAX
	sete	BYTE PTR [RSP + 55]     # 1-byte Folded Spill
	jne	.LBB42_35
.LBB42_34:                              # %if.then60
	mov	ECX, DWORD PTR [RSP + 48] # 4-byte Reload
	mov	EDX, DWORD PTR [RSP + 84] # 4-byte Reload
	call	UploadLogInfoTerm
	mov	CL, BYTE PTR [RSP + 55] # 1-byte Reload
.LBB42_35:                              # %if.end61
	movzx	EAX, CL
	add	RSP, 104
	pop	RBX
	pop	RBP
	pop	RDI
	pop	RSI
	pop	R12
	pop	R13
	pop	R14
	pop	R15
	ret

	.def	 UploadInitTrigger;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadInitTrigger
	.align	16, 0x90
UploadInitTrigger:                      # @UploadInitTrigger
# BB#0:                                 # %entry
	push	R15
	push	R14
	push	R13
	push	R12
	push	RSI
	push	RDI
	push	RBP
	push	RBX
	sub	RSP, 56
	mov	R14, RDX
	mov	QWORD PTR [RSP + 48], RCX # 8-byte Spill
	mov	EAX, DWORD PTR [R14]
	movsxd	RCX, R8D
	lea	R15, QWORD PTR [RCX + 8*RCX]
	shl	R15, 4
	lea	RBP, QWORD PTR [RIP + uploadInfoArray]
	mov	DWORD PTR [R15 + RBP + 52], EAX
	mov	EAX, DWORD PTR [R14 + 4]
	mov	DWORD PTR [R15 + RBP + 56], EAX
	mov	EAX, DWORD PTR [R14 + 8]
	mov	DWORD PTR [R15 + RBP + 60], EAX
	lea	RDI, QWORD PTR [R15 + RBP + 64]
	mov	EAX, DWORD PTR [R14 + 12]
	mov	DWORD PTR [R15 + RBP + 64], EAX
	movsxd	RCX, DWORD PTR [R14 + 16]
	mov	DWORD PTR [R15 + RBP + 96], ECX
	test	RCX, RCX
	jle	.LBB43_1
# BB#2:                                 # %if.then
	mov	QWORD PTR [RSP + 40], RDI # 8-byte Spill
	shl	RCX, 4
	call	malloc
	mov	QWORD PTR [R15 + RBP + 104], RAX
	lea	R13, QWORD PTR [R15 + RBP + 104]
	test	RAX, RAX
	je	.LBB43_10
# BB#3:                                 # %for.body.lr.ph
	lea	R8, QWORD PTR [R15 + RBP + 96]
	lea	R9, QWORD PTR [R15 + RBP + 112]
	xor	ECX, ECX
	mov	EDI, 36
	jmp	.LBB43_4
	.align	16, 0x90
.LBB43_7:                               # %for.body.for.body_crit_edge
                                        #   in Loop: Header=BB43_4 Depth=1
	add	RDI, 16
	mov	RAX, QWORD PTR [R13]
.LBB43_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	mov	EDX, DWORD PTR [R14 + RDI - 12]
	mov	R10D, DWORD PTR [R14 + RDI - 8]
	movsxd	R12, DWORD PTR [R14 + RDI - 16]
	movsxd	RBX, DWORD PTR [R14 + RDI - 4]
	mov	RBP, QWORD PTR [RSP + 48] # 8-byte Reload
	mov	RBP, QWORD PTR [RBP + 16]
	mov	RSI, QWORD PTR [RBP]
	mov	RBP, QWORD PTR [RSI + 8]
	mov	RSI, QWORD PTR [RSI + 24]
	mov	R11D, DWORD PTR [RBP + 4*RBX]
	lea	RBX, QWORD PTR [R12 + 2*R12]
	mov	R12, QWORD PTR [RSI + 8]
	mov	RSI, QWORD PTR [R12 + 8*RBX]
	mov	EBP, 2
	cmp	DWORD PTR [R12 + 8*RBX + 12], 0
	jne	.LBB43_6
# BB#5:                                 # %select.mid
                                        #   in Loop: Header=BB43_4 Depth=1
	mov	EBP, 1
.LBB43_6:                               # %select.end
                                        #   in Loop: Header=BB43_4 Depth=1
	imul	EBP, R11D
	imul	EDX, EBP
	movsxd	RDX, EDX
	add	RSI, RDX
	mov	QWORD PTR [RAX + RDI - 36], RSI
	imul	EBP, R10D
	mov	DWORD PTR [RAX + RDI - 28], EBP
	add	EBP, DWORD PTR [R9]
	inc	ECX
	mov	DWORD PTR [R9], EBP
	cmp	ECX, DWORD PTR [R8]
	jl	.LBB43_7
# BB#8:                                 # %for.end
	movsxd	RCX, EBP
	call	malloc
	lea	RBP, QWORD PTR [RIP + uploadInfoArray]
	mov	QWORD PTR [R15 + RBP + 120], RAX
	test	RAX, RAX
	je	.LBB43_9
# BB#15:                                # %for.end.if.end30_crit_edge
	add	R14, RDI
	mov	RDI, QWORD PTR [RSP + 40] # 8-byte Reload
	mov	EAX, DWORD PTR [RDI]
	jmp	.LBB43_16
.LBB43_1:
	add	R14, 20
.LBB43_16:                              # %if.end30
	mov	ECX, DWORD PTR [R14]
	cmp	ECX, 2
	sete	DL
	test	ECX, ECX
	sete	BL
	or	BL, DL
	movzx	EDX, BL
	mov	DWORD PTR [R15 + RBP + 68], EDX
	dec	ECX
	cmp	ECX, 2
	sbb	ECX, ECX
	and	ECX, 1
	mov	DWORD PTR [R15 + RBP + 72], ECX
	test	EAX, EAX
	movsd	XMM0, QWORD PTR [R14 + 4]
	movsd	QWORD PTR [R15 + RBP + 80], XMM0
	js	.LBB43_17
# BB#18:                                # %if.else
	mov	DWORD PTR [R15 + RBP + 132], 0
	jmp	.LBB43_19
.LBB43_17:                              # %if.then47
	neg	EAX
	mov	DWORD PTR [R15 + RBP + 132], EAX
	mov	DWORD PTR [RDI], 0
.LBB43_19:                              # %if.else
	xor	AL, AL
	jmp	.LBB43_20
.LBB43_9:                               # %for.end.if.then57_crit_edge
	mov	RAX, QWORD PTR [R13]
.LBB43_10:                              # %if.then57
	test	RAX, RAX
	je	.LBB43_12
# BB#11:                                # %if.then.i
	mov	RCX, RAX
	call	free
	mov	QWORD PTR [R13], 0
.LBB43_12:                              # %if.end.i
	lea	RDI, QWORD PTR [R15 + RBP + 60]
	lea	RBX, QWORD PTR [R15 + RBP + 56]
	lea	RSI, QWORD PTR [R15 + RBP + 120]
	mov	RCX, QWORD PTR [R15 + RBP + 120]
	test	RCX, RCX
	je	.LBB43_14
# BB#13:                                # %if.then5.i
	call	free
	mov	QWORD PTR [RSI], 0
.LBB43_14:                              # %UploadDestroyTrigger.exit
	mov	DWORD PTR [R15 + RBP + 48], 0
	mov	DWORD PTR [RBX], 0
	mov	DWORD PTR [RDI], 0
	mov	RAX, QWORD PTR [RSP + 40] # 8-byte Reload
	mov	DWORD PTR [RAX], 0
	mov	AL, 1
	xorps	XMM0, XMM0
	mov	DWORD PTR [R15 + RBP + 68], 1
	mov	DWORD PTR [R15 + RBP + 72], 0
	mov	QWORD PTR [R13], 0
	mov	DWORD PTR [R15 + RBP + 112], 0
	movaps	XMMWORD PTR [R15 + RBP + 80], XMM0
	mov	DWORD PTR [R15 + RBP + 96], 0
	mov	QWORD PTR [RSI + 16], 0
	mov	QWORD PTR [RSI + 8], 0
	mov	QWORD PTR [RSI], 0
.LBB43_20:                              # %if.end58
	movzx	EAX, AL
	add	RSP, 56
	pop	RBX
	pop	RBP
	pop	RDI
	pop	RSI
	pop	R12
	pop	R13
	pop	R14
	pop	R15
	ret

	.def	 UploadArmTrigger;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadArmTrigger
	.align	16, 0x90
UploadArmTrigger:                       # @UploadArmTrigger
# BB#0:                                 # %entry
	mov	BYTE PTR [RIP + host_upstatus_is_uploading], 0
	movsxd	RAX, ECX
	lea	R9, QWORD PTR [RAX + 8*RAX]
	shl	R9, 4
	lea	R8, QWORD PTR [RIP + uploadInfoArray]
	mov	DWORD PTR [R9 + R8 + 92], 0
	test	EDX, EDX
	jle	.LBB44_5
# BB#1:                                 # %for.body.lr.ph
	lea	R10, QWORD PTR [R9 + R8 + 16]
	mov	EAX, 32
	.align	16, 0x90
.LBB44_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	mov	RCX, QWORD PTR [R10]
	cmp	DWORD PTR [RCX + RAX - 28], 0
	jle	.LBB44_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB44_2 Depth=1
	mov	R11, QWORD PTR [RCX + RAX - 24]
	mov	QWORD PTR [RCX + RAX - 16], R11
	mov	QWORD PTR [RCX + RAX - 8], R11
	mov	QWORD PTR [RCX + RAX], 0
	mov	DWORD PTR [RCX + RAX - 32], 1
.LBB44_4:                               # %for.inc
                                        #   in Loop: Header=BB44_2 Depth=1
	add	RAX, 48
	dec	EDX
	jne	.LBB44_2
.LBB44_5:                               # %for.end
	mov	DWORD PTR [R9 + R8 + 88], 0
	mov	DWORD PTR [R9 + R8 + 128], 0
	mov	DWORD PTR [R9 + R8 + 136], 0
	mov	DWORD PTR [R9 + R8 + 48], 2
	ret

	.def	 UploadEndLoggingSession;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadEndLoggingSession
	.align	16, 0x90
UploadEndLoggingSession:                # @UploadEndLoggingSession
# BB#0:                                 # %entry
	movsxd	RCX, ECX
	lea	R8, QWORD PTR [RCX + 8*RCX]
	shl	R8, 4
	lea	RAX, QWORD PTR [RIP + uploadInfoArray]
	mov	DWORD PTR [R8 + RAX + 48], 0
                                        # kill: ECX<def> ECX<kill> RCX<kill>
	jmp	UploadLogInfoTerm       # TAILCALL

	.def	 UploadCancelLogging;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadCancelLogging
	.align	16, 0x90
UploadCancelLogging:                    # @UploadCancelLogging
# BB#0:                                 # %entry
	movsxd	RAX, ECX
	lea	RAX, QWORD PTR [RAX + 8*RAX]
	shl	RAX, 4
	lea	RCX, QWORD PTR [RIP + uploadInfoArray]
	mov	EDX, DWORD PTR [RAX + RCX + 48]
	cmp	EDX, 5
	je	.LBB46_3
# BB#1:                                 # %entry
	dec	EDX
	cmp	EDX, 3
	ja	.LBB46_4
# BB#2:                                 # %sw.bb
	lea	RDX, QWORD PTR [RAX + RCX + 48]
	mov	DWORD PTR [RAX + RCX + 60], -1
	mov	DWORD PTR [RDX], 5
	ret
.LBB46_3:                               # %sw.bb4
	mov	DWORD PTR [RAX + RCX + 60], -1
.LBB46_4:                               # %sw.epilog
	ret

	.def	 UploadBufDataSent;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadBufDataSent
	.align	16, 0x90
UploadBufDataSent:                      # @UploadBufDataSent
# BB#0:                                 # %entry
	movsxd	RAX, EDX
	lea	RAX, QWORD PTR [RAX + 8*RAX]
	shl	RAX, 4
	lea	RDX, QWORD PTR [RIP + uploadInfoArray]
	mov	RAX, QWORD PTR [RAX + RDX + 16]
	mov	BYTE PTR [RIP + host_upstatus_is_uploading], 1
	movsxd	RCX, ECX
	lea	RCX, QWORD PTR [RCX + 2*RCX]
	shl	RCX, 4
	mov	RDX, QWORD PTR [RAX + RCX + 32]
	mov	QWORD PTR [RAX + RCX + 24], RDX
	cmp	RDX, QWORD PTR [RAX + RCX + 16]
	sete	DL
	movzx	EDX, DL
	mov	DWORD PTR [RAX + RCX], EDX
	ret

	.def	 UploadBufAddTimePoint;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadBufAddTimePoint
	.align	16, 0x90
UploadBufAddTimePoint:                  # @UploadBufAddTimePoint
# BB#0:                                 # %entry
	push	R15
	push	R14
	push	R13
	push	R12
	push	RSI
	push	RDI
	push	RBP
	push	RBX
	sub	RSP, 216
	mov	DWORD PTR [RSP + 136], R8D # 4-byte Spill
	mov	DWORD PTR [RSP + 76], ECX # 4-byte Spill
	movsd	QWORD PTR [RSP + 208], XMM1
	movsxd	RAX, R8D
	lea	RDX, QWORD PTR [RAX + 8*RAX]
	shl	RDX, 4
	lea	RBX, QWORD PTR [RIP + uploadInfoArray]
	mov	R10, QWORD PTR [RDX + RBX + 16]
	movsxd	RAX, ECX
	mov	QWORD PTR [RSP + 120], RAX # 8-byte Spill
	lea	RSI, QWORD PTR [RAX + 2*RAX]
	shl	RSI, 4
	lea	RAX, QWORD PTR [RDX + RBX + 48]
	mov	QWORD PTR [RSP + 80], RAX # 8-byte Spill
	lea	RAX, QWORD PTR [R10 + RSI]
	mov	QWORD PTR [RSP + 152], RAX # 8-byte Spill
	mov	EAX, DWORD PTR [RDX + RBX + 48]
	xor	CL, CL
	cmp	EAX, 2
	jne	.LBB48_35
# BB#1:                                 # %if.then
	mov	EAX, DWORD PTR [RDX + RBX + 96]
	test	EAX, EAX
	je	.LBB48_2
# BB#3:                                 # %if.else
	mov	ECX, DWORD PTR [RSP + 76] # 4-byte Reload
	cmp	DWORD PTR [RDX + RBX + 52], ECX
	jne	.LBB48_7
# BB#4:                                 # %land.lhs.true
	test	EAX, EAX
	jle	.LBB48_5
# BB#8:                                 # %for.body.lr.ph.i
	mov	QWORD PTR [RSP + 112], RSI # 8-byte Spill
	mov	QWORD PTR [RSP + 160], R10 # 8-byte Spill
	lea	RAX, QWORD PTR [RDX + RBX + 96]
	mov	QWORD PTR [RSP + 168], RAX # 8-byte Spill
	lea	RSI, QWORD PTR [RDX + RBX + 72]
	mov	RAX, RBX
	lea	RBX, QWORD PTR [RDX + RAX + 68]
	lea	R12, QWORD PTR [RDX + RAX + 80]
	lea	RBP, QWORD PTR [RDX + RAX + 128]
	lea	R15, QWORD PTR [RDX + RAX + 104]
	mov	RDI, QWORD PTR [RDX + RAX + 120]
	mov	QWORD PTR [RSP + 96], RDX # 8-byte Spill
	xor	R14D, R14D
	.align	16, 0x90
.LBB48_9:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_20 Depth 2
                                        #     Child Loop BB48_15 Depth 2
                                        #     Child Loop BB48_14 Depth 2
	mov	RCX, R14
	shl	RCX, 4
	mov	RDX, QWORD PTR [R15]
	lea	RAX, QWORD PTR [RDX + RCX]
	movsxd	R8, DWORD PTR [RDX + RCX + 8]
	mov	R13, R8
	shr	R13, 3
	cmp	DWORD PTR [RBP], 0
	jne	.LBB48_11
# BB#10:                                # %for.body.if.end55_crit_edge.i
                                        #   in Loop: Header=BB48_9 Depth=1
	mov	RDX, QWORD PTR [RAX]
	jmp	.LBB48_30
	.align	16, 0x90
.LBB48_11:                              # %if.then.i
                                        #   in Loop: Header=BB48_9 Depth=1
	mov	RDX, QWORD PTR [RAX]
	test	R13D, R13D
	jle	.LBB48_30
# BB#12:                                # %for.body11.lr.ph.i
                                        #   in Loop: Header=BB48_9 Depth=1
	movsd	XMM0, QWORD PTR [R12]
	xor	EAX, EAX
	cmp	DWORD PTR [RBX], 0
	jne	.LBB48_20
# BB#13:                                # %if.end.us.i.preheader
                                        #   in Loop: Header=BB48_9 Depth=1
	xor	EAX, EAX
	xor	ECX, ECX
	cmp	DWORD PTR [RSI], 0
	jne	.LBB48_15
	.align	16, 0x90
.LBB48_14:                              # %for.inc.us.i.us
                                        #   Parent Loop BB48_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	inc	ECX
	cmp	ECX, R13D
	jl	.LBB48_14
	jmp	.LBB48_30
	.align	16, 0x90
.LBB48_20:                              # %land.lhs.true.i
                                        #   Parent Loop BB48_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	XMM1, QWORD PTR [RDX + 8*RAX]
	ucomisd	XMM1, XMM0
	jb	.LBB48_22
# BB#21:                                # %land.lhs.true17.i
                                        #   in Loop: Header=BB48_20 Depth=2
	ucomisd	XMM0, QWORD PTR [RDI + 8*RAX]
	ja	.LBB48_32
.LBB48_22:                              # %lor.lhs.false.i
                                        #   in Loop: Header=BB48_20 Depth=2
	ucomisd	XMM1, XMM0
	jbe	.LBB48_24
# BB#23:                                # %land.lhs.true26.i
                                        #   in Loop: Header=BB48_20 Depth=2
	movsd	XMM2, QWORD PTR [RDI + 8*RAX]
	ucomisd	XMM2, XMM0
	jne	.LBB48_24
	jnp	.LBB48_32
.LBB48_24:                              # %if.end.i
                                        #   in Loop: Header=BB48_20 Depth=2
	cmp	DWORD PTR [RSI], 0
	je	.LBB48_29
# BB#25:                                # %land.lhs.true33.i
                                        #   in Loop: Header=BB48_20 Depth=2
	ucomisd	XMM0, XMM1
	jbe	.LBB48_27
# BB#26:                                # %land.lhs.true38.i
                                        #   in Loop: Header=BB48_20 Depth=2
	movsd	XMM2, QWORD PTR [RDI + 8*RAX]
	ucomisd	XMM2, XMM0
	jae	.LBB48_32
.LBB48_27:                              # %lor.lhs.false43.i
                                        #   in Loop: Header=BB48_20 Depth=2
	ucomisd	XMM1, XMM0
	jne	.LBB48_29
	jp	.LBB48_29
# BB#28:                                # %land.lhs.true48.i
                                        #   in Loop: Header=BB48_20 Depth=2
	movsd	XMM1, QWORD PTR [RDI + 8*RAX]
	ucomisd	XMM1, XMM0
	ja	.LBB48_32
.LBB48_29:                              # %for.inc.i
                                        #   in Loop: Header=BB48_20 Depth=2
	inc	RAX
	cmp	EAX, R13D
	jl	.LBB48_20
	jmp	.LBB48_30
	.align	16, 0x90
.LBB48_15:                              # %land.lhs.true33.us.i
                                        #   Parent Loop BB48_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	XMM1, QWORD PTR [RDX + 8*RAX]
	ucomisd	XMM0, XMM1
	jbe	.LBB48_17
# BB#16:                                # %land.lhs.true38.us.i
                                        #   in Loop: Header=BB48_15 Depth=2
	movsd	XMM2, QWORD PTR [RDI + 8*RAX]
	ucomisd	XMM2, XMM0
	jae	.LBB48_32
.LBB48_17:                              # %lor.lhs.false43.us.i
                                        #   in Loop: Header=BB48_15 Depth=2
	ucomisd	XMM1, XMM0
	jne	.LBB48_19
	jp	.LBB48_19
# BB#18:                                # %land.lhs.true48.us.i
                                        #   in Loop: Header=BB48_15 Depth=2
	movsd	XMM1, QWORD PTR [RDI + 8*RAX]
	ucomisd	XMM1, XMM0
	ja	.LBB48_32
.LBB48_19:                              # %for.inc.us.i
                                        #   in Loop: Header=BB48_15 Depth=2
	inc	RAX
	cmp	EAX, R13D
	jl	.LBB48_15
	.align	16, 0x90
.LBB48_30:                              # %if.end55.i
                                        #   in Loop: Header=BB48_9 Depth=1
	mov	RCX, RDI
	call	memcpy
	movsxd	RAX, R13D
	lea	RDI, QWORD PTR [RDI + 8*RAX]
	inc	R14
	mov	RAX, QWORD PTR [RSP + 168] # 8-byte Reload
	cmp	R14D, DWORD PTR [RAX]
	jl	.LBB48_9
# BB#31:
	mov	RDX, QWORD PTR [RSP + 96] # 8-byte Reload
	lea	RBX, QWORD PTR [RIP + uploadInfoArray]
	mov	R10, QWORD PTR [RSP + 160] # 8-byte Reload
	mov	RSI, QWORD PTR [RSP + 112] # 8-byte Reload
	jmp	.LBB48_6
.LBB48_2:                               # %land.end.thread
	mov	RAX, QWORD PTR [RSP + 80] # 8-byte Reload
	mov	DWORD PTR [RAX], 4
	xor	CL, CL
	jmp	.LBB48_37
.LBB48_32:                              # %if.then9
	mov	RDX, QWORD PTR [RSP + 96] # 8-byte Reload
	lea	RBX, QWORD PTR [RIP + uploadInfoArray]
	cmp	DWORD PTR [RDX + RBX + 64], 0
	je	.LBB48_33
# BB#34:                                # %if.else16
	mov	RAX, QWORD PTR [RSP + 80] # 8-byte Reload
	mov	DWORD PTR [RAX], 3
	mov	DWORD PTR [RDX + RBX + 88], 1
	mov	EAX, 3
	xor	CL, CL
	mov	R10, QWORD PTR [RSP + 160] # 8-byte Reload
	mov	RSI, QWORD PTR [RSP + 112] # 8-byte Reload
	jmp	.LBB48_35
.LBB48_5:                               # %entry.for.end61_crit_edge.i
	lea	RBP, QWORD PTR [RDX + RBX + 128]
.LBB48_6:                               # %if.end21
	mov	DWORD PTR [RBP], 1
	mov	RAX, QWORD PTR [RSP + 80] # 8-byte Reload
	mov	EAX, DWORD PTR [RAX]
	cmp	EAX, 2
	mov	CL, 0
	jne	.LBB48_35
.LBB48_7:                               # %land.rhs
	cmp	DWORD PTR [RDX + RBX + 132], 0
	setg	CL
	mov	EAX, 2
.LBB48_35:                              # %land.end
	cmp	EAX, 4
	je	.LBB48_37
# BB#36:                                # %land.end
	cmp	CL, 1
	jne	.LBB48_96
	jmp	.LBB48_37
.LBB48_33:                              # %land.end.thread603
	mov	RAX, QWORD PTR [RSP + 80] # 8-byte Reload
	mov	DWORD PTR [RAX], 4
	mov	EAX, DWORD PTR [RDX + RBX + 136]
	mov	DWORD PTR [RDX + RBX + 88], EAX
	xor	CL, CL
	mov	R10, QWORD PTR [RSP + 160] # 8-byte Reload
	mov	RSI, QWORD PTR [RSP + 112] # 8-byte Reload
.LBB48_37:                              # %land.lhs.true32
	movsxd	R9, DWORD PTR [R10 + RSI + 4]
	test	R9, R9
	je	.LBB48_96
# BB#38:                                # %if.then35
	lea	RAX, QWORD PTR [R10 + RSI + 4]
	mov	QWORD PTR [RSP + 144], RAX # 8-byte Spill
	mov	RAX, QWORD PTR [R10 + RSI + 16]
	mov	QWORD PTR [RSP + 88], RAX # 8-byte Spill
	xorpd	XMM0, XMM0
	movapd	XMMWORD PTR [RSP + 176], XMM0
	mov	EAX, DWORD PTR [RSP + 136] # 4-byte Reload
	mov	DWORD PTR [RSP + 192], EAX
	cmp	CL, 1
	mov	BYTE PTR [RSP + 75], CL # 1-byte Spill
	jne	.LBB48_43
# BB#39:                                # %land.lhs.true38
	mov	EAX, DWORD PTR [RDX + RBX + 136]
	cmp	EAX, DWORD PTR [RDX + RBX + 132]
	jne	.LBB48_43
# BB#40:                                # %if.then45
	lea	R8, QWORD PTR [RDX + RBX + 136]
	mov	RBX, QWORD PTR [R10 + RSI + 8]
	mov	RDI, QWORD PTR [R10 + RSI + 24]
	mov	EBP, DWORD PTR [RDI + 4]
	add	EBP, 8
	movsxd	RBP, EBP
	add	RBP, RDI
	add	R9, RBX
	mov	RDI, RBP
	sub	RDI, R9
	lea	RCX, QWORD PTR [R10 + RSI + 24]
	test	EDI, EDI
	js	.LBB48_42
# BB#41:                                # %if.then57
	movsxd	RBP, EDI
	add	RBX, RBP
	mov	RBP, RBX
.LBB48_42:                              # %if.end62
	mov	QWORD PTR [RCX], RBP
	dec	EAX
	mov	DWORD PTR [R8], EAX
	mov	RAX, QWORD PTR [RSP + 144] # 8-byte Reload
	mov	R9D, DWORD PTR [RAX]
.LBB48_43:                              # %if.end65
	mov	QWORD PTR [RSP + 96], RDX # 8-byte Spill
	lea	RAX, QWORD PTR [R10 + RSI + 16]
	mov	QWORD PTR [RSP + 64], RAX # 8-byte Spill
	lea	RAX, QWORD PTR [R10 + RSI + 24]
	mov	QWORD PTR [RSP + 136], RAX # 8-byte Spill
	lea	RAX, QWORD PTR [R10 + RSI + 8]
	mov	QWORD PTR [RSP + 128], RAX # 8-byte Spill
	mov	RBX, QWORD PTR [R10 + RSI + 8]
	mov	RAX, QWORD PTR [R10 + RSI + 24]
	movsxd	RBP, R9D
	add	RBP, RBX
	cmp	QWORD PTR [RSP + 88], RAX # 8-byte Folded Reload
	ja	.LBB48_45
# BB#44:                                # %lor.lhs.false.i406
	mov	RCX, QWORD PTR [RSP + 152] # 8-byte Reload
	cmp	DWORD PTR [RCX], 0
	je	.LBB48_49
.LBB48_45:                              # %if.then.i416
	mov	ECX, EAX
	sub	ECX, EBX
	mov	RDX, RBP
	sub	RDX, QWORD PTR [RSP + 88] # 8-byte Folded Reload
	mov	EDI, EDX
	add	EDI, ECX
	cmp	EDI, 20
	jl	.LBB48_94
# BB#46:                                # %if.end.i419
	mov	RCX, QWORD PTR [RSP + 88] # 8-byte Reload
	lea	RCX, QWORD PTR [RCX + 20]
	cmp	RCX, RBP
	jae	.LBB48_48
# BB#47:
	xor	EDI, EDI
	mov	EDX, 20
	xor	ESI, ESI
	jmp	.LBB48_51
.LBB48_48:                              # %if.else.i432
	mov	ECX, 20
	sub	ECX, EDX
	xor	EDI, EDI
	test	ECX, ECX
	cmovg	RDI, RBX
	movsxd	RSI, ECX
	lea	RCX, QWORD PTR [RBX + RSI]
	movsxd	RDX, EDX
	jmp	.LBB48_51
.LBB48_49:                              # %if.else34.i444
	mov	ECX, EAX
	mov	RDX, QWORD PTR [RSP + 88] # 8-byte Reload
	sub	ECX, EDX
	cmp	ECX, 20
	jl	.LBB48_94
# BB#50:                                # %if.end43.i450
	mov	RCX, QWORD PTR [RSP + 88] # 8-byte Reload
	lea	RCX, QWORD PTR [RCX + 20]
	mov	EDX, 20
	xor	EDI, EDI
	mov	RSI, RDI
.LBB48_51:                              # %if.end70
	mov	QWORD PTR [RSP + 40], RDX # 8-byte Spill
	mov	QWORD PTR [RSP + 48], RSI # 8-byte Spill
	mov	QWORD PTR [RSP + 56], RDI # 8-byte Spill
	mov	DWORD PTR [RSP + 180], 12
	cmp	RCX, RAX
	ja	.LBB48_53
# BB#52:                                # %lor.lhs.false.i351
	mov	RDX, QWORD PTR [RSP + 152] # 8-byte Reload
	cmp	DWORD PTR [RDX], 0
	je	.LBB48_57
.LBB48_53:                              # %if.then.i361
	sub	EAX, EBX
	mov	RDX, RBP
	sub	RDX, RCX
	mov	EDI, EDX
	add	EDI, EAX
	cmp	EDI, 8
	jl	.LBB48_94
# BB#54:                                # %if.end.i364
	lea	RSI, QWORD PTR [RCX + 8]
	cmp	RSI, RBP
	jb	.LBB48_59
# BB#55:                                # %if.else.i377
	mov	DWORD PTR [RSP + 180], 20
	movsxd	RDI, EDX
	lea	RDX, QWORD PTR [RSP + 208]
	mov	R8, RDI
	call	memcpy
	mov	EAX, 8
	sub	EAX, EDI
	movsxd	R8, EAX
	xor	ECX, ECX
	test	R8D, R8D
	cmovg	RCX, RBX
	lea	RSI, QWORD PTR [RBX + R8]
	test	RCX, RCX
	je	.LBB48_60
# BB#56:                                # %if.then87
	lea	RDX, QWORD PTR [RSP + RDI + 208]
	call	memcpy
	jmp	.LBB48_60
.LBB48_57:                              # %if.else34.i389
	sub	EAX, ECX
	cmp	EAX, 8
	jl	.LBB48_94
# BB#58:                                # %if.end43.i395
	lea	RSI, QWORD PTR [RCX + 8]
.LBB48_59:                              # %if.end79.thread
	mov	DWORD PTR [RSP + 180], 20
	mov	RAX, QWORD PTR [RSP + 208]
	mov	QWORD PTR [RCX], RAX
.LBB48_60:                              # %if.then87
	lea	RDX, QWORD PTR [RIP + uploadInfoArray]
	mov	DWORD PTR [RSP + 204], 0
	mov	RCX, QWORD PTR [RSP + 96] # 8-byte Reload
	mov	EAX, DWORD PTR [RCX + RDX + 4]
	test	EAX, EAX
	jle	.LBB48_89
# BB#61:                                # %for.body.lr.ph
	lea	RBP, QWORD PTR [RCX + RDX + 4]
	mov	QWORD PTR [RSP + 112], RBP # 8-byte Spill
	lea	RCX, QWORD PTR [RCX + RDX + 8]
	mov	QWORD PTR [RSP + 104], RCX # 8-byte Spill
	xor	ECX, ECX
	.align	16, 0x90
.LBB48_62:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_77 Depth 2
	mov	RDX, QWORD PTR [RSP + 104] # 8-byte Reload
	mov	RDX, QWORD PTR [RDX]
	movsxd	RBP, ECX
	shl	RBP, 4
	mov	RBX, QWORD PTR [RDX + RBP]
	mov	BL, BYTE PTR [RBX]
	test	BL, BL
	je	.LBB48_88
# BB#63:                                # %for.body
                                        #   in Loop: Header=BB48_62 Depth=1
	cmp	BL, 3
	je	.LBB48_88
# BB#64:                                # %if.then107
                                        #   in Loop: Header=BB48_62 Depth=1
	mov	RDX, QWORD PTR [RDX + RBP + 8]
	mov	RBP, QWORD PTR [RSP + 120] # 8-byte Reload
	mov	RDI, QWORD PTR [RDX + 8*RBP]
	test	RDI, RDI
	je	.LBB48_88
# BB#65:                                # %if.then113
                                        #   in Loop: Header=BB48_62 Depth=1
	inc	DWORD PTR [RSP + 184]
	mov	RAX, QWORD PTR [RSP + 144] # 8-byte Reload
	movsxd	RAX, DWORD PTR [RAX]
	mov	RCX, QWORD PTR [RSP + 128] # 8-byte Reload
	mov	RBP, QWORD PTR [RCX]
	mov	RCX, QWORD PTR [RSP + 136] # 8-byte Reload
	mov	RCX, QWORD PTR [RCX]
	cmp	RSI, RCX
	ja	.LBB48_67
# BB#66:                                # %lor.lhs.false.i296
                                        #   in Loop: Header=BB48_62 Depth=1
	mov	RDX, QWORD PTR [RSP + 152] # 8-byte Reload
	cmp	DWORD PTR [RDX], 0
	jne	.LBB48_67
# BB#71:                                # %if.else34.i334
                                        #   in Loop: Header=BB48_62 Depth=1
	sub	ECX, ESI
	cmp	ECX, 4
	jl	.LBB48_94
# BB#72:                                # %if.end43.i340
                                        #   in Loop: Header=BB48_62 Depth=1
	lea	R13, QWORD PTR [RSI + 4]
	jmp	.LBB48_73
.LBB48_67:                              # %if.then.i306
                                        #   in Loop: Header=BB48_62 Depth=1
	add	RAX, RBP
	sub	ECX, EBP
	mov	RDX, RAX
	sub	RDX, RSI
	mov	EBX, EDX
	add	EBX, ECX
	cmp	EBX, 4
	jl	.LBB48_94
# BB#68:                                # %if.end.i309
                                        #   in Loop: Header=BB48_62 Depth=1
	lea	R13, QWORD PTR [RSI + 4]
	cmp	R13, RAX
	jae	.LBB48_69
.LBB48_73:                              # %if.end120.thread
                                        #   in Loop: Header=BB48_62 Depth=1
	add	DWORD PTR [RSP + 180], 4
	mov	EAX, DWORD PTR [RSP + 204]
	mov	DWORD PTR [RSI], EAX
	jmp	.LBB48_74
.LBB48_69:                              # %if.else.i322
                                        #   in Loop: Header=BB48_62 Depth=1
	add	DWORD PTR [RSP + 180], 4
	movsxd	RBX, EDX
	mov	RCX, RSI
	lea	RDX, QWORD PTR [RSP + 204]
	mov	R8, RBX
	call	memcpy
	mov	EAX, 4
	sub	EAX, EBX
	movsxd	R8, EAX
	test	R8D, R8D
	mov	ECX, 0
	cmovg	RCX, RBP
	lea	R13, QWORD PTR [RBP + R8]
	test	RCX, RCX
	je	.LBB48_74
# BB#70:                                # %if.then129
                                        #   in Loop: Header=BB48_62 Depth=1
	lea	RDX, QWORD PTR [RSP + RBX + 204]
	call	memcpy
.LBB48_74:                              # %if.then129
                                        #   in Loop: Header=BB48_62 Depth=1
	mov	RAX, RDI
	cmp	DWORD PTR [RAX], 0
	jle	.LBB48_75
# BB#76:                                # %for.body143.lr.ph
                                        #   in Loop: Header=BB48_62 Depth=1
	xor	ECX, ECX
	mov	R12D, 8
	.align	16, 0x90
.LBB48_77:                              # %for.body143
                                        #   Parent Loop BB48_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	DWORD PTR [RSP + 160], ECX # 4-byte Spill
	mov	QWORD PTR [RSP + 168], RAX # 8-byte Spill
	mov	R8, QWORD PTR [RAX + 8]
	mov	RAX, QWORD PTR [RSP + 144] # 8-byte Reload
	movsxd	RBX, DWORD PTR [RAX]
	mov	RAX, QWORD PTR [RSP + 128] # 8-byte Reload
	mov	RDI, QWORD PTR [RAX]
	mov	EBP, DWORD PTR [R8 + R12]
	movsxd	RCX, EBP
	mov	RAX, QWORD PTR [RSP + 136] # 8-byte Reload
	mov	RSI, QWORD PTR [RAX]
	cmp	R13, RSI
	ja	.LBB48_79
# BB#78:                                # %lor.lhs.false.i284
                                        #   in Loop: Header=BB48_77 Depth=2
	mov	RAX, QWORD PTR [RSP + 152] # 8-byte Reload
	cmp	DWORD PTR [RAX], 0
	jne	.LBB48_79
# BB#82:                                # %if.else34.i
                                        #   in Loop: Header=BB48_77 Depth=2
	sub	ESI, R13D
	cmp	ESI, EBP
	jl	.LBB48_94
# BB#83:                                # %if.end43.i
                                        #   in Loop: Header=BB48_77 Depth=2
	add	RCX, R13
	xor	R14D, R14D
	mov	R15, R14
	mov	EAX, EBP
	jmp	.LBB48_84
	.align	16, 0x90
.LBB48_79:                              # %if.then.i286
                                        #   in Loop: Header=BB48_77 Depth=2
	add	RBX, RDI
	sub	ESI, EDI
	mov	RDX, RBX
	sub	RDX, R13
	mov	EAX, EDX
	add	EAX, ESI
	cmp	EAX, EBP
	jl	.LBB48_94
# BB#80:                                # %if.end.i287
                                        #   in Loop: Header=BB48_77 Depth=2
	add	RCX, R13
	xor	R14D, R14D
	cmp	RCX, RBX
	mov	R15D, 0
	mov	EAX, EBP
	jb	.LBB48_84
# BB#81:                                # %if.else.i
                                        #   in Loop: Header=BB48_77 Depth=2
	mov	EAX, EBP
	sub	EAX, EDX
	test	EAX, EAX
	mov	R14D, 0
	cmovg	R14, RDI
	movsxd	R15, EAX
	add	RDI, R15
	mov	EAX, EDX
	mov	RCX, RDI
.LBB48_84:                              # %if.end151
                                        #   in Loop: Header=BB48_77 Depth=2
	mov	RSI, RCX
	add	DWORD PTR [RSP + 180], EBP
	mov	RDX, QWORD PTR [R8 + R12 - 8]
	movsxd	RBX, EAX
	mov	RCX, R13
	mov	RDI, R8
	mov	R8, RBX
	call	memcpy
	test	R14, R14
	je	.LBB48_86
# BB#85:                                # %if.then161
                                        #   in Loop: Header=BB48_77 Depth=2
	add	RBX, QWORD PTR [RDI + R12 - 8]
	mov	RCX, R14
	mov	RDX, RBX
	mov	R8, R15
	call	memcpy
.LBB48_86:                              # %for.inc
                                        #   in Loop: Header=BB48_77 Depth=2
	add	R12, 16
	mov	ECX, DWORD PTR [RSP + 160] # 4-byte Reload
	inc	ECX
	mov	RAX, QWORD PTR [RSP + 168] # 8-byte Reload
	cmp	ECX, DWORD PTR [RAX]
	mov	R13, RSI
	jl	.LBB48_77
	jmp	.LBB48_87
.LBB48_75:                              #   in Loop: Header=BB48_62 Depth=1
	mov	RSI, R13
.LBB48_87:                              # %for.inc175.loopexit
                                        #   in Loop: Header=BB48_62 Depth=1
	mov	RAX, QWORD PTR [RSP + 112] # 8-byte Reload
	mov	EAX, DWORD PTR [RAX]
	mov	ECX, DWORD PTR [RSP + 204]
	.align	16, 0x90
.LBB48_88:                              # %for.inc175
                                        #   in Loop: Header=BB48_62 Depth=1
	inc	ECX
	mov	DWORD PTR [RSP + 204], ECX
	cmp	ECX, EAX
	jl	.LBB48_62
.LBB48_89:                              # %for.end177
	mov	R14, RSI
	cmp	DWORD PTR [RSP + 184], 0
	mov	RAX, QWORD PTR [RSP + 96] # 8-byte Reload
	lea	RDI, QWORD PTR [RIP + uploadInfoArray]
	mov	BL, BYTE PTR [RSP + 75] # 1-byte Reload
	je	.LBB48_96
# BB#90:                                # %if.end182
	mov	RSI, RAX
	mov	DWORD PTR [RSP + 176], 26
	mov	EAX, DWORD PTR [RSP + 76] # 4-byte Reload
	mov	DWORD PTR [RSP + 188], EAX
	lea	RDX, QWORD PTR [RSP + 176]
	mov	RCX, QWORD PTR [RSP + 88] # 8-byte Reload
	mov	RBP, QWORD PTR [RSP + 40] # 8-byte Reload
	mov	R8, RBP
	call	memcpy
	mov	RCX, QWORD PTR [RSP + 56] # 8-byte Reload
	test	RCX, RCX
	je	.LBB48_92
# BB#91:                                # %if.then191
	lea	RDX, QWORD PTR [RSP + RBP + 176]
	mov	R8, QWORD PTR [RSP + 48] # 8-byte Reload
	call	memcpy
.LBB48_92:                              # %if.end200
	mov	RAX, QWORD PTR [RSP + 64] # 8-byte Reload
	mov	QWORD PTR [RAX], R14
	mov	RAX, QWORD PTR [RSP + 152] # 8-byte Reload
	mov	DWORD PTR [RAX], 0
	cmp	BL, 1
	jne	.LBB48_96
# BB#93:                                # %if.then203
	inc	DWORD PTR [RSI + RDI + 136]
	jmp	.LBB48_96
.LBB48_94:                              # %EXIT_POINT
	cmp	BYTE PTR [RSP + 75], 0  # 1-byte Folded Reload
	mov	RAX, QWORD PTR [RSP + 96] # 8-byte Reload
	lea	RCX, QWORD PTR [RIP + uploadInfoArray]
	jne	.LBB48_96
# BB#95:                                # %if.then212
	mov	DWORD PTR [RAX + RCX + 92], 1
	mov	RAX, QWORD PTR [RSP + 80] # 8-byte Reload
	mov	DWORD PTR [RAX], 5
.LBB48_96:                              # %if.end216
	add	RSP, 216
	pop	RBX
	pop	RBP
	pop	RDI
	pop	RSI
	pop	R12
	pop	R13
	pop	R14
	pop	R15
	ret

	.def	 UploadCheckTrigger;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadCheckTrigger
	.align	16, 0x90
UploadCheckTrigger:                     # @UploadCheckTrigger
# BB#0:                                 # %entry
	push	RSI
	movsxd	RAX, ECX
	lea	R10, QWORD PTR [RAX + 8*RAX]
	shl	R10, 4
	lea	R9, QWORD PTR [RIP + uploadInfoArray]
	lea	R8, QWORD PTR [R10 + R9 + 48]
	mov	EAX, DWORD PTR [R10 + R9 + 48]
	cmp	EAX, 3
	jne	.LBB49_1
# BB#9:                                 # %if.then11
	mov	EAX, DWORD PTR [R10 + R9 + 88]
	lea	ECX, DWORD PTR [RAX + 1]
	mov	DWORD PTR [R10 + R9 + 88], ECX
	cmp	EAX, DWORD PTR [R10 + R9 + 64]
	jl	.LBB49_12
# BB#10:                                # %if.then15
	lea	RAX, QWORD PTR [R10 + R9 + 88]
	mov	ECX, DWORD PTR [R10 + R9 + 136]
	mov	DWORD PTR [RAX], ECX
	mov	DWORD PTR [R8], 4
	cmp	DWORD PTR [R10 + R9 + 132], 0
	jle	.LBB49_12
# BB#11:                                # %if.then21
	mov	DWORD PTR [R10 + R9 + 140], 1
	jmp	.LBB49_12
.LBB49_1:                               # %entry
	cmp	EAX, 1
	jne	.LBB49_12
# BB#2:                                 # %if.then4
	mov	EAX, DWORD PTR [R10 + R9 + 88]
	lea	ECX, DWORD PTR [RAX + 1]
	mov	DWORD PTR [R10 + R9 + 88], ECX
	cmp	EAX, DWORD PTR [R10 + R9 + 60]
	jne	.LBB49_12
# BB#3:                                 # %if.then6
	mov	BYTE PTR [RIP + host_upstatus_is_uploading], 0
	mov	DWORD PTR [R10 + R9 + 92], 0
	test	EDX, EDX
	jle	.LBB49_8
# BB#4:                                 # %for.body.lr.ph.i
	lea	R11, QWORD PTR [R10 + R9 + 16]
	mov	EAX, 32
	.align	16, 0x90
.LBB49_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	mov	RCX, QWORD PTR [R11]
	cmp	DWORD PTR [RCX + RAX - 28], 0
	jle	.LBB49_7
# BB#6:                                 # %if.then.i
                                        #   in Loop: Header=BB49_5 Depth=1
	mov	RSI, QWORD PTR [RCX + RAX - 24]
	mov	QWORD PTR [RCX + RAX - 16], RSI
	mov	QWORD PTR [RCX + RAX - 8], RSI
	mov	QWORD PTR [RCX + RAX], 0
	mov	DWORD PTR [RCX + RAX - 32], 1
.LBB49_7:                               # %for.inc.i
                                        #   in Loop: Header=BB49_5 Depth=1
	add	RAX, 48
	dec	EDX
	jne	.LBB49_5
.LBB49_8:                               # %if.end8.thread
	lea	RAX, QWORD PTR [R10 + R9 + 88]
	mov	DWORD PTR [RAX], 0
	mov	DWORD PTR [R10 + R9 + 128], 0
	mov	DWORD PTR [R10 + R9 + 136], 0
	mov	DWORD PTR [R8], 2
	pop	RSI
	ret
.LBB49_12:                              # %if.end25
	pop	RSI
	ret

	.def	 UploadCheckEndTrigger;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadCheckEndTrigger
	.align	16, 0x90
UploadCheckEndTrigger:                  # @UploadCheckEndTrigger
# BB#0:                                 # %entry
	movsxd	RAX, ECX
	lea	RAX, QWORD PTR [RAX + 8*RAX]
	shl	RAX, 4
	lea	RCX, QWORD PTR [RIP + uploadInfoArray]
	cmp	DWORD PTR [RAX + RCX + 48], 4
	jne	.LBB50_3
# BB#1:                                 # %if.then4
	mov	EDX, DWORD PTR [RAX + RCX + 88]
	inc	EDX
	mov	DWORD PTR [RAX + RCX + 88], EDX
	cmp	EDX, DWORD PTR [RAX + RCX + 56]
	jne	.LBB50_3
# BB#2:                                 # %if.then7
	lea	RAX, QWORD PTR [RAX + RCX + 48]
	mov	DWORD PTR [RAX], 5
.LBB50_3:                               # %if.end10
	ret

	.def	 UploadBufGetData;
	.scl	2;
	.type	32;
	.endef
	.globl	UploadBufGetData
	.align	16, 0x90
UploadBufGetData:                       # @UploadBufGetData
# BB#0:                                 # %entry
	push	R15
	push	R14
	push	R13
	push	R12
	push	RSI
	push	RDI
	push	RBP
	push	RBX
	sub	RSP, 56
	mov	DWORD PTR [RSP + 48], R8D # 4-byte Spill
	mov	DWORD PTR [RSP + 52], EDX
	movsxd	RAX, EDX
	lea	RDI, QWORD PTR [RAX + 8*RAX]
	shl	RDI, 4
	lea	RSI, QWORD PTR [RIP + uploadInfoArray]
	mov	EAX, DWORD PTR [RDI + RSI + 48]
	mov	DWORD PTR [RDI + RSI + 24], 0
	mov	DWORD PTR [RCX], 0
	mov	QWORD PTR [RCX + 8], 0
	add	EAX, -4
	cmp	EAX, 1
	ja	.LBB51_15
# BB#1:                                 # %if.then
	lea	R11, QWORD PTR [RDI + RSI + 24]
	lea	RBX, QWORD PTR [RDI + RSI + 48]
	mov	DWORD PTR [R11], 0
	cmp	DWORD PTR [RSP + 48], 0 # 4-byte Folded Reload
	jle	.LBB51_2
# BB#3:                                 # %for.body.lr.ph.i
	mov	QWORD PTR [RSP + 32], RBX # 8-byte Spill
	lea	R8, QWORD PTR [RDI + RSI + 32]
	lea	R9, QWORD PTR [RDI + RSI + 40]
	lea	R10, QWORD PTR [RDI + RSI + 16]
	mov	QWORD PTR [RSP + 40], RDI # 8-byte Spill
	xor	R13D, R13D
	mov	EBX, 32
	.align	16, 0x90
.LBB51_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	mov	R15, QWORD PTR [R10]
	cmp	DWORD PTR [R15 + RBX - 32], 0
	jne	.LBB51_8
# BB#5:                                 # %if.then.i
                                        #   in Loop: Header=BB51_4 Depth=1
	movsxd	R14, DWORD PTR [R15 + RBX - 28]
	mov	RDX, QWORD PTR [R15 + RBX - 16]
	mov	RDI, QWORD PTR [R15 + RBX - 8]
	mov	RAX, QWORD PTR [R9]
	mov	RBP, QWORD PTR [R8]
	movsxd	RSI, DWORD PTR [R11]
	mov	DWORD PTR [RBP + 4*RSI], R13D
	inc	DWORD PTR [R11]
	shl	RSI, 5
	mov	QWORD PTR [RAX + RSI + 8], RDI
	mov	QWORD PTR [R15 + RBX], RDX
	lea	R12, QWORD PTR [RAX + RSI]
	cmp	RDX, RDI
	jbe	.LBB51_7
# BB#6:                                 # %if.then13.i
                                        #   in Loop: Header=BB51_4 Depth=1
	sub	EDX, EDI
	mov	DWORD PTR [R12], EDX
	mov	DWORD PTR [RAX + RSI + 16], 0
	mov	QWORD PTR [RAX + RSI + 24], 0
	jmp	.LBB51_8
	.align	16, 0x90
.LBB51_7:                               # %if.else.i
                                        #   in Loop: Header=BB51_4 Depth=1
	mov	RBP, QWORD PTR [R15 + RBX - 24]
	add	R14D, EBP
	sub	R14D, EDI
	mov	DWORD PTR [R12], R14D
	sub	EDX, EBP
	mov	DWORD PTR [RAX + RSI + 16], EDX
	mov	QWORD PTR [RAX + RSI + 24], RBP
.LBB51_8:                               # %for.inc.i
                                        #   in Loop: Header=BB51_4 Depth=1
	add	RBX, 48
	inc	R13D
	cmp	DWORD PTR [RSP + 48], R13D # 4-byte Folded Reload
	jne	.LBB51_4
# BB#9:                                 # %for.cond.for.end_crit_edge.i
	mov	EAX, DWORD PTR [R11]
	lea	RSI, QWORD PTR [RIP + uploadInfoArray]
	mov	RDI, QWORD PTR [RSP + 40] # 8-byte Reload
	mov	RBX, QWORD PTR [RSP + 32] # 8-byte Reload
	jmp	.LBB51_10
.LBB51_2:                               # %entry.for.end_crit_edge.i
	lea	R8, QWORD PTR [RDI + RSI + 32]
	lea	R9, QWORD PTR [RDI + RSI + 40]
	xor	EAX, EAX
.LBB51_10:                              # %SetExtBufListFields.exit
	mov	DWORD PTR [RCX], EAX
	mov	RDX, QWORD PTR [R9]
	mov	QWORD PTR [RCX + 8], RDX
	mov	RDX, QWORD PTR [R8]
	mov	QWORD PTR [RCX + 16], RDX
	test	EAX, EAX
	jne	.LBB51_15
# BB#11:                                # %land.lhs.true
	cmp	DWORD PTR [RBX], 5
	jne	.LBB51_15
# BB#12:                                # %if.then7
	mov	BYTE PTR [RIP + host_upstatus_is_uploading], 0
	cmp	DWORD PTR [RDI + RSI + 60], -1
	jne	.LBB51_14
# BB#13:                                # %if.then9
	lea	R8, QWORD PTR [RSP + 52]
	mov	ECX, 32
	mov	EDX, 4
	call	SendPktToHost
	movsxd	RCX, DWORD PTR [RSP + 52]
	lea	RAX, QWORD PTR [RCX + 8*RCX]
	shl	RAX, 4
	mov	DWORD PTR [RAX + RSI + 48], 0
                                        # kill: ECX<def> ECX<kill> RCX<kill>
	mov	EDX, DWORD PTR [RSP + 48] # 4-byte Reload
	call	UploadLogInfoTerm
	jmp	.LBB51_15
.LBB51_14:                              # %if.else
	lea	R8, QWORD PTR [RSP + 52]
	mov	ECX, 31
	mov	EDX, 4
	call	SendPktToHost
	mov	DWORD PTR [RDI + RSI + 88], 0
	mov	DWORD PTR [RBX], 1
.LBB51_15:                              # %if.end14
	add	RSP, 56
	pop	RBX
	pop	RBP
	pop	RDI
	pop	RSI
	pop	R12
	pop	R13
	pop	R14
	pop	R15
	ret

	.def	 rtGetInf;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	8
.LCPI52_0:
	.quad	9218868437227405312     # double 1.#INF00e+00
                                        #  (0x0)
	.text
	.globl	rtGetInf
	.align	16, 0x90
rtGetInf:                               # @rtGetInf
# BB#0:                                 # %entry
	movsd	XMM0, QWORD PTR [RIP + .LCPI52_0]
	ret

	.def	 rtGetInfF;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	4
.LCPI53_0:
	.long	2139095040              # float 1.#INF00e+00
                                        #  (0x7f800000)
	.text
	.globl	rtGetInfF
	.align	16, 0x90
rtGetInfF:                              # @rtGetInfF
# BB#0:                                 # %entry
	movss	XMM0, DWORD PTR [RIP + .LCPI53_0]
	ret

	.def	 rtGetMinusInf;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	8
.LCPI54_0:
	.quad	-4503599627370496       # double -1.#INF00e+00
                                        #  (0x0)
	.text
	.globl	rtGetMinusInf
	.align	16, 0x90
rtGetMinusInf:                          # @rtGetMinusInf
# BB#0:                                 # %entry
	movsd	XMM0, QWORD PTR [RIP + .LCPI54_0]
	ret

	.def	 rtGetMinusInfF;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	4
.LCPI55_0:
	.long	4286578688              # float -1.#INF00e+00
                                        #  (0xff800000)
	.text
	.globl	rtGetMinusInfF
	.align	16, 0x90
rtGetMinusInfF:                         # @rtGetMinusInfF
# BB#0:                                 # %entry
	movss	XMM0, DWORD PTR [RIP + .LCPI55_0]
	ret

	.def	 rtGetNaN;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	8
.LCPI56_0:
	.quad	-2251799813685248       # double -1.#IND00e+00
                                        #  (0x0)
	.text
	.globl	rtGetNaN
	.align	16, 0x90
rtGetNaN:                               # @rtGetNaN
# BB#0:                                 # %entry
	movsd	XMM0, QWORD PTR [RIP + .LCPI56_0]
	ret

	.def	 rtGetNaNF;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	4
.LCPI57_0:
	.long	4290772992              # float -1.#IND00e+00
                                        #  (0xffc00000)
	.text
	.globl	rtGetNaNF
	.align	16, 0x90
rtGetNaNF:                              # @rtGetNaNF
# BB#0:                                 # %entry
	movss	XMM0, DWORD PTR [RIP + .LCPI57_0]
	ret

	.def	 rt_atan2d_snf;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	8
.LCPI58_0:
	.quad	4607182418800017408     # double 1.000000e+00
                                        #  (0x0)
.LCPI58_1:
	.quad	-4616189618054758400    # double -1.000000e+00
                                        #  (0x0)
.LCPI58_2:
	.quad	4609753056924675352     # double 1.570796e+00
                                        #  (0x54442d18)
.LCPI58_3:
	.quad	0                       # double 0.000000e+00
	.quad	-4613618979930100456    # double -1.570796e+00
	.text
	.globl	rt_atan2d_snf
	.align	16, 0x90
rt_atan2d_snf:                          # @rt_atan2d_snf
# BB#0:                                 # %entry
	sub	RSP, 72
	movaps	XMMWORD PTR [RSP + 32], XMM7 # 16-byte Spill
	movaps	XMMWORD PTR [RSP + 48], XMM6 # 16-byte Spill
	movapd	XMM6, XMM1
	movapd	XMM7, XMM0
	call	rtIsNaN
	test	AL, AL
	jne	.LBB58_2
# BB#1:                                 # %lor.lhs.false
	movapd	XMM0, XMM6
	call	rtIsNaN
	test	AL, AL
	je	.LBB58_3
.LBB58_2:                               # %if.then
	movsd	XMM0, QWORD PTR [RIP + rtNaN]
.LBB58_15:                              # %if.end40
	movaps	XMM6, XMMWORD PTR [RSP + 48] # 16-byte Reload
	movaps	XMM7, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 72
	ret
.LBB58_3:                               # %if.else
	movapd	XMM0, XMM7
	call	rtIsInf
	test	AL, AL
	je	.LBB58_10
# BB#4:                                 # %land.lhs.true
	movapd	XMM0, XMM6
	call	rtIsInf
	test	AL, AL
	je	.LBB58_10
# BB#5:                                 # %if.then10
	movsd	XMM1, QWORD PTR [RIP + .LCPI58_0]
	movsd	XMM2, QWORD PTR [RIP + .LCPI58_1]
	xorpd	XMM3, XMM3
	ucomisd	XMM7, XMM3
	movapd	XMM0, XMM1
	ja	.LBB58_7
# BB#6:                                 # %if.then10
	movapd	XMM0, XMM2
.LBB58_7:                               # %if.then10
	ucomisd	XMM6, XMM3
	ja	.LBB58_9
# BB#8:                                 # %if.then10
	movapd	XMM1, XMM2
	jmp	.LBB58_9
.LBB58_10:                              # %if.else22
	xorpd	XMM0, XMM0
	ucomisd	XMM6, XMM0
	jne	.LBB58_13
	jp	.LBB58_13
# BB#11:                                # %if.then25
	ucomisd	XMM7, XMM0
	jbe	.LBB58_14
# BB#12:
	movsd	XMM0, QWORD PTR [RIP + .LCPI58_2]
	jmp	.LBB58_15
.LBB58_13:                              # %if.else36
	movapd	XMM0, XMM7
	movapd	XMM1, XMM6
.LBB58_9:                               # %if.then10
	movaps	XMM6, XMMWORD PTR [RSP + 48] # 16-byte Reload
	movaps	XMM7, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 72
	jmp	atan2                   # TAILCALL
.LBB58_14:                              # %if.else29
	xorpd	XMM0, XMM0
	ucomisd	XMM0, XMM7
	seta	AL
	movzx	EAX, AL
	lea	RCX, QWORD PTR [RIP + .LCPI58_3]
	movsd	XMM0, QWORD PTR [RCX + 8*RAX]
	jmp	.LBB58_15

	.def	 rt_InitInfAndNaN;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_InitInfAndNaN
	.align	16, 0x90
rt_InitInfAndNaN:                       # @rt_InitInfAndNaN
# BB#0:                                 # %entry
	sub	RSP, 40
	call	rtGetNaN
	movsd	QWORD PTR [RIP + rtNaN], XMM0
	call	rtGetNaNF
	movss	DWORD PTR [RIP + rtNaNF], XMM0
	call	rtGetInf
	movsd	QWORD PTR [RIP + rtInf], XMM0
	call	rtGetInfF
	movss	DWORD PTR [RIP + rtInfF], XMM0
	call	rtGetMinusInf
	movsd	QWORD PTR [RIP + rtMinusInf], XMM0
	call	rtGetMinusInfF
	movss	DWORD PTR [RIP + rtMinusInfF], XMM0
	add	RSP, 40
	ret

	.def	 rtIsInf;
	.scl	2;
	.type	32;
	.endef
	.globl	rtIsInf
	.align	16, 0x90
rtIsInf:                                # @rtIsInf
# BB#0:                                 # %entry
	mov	AL, 1
	movsd	XMM1, QWORD PTR [RIP + rtInf]
	ucomisd	XMM1, XMM0
	jne	.LBB60_1
	jnp	.LBB60_2
.LBB60_1:                               # %lor.rhs
	cmpeqsd	XMM0, QWORD PTR [RIP + rtMinusInf]
	movd	EAX, XMM0
	and	EAX, 1
.LBB60_2:                               # %lor.end
	movzx	EAX, AL
	ret

	.def	 rtIsInfF;
	.scl	2;
	.type	32;
	.endef
	.globl	rtIsInfF
	.align	16, 0x90
rtIsInfF:                               # @rtIsInfF
# BB#0:                                 # %entry
	mov	AL, 1
	movss	XMM1, DWORD PTR [RIP + rtInfF]
	ucomiss	XMM1, XMM0
	jne	.LBB61_1
	jnp	.LBB61_2
.LBB61_1:                               # %lor.rhs
	cmpeqss	XMM0, DWORD PTR [RIP + rtMinusInfF]
	movd	EAX, XMM0
	and	EAX, 1
.LBB61_2:                               # %lor.end
	movzx	EAX, AL
	ret

	.def	 rtIsNaN;
	.scl	2;
	.type	32;
	.endef
	.globl	rtIsNaN
	.align	16, 0x90
rtIsNaN:                                # @rtIsNaN
# BB#0:                                 # %entry
	ucomisd	XMM0, XMM0
	setp	AL
	movzx	EAX, AL
	ret

	.def	 rtIsNaNF;
	.scl	2;
	.type	32;
	.endef
	.globl	rtIsNaNF
	.align	16, 0x90
rtIsNaNF:                               # @rtIsNaNF
# BB#0:                                 # %entry
	ucomiss	XMM0, XMM0
	setp	AL
	movzx	EAX, AL
	ret

	.def	 rt_powd_snf;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	16
.LCPI64_0:
	.quad	9223372036854775807     # double 1.#QNAN0e+00
	.quad	9223372036854775807     # double 1.#QNAN0e+00
.LCPI64_1:
	.quad	4607182418800017408     # double 1.000000e+00
                                        #  (0x0)
.LCPI64_2:
	.quad	4611686018427387904     # double 2.000000e+00
                                        #  (0x0)
.LCPI64_3:
	.quad	4602678819172646912     # double 5.000000e-01
                                        #  (0x0)
	.text
	.globl	rt_powd_snf
	.align	16, 0x90
rt_powd_snf:                            # @rt_powd_snf
# BB#0:                                 # %entry
	sub	RSP, 88
	movapd	XMMWORD PTR [RSP + 32], XMM8 # 16-byte Spill
	movaps	XMMWORD PTR [RSP + 48], XMM7 # 16-byte Spill
	movaps	XMMWORD PTR [RSP + 64], XMM6 # 16-byte Spill
	movapd	XMM7, XMM1
	movapd	XMM6, XMM0
	call	rtIsNaN
	test	AL, AL
	jne	.LBB64_20
# BB#1:                                 # %lor.lhs.false
	movapd	XMM0, XMM7
	call	rtIsNaN
	test	AL, AL
	jne	.LBB64_20
# BB#2:                                 # %if.else
	movsd	XMM8, QWORD PTR [RIP + .LCPI64_0]
	movapd	XMM0, XMM7
	call	rtIsInf
	test	AL, AL
	je	.LBB64_9
# BB#3:                                 # %if.then9
	andpd	XMM6, XMM8
	ucomisd	XMM6, QWORD PTR [RIP + .LCPI64_1]
	jne	.LBB64_4
	jnp	.LBB64_20
.LBB64_4:                               # %if.else12
	jbe	.LBB64_7
# BB#5:                                 # %if.then15
	xorpd	XMM6, XMM6
	ucomisd	XMM7, XMM6
	jbe	.LBB64_21
# BB#6:                                 # %if.then18
	movsd	XMM6, QWORD PTR [RIP + rtInf]
	jmp	.LBB64_21
.LBB64_9:                               # %if.else28
	xorpd	XMM0, XMM0
	ucomisd	XMM7, XMM0
	jne	.LBB64_11
	jp	.LBB64_11
# BB#10:
	movsd	XMM6, QWORD PTR [RIP + .LCPI64_1]
	jmp	.LBB64_21
.LBB64_11:                              # %if.else32
	andpd	XMM8, XMM7
	ucomisd	XMM8, QWORD PTR [RIP + .LCPI64_1]
	jne	.LBB64_14
	jp	.LBB64_14
# BB#12:                                # %if.then35
	xorpd	XMM0, XMM0
	ucomisd	XMM7, XMM0
	ja	.LBB64_21
# BB#13:                                # %if.else39
	movsd	XMM0, QWORD PTR [RIP + .LCPI64_1]
	divsd	XMM0, XMM6
	movapd	XMM6, XMM0
	jmp	.LBB64_21
.LBB64_7:                               # %if.else20
	xorpd	XMM6, XMM6
	ucomisd	XMM7, XMM6
	ja	.LBB64_21
# BB#8:                                 # %if.else24
	movsd	XMM6, QWORD PTR [RIP + rtInf]
	jmp	.LBB64_21
.LBB64_14:                              # %if.else41
	ucomisd	XMM7, QWORD PTR [RIP + .LCPI64_2]
	jne	.LBB64_16
	jp	.LBB64_16
# BB#15:                                # %if.then44
	mulsd	XMM6, XMM6
	jmp	.LBB64_21
.LBB64_16:                              # %if.else45
	ucomisd	XMM7, QWORD PTR [RIP + .LCPI64_3]
	jne	.LBB64_18
	jp	.LBB64_18
# BB#17:                                # %if.else45
	xorpd	XMM0, XMM0
	ucomisd	XMM6, XMM0
	jae	.LBB64_22
.LBB64_18:                              # %if.else52
	xorpd	XMM0, XMM0
	ucomisd	XMM0, XMM6
	jbe	.LBB64_23
# BB#19:                                # %land.lhs.true55
	roundsd	XMM0, XMM7, 1
	ucomisd	XMM7, XMM0
	jbe	.LBB64_23
.LBB64_20:                              # %if.then59
	movsd	XMM6, QWORD PTR [RIP + rtNaN]
.LBB64_21:                              # %if.end68
	movapd	XMM0, XMM6
	movaps	XMM6, XMMWORD PTR [RSP + 64] # 16-byte Reload
	movaps	XMM7, XMMWORD PTR [RSP + 48] # 16-byte Reload
	movaps	XMM8, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 88
	ret
.LBB64_22:                              # %if.then50
	movapd	XMM0, XMM6
	movaps	XMM6, XMMWORD PTR [RSP + 64] # 16-byte Reload
	movaps	XMM7, XMMWORD PTR [RSP + 48] # 16-byte Reload
	movaps	XMM8, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 88
	jmp	sqrt                    # TAILCALL
.LBB64_23:                              # %if.else60
	movapd	XMM0, XMM6
	movapd	XMM1, XMM7
	movaps	XMM6, XMMWORD PTR [RSP + 64] # 16-byte Reload
	movaps	XMM7, XMMWORD PTR [RSP + 48] # 16-byte Reload
	movaps	XMM8, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 88
	jmp	pow                     # TAILCALL

	.def	 rt_roundd_snf;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	16
.LCPI65_0:
	.quad	9223372036854775807     # double 1.#QNAN0e+00
	.quad	9223372036854775807     # double 1.#QNAN0e+00
.LCPI65_1:
	.quad	4841369599423283200     # double 4.503600e+15
                                        #  (0x0)
.LCPI65_2:
	.quad	4602678819172646912     # double 5.000000e-01
                                        #  (0x0)
.LCPI65_3:
	.quad	-4620693217682128896    # double -5.000000e-01
                                        #  (0x0)
	.text
	.globl	rt_roundd_snf
	.align	16, 0x90
rt_roundd_snf:                          # @rt_roundd_snf
# BB#0:                                 # %entry
	movsd	XMM1, QWORD PTR [RIP + .LCPI65_0]
	andpd	XMM1, XMM0
	movsd	XMM2, QWORD PTR [RIP + .LCPI65_1]
	ucomisd	XMM2, XMM1
	jbe	.LBB65_5
# BB#1:                                 # %if.then
	ucomisd	XMM0, QWORD PTR [RIP + .LCPI65_2]
	jae	.LBB65_6
# BB#2:                                 # %if.else
	ucomisd	XMM0, QWORD PTR [RIP + .LCPI65_3]
	jbe	.LBB65_4
# BB#3:                                 # %if.then5
	xorpd	XMM1, XMM1
	mulsd	XMM0, XMM1
	ret
.LBB65_6:                               # %if.then2
	addsd	XMM0, QWORD PTR [RIP + .LCPI65_2]
	roundsd	XMM0, XMM0, 1
	ret
.LBB65_4:                               # %if.else6
	addsd	XMM0, QWORD PTR [RIP + .LCPI65_3]
	roundsd	XMM0, XMM0, 2
.LBB65_5:                               # %if.end10
	ret

	.def	 rt_ZCFcn;
	.scl	2;
	.type	32;
	.endef
	.globl	rt_ZCFcn
	.align	16, 0x90
rt_ZCFcn:                               # @rt_ZCFcn
# BB#0:                                 # %entry
	mov	R10B, BYTE PTR [RDX]
	mov	R8B, 1
	xorpd	XMM0, XMM0
	ucomisd	XMM2, XMM0
	ja	.LBB66_2
# BB#1:                                 # %cond.false
	ucomisd	XMM0, XMM2
	seta	R8B
	add	R8B, R8B
.LBB66_2:                               # %cond.end
	mov	EAX, 63
	test	ECX, ECX
	je	.LBB66_8
# BB#3:                                 # %cond.end
	cmp	ECX, 1
	jne	.LBB66_4
# BB#6:                                 # %sw.bb12
	mov	EAX, 7
	jmp	.LBB66_8
.LBB66_4:                               # %cond.end
	cmp	ECX, -1
	jne	.LBB66_7
# BB#5:                                 # %sw.bb11
	mov	EAX, 56
	jmp	.LBB66_8
.LBB66_7:                               # %sw.default
	xor	EAX, EAX
.LBB66_8:                               # %sw.epilog
	mov	CL, R10B
	and	CL, 3
	movzx	R9D, CL
	lea	RCX, QWORD PTR [RIP + rt_ZCFcn.eventMatrix]
	lea	R9, QWORD PTR [RCX + 4*R9]
	movzx	ECX, R8B
	movzx	ECX, BYTE PTR [RCX + R9]
	xor	R9D, R9D
	test	EAX, ECX
	je	.LBB66_14
# BB#9:                                 # %if.then
	shr	R10B, 2
	test	R10B, 2
	je	.LBB66_11
# BB#10:                                # %land.lhs.true
	test	CL, 4
	jne	.LBB66_14
.LBB66_11:                              # %lor.lhs.false
	test	R10B, 16
	je	.LBB66_13
# BB#12:                                # %land.lhs.true30
	test	CL, 32
	jne	.LBB66_14
.LBB66_13:                              # %cond.false36
	mov	R9D, ECX
.LBB66_14:                              # %if.end
	movzx	ECX, R8B
	lea	EAX, DWORD PTR [4*R9]
	or	EAX, ECX
	mov	BYTE PTR [RDX], AL
	mov	EAX, -1
	test	R9B, 56
	jne	.LBB66_16
# BB#15:                                # %if.else49
	test	R9B, 7
	setne	AL
	movzx	EAX, AL
.LBB66_16:                              # %if.end56
	ret

	.def	 __chkstk;
	.scl	2;
	.type	32;
	.endef
	.globl	__chkstk
	.align	16, 0x90
__chkstk:                               # @__chkstk
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp___chkstk]
	jmp	RAX  # TAILCALL

	.def	 _chkstk;
	.scl	2;
	.type	32;
	.endef
	.globl	_chkstk
	.align	16, 0x90
_chkstk:                                # @_chkstk
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp___chkstk]
	jmp	RAX  # TAILCALL

	.def	 RTBIO_DriverIO;
	.scl	2;
	.type	32;
	.endef
	.globl	RTBIO_DriverIO
	.align	16, 0x90
RTBIO_DriverIO:                         # @RTBIO_DriverIO
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_RTBIO_DriverIO]
	jmp	RAX  # TAILCALL

	.def	 RTBIO_MapDeviceMemory;
	.scl	2;
	.type	32;
	.endef
	.globl	RTBIO_MapDeviceMemory
	.align	16, 0x90
RTBIO_MapDeviceMemory:                  # @RTBIO_MapDeviceMemory
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_RTBIO_MapDeviceMemory]
	jmp	RAX  # TAILCALL

	.def	 RTBIO_UnmapDeviceMemory;
	.scl	2;
	.type	32;
	.endef
	.globl	RTBIO_UnmapDeviceMemory
	.align	16, 0x90
RTBIO_UnmapDeviceMemory:                # @RTBIO_UnmapDeviceMemory
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_RTBIO_UnmapDeviceMemory]
	jmp	RAX  # TAILCALL

	.def	 _assert;
	.scl	2;
	.type	32;
	.endef
	.globl	_assert
	.align	16, 0x90
_assert:                                # @_assert
# BB#0:                                 # %entry
	sub	RSP, 40
	mov	RAX, QWORD PTR [RIP + __imp_printf]
	lea	RCX, QWORD PTR [RIP + .L.str94]
	call	RAX
	add	RSP, 40
	ret

	.def	 isalnum;
	.scl	2;
	.type	32;
	.endef
	.globl	isalnum
	.align	16, 0x90
isalnum:                                # @isalnum
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_isalnum]
	jmp	RAX  # TAILCALL

	.def	 isalpha;
	.scl	2;
	.type	32;
	.endef
	.globl	isalpha
	.align	16, 0x90
isalpha:                                # @isalpha
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_isalpha]
	jmp	RAX  # TAILCALL

	.def	 isblank;
	.scl	2;
	.type	32;
	.endef
	.globl	isblank
	.align	16, 0x90
isblank:                                # @isblank
# BB#0:                                 # %entry
	cmp	ECX, 9
	sete	AL
	cmp	ECX, 32
	sete	CL
	or	CL, AL
	movzx	EAX, CL
	ret

	.def	 iscntrl;
	.scl	2;
	.type	32;
	.endef
	.globl	iscntrl
	.align	16, 0x90
iscntrl:                                # @iscntrl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_iscntrl]
	jmp	RAX  # TAILCALL

	.def	 isdigit;
	.scl	2;
	.type	32;
	.endef
	.globl	isdigit
	.align	16, 0x90
isdigit:                                # @isdigit
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_isdigit]
	jmp	RAX  # TAILCALL

	.def	 isgraph;
	.scl	2;
	.type	32;
	.endef
	.globl	isgraph
	.align	16, 0x90
isgraph:                                # @isgraph
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_isgraph]
	jmp	RAX  # TAILCALL

	.def	 islower;
	.scl	2;
	.type	32;
	.endef
	.globl	islower
	.align	16, 0x90
islower:                                # @islower
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_islower]
	jmp	RAX  # TAILCALL

	.def	 isprint;
	.scl	2;
	.type	32;
	.endef
	.globl	isprint
	.align	16, 0x90
isprint:                                # @isprint
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_isprint]
	jmp	RAX  # TAILCALL

	.def	 ispunct;
	.scl	2;
	.type	32;
	.endef
	.globl	ispunct
	.align	16, 0x90
ispunct:                                # @ispunct
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_ispunct]
	jmp	RAX  # TAILCALL

	.def	 isspace;
	.scl	2;
	.type	32;
	.endef
	.globl	isspace
	.align	16, 0x90
isspace:                                # @isspace
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_isspace]
	jmp	RAX  # TAILCALL

	.def	 isupper;
	.scl	2;
	.type	32;
	.endef
	.globl	isupper
	.align	16, 0x90
isupper:                                # @isupper
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_isupper]
	jmp	RAX  # TAILCALL

	.def	 isxdigit;
	.scl	2;
	.type	32;
	.endef
	.globl	isxdigit
	.align	16, 0x90
isxdigit:                               # @isxdigit
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_isxdigit]
	jmp	RAX  # TAILCALL

	.def	 tolower;
	.scl	2;
	.type	32;
	.endef
	.globl	tolower
	.align	16, 0x90
tolower:                                # @tolower
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_tolower]
	jmp	RAX  # TAILCALL

	.def	 toupper;
	.scl	2;
	.type	32;
	.endef
	.globl	toupper
	.align	16, 0x90
toupper:                                # @toupper
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_toupper]
	jmp	RAX  # TAILCALL

	.def	 acos;
	.scl	2;
	.type	32;
	.endef
	.globl	acos
	.align	16, 0x90
acos:                                   # @acos
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_acos]
	jmp	RAX  # TAILCALL

	.def	 acosf;
	.scl	2;
	.type	32;
	.endef
	.globl	acosf
	.align	16, 0x90
acosf:                                  # @acosf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_acosf]
	jmp	RAX  # TAILCALL

	.def	 acosl;
	.scl	2;
	.type	32;
	.endef
	.globl	acosl
	.align	16, 0x90
acosl:                                  # @acosl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_acos]
	jmp	RAX  # TAILCALL

	.def	 asin;
	.scl	2;
	.type	32;
	.endef
	.globl	asin
	.align	16, 0x90
asin:                                   # @asin
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_asin]
	jmp	RAX  # TAILCALL

	.def	 asinf;
	.scl	2;
	.type	32;
	.endef
	.globl	asinf
	.align	16, 0x90
asinf:                                  # @asinf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_asinf]
	jmp	RAX  # TAILCALL

	.def	 asinl;
	.scl	2;
	.type	32;
	.endef
	.globl	asinl
	.align	16, 0x90
asinl:                                  # @asinl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_asin]
	jmp	RAX  # TAILCALL

	.def	 atan;
	.scl	2;
	.type	32;
	.endef
	.globl	atan
	.align	16, 0x90
atan:                                   # @atan
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_atan]
	jmp	RAX  # TAILCALL

	.def	 atanf;
	.scl	2;
	.type	32;
	.endef
	.globl	atanf
	.align	16, 0x90
atanf:                                  # @atanf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_atanf]
	jmp	RAX  # TAILCALL

	.def	 atanl;
	.scl	2;
	.type	32;
	.endef
	.globl	atanl
	.align	16, 0x90
atanl:                                  # @atanl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_atan]
	jmp	RAX  # TAILCALL

	.def	 atan2;
	.scl	2;
	.type	32;
	.endef
	.globl	atan2
	.align	16, 0x90
atan2:                                  # @atan2
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_atan2]
	jmp	RAX  # TAILCALL

	.def	 atan2f;
	.scl	2;
	.type	32;
	.endef
	.globl	atan2f
	.align	16, 0x90
atan2f:                                 # @atan2f
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_atan2f]
	jmp	RAX  # TAILCALL

	.def	 atan2l;
	.scl	2;
	.type	32;
	.endef
	.globl	atan2l
	.align	16, 0x90
atan2l:                                 # @atan2l
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_atan2]
	jmp	RAX  # TAILCALL

	.def	 cos;
	.scl	2;
	.type	32;
	.endef
	.globl	cos
	.align	16, 0x90
cos:                                    # @cos
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_cos]
	jmp	RAX  # TAILCALL

	.def	 cosf;
	.scl	2;
	.type	32;
	.endef
	.globl	cosf
	.align	16, 0x90
cosf:                                   # @cosf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_cosf]
	jmp	RAX  # TAILCALL

	.def	 cosl;
	.scl	2;
	.type	32;
	.endef
	.globl	cosl
	.align	16, 0x90
cosl:                                   # @cosl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_cos]
	jmp	RAX  # TAILCALL

	.def	 sin;
	.scl	2;
	.type	32;
	.endef
	.globl	sin
	.align	16, 0x90
sin:                                    # @sin
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_sin]
	jmp	RAX  # TAILCALL

	.def	 sinf;
	.scl	2;
	.type	32;
	.endef
	.globl	sinf
	.align	16, 0x90
sinf:                                   # @sinf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_sinf]
	jmp	RAX  # TAILCALL

	.def	 sinl;
	.scl	2;
	.type	32;
	.endef
	.globl	sinl
	.align	16, 0x90
sinl:                                   # @sinl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_sin]
	jmp	RAX  # TAILCALL

	.def	 tan;
	.scl	2;
	.type	32;
	.endef
	.globl	tan
	.align	16, 0x90
tan:                                    # @tan
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_tan]
	jmp	RAX  # TAILCALL

	.def	 tanf;
	.scl	2;
	.type	32;
	.endef
	.globl	tanf
	.align	16, 0x90
tanf:                                   # @tanf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_tanf]
	jmp	RAX  # TAILCALL

	.def	 tanl;
	.scl	2;
	.type	32;
	.endef
	.globl	tanl
	.align	16, 0x90
tanl:                                   # @tanl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_tan]
	jmp	RAX  # TAILCALL

	.def	 asinh;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	8
.LCPI108_0:
	.quad	4607182418800017408     # double 1.000000e+00
                                        #  (0x0)
	.text
	.globl	asinh
	.align	16, 0x90
asinh:                                  # @asinh
# BB#0:                                 # %entry
	sub	RSP, 56
	movaps	XMMWORD PTR [RSP + 32], XMM6 # 16-byte Spill
	movaps	XMM6, XMM0
	mov	RAX, QWORD PTR [RIP + __imp_sqrt]
	mulsd	XMM0, XMM0
	addsd	XMM0, QWORD PTR [RIP + .LCPI108_0]
	call	RAX
	addsd	XMM0, XMM6
	mov	RAX, QWORD PTR [RIP + __imp_log]
	movaps	XMM6, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 56
	jmp	RAX  # TAILCALL

	.def	 log;
	.scl	2;
	.type	32;
	.endef
	.globl	log
	.align	16, 0x90
log:                                    # @log
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_log]
	jmp	RAX  # TAILCALL

	.def	 sqrt;
	.scl	2;
	.type	32;
	.endef
	.globl	sqrt
	.align	16, 0x90
sqrt:                                   # @sqrt
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_sqrt]
	jmp	RAX  # TAILCALL

	.def	 asinhf;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	4
.LCPI111_0:
	.long	1065353216              # float 1.000000e+00
                                        #  (0x3f800000)
	.text
	.globl	asinhf
	.align	16, 0x90
asinhf:                                 # @asinhf
# BB#0:                                 # %entry
	sub	RSP, 56
	movaps	XMMWORD PTR [RSP + 32], XMM6 # 16-byte Spill
	movaps	XMM6, XMM0
	mov	RAX, QWORD PTR [RIP + __imp_sqrtf]
	mulss	XMM0, XMM0
	addss	XMM0, DWORD PTR [RIP + .LCPI111_0]
	call	RAX
	addss	XMM0, XMM6
	mov	RAX, QWORD PTR [RIP + __imp_logf]
	movaps	XMM6, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 56
	jmp	RAX  # TAILCALL

	.def	 logf;
	.scl	2;
	.type	32;
	.endef
	.globl	logf
	.align	16, 0x90
logf:                                   # @logf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_logf]
	jmp	RAX  # TAILCALL

	.def	 sqrtf;
	.scl	2;
	.type	32;
	.endef
	.globl	sqrtf
	.align	16, 0x90
sqrtf:                                  # @sqrtf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_sqrtf]
	jmp	RAX  # TAILCALL

	.def	 asinhl;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	8
.LCPI114_0:
	.quad	4607182418800017408     # double 1.000000e+00
                                        #  (0x0)
	.text
	.globl	asinhl
	.align	16, 0x90
asinhl:                                 # @asinhl
# BB#0:                                 # %entry
	sub	RSP, 56
	movaps	XMMWORD PTR [RSP + 32], XMM6 # 16-byte Spill
	movaps	XMM6, XMM0
	mov	RAX, QWORD PTR [RIP + __imp_sqrt]
	mulsd	XMM0, XMM0
	addsd	XMM0, QWORD PTR [RIP + .LCPI114_0]
	call	RAX
	addsd	XMM0, XMM6
	mov	RAX, QWORD PTR [RIP + __imp_log]
	movaps	XMM6, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 56
	jmp	RAX  # TAILCALL

	.def	 acosh;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	8
.LCPI115_0:
	.quad	-4616189618054758400    # double -1.000000e+00
                                        #  (0x0)
	.text
	.globl	acosh
	.align	16, 0x90
acosh:                                  # @acosh
# BB#0:                                 # %entry
	sub	RSP, 56
	movaps	XMMWORD PTR [RSP + 32], XMM6 # 16-byte Spill
	movaps	XMM6, XMM0
	mov	RAX, QWORD PTR [RIP + __imp_sqrt]
	mulsd	XMM0, XMM0
	addsd	XMM0, QWORD PTR [RIP + .LCPI115_0]
	call	RAX
	addsd	XMM0, XMM6
	mov	RAX, QWORD PTR [RIP + __imp_log]
	movaps	XMM6, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 56
	jmp	RAX  # TAILCALL

	.def	 acoshf;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	4
.LCPI116_0:
	.long	3212836864              # float -1.000000e+00
                                        #  (0xbf800000)
	.text
	.globl	acoshf
	.align	16, 0x90
acoshf:                                 # @acoshf
# BB#0:                                 # %entry
	sub	RSP, 56
	movaps	XMMWORD PTR [RSP + 32], XMM6 # 16-byte Spill
	movaps	XMM6, XMM0
	mov	RAX, QWORD PTR [RIP + __imp_sqrtf]
	mulss	XMM0, XMM0
	addss	XMM0, DWORD PTR [RIP + .LCPI116_0]
	call	RAX
	addss	XMM0, XMM6
	mov	RAX, QWORD PTR [RIP + __imp_logf]
	movaps	XMM6, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 56
	jmp	RAX  # TAILCALL

	.def	 acoshl;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	8
.LCPI117_0:
	.quad	-4616189618054758400    # double -1.000000e+00
                                        #  (0x0)
	.text
	.globl	acoshl
	.align	16, 0x90
acoshl:                                 # @acoshl
# BB#0:                                 # %entry
	sub	RSP, 56
	movaps	XMMWORD PTR [RSP + 32], XMM6 # 16-byte Spill
	movaps	XMM6, XMM0
	mov	RAX, QWORD PTR [RIP + __imp_sqrt]
	mulsd	XMM0, XMM0
	addsd	XMM0, QWORD PTR [RIP + .LCPI117_0]
	call	RAX
	addsd	XMM0, XMM6
	mov	RAX, QWORD PTR [RIP + __imp_log]
	movaps	XMM6, XMMWORD PTR [RSP + 32] # 16-byte Reload
	add	RSP, 56
	jmp	RAX  # TAILCALL

	.def	 atanh;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	8
.LCPI118_0:
	.quad	4607182418800017408     # double 1.000000e+00
                                        #  (0x0)
.LCPI118_1:
	.quad	4602678819172646912     # double 5.000000e-01
                                        #  (0x0)
	.text
	.globl	atanh
	.align	16, 0x90
atanh:                                  # @atanh
# BB#0:                                 # %entry
	sub	RSP, 40
	movsd	XMM2, QWORD PTR [RIP + .LCPI118_0]
	movaps	XMM1, XMM2
	subsd	XMM1, XMM0
	addsd	XMM0, XMM2
	divsd	XMM0, XMM1
	mov	RAX, QWORD PTR [RIP + __imp_log]
	call	RAX
	mulsd	XMM0, QWORD PTR [RIP + .LCPI118_1]
	add	RSP, 40
	ret

	.def	 atanhf;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	4
.LCPI119_0:
	.long	1065353216              # float 1.000000e+00
                                        #  (0x3f800000)
.LCPI119_1:
	.long	1056964608              # float 5.000000e-01
                                        #  (0x3f000000)
	.text
	.globl	atanhf
	.align	16, 0x90
atanhf:                                 # @atanhf
# BB#0:                                 # %entry
	sub	RSP, 40
	movss	XMM2, DWORD PTR [RIP + .LCPI119_0]
	movaps	XMM1, XMM2
	subss	XMM1, XMM0
	addss	XMM0, XMM2
	divss	XMM0, XMM1
	mov	RAX, QWORD PTR [RIP + __imp_logf]
	call	RAX
	mulss	XMM0, DWORD PTR [RIP + .LCPI119_1]
	add	RSP, 40
	ret

	.def	 atanhl;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"r"
	.align	8
.LCPI120_0:
	.quad	4607182418800017408     # double 1.000000e+00
                                        #  (0x0)
.LCPI120_1:
	.quad	4602678819172646912     # double 5.000000e-01
                                        #  (0x0)
	.text
	.globl	atanhl
	.align	16, 0x90
atanhl:                                 # @atanhl
# BB#0:                                 # %entry
	sub	RSP, 40
	movsd	XMM2, QWORD PTR [RIP + .LCPI120_0]
	movaps	XMM1, XMM2
	subsd	XMM1, XMM0
	addsd	XMM0, XMM2
	divsd	XMM0, XMM1
	mov	RAX, QWORD PTR [RIP + __imp_log]
	call	RAX
	mulsd	XMM0, QWORD PTR [RIP + .LCPI120_1]
	add	RSP, 40
	ret

	.def	 cosh;
	.scl	2;
	.type	32;
	.endef
	.globl	cosh
	.align	16, 0x90
cosh:                                   # @cosh
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_cosh]
	jmp	RAX  # TAILCALL

	.def	 coshf;
	.scl	2;
	.type	32;
	.endef
	.globl	coshf
	.align	16, 0x90
coshf:                                  # @coshf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_coshf]
	jmp	RAX  # TAILCALL

	.def	 coshl;
	.scl	2;
	.type	32;
	.endef
	.globl	coshl
	.align	16, 0x90
coshl:                                  # @coshl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_cosh]
	jmp	RAX  # TAILCALL

	.def	 sinh;
	.scl	2;
	.type	32;
	.endef
	.globl	sinh
	.align	16, 0x90
sinh:                                   # @sinh
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_sinh]
	jmp	RAX  # TAILCALL

	.def	 sinhf;
	.scl	2;
	.type	32;
	.endef
	.globl	sinhf
	.align	16, 0x90
sinhf:                                  # @sinhf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_sinhf]
	jmp	RAX  # TAILCALL

	.def	 sinhl;
	.scl	2;
	.type	32;
	.endef
	.globl	sinhl
	.align	16, 0x90
sinhl:                                  # @sinhl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_sinh]
	jmp	RAX  # TAILCALL

	.def	 tanh;
	.scl	2;
	.type	32;
	.endef
	.globl	tanh
	.align	16, 0x90
tanh:                                   # @tanh
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_tanh]
	jmp	RAX  # TAILCALL

	.def	 tanhf;
	.scl	2;
	.type	32;
	.endef
	.globl	tanhf
	.align	16, 0x90
tanhf:                                  # @tanhf
# BB#0:                                 # %entry
	sub	RSP, 40
	mov	RAX, QWORD PTR [RIP + __imp_tanh]
	cvtss2sd	XMM0, XMM0
	call	RAX
	cvtsd2ss	XMM0, XMM0
	add	RSP, 40
	ret

	.def	 tanhl;
	.scl	2;
	.type	32;
	.endef
	.globl	tanhl
	.align	16, 0x90
tanhl:                                  # @tanhl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_tanh]
	jmp	RAX  # TAILCALL

	.def	 exp;
	.scl	2;
	.type	32;
	.endef
	.globl	exp
	.align	16, 0x90
exp:                                    # @exp
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_exp]
	jmp	RAX  # TAILCALL

	.def	 expf;
	.scl	2;
	.type	32;
	.endef
	.globl	expf
	.align	16, 0x90
expf:                                   # @expf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_expf]
	jmp	RAX  # TAILCALL

	.def	 expl;
	.scl	2;
	.type	32;
	.endef
	.globl	expl
	.align	16, 0x90
expl:                                   # @expl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_exp]
	jmp	RAX  # TAILCALL

	.def	 frexp;
	.scl	2;
	.type	32;
	.endef
	.globl	frexp
	.align	16, 0x90
frexp:                                  # @frexp
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_frexp]
	jmp	RAX  # TAILCALL

	.def	 frexpf;
	.scl	2;
	.type	32;
	.endef
	.globl	frexpf
	.align	16, 0x90
frexpf:                                 # @frexpf
# BB#0:                                 # %entry
	sub	RSP, 40
	mov	RAX, QWORD PTR [RIP + __imp_frexp]
	cvtss2sd	XMM0, XMM0
	call	RAX
	cvtsd2ss	XMM0, XMM0
	add	RSP, 40
	ret

	.def	 frexpl;
	.scl	2;
	.type	32;
	.endef
	.globl	frexpl
	.align	16, 0x90
frexpl:                                 # @frexpl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_frexp]
	jmp	RAX  # TAILCALL

	.def	 ldexp;
	.scl	2;
	.type	32;
	.endef
	.globl	ldexp
	.align	16, 0x90
ldexp:                                  # @ldexp
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_ldexp]
	jmp	RAX  # TAILCALL

	.def	 ldexpf;
	.scl	2;
	.type	32;
	.endef
	.globl	ldexpf
	.align	16, 0x90
ldexpf:                                 # @ldexpf
# BB#0:                                 # %entry
	sub	RSP, 40
	mov	RAX, QWORD PTR [RIP + __imp_ldexp]
	cvtss2sd	XMM0, XMM0
	call	RAX
	cvtsd2ss	XMM0, XMM0
	add	RSP, 40
	ret

	.def	 ldexpl;
	.scl	2;
	.type	32;
	.endef
	.globl	ldexpl
	.align	16, 0x90
ldexpl:                                 # @ldexpl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_ldexp]
	jmp	RAX  # TAILCALL

	.def	 logl;
	.scl	2;
	.type	32;
	.endef
	.globl	logl
	.align	16, 0x90
logl:                                   # @logl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_log]
	jmp	RAX  # TAILCALL

	.def	 log10;
	.scl	2;
	.type	32;
	.endef
	.globl	log10
	.align	16, 0x90
log10:                                  # @log10
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_log10]
	jmp	RAX  # TAILCALL

	.def	 log10f;
	.scl	2;
	.type	32;
	.endef
	.globl	log10f
	.align	16, 0x90
log10f:                                 # @log10f
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_log10f]
	jmp	RAX  # TAILCALL

	.def	 log10l;
	.scl	2;
	.type	32;
	.endef
	.globl	log10l
	.align	16, 0x90
log10l:                                 # @log10l
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_log10]
	jmp	RAX  # TAILCALL

	.def	 modf;
	.scl	2;
	.type	32;
	.endef
	.globl	modf
	.align	16, 0x90
modf:                                   # @modf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_modf]
	jmp	RAX  # TAILCALL

	.def	 modff;
	.scl	2;
	.type	32;
	.endef
	.globl	modff
	.align	16, 0x90
modff:                                  # @modff
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_modff]
	jmp	RAX  # TAILCALL

	.def	 modfl;
	.scl	2;
	.type	32;
	.endef
	.globl	modfl
	.align	16, 0x90
modfl:                                  # @modfl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_modf]
	jmp	RAX  # TAILCALL

	.def	 fabs;
	.scl	2;
	.type	32;
	.endef
	.globl	fabs
	.align	16, 0x90
fabs:                                   # @fabs
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_fabs]
	jmp	RAX  # TAILCALL

	.def	 fabsf;
	.scl	2;
	.type	32;
	.endef
	.globl	fabsf
	.align	16, 0x90
fabsf:                                  # @fabsf
# BB#0:                                 # %entry
	sub	RSP, 40
	mov	RAX, QWORD PTR [RIP + __imp_fabs]
	cvtss2sd	XMM0, XMM0
	call	RAX
	cvtsd2ss	XMM0, XMM0
	add	RSP, 40
	ret

	.def	 fabsl;
	.scl	2;
	.type	32;
	.endef
	.globl	fabsl
	.align	16, 0x90
fabsl:                                  # @fabsl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_fabs]
	jmp	RAX  # TAILCALL

	.def	 hypot;
	.scl	2;
	.type	32;
	.endef
	.globl	hypot
	.align	16, 0x90
hypot:                                  # @hypot
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_hypot]
	jmp	RAX  # TAILCALL

	.def	 hypotf;
	.scl	2;
	.type	32;
	.endef
	.globl	hypotf
	.align	16, 0x90
hypotf:                                 # @hypotf
# BB#0:                                 # %entry
	sub	RSP, 40
	mov	RAX, QWORD PTR [RIP + __imp_hypot]
	cvtss2sd	XMM0, XMM0
	cvtss2sd	XMM1, XMM1
	call	RAX
	cvtsd2ss	XMM0, XMM0
	add	RSP, 40
	ret

	.def	 hypotl;
	.scl	2;
	.type	32;
	.endef
	.globl	hypotl
	.align	16, 0x90
hypotl:                                 # @hypotl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_hypot]
	jmp	RAX  # TAILCALL

	.def	 pow;
	.scl	2;
	.type	32;
	.endef
	.globl	pow
	.align	16, 0x90
pow:                                    # @pow
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_pow]
	jmp	RAX  # TAILCALL

	.def	 powf;
	.scl	2;
	.type	32;
	.endef
	.globl	powf
	.align	16, 0x90
powf:                                   # @powf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_powf]
	jmp	RAX  # TAILCALL

	.def	 powl;
	.scl	2;
	.type	32;
	.endef
	.globl	powl
	.align	16, 0x90
powl:                                   # @powl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_pow]
	jmp	RAX  # TAILCALL

	.def	 sqrtl;
	.scl	2;
	.type	32;
	.endef
	.globl	sqrtl
	.align	16, 0x90
sqrtl:                                  # @sqrtl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_sqrt]
	jmp	RAX  # TAILCALL

	.def	 ceil;
	.scl	2;
	.type	32;
	.endef
	.globl	ceil
	.align	16, 0x90
ceil:                                   # @ceil
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_ceil]
	jmp	RAX  # TAILCALL

	.def	 ceilf;
	.scl	2;
	.type	32;
	.endef
	.globl	ceilf
	.align	16, 0x90
ceilf:                                  # @ceilf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_ceilf]
	jmp	RAX  # TAILCALL

	.def	 ceill;
	.scl	2;
	.type	32;
	.endef
	.globl	ceill
	.align	16, 0x90
ceill:                                  # @ceill
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_ceil]
	jmp	RAX  # TAILCALL

	.def	 floor;
	.scl	2;
	.type	32;
	.endef
	.globl	floor
	.align	16, 0x90
floor:                                  # @floor
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_floor]
	jmp	RAX  # TAILCALL

	.def	 floorf;
	.scl	2;
	.type	32;
	.endef
	.globl	floorf
	.align	16, 0x90
floorf:                                 # @floorf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_floorf]
	jmp	RAX  # TAILCALL

	.def	 floorl;
	.scl	2;
	.type	32;
	.endef
	.globl	floorl
	.align	16, 0x90
floorl:                                 # @floorl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_floor]
	jmp	RAX  # TAILCALL

	.def	 fmod;
	.scl	2;
	.type	32;
	.endef
	.globl	fmod
	.align	16, 0x90
fmod:                                   # @fmod
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_fmod]
	jmp	RAX  # TAILCALL

	.def	 fmodf;
	.scl	2;
	.type	32;
	.endef
	.globl	fmodf
	.align	16, 0x90
fmodf:                                  # @fmodf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_fmodf]
	jmp	RAX  # TAILCALL

	.def	 fmodl;
	.scl	2;
	.type	32;
	.endef
	.globl	fmodl
	.align	16, 0x90
fmodl:                                  # @fmodl
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_fmod]
	jmp	RAX  # TAILCALL

	.def	 _inp;
	.scl	2;
	.type	32;
	.endef
	.globl	_inp
	.align	16, 0x90
_inp:                                   # @_inp
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp__inp]
	jmp	RAX  # TAILCALL

	.def	 _inpw;
	.scl	2;
	.type	32;
	.endef
	.globl	_inpw
	.align	16, 0x90
_inpw:                                  # @_inpw
# BB#0:                                 # %entry
	sub	RSP, 40
	mov	RAX, QWORD PTR [RIP + __imp__inpw]
	call	RAX
	movzx	EAX, AX
	add	RSP, 40
	ret

	.def	 _inpd;
	.scl	2;
	.type	32;
	.endef
	.globl	_inpd
	.align	16, 0x90
_inpd:                                  # @_inpd
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp__inpd]
	jmp	RAX  # TAILCALL

	.def	 _outp;
	.scl	2;
	.type	32;
	.endef
	.globl	_outp
	.align	16, 0x90
_outp:                                  # @_outp
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp__outp]
	jmp	RAX  # TAILCALL

	.def	 _outpw;
	.scl	2;
	.type	32;
	.endef
	.globl	_outpw
	.align	16, 0x90
_outpw:                                 # @_outpw
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp__outpw]
	jmp	RAX  # TAILCALL

	.def	 _outpd;
	.scl	2;
	.type	32;
	.endef
	.globl	_outpd
	.align	16, 0x90
_outpd:                                 # @_outpd
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp__outpd]
	jmp	RAX  # TAILCALL

	.def	 remove;
	.scl	2;
	.type	32;
	.endef
	.globl	remove
	.align	16, 0x90
remove:                                 # @remove
# BB#0:                                 # %entry
	mov	EAX, 1
	ret

	.def	 rename;
	.scl	2;
	.type	32;
	.endef
	.globl	rename
	.align	16, 0x90
rename:                                 # @rename
# BB#0:                                 # %entry
	mov	EAX, 1
	ret

	.def	 tmpfile;
	.scl	2;
	.type	32;
	.endef
	.globl	tmpfile
	.align	16, 0x90
tmpfile:                                # @tmpfile
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 tmpnam;
	.scl	2;
	.type	32;
	.endef
	.globl	tmpnam
	.align	16, 0x90
tmpnam:                                 # @tmpnam
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 fclose;
	.scl	2;
	.type	32;
	.endef
	.globl	fclose
	.align	16, 0x90
fclose:                                 # @fclose
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 fflush;
	.scl	2;
	.type	32;
	.endef
	.globl	fflush
	.align	16, 0x90
fflush:                                 # @fflush
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 fopen;
	.scl	2;
	.type	32;
	.endef
	.globl	fopen
	.align	16, 0x90
fopen:                                  # @fopen
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 freopen;
	.scl	2;
	.type	32;
	.endef
	.globl	freopen
	.align	16, 0x90
freopen:                                # @freopen
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 setbuf;
	.scl	2;
	.type	32;
	.endef
	.globl	setbuf
	.align	16, 0x90
setbuf:                                 # @setbuf
# BB#0:                                 # %entry
	ret

	.def	 setvbuf;
	.scl	2;
	.type	32;
	.endef
	.globl	setvbuf
	.align	16, 0x90
setvbuf:                                # @setvbuf
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 fprintf;
	.scl	2;
	.type	32;
	.endef
	.globl	fprintf
	.align	16, 0x90
fprintf:                                # @fprintf
# BB#0:                                 # %entry
	mov	QWORD PTR [RSP + 32], R9
	mov	QWORD PTR [RSP + 24], R8
	xor	EAX, EAX
	ret

	.def	 fscanf;
	.scl	2;
	.type	32;
	.endef
	.globl	fscanf
	.align	16, 0x90
fscanf:                                 # @fscanf
# BB#0:                                 # %entry
	mov	QWORD PTR [RSP + 32], R9
	mov	QWORD PTR [RSP + 24], R8
	xor	EAX, EAX
	ret

	.def	 scanf;
	.scl	2;
	.type	32;
	.endef
	.globl	scanf
	.align	16, 0x90
scanf:                                  # @scanf
# BB#0:                                 # %entry
	mov	QWORD PTR [RSP + 32], R9
	mov	QWORD PTR [RSP + 24], R8
	mov	QWORD PTR [RSP + 16], RDX
	xor	EAX, EAX
	ret

	.def	 vfprintf;
	.scl	2;
	.type	32;
	.endef
	.globl	vfprintf
	.align	16, 0x90
vfprintf:                               # @vfprintf
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 vfscanf;
	.scl	2;
	.type	32;
	.endef
	.globl	vfscanf
	.align	16, 0x90
vfscanf:                                # @vfscanf
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 vprintf;
	.scl	2;
	.type	32;
	.endef
	.globl	vprintf
	.align	16, 0x90
vprintf:                                # @vprintf
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 vscanf;
	.scl	2;
	.type	32;
	.endef
	.globl	vscanf
	.align	16, 0x90
vscanf:                                 # @vscanf
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 vsnprintf;
	.scl	2;
	.type	32;
	.endef
	.globl	vsnprintf
	.align	16, 0x90
vsnprintf:                              # @vsnprintf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_vsnprintf]
	jmp	RAX  # TAILCALL

	.def	 vsprintf;
	.scl	2;
	.type	32;
	.endef
	.globl	vsprintf
	.align	16, 0x90
vsprintf:                               # @vsprintf
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_vsprintf]
	jmp	RAX  # TAILCALL

	.def	 vsscanf;
	.scl	2;
	.type	32;
	.endef
	.globl	vsscanf
	.align	16, 0x90
vsscanf:                                # @vsscanf
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 fgetc;
	.scl	2;
	.type	32;
	.endef
	.globl	fgetc
	.align	16, 0x90
fgetc:                                  # @fgetc
# BB#0:                                 # %entry
	mov	EAX, -1
	ret

	.def	 fgets;
	.scl	2;
	.type	32;
	.endef
	.globl	fgets
	.align	16, 0x90
fgets:                                  # @fgets
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 fputc;
	.scl	2;
	.type	32;
	.endef
	.globl	fputc
	.align	16, 0x90
fputc:                                  # @fputc
# BB#0:                                 # %entry
	mov	EAX, ECX
	ret

	.def	 fputs;
	.scl	2;
	.type	32;
	.endef
	.globl	fputs
	.align	16, 0x90
fputs:                                  # @fputs
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 getc;
	.scl	2;
	.type	32;
	.endef
	.globl	getc
	.align	16, 0x90
getc:                                   # @getc
# BB#0:                                 # %entry
	mov	EAX, -1
	ret

	.def	 getchar;
	.scl	2;
	.type	32;
	.endef
	.globl	getchar
	.align	16, 0x90
getchar:                                # @getchar
# BB#0:                                 # %entry
	mov	EAX, -1
	ret

	.def	 putc;
	.scl	2;
	.type	32;
	.endef
	.globl	putc
	.align	16, 0x90
putc:                                   # @putc
# BB#0:                                 # %entry
	mov	EAX, ECX
	ret

	.def	 putchar;
	.scl	2;
	.type	32;
	.endef
	.globl	putchar
	.align	16, 0x90
putchar:                                # @putchar
# BB#0:                                 # %entry
	push	RSI
	sub	RSP, 32
	mov	ESI, ECX
	mov	RAX, QWORD PTR [RIP + __imp_printf]
	lea	RCX, QWORD PTR [RIP + .L.str195]
	mov	EDX, ESI
	call	RAX
	mov	EAX, ESI
	add	RSP, 32
	pop	RSI
	ret

	.def	 puts;
	.scl	2;
	.type	32;
	.endef
	.globl	puts
	.align	16, 0x90
puts:                                   # @puts
# BB#0:                                 # %entry
	sub	RSP, 40
	mov	RAX, RCX
	mov	R8, QWORD PTR [RIP + __imp_printf]
	lea	RCX, QWORD PTR [RIP + .L.str296]
	mov	RDX, RAX
	call	R8
	xor	EAX, EAX
	add	RSP, 40
	ret

	.def	 ungetc;
	.scl	2;
	.type	32;
	.endef
	.globl	ungetc
	.align	16, 0x90
ungetc:                                 # @ungetc
# BB#0:                                 # %entry
	mov	EAX, -1
	ret

	.def	 fread;
	.scl	2;
	.type	32;
	.endef
	.globl	fread
	.align	16, 0x90
fread:                                  # @fread
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 fwrite;
	.scl	2;
	.type	32;
	.endef
	.globl	fwrite
	.align	16, 0x90
fwrite:                                 # @fwrite
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 fgetpos;
	.scl	2;
	.type	32;
	.endef
	.globl	fgetpos
	.align	16, 0x90
fgetpos:                                # @fgetpos
# BB#0:                                 # %entry
	mov	EAX, 1
	ret

	.def	 fseek;
	.scl	2;
	.type	32;
	.endef
	.globl	fseek
	.align	16, 0x90
fseek:                                  # @fseek
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 fsetpos;
	.scl	2;
	.type	32;
	.endef
	.globl	fsetpos
	.align	16, 0x90
fsetpos:                                # @fsetpos
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 ftell;
	.scl	2;
	.type	32;
	.endef
	.globl	ftell
	.align	16, 0x90
ftell:                                  # @ftell
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 rewind;
	.scl	2;
	.type	32;
	.endef
	.globl	rewind
	.align	16, 0x90
rewind:                                 # @rewind
# BB#0:                                 # %entry
	ret

	.def	 clearerr;
	.scl	2;
	.type	32;
	.endef
	.globl	clearerr
	.align	16, 0x90
clearerr:                               # @clearerr
# BB#0:                                 # %entry
	ret

	.def	 feof;
	.scl	2;
	.type	32;
	.endef
	.globl	feof
	.align	16, 0x90
feof:                                   # @feof
# BB#0:                                 # %entry
	mov	EAX, 1
	ret

	.def	 ferror;
	.scl	2;
	.type	32;
	.endef
	.globl	ferror
	.align	16, 0x90
ferror:                                 # @ferror
# BB#0:                                 # %entry
	mov	EAX, 1
	ret

	.def	 perror;
	.scl	2;
	.type	32;
	.endef
	.globl	perror
	.align	16, 0x90
perror:                                 # @perror
# BB#0:                                 # %entry
	sub	RSP, 40
	mov	RAX, RCX
	mov	R8, QWORD PTR [RIP + __imp_printf]
	lea	RCX, QWORD PTR [RIP + .L.str397]
	mov	RDX, RAX
	call	R8
	add	RSP, 40
	ret

	.def	 atof;
	.scl	2;
	.type	32;
	.endef
	.globl	atof
	.align	16, 0x90
atof:                                   # @atof
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_atof]
	jmp	RAX  # TAILCALL

	.def	 atoi;
	.scl	2;
	.type	32;
	.endef
	.globl	atoi
	.align	16, 0x90
atoi:                                   # @atoi
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_atoi]
	jmp	RAX  # TAILCALL

	.def	 atol;
	.scl	2;
	.type	32;
	.endef
	.globl	atol
	.align	16, 0x90
atol:                                   # @atol
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_atol]
	jmp	RAX  # TAILCALL

	.def	 strtod;
	.scl	2;
	.type	32;
	.endef
	.globl	strtod
	.align	16, 0x90
strtod:                                 # @strtod
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strtod]
	jmp	RAX  # TAILCALL

	.def	 strtof;
	.scl	2;
	.type	32;
	.endef
	.globl	strtof
	.align	16, 0x90
strtof:                                 # @strtof
# BB#0:                                 # %entry
	sub	RSP, 40
	mov	RAX, QWORD PTR [RIP + __imp_strtod]
	call	RAX
	cvtsd2ss	XMM0, XMM0
	add	RSP, 40
	ret

	.def	 strtold;
	.scl	2;
	.type	32;
	.endef
	.globl	strtold
	.align	16, 0x90
strtold:                                # @strtold
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strtod]
	jmp	RAX  # TAILCALL

	.def	 strtol;
	.scl	2;
	.type	32;
	.endef
	.globl	strtol
	.align	16, 0x90
strtol:                                 # @strtol
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strtol]
	jmp	RAX  # TAILCALL

	.def	 strtoul;
	.scl	2;
	.type	32;
	.endef
	.globl	strtoul
	.align	16, 0x90
strtoul:                                # @strtoul
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strtoul]
	jmp	RAX  # TAILCALL

	.def	 rand;
	.scl	2;
	.type	32;
	.endef
	.globl	rand
	.align	16, 0x90
rand:                                   # @rand
# BB#0:                                 # %entry
	jmp	QWORD PTR [RIP + __imp_rand]  # TAILCALL

	.def	 srand;
	.scl	2;
	.type	32;
	.endef
	.globl	srand
	.align	16, 0x90
srand:                                  # @srand
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_srand]
	jmp	RAX  # TAILCALL

	.def	 calloc;
	.scl	2;
	.type	32;
	.endef
	.globl	calloc
	.align	16, 0x90
calloc:                                 # @calloc
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_calloc]
	jmp	RAX  # TAILCALL

	.def	 free;
	.scl	2;
	.type	32;
	.endef
	.globl	free
	.align	16, 0x90
free:                                   # @free
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_free]
	jmp	RAX  # TAILCALL

	.def	 malloc;
	.scl	2;
	.type	32;
	.endef
	.globl	malloc
	.align	16, 0x90
malloc:                                 # @malloc
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_malloc]
	jmp	RAX  # TAILCALL

	.def	 realloc;
	.scl	2;
	.type	32;
	.endef
	.globl	realloc
	.align	16, 0x90
realloc:                                # @realloc
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_realloc]
	jmp	RAX  # TAILCALL

	.def	 abort;
	.scl	2;
	.type	32;
	.endef
	.globl	abort
	.align	16, 0x90
abort:                                  # @abort
# BB#0:                                 # %entry

	.def	 atexit;
	.scl	2;
	.type	32;
	.endef
	.globl	atexit
	.align	16, 0x90
atexit:                                 # @atexit
# BB#0:                                 # %entry
	mov	EAX, 1
	ret

	.def	 exit;
	.scl	2;
	.type	32;
	.endef
	.globl	exit
	.align	16, 0x90
exit:                                   # @exit
# BB#0:                                 # %entry

	.def	 getenv;
	.scl	2;
	.type	32;
	.endef
	.globl	getenv
	.align	16, 0x90
getenv:                                 # @getenv
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 system;
	.scl	2;
	.type	32;
	.endef
	.globl	system
	.align	16, 0x90
system:                                 # @system
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 bsearch;
	.scl	2;
	.type	32;
	.endef
	.globl	bsearch
	.align	16, 0x90
bsearch:                                # @bsearch
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_bsearch]
	jmp	RAX  # TAILCALL

	.def	 qsort;
	.scl	2;
	.type	32;
	.endef
	.globl	qsort
	.align	16, 0x90
qsort:                                  # @qsort
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_qsort]
	jmp	RAX  # TAILCALL

	.def	 abs;
	.scl	2;
	.type	32;
	.endef
	.globl	abs
	.align	16, 0x90
abs:                                    # @abs
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_abs]
	jmp	RAX  # TAILCALL

	.def	 labs;
	.scl	2;
	.type	32;
	.endef
	.globl	labs
	.align	16, 0x90
labs:                                   # @labs
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_labs]
	jmp	RAX  # TAILCALL

	.def	 div;
	.scl	2;
	.type	32;
	.endef
	.globl	div
	.align	16, 0x90
div:                                    # @div
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_div]
	jmp	RAX  # TAILCALL

	.def	 ldiv;
	.scl	2;
	.type	32;
	.endef
	.globl	ldiv
	.align	16, 0x90
ldiv:                                   # @ldiv
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_ldiv]
	jmp	RAX  # TAILCALL

	.def	 mblen;
	.scl	2;
	.type	32;
	.endef
	.globl	mblen
	.align	16, 0x90
mblen:                                  # @mblen
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_mblen]
	jmp	RAX  # TAILCALL

	.def	 mbtowc;
	.scl	2;
	.type	32;
	.endef
	.globl	mbtowc
	.align	16, 0x90
mbtowc:                                 # @mbtowc
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_mbtowc]
	jmp	RAX  # TAILCALL

	.def	 wctomb;
	.scl	2;
	.type	32;
	.endef
	.globl	wctomb
	.align	16, 0x90
wctomb:                                 # @wctomb
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_wctomb]
	jmp	RAX  # TAILCALL

	.def	 mbstowcs;
	.scl	2;
	.type	32;
	.endef
	.globl	mbstowcs
	.align	16, 0x90
mbstowcs:                               # @mbstowcs
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_mbstowcs]
	jmp	RAX  # TAILCALL

	.def	 wcstombs;
	.scl	2;
	.type	32;
	.endef
	.globl	wcstombs
	.align	16, 0x90
wcstombs:                               # @wcstombs
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_wcstombs]
	jmp	RAX  # TAILCALL

	.def	 memcpy;
	.scl	2;
	.type	32;
	.endef
	.globl	memcpy
	.align	16, 0x90
memcpy:                                 # @memcpy
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_memcpy]
	jmp	RAX  # TAILCALL

	.def	 memmove;
	.scl	2;
	.type	32;
	.endef
	.globl	memmove
	.align	16, 0x90
memmove:                                # @memmove
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_memmove]
	jmp	RAX  # TAILCALL

	.def	 strcpy;
	.scl	2;
	.type	32;
	.endef
	.globl	strcpy
	.align	16, 0x90
strcpy:                                 # @strcpy
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strcpy]
	jmp	RAX  # TAILCALL

	.def	 strncpy;
	.scl	2;
	.type	32;
	.endef
	.globl	strncpy
	.align	16, 0x90
strncpy:                                # @strncpy
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strncpy]
	jmp	RAX  # TAILCALL

	.def	 strcat;
	.scl	2;
	.type	32;
	.endef
	.globl	strcat
	.align	16, 0x90
strcat:                                 # @strcat
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strcat]
	jmp	RAX  # TAILCALL

	.def	 strncat;
	.scl	2;
	.type	32;
	.endef
	.globl	strncat
	.align	16, 0x90
strncat:                                # @strncat
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strncat]
	jmp	RAX  # TAILCALL

	.def	 memcmp;
	.scl	2;
	.type	32;
	.endef
	.globl	memcmp
	.align	16, 0x90
memcmp:                                 # @memcmp
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_memcmp]
	jmp	RAX  # TAILCALL

	.def	 strcmp;
	.scl	2;
	.type	32;
	.endef
	.globl	strcmp
	.align	16, 0x90
strcmp:                                 # @strcmp
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strcmp]
	jmp	RAX  # TAILCALL

	.def	 strcoll;
	.scl	2;
	.type	32;
	.endef
	.globl	strcoll
	.align	16, 0x90
strcoll:                                # @strcoll
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strcoll]
	jmp	RAX  # TAILCALL

	.def	 strncmp;
	.scl	2;
	.type	32;
	.endef
	.globl	strncmp
	.align	16, 0x90
strncmp:                                # @strncmp
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strncmp]
	jmp	RAX  # TAILCALL

	.def	 strxfrm;
	.scl	2;
	.type	32;
	.endef
	.globl	strxfrm
	.align	16, 0x90
strxfrm:                                # @strxfrm
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strxfrm]
	jmp	RAX  # TAILCALL

	.def	 memchr;
	.scl	2;
	.type	32;
	.endef
	.globl	memchr
	.align	16, 0x90
memchr:                                 # @memchr
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_memchr]
	jmp	RAX  # TAILCALL

	.def	 strchr;
	.scl	2;
	.type	32;
	.endef
	.globl	strchr
	.align	16, 0x90
strchr:                                 # @strchr
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strchr]
	jmp	RAX  # TAILCALL

	.def	 strcspn;
	.scl	2;
	.type	32;
	.endef
	.globl	strcspn
	.align	16, 0x90
strcspn:                                # @strcspn
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strcspn]
	jmp	RAX  # TAILCALL

	.def	 strpbrk;
	.scl	2;
	.type	32;
	.endef
	.globl	strpbrk
	.align	16, 0x90
strpbrk:                                # @strpbrk
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strpbrk]
	jmp	RAX  # TAILCALL

	.def	 strrchr;
	.scl	2;
	.type	32;
	.endef
	.globl	strrchr
	.align	16, 0x90
strrchr:                                # @strrchr
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strrchr]
	jmp	RAX  # TAILCALL

	.def	 strspn;
	.scl	2;
	.type	32;
	.endef
	.globl	strspn
	.align	16, 0x90
strspn:                                 # @strspn
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strspn]
	jmp	RAX  # TAILCALL

	.def	 strstr;
	.scl	2;
	.type	32;
	.endef
	.globl	strstr
	.align	16, 0x90
strstr:                                 # @strstr
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strstr]
	jmp	RAX  # TAILCALL

	.def	 strtok;
	.scl	2;
	.type	32;
	.endef
	.globl	strtok
	.align	16, 0x90
strtok:                                 # @strtok
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strtok]
	jmp	RAX  # TAILCALL

	.def	 memset;
	.scl	2;
	.type	32;
	.endef
	.globl	memset
	.align	16, 0x90
memset:                                 # @memset
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_memset]
	jmp	RAX  # TAILCALL

	.def	 __exp_strerror;
	.scl	2;
	.type	32;
	.endef
	.globl	__exp_strerror
	.align	16, 0x90
__exp_strerror:                         # @__exp_strerror
# BB#0:                                 # %entry
	lea	RAX, QWORD PTR [RIP + .L.str498]
	ret

	.def	 strlen;
	.scl	2;
	.type	32;
	.endef
	.globl	strlen
	.align	16, 0x90
strlen:                                 # @strlen
# BB#0:                                 # %entry
	mov	RAX, QWORD PTR [RIP + __imp_strlen]
	jmp	RAX  # TAILCALL

	.def	 ExtUserDataCreate;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtUserDataCreate
	.align	16, 0x90
ExtUserDataCreate:                      # @ExtUserDataCreate
# BB#0:                                 # %entry
	mov	QWORD PTR [RIP + SB], 131104
	mov	DWORD PTR [RIP + SB+65556], 65536
	mov	DWORD PTR [RIP + SB+65564], 0
	mov	DWORD PTR [RIP + SB+65560], 0
	mov	DWORD PTR [RIP + SB+8], 65536
	mov	DWORD PTR [RIP + SB+16], 0
	mov	DWORD PTR [RIP + SB+12], 0
	lea	RAX, QWORD PTR [RIP + SB]
	ret

	.def	 ExtUserDataDestroy;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtUserDataDestroy
	.align	16, 0x90
ExtUserDataDestroy:                     # @ExtUserDataDestroy
# BB#0:                                 # %entry
	ret

	.def	 ExtInit;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtInit
	.align	16, 0x90
ExtInit:                                # @ExtInit
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 ExtOpenConnection;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtOpenConnection
	.align	16, 0x90
ExtOpenConnection:                      # @ExtOpenConnection
# BB#0:                                 # %entry
	mov	BYTE PTR [RDX], 1
	xor	EAX, EAX
	ret

	.def	 ExtCloseConnection;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtCloseConnection
	.align	16, 0x90
ExtCloseConnection:                     # @ExtCloseConnection
# BB#0:                                 # %entry
	ret

	.def	 ExtShutDown;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtShutDown
	.align	16, 0x90
ExtShutDown:                            # @ExtShutDown
# BB#0:                                 # %entry
	ret

	.def	 ExtProcessArgs;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtProcessArgs
	.align	16, 0x90
ExtProcessArgs:                         # @ExtProcessArgs
# BB#0:                                 # %entry
	xor	EAX, EAX
	ret

	.def	 ExtWaitForStartPktFromHost;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtWaitForStartPktFromHost
	.align	16, 0x90
ExtWaitForStartPktFromHost:             # @ExtWaitForStartPktFromHost
# BB#0:                                 # %entry
	mov	EAX, 1
	ret

	.def	 ExtModeSleep;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtModeSleep
	.align	16, 0x90
ExtModeSleep:                           # @ExtModeSleep
# BB#0:                                 # %entry
	ret

	.def	 ExtForceDisconnect;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtForceDisconnect
	.align	16, 0x90
ExtForceDisconnect:                     # @ExtForceDisconnect
# BB#0:                                 # %entry
	ret

	.def	 ExtGetHostPkt;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtGetHostPkt
	.align	16, 0x90
ExtGetHostPkt:                          # @ExtGetHostPkt
# BB#0:                                 # %entry
	push	RSI
	sub	RSP, 32
	mov	RSI, R8
	add	RCX, 65556
	mov	R8, R9
	call	GetFromBuffer
	mov	DWORD PTR [RSI], EAX
	xor	EAX, EAX
	add	RSP, 32
	pop	RSI
	ret

	.def	 ExtSetHostPkt;
	.scl	2;
	.type	32;
	.endef
	.globl	ExtSetHostPkt
	.align	16, 0x90
ExtSetHostPkt:                          # @ExtSetHostPkt
# BB#0:                                 # %entry
	push	RSI
	push	RDI
	sub	RSP, 40
	mov	RSI, R9
	mov	EDI, EDX
	add	RCX, 8
	call	PutToBuffer
	mov	DWORD PTR [RSI], EAX
	cmp	EAX, EDI
	setne	AL
	movzx	EAX, AL
	add	RSP, 40
	pop	RDI
	pop	RSI
	ret

	.def	 SendShutdownPkt;
	.scl	2;
	.type	32;
	.endef
	.globl	SendShutdownPkt
	.align	16, 0x90
SendShutdownPkt:                        # @SendShutdownPkt
# BB#0:                                 # %entry
	sub	RSP, 40
	mov	QWORD PTR [RSP + 32], 20
	lea	RCX, QWORD PTR [RIP + SB+8]
	lea	R8, QWORD PTR [RSP + 32]
	mov	EDX, 8
	call	PutToBuffer
	add	RSP, 40
	ret

	.def	 GetFromBuffer;
	.scl	2;
	.type	32;
	.endef
	.globl	GetFromBuffer
	.align	16, 0x90
GetFromBuffer:                          # @GetFromBuffer
# BB#0:                                 # %entry
	push	R14
	push	RSI
	push	RDI
	push	RBP
	push	RBX
	sub	RSP, 32
	mov	RBX, R8
	mov	R14D, EDX
	mov	RDI, RCX
	mov	ECX, DWORD PTR [RDI + 4]
	mov	EDX, DWORD PTR [RDI + 8]
	xor	EAX, EAX
	sub	ECX, EDX
	je	.LBB277_7
# BB#1:                                 # %if.end
	test	ECX, ECX
	jns	.LBB277_3
# BB#2:                                 # %if.then2
	add	ECX, DWORD PTR [RDI]
.LBB277_3:                              # %if.end3
	cmp	ECX, R14D
	cmovg	ECX, R14D
	mov	EBP, DWORD PTR [RDI + 8]
	add	EBP, ECX
	mov	EAX, DWORD PTR [RDI]
	xor	EDX, EDX
	cmp	EBP, EAX
	cmovge	EDX, EAX
	sub	EBP, EDX
	mov	EDX, DWORD PTR [RDI + 8]
	movsxd	RSI, DWORD PTR [RDI + 8]
	cmp	EBP, EDX
	jle	.LBB277_5
# BB#4:                                 # %if.then15
	lea	RDX, QWORD PTR [RDI + RSI + 12]
	movsxd	R8, ECX
	mov	RCX, RBX
	call	memcpy
	mov	DWORD PTR [RDI + 8], EBP
	jmp	.LBB277_6
.LBB277_5:                              # %if.else
	movsxd	RCX, DWORD PTR [RDI + 8]
	lea	RDX, QWORD PTR [RDI + RCX + 12]
	sub	EAX, ESI
	movsxd	RSI, EAX
	mov	RCX, RBX
	mov	R8, RSI
	call	memcpy
	add	RBX, RSI
	lea	RDX, QWORD PTR [RDI + 12]
	movsxd	RSI, EBP
	mov	RCX, RBX
	mov	R8, RSI
	call	memcpy
	mov	DWORD PTR [RDI + 8], ESI
.LBB277_6:                              # %if.else
	mov	EAX, R14D
.LBB277_7:                              # %return
	add	RSP, 32
	pop	RBX
	pop	RBP
	pop	RDI
	pop	RSI
	pop	R14
	ret

	.def	 PutToBuffer;
	.scl	2;
	.type	32;
	.endef
	.globl	PutToBuffer
	.align	16, 0x90
PutToBuffer:                            # @PutToBuffer
# BB#0:                                 # %entry
	push	R14
	push	RSI
	push	RDI
	push	RBP
	push	RBX
	sub	RSP, 32
	mov	R14, R8
	mov	ESI, EDX
	mov	RDI, RCX
	xor	EAX, EAX
	test	ESI, ESI
	je	.LBB278_8
# BB#1:                                 # %if.end
	mov	ECX, DWORD PTR [RDI + 8]
	sub	ECX, DWORD PTR [RDI + 4]
	test	ECX, ECX
	jg	.LBB278_3
# BB#2:                                 # %if.then2
	add	ECX, DWORD PTR [RDI]
.LBB278_3:                              # %if.end3
	cmp	ECX, ESI
	jle	.LBB278_8
# BB#4:                                 # %if.end6
	mov	EBP, DWORD PTR [RDI + 4]
	add	EBP, ESI
	mov	EAX, DWORD PTR [RDI]
	xor	ECX, ECX
	cmp	EBP, EAX
	cmovge	ECX, EAX
	sub	EBP, ECX
	mov	ECX, DWORD PTR [RDI + 4]
	movsxd	RDX, DWORD PTR [RDI + 4]
	cmp	EBP, ECX
	jle	.LBB278_6
# BB#5:                                 # %if.then17
	lea	RCX, QWORD PTR [RDI + RDX + 12]
	movsxd	R8, ESI
	mov	RDX, R14
	call	memcpy
	mov	DWORD PTR [RDI + 4], EBP
	jmp	.LBB278_7
.LBB278_6:                              # %if.else
	movsxd	RCX, DWORD PTR [RDI + 4]
	lea	RCX, QWORD PTR [RDI + RCX + 12]
	sub	EAX, EDX
	movsxd	RBX, EAX
	mov	RDX, R14
	mov	R8, RBX
	call	memcpy
	add	R14, RBX
	lea	RCX, QWORD PTR [RDI + 12]
	movsxd	RBX, EBP
	mov	RDX, R14
	mov	R8, RBX
	call	memcpy
	mov	DWORD PTR [RDI + 4], EBX
.LBB278_7:                              # %if.else
	mov	EAX, ESI
.LBB278_8:                              # %return
	add	RSP, 32
	pop	RBX
	pop	RBP
	pop	RDI
	pop	RSI
	pop	R14
	ret

	.data
	.globl	RTWinTimerCount         # @RTWinTimerCount
	.align	4
RTWinTimerCount:
	.long	1                       # 0x1

	.globl	RTWinTimers             # @RTWinTimers
	.align	16
RTWinTimers:
	.quad	4599075939470750515     # double 3.000000e-01
	.quad	0                       # double 0.000000e+00

	.comm	sl_drivepoint_M_,912,3  # @sl_drivepoint_M_
	.globl	sl_drivepoint_M         # @sl_drivepoint_M
	.align	8
sl_drivepoint_M:
	.quad	sl_drivepoint_M_

	.comm	sl_drivepoint_PrevZCX,1,0 # @sl_drivepoint_PrevZCX
	.comm	sl_drivepoint_X,24,3    # @sl_drivepoint_X
	.comm	sl_drivepoint_B,80,3    # @sl_drivepoint_B
	.comm	sl_drivepoint_Y,24,3    # @sl_drivepoint_Y
	.comm	sl_drivepoint_DW,32,3   # @sl_drivepoint_DW
.L.str:                                 # @.str
	.asciz	 "ode3"

sl_drivepoint.rtAlwaysEnabled:          # @sl_drivepoint.rtAlwaysEnabled
	.byte	1                       # 0x1

	.lcomm	sl_drivepoint.rt_ExtModeInfo,40,8 # @sl_drivepoint.rt_ExtModeInfo
	.lcomm	sl_drivepoint.systemRan,24,16 # @sl_drivepoint.systemRan
	.lcomm	sl_drivepoint.dtInfo,72,8 # @sl_drivepoint.dtInfo
	.align	16                      # @rtDataTypeSizes
rtDataTypeSizes:
	.long	8                       # 0x8
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	4                       # 0x4
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8

	.align	16                      # @rtDataTypeNames
rtDataTypeNames:
	.quad	.L.str1
	.quad	.L.str2
	.quad	.L.str3
	.quad	.L.str4
	.quad	.L.str5
	.quad	.L.str6
	.quad	.L.str7
	.quad	.L.str8
	.quad	.L.str9
	.quad	.L.str10
	.quad	.L.str11
	.quad	.L.str12
	.quad	.L.str13
	.quad	.L.str14

	.align	8                       # @rtBTransTable
rtBTransTable:
	.long	3                       # 0x3
	.zero	4
	.quad	rtBTransitions

	.align	8                       # @rtPTransTable
rtPTransTable:
	.long	1                       # 0x1
	.zero	4
	.quad	rtPTransitions

	.align	16                      # @rtPTransitions
rtPTransitions:
	.quad	sl_drivepoint_P
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	11                      # 0xb
	.zero	4

	.align	16                      # @rtBTransitions
rtBTransitions:
	.quad	sl_drivepoint_B
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	10                      # 0xa
	.zero	4
	.quad	sl_drivepoint_DW
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.zero	4
	.quad	sl_drivepoint_DW+16
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	2                       # 0x2
	.zero	4

.L.str1:                                # @.str1
	.asciz	 "real_T"

.L.str2:                                # @.str2
	.asciz	 "real32_T"

.L.str3:                                # @.str3
	.asciz	 "int8_T"

.L.str4:                                # @.str4
	.asciz	 "uint8_T"

.L.str5:                                # @.str5
	.asciz	 "int16_T"

.L.str6:                                # @.str6
	.asciz	 "uint16_T"

.L.str7:                                # @.str7
	.asciz	 "int32_T"

.L.str8:                                # @.str8
	.asciz	 "uint32_T"

.L.str9:                                # @.str9
	.asciz	 "boolean_T"

.L.str10:                               # @.str10
	.asciz	 "fcn_call_T"

.L.str11:                               # @.str11
	.asciz	 "int_T"

.L.str12:                               # @.str12
	.asciz	 "pointer_T"

.L.str13:                               # @.str13
	.asciz	 "action_T"

.L.str14:                               # @.str14
	.asciz	 "timer_uint32_pair_T"

	.globl	sl_drivepoint_P         # @sl_drivepoint_P
	.align	8
sl_drivepoint_P:
	.quad	4620693217682128896     # double 8.000000e+00
	.quad	4617315517961601024     # double 5.000000e+00
	.quad	4609753056924675352     # double 1.570796e+00
	.quad	4617315517961601024     # double 5.000000e+00
	.quad	4617315517961601024     # double 5.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
                                        #  (0x0)
	.quad	4607182418800017408     # double 1.000000e+00
                                        #  (0x0)
	.quad	0                       # double 0.000000e+00
                                        #  (0x0)
	.quad	4607182418800017408     # double 1.000000e+00
                                        #  (0x0)
	.quad	4602678819172646912     # double 5.000000e-01
                                        #  (0x0)
	.quad	4616189618054758400     # double 4.000000e+00
                                        #  (0x0)

	.globl	modelStatus             # @modelStatus
	.align	4
modelStatus:
	.long	1                       # 0x1

	.lcomm	S,8,8                   # @S
	.lcomm	modelStopped.b,1        # @modelStopped.b
	.comm	ExtInfo,32,3            # @ExtInfo
	.comm	startModel,4,2          # @startModel
.L.str15:                               # @.str15
	.asciz	 "Start time must be zero for real-time systems.  For non-zero start times you must use the Simulink solver module"

	.lcomm	extUD,8,8               # @extUD
.L.str22:                               # @.str22
	.asciz	 "Could not create external mode user data.  Out of memory.\n"

	.lcomm	connected,1             # @connected
.L.str123:                              # @.str123
	.asciz	 "SendPktDataToHost() failed on data upload.\n"

.L.str224:                              # @.str224
	.asciz	 "\nError occurred getting packet header.\n"

	.lcomm	commInitialized.b,1     # @commInitialized.b
	.align	16                      # @ERRMSG_PROCESSSELECTSIGNAL
ERRMSG_PROCESSSELECTSIGNAL:
	.asciz	 "\nError in UploadLogInfoInit(). Most likely a memory\nallocation error or an attempt to re-initialize the\nsignal selection during the data logging process\n(i.e., multiple EXT_SELECT_SIGNAL packets were received\nbefore the logging session terminated or an\nEXT_CANCEL_LOGGING packet was received)\n"

	.align	16                      # @ERRMSG_PROCESSSELECTTRIGGER
ERRMSG_PROCESSSELECTTRIGGER:
	.asciz	 "\nError in UploadInitTrigger(). Most likely a memory\nallocation error or an attempt to re-initialize the\ntrigger selection during the data logging process\n(i.e., multiple EXT_SELECT_TRIGGER packets were received\nbefore the logging session terminated or an\nEXT_CANCEL_LOGGING packet was received)\n"

.L.str325:                              # @.str325
	.asciz	 "received invalid packet.\n"

.L.str426:                              # @.str426
	.asciz	 "Error occurred in rt_PktServerWork.\nDisconnecting from host!\n"

.L.str527:                              # @.str527
	.asciz	 "\nError sending EXT_MODEL_SHUTDOWN packet to host.\n"

	.lcomm	pktBuf,8,8              # @pktBuf
.L.str628:                              # @.str628
	.asciz	 "Previous pkt from host thrown away due to lack of memory.\n"

.L.str729:                              # @.str729
	.asciz	 "ExtGetHostPkt() failed.\n"

	.lcomm	ClearPkt.buffer,1       # @ClearPkt.buffer
	.lcomm	pktBufSize,4,4          # @pktBufSize
.L.str830:                              # @.str830
	.asciz	 "ExtSetHostPkt() failed for 1st EXT_CONNECT_RESPONSE.\n"

.L.str931:                              # @.str931
	.asciz	 "ExtSetHostPkt() failed for 2nd EXT_CONNECT_RESPONSE.\n"

.L.str1032:                             # @.str1032
	.asciz	 "ExtSetHostPkt() failed.\n"

.L.str1133:                             # @.str1133
	.asciz	 "%s\n"

	.globl	host_upstatus_is_uploading # @host_upstatus_is_uploading
host_upstatus_is_uploading:
	.byte	0                       # 0x0

	.lcomm	UploadLogInfoReset.firstTime.b,1 # @UploadLogInfoReset.firstTime.b
	.comm	uploadInfoArray,288,4   # @uploadInfoArray
	.comm	rtNaN,8,3               # @rtNaN
	.comm	rtNaNF,4,2              # @rtNaNF
	.comm	rtInf,8,3               # @rtInf
	.comm	rtInfF,4,2              # @rtInfF
	.comm	rtMinusInf,8,3          # @rtMinusInf
	.comm	rtMinusInfF,4,2         # @rtMinusInfF
	.align	16                      # @rt_ZCFcn.eventMatrix
rt_ZCFcn.eventMatrix:
	.asciz	 "\000\004 "
	.asciz	 "\020\000\b"
	.asciz	 "\002\001\000"
	.zero	4

	.align	8                       # @__imp___chkstk
__imp___chkstk:
	.quad	__exp___chkstk

	.align	8                       # @__imp_RTBIO_DriverIO
__imp_RTBIO_DriverIO:
	.quad	__exp_RTBIO_DriverIO

	.align	8                       # @__imp_RTBIO_MapDeviceMemory
__imp_RTBIO_MapDeviceMemory:
	.quad	__exp_RTBIO_MapDeviceMemory

	.align	8                       # @__imp_RTBIO_UnmapDeviceMemory
__imp_RTBIO_UnmapDeviceMemory:
	.quad	__exp_RTBIO_UnmapDeviceMemory

	.globl	__imp_printf            # @__imp_printf
	.align	8
__imp_printf:
	.quad	__exp_printf

.L.str94:                               # @.str94
	.asciz	 "Assertion failed: %s, function: %s, file: %s, line: %d\n"

	.globl	__imp_isalnum           # @__imp_isalnum
	.align	8
__imp_isalnum:
	.quad	__exp_isalnum

	.globl	__imp_isalpha           # @__imp_isalpha
	.align	8
__imp_isalpha:
	.quad	__exp_isalpha

	.globl	__imp_iscntrl           # @__imp_iscntrl
	.align	8
__imp_iscntrl:
	.quad	__exp_iscntrl

	.globl	__imp_isdigit           # @__imp_isdigit
	.align	8
__imp_isdigit:
	.quad	__exp_isdigit

	.globl	__imp_isgraph           # @__imp_isgraph
	.align	8
__imp_isgraph:
	.quad	__exp_isgraph

	.globl	__imp_islower           # @__imp_islower
	.align	8
__imp_islower:
	.quad	__exp_islower

	.globl	__imp_isprint           # @__imp_isprint
	.align	8
__imp_isprint:
	.quad	__exp_isprint

	.globl	__imp_ispunct           # @__imp_ispunct
	.align	8
__imp_ispunct:
	.quad	__exp_ispunct

	.globl	__imp_isspace           # @__imp_isspace
	.align	8
__imp_isspace:
	.quad	__exp_isspace

	.globl	__imp_isupper           # @__imp_isupper
	.align	8
__imp_isupper:
	.quad	__exp_isupper

	.globl	__imp_isxdigit          # @__imp_isxdigit
	.align	8
__imp_isxdigit:
	.quad	__exp_isxdigit

	.globl	__imp_tolower           # @__imp_tolower
	.align	8
__imp_tolower:
	.quad	__exp_tolower

	.globl	__imp_toupper           # @__imp_toupper
	.align	8
__imp_toupper:
	.quad	__exp_toupper

	.globl	_errno                  # @_errno
	.align	4
_errno:
	.long	0                       # 0x0

	.align	8                       # @__imp_acos
__imp_acos:
	.quad	__exp_acos

	.align	8                       # @__imp_acosf
__imp_acosf:
	.quad	__exp_acosf

	.align	8                       # @__imp_asin
__imp_asin:
	.quad	__exp_asin

	.align	8                       # @__imp_asinf
__imp_asinf:
	.quad	__exp_asinf

	.align	8                       # @__imp_atan
__imp_atan:
	.quad	__exp_atan

	.align	8                       # @__imp_atanf
__imp_atanf:
	.quad	__exp_atanf

	.align	8                       # @__imp_atan2
__imp_atan2:
	.quad	__exp_atan2

	.align	8                       # @__imp_atan2f
__imp_atan2f:
	.quad	__exp_atan2f

	.align	8                       # @__imp_cos
__imp_cos:
	.quad	__exp_cos

	.align	8                       # @__imp_cosf
__imp_cosf:
	.quad	__exp_cosf

	.align	8                       # @__imp_sin
__imp_sin:
	.quad	__exp_sin

	.align	8                       # @__imp_sinf
__imp_sinf:
	.quad	__exp_sinf

	.align	8                       # @__imp_tan
__imp_tan:
	.quad	__exp_tan

	.align	8                       # @__imp_tanf
__imp_tanf:
	.quad	__exp_tanf

	.align	8                       # @__imp_cosh
__imp_cosh:
	.quad	__exp_cosh

	.align	8                       # @__imp_coshf
__imp_coshf:
	.quad	__exp_coshf

	.align	8                       # @__imp_sinh
__imp_sinh:
	.quad	__exp_sinh

	.align	8                       # @__imp_sinhf
__imp_sinhf:
	.quad	__exp_sinhf

	.align	8                       # @__imp_tanh
__imp_tanh:
	.quad	__exp_tanh

	.align	8                       # @__imp_exp
__imp_exp:
	.quad	__exp_exp

	.align	8                       # @__imp_expf
__imp_expf:
	.quad	__exp_expf

	.align	8                       # @__imp_frexp
__imp_frexp:
	.quad	__exp_frexp

	.align	8                       # @__imp_ldexp
__imp_ldexp:
	.quad	__exp_ldexp

	.align	8                       # @__imp_log
__imp_log:
	.quad	__exp_log

	.align	8                       # @__imp_logf
__imp_logf:
	.quad	__exp_logf

	.align	8                       # @__imp_log10
__imp_log10:
	.quad	__exp_log10

	.align	8                       # @__imp_log10f
__imp_log10f:
	.quad	__exp_log10f

	.align	8                       # @__imp_modf
__imp_modf:
	.quad	__exp_modf

	.align	8                       # @__imp_modff
__imp_modff:
	.quad	__exp_modff

	.align	8                       # @__imp_fabs
__imp_fabs:
	.quad	__exp_fabs

	.align	8                       # @__imp_hypot
__imp_hypot:
	.quad	__exp_hypot

	.align	8                       # @__imp_pow
__imp_pow:
	.quad	__exp_pow

	.align	8                       # @__imp_powf
__imp_powf:
	.quad	__exp_powf

	.align	8                       # @__imp_sqrt
__imp_sqrt:
	.quad	__exp_sqrt

	.align	8                       # @__imp_sqrtf
__imp_sqrtf:
	.quad	__exp_sqrtf

	.align	8                       # @__imp_ceil
__imp_ceil:
	.quad	__exp_ceil

	.align	8                       # @__imp_ceilf
__imp_ceilf:
	.quad	__exp_ceilf

	.align	8                       # @__imp_floor
__imp_floor:
	.quad	__exp_floor

	.align	8                       # @__imp_floorf
__imp_floorf:
	.quad	__exp_floorf

	.align	8                       # @__imp_fmod
__imp_fmod:
	.quad	__exp_fmod

	.align	8                       # @__imp_fmodf
__imp_fmodf:
	.quad	__exp_fmodf

	.align	8                       # @__imp__inp
__imp__inp:
	.quad	__exp__inp

	.align	8                       # @__imp__inpw
__imp__inpw:
	.quad	__exp__inpw

	.align	8                       # @__imp__inpd
__imp__inpd:
	.quad	__exp__inpd

	.align	8                       # @__imp__outp
__imp__outp:
	.quad	__exp__outp

	.align	8                       # @__imp__outpw
__imp__outpw:
	.quad	__exp__outpw

	.align	8                       # @__imp__outpd
__imp__outpd:
	.quad	__exp__outpd

	.globl	__imp_snprintf          # @__imp_snprintf
	.align	8
__imp_snprintf:
	.quad	__exp_snprintf

	.globl	__imp_sprintf           # @__imp_sprintf
	.align	8
__imp_sprintf:
	.quad	__exp_sprintf

	.globl	__imp_sscanf            # @__imp_sscanf
	.align	8
__imp_sscanf:
	.quad	__exp_sscanf

	.align	8                       # @__imp_vsnprintf
__imp_vsnprintf:
	.quad	__exp_vsnprintf

	.align	8                       # @__imp_vsprintf
__imp_vsprintf:
	.quad	__exp_vsprintf

.L.str195:                              # @.str195
	.asciz	 "%c"

.L.str296:                              # @.str296
	.asciz	 "%s"

.L.str397:                              # @.str397
	.asciz	 "%s : Error\n"

	.align	8                       # @__imp_atof
__imp_atof:
	.quad	__exp_atof

	.align	8                       # @__imp_atoi
__imp_atoi:
	.quad	__exp_atoi

	.align	8                       # @__imp_atol
__imp_atol:
	.quad	__exp_atol

	.align	8                       # @__imp_strtod
__imp_strtod:
	.quad	__exp_strtod

	.align	8                       # @__imp_strtol
__imp_strtol:
	.quad	__exp_strtol

	.align	8                       # @__imp_strtoul
__imp_strtoul:
	.quad	__exp_strtoul

	.align	8                       # @__imp_rand
__imp_rand:
	.quad	__exp_rand

	.align	8                       # @__imp_srand
__imp_srand:
	.quad	__exp_srand

	.align	8                       # @__imp_calloc
__imp_calloc:
	.quad	__exp_calloc

	.align	8                       # @__imp_free
__imp_free:
	.quad	__exp_free

	.align	8                       # @__imp_malloc
__imp_malloc:
	.quad	__exp_malloc

	.align	8                       # @__imp_realloc
__imp_realloc:
	.quad	__exp_realloc

	.align	8                       # @__imp_bsearch
__imp_bsearch:
	.quad	__exp_bsearch

	.align	8                       # @__imp_qsort
__imp_qsort:
	.quad	__exp_qsort

	.align	8                       # @__imp_abs
__imp_abs:
	.quad	__exp_abs

	.align	8                       # @__imp_labs
__imp_labs:
	.quad	__exp_labs

	.align	8                       # @__imp_div
__imp_div:
	.quad	__exp_div

	.align	8                       # @__imp_ldiv
__imp_ldiv:
	.quad	__exp_ldiv

	.align	8                       # @__imp_mblen
__imp_mblen:
	.quad	__exp_mblen

	.align	8                       # @__imp_mbtowc
__imp_mbtowc:
	.quad	__exp_mbtowc

	.align	8                       # @__imp_wctomb
__imp_wctomb:
	.quad	__exp_wctomb

	.align	8                       # @__imp_mbstowcs
__imp_mbstowcs:
	.quad	__exp_mbstowcs

	.align	8                       # @__imp_wcstombs
__imp_wcstombs:
	.quad	__exp_wcstombs

	.align	8                       # @__imp_memcpy
__imp_memcpy:
	.quad	__exp_memcpy

	.align	8                       # @__imp_memmove
__imp_memmove:
	.quad	__exp_memmove

	.align	8                       # @__imp_strcpy
__imp_strcpy:
	.quad	__exp_strcpy

	.align	8                       # @__imp_strncpy
__imp_strncpy:
	.quad	__exp_strncpy

	.align	8                       # @__imp_strcat
__imp_strcat:
	.quad	__exp_strcat

	.align	8                       # @__imp_strncat
__imp_strncat:
	.quad	__exp_strncat

	.align	8                       # @__imp_memcmp
__imp_memcmp:
	.quad	__exp_memcmp

	.align	8                       # @__imp_strcmp
__imp_strcmp:
	.quad	__exp_strcmp

	.align	8                       # @__imp_strcoll
__imp_strcoll:
	.quad	__exp_strcoll

	.align	8                       # @__imp_strncmp
__imp_strncmp:
	.quad	__exp_strncmp

	.align	8                       # @__imp_strxfrm
__imp_strxfrm:
	.quad	__exp_strxfrm

	.align	8                       # @__imp_memchr
__imp_memchr:
	.quad	__exp_memchr

	.align	8                       # @__imp_strchr
__imp_strchr:
	.quad	__exp_strchr

	.align	8                       # @__imp_strcspn
__imp_strcspn:
	.quad	__exp_strcspn

	.align	8                       # @__imp_strpbrk
__imp_strpbrk:
	.quad	__exp_strpbrk

	.align	8                       # @__imp_strrchr
__imp_strrchr:
	.quad	__exp_strrchr

	.align	8                       # @__imp_strspn
__imp_strspn:
	.quad	__exp_strspn

	.align	8                       # @__imp_strstr
__imp_strstr:
	.quad	__exp_strstr

	.align	8                       # @__imp_strtok
__imp_strtok:
	.quad	__exp_strtok

	.align	8                       # @__imp_memset
__imp_memset:
	.quad	__exp_memset

.L.str498:                              # @.str498
	.asciz	 "Error"

	.align	8                       # @__imp_strlen
__imp_strlen:
	.quad	__exp_strlen

	.comm	SB,131104,3             # @SB

