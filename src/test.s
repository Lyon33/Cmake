	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0
	.globl	__ZN5Stock6SetTolEv             ; -- Begin function _ZN5Stock6SetTolEv
	.p2align	2
__ZN5Stock6SetTolEv:                    ; @_ZN5Stock6SetTolEv
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0, #24]
	ldr	w9, [x0, #32]
	mul	w8, w9, w8
	str	w8, [x0, #32]
	mov	x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5StockC2Ev                  ; -- Begin function _ZN5StockC2Ev
	.p2align	2
__ZN5StockC2Ev:                         ; @_ZN5StockC2Ev
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	stp	xzr, xzr, [x0]
	str	xzr, [x0, #16]
Ltmp0:
Lloh0:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh1:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh2:
	adrp	x1, l_.str@PAGE
Lloh3:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #20
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp1:
; %bb.1:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB1_2:
Ltmp2:
	mov	x20, x0
	ldrsb	w8, [x19, #23]
	tbz	w8, #31, LBB1_4
; %bb.3:
	ldr	x0, [x19]
	bl	__ZdlPv
LBB1_4:
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Lfunc_end0-Ltmp1               ;   Call between Ltmp1 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5StockC1Ev                  ; -- Begin function _ZN5StockC1Ev
	.p2align	2
__ZN5StockC1Ev:                         ; @_ZN5StockC1Ev
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	stp	xzr, xzr, [x0]
	str	xzr, [x0, #16]
Ltmp3:
Lloh4:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh5:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh6:
	adrp	x1, l_.str@PAGE
Lloh7:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #20
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp4:
; %bb.1:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB2_2:
Ltmp5:
	mov	x20, x0
	ldrsb	w8, [x19, #23]
	tbz	w8, #31, LBB2_4
; %bb.3:
	ldr	x0, [x19]
	bl	__ZdlPv
LBB2_4:
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp3-Lfunc_begin1             ; >> Call Site 1 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin1             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin1             ; >> Call Site 2 <<
	.uleb128 Lfunc_end1-Ltmp4               ;   Call between Ltmp4 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5StockD2Ev                  ; -- Begin function _ZN5StockD2Ev
	.p2align	2
__ZN5StockD2Ev:                         ; @_ZN5StockD2Ev
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Ltmp6:
Lloh8:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh9:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh10:
	adrp	x1, l_.str.1@PAGE
Lloh11:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #14
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp7:
; %bb.1:
	ldrsb	w8, [x19, #23]
	tbz	w8, #31, LBB3_3
; %bb.2:
	ldr	x0, [x19]
	bl	__ZdlPv
LBB3_3:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB3_4:
Ltmp8:
	mov	x20, x0
	mov	x0, x19
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x20
	bl	___clang_call_terminate
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh8, Lloh9
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp6-Lfunc_begin2             ; >> Call Site 1 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin2             ;     jumps to Ltmp8
	.byte	1                               ;   On action: 1
Lcst_end2:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
                                        ; -- End function
	.globl	__ZN5StockD1Ev                  ; -- Begin function _ZN5StockD1Ev
	.p2align	2
__ZN5StockD1Ev:                         ; @_ZN5StockD1Ev
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Ltmp9:
Lloh12:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh13:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh14:
	adrp	x1, l_.str.1@PAGE
Lloh15:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #14
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp10:
; %bb.1:
	ldrsb	w8, [x19, #23]
	tbz	w8, #31, LBB5_3
; %bb.2:
	ldr	x0, [x19]
	bl	__ZdlPv
LBB5_3:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB5_4:
Ltmp11:
	mov	x20, x0
	mov	x0, x19
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x20
	bl	___clang_call_terminate
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh12, Lloh13
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp9-Lfunc_begin3             ; >> Call Site 1 <<
	.uleb128 Ltmp10-Ltmp9                   ;   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin3            ;     jumps to Ltmp11
	.byte	1                               ;   On action: 1
Lcst_end3:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5StockC2ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEiii ; -- Begin function _ZN5StockC2ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEiii
	.p2align	2
__ZN5StockC2ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEiii: ; @_ZN5StockC2ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEiii
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x20, x4
	mov	x21, x3
	mov	x22, x2
	mov	x19, x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
	str	w22, [x0, #24]
	strh	w21, [x0, #28]
	str	w20, [x0, #32]
Ltmp12:
Lloh16:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh17:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh18:
	adrp	x1, l_.str.2@PAGE
Lloh19:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #30
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp13:
; %bb.1:
Ltmp14:
Lloh20:
	adrp	x1, l_.str.3@PAGE
Lloh21:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp15:
; %bb.2:
Ltmp16:
Lloh22:
	adrp	x1, l_.str.4@PAGE
Lloh23:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #9
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp17:
; %bb.3:
	ldrh	w1, [x19, #28]
Ltmp18:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt
Ltmp19:
; %bb.4:
Ltmp20:
Lloh24:
	adrp	x1, l_.str.5@PAGE
Lloh25:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #10
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp21:
; %bb.5:
	ldr	w1, [x19, #24]
Ltmp22:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp23:
; %bb.6:
Ltmp24:
Lloh26:
	adrp	x1, l_.str.6@PAGE
Lloh27:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #16
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp25:
; %bb.7:
	ldrsb	w8, [x19, #23]
	cmp	w8, #0                          ; =0
	ldp	x9, x10, [x19]
	csel	x1, x9, x19, lt
	and	x8, x8, #0xff
	csel	x2, x10, x8, lt
Ltmp26:
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp27:
; %bb.8:
Ltmp28:
Lloh28:
	adrp	x1, l_.str.7@PAGE
Lloh29:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #9
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp29:
; %bb.9:
	ldr	w1, [x19, #32]
Ltmp30:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp31:
; %bb.10:
Ltmp32:
Lloh30:
	adrp	x1, l_.str.3@PAGE
Lloh31:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp33:
; %bb.11:
	mov	x0, x19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB6_12:
Ltmp34:
	mov	x20, x0
	ldrsb	w8, [x19, #23]
	tbz	w8, #31, LBB6_14
; %bb.13:
	ldr	x0, [x19]
	bl	__ZdlPv
LBB6_14:
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpLdrGot	Lloh16, Lloh17
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh30, Lloh31
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp12-Lfunc_begin4            ;   Call between Lfunc_begin4 and Ltmp12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp33-Ltmp12                  ;   Call between Ltmp12 and Ltmp33
	.uleb128 Ltmp34-Lfunc_begin4            ;     jumps to Ltmp34
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin4            ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp33              ;   Call between Ltmp33 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5StockC1ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEiii ; -- Begin function _ZN5StockC1ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEiii
	.p2align	2
__ZN5StockC1ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEiii: ; @_ZN5StockC1ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEiii
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN5StockC2ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEiii
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #160                    ; =160
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144                   ; =144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	w0, #40
	bl	__Znwm
	mov	x20, x0
	mov	w8, #5
	sturb	w8, [x29, #-17]
	mov	w8, #28737
	movk	w8, #27760, lsl #16
	stur	w8, [x29, #-40]
	mov	w8, #101
	sturh	w8, [x29, #-36]
Ltmp35:
	sub	x1, x29, #40                    ; =40
	mov	w2, #200
	mov	w3, #50
	mov	w4, #10156
	bl	__ZN5StockC2ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEiii
Ltmp36:
; %bb.1:
	ldursb	w8, [x29, #-17]
	tbz	w8, #31, LBB8_3
; %bb.2:
	ldur	x0, [x29, #-40]
	bl	__ZdlPv
LBB8_3:
	mov	w8, #7
	strb	w8, [sp, #63]
	mov	w8, #25933
	movk	w8, #27000, lsl #16
	str	w8, [sp, #40]
	mov	w8, #25449
	movk	w8, #28257, lsl #16
	stur	w8, [sp, #43]
	strb	wzr, [sp, #47]
Ltmp38:
	add	x0, sp, #64                     ; =64
	add	x1, sp, #40                     ; =40
	mov	w2, #100
	mov	w3, #25
	mov	w4, #2500
	bl	__ZN5StockC2ENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEiii
Ltmp39:
; %bb.4:
	ldrsb	w8, [sp, #63]
	tbz	w8, #31, LBB8_6
; %bb.5:
	ldr	x0, [sp, #40]
	bl	__ZdlPv
LBB8_6:
	stp	xzr, xzr, [sp]
	str	xzr, [sp, #16]
Ltmp41:
Lloh32:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh33:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh34:
	adrp	x1, l_.str@PAGE
Lloh35:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #20
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp42:
; %bb.7:
Ltmp44:
Lloh36:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh37:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh38:
	adrp	x1, l_.str.1@PAGE
Lloh39:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #14
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp45:
; %bb.8:
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB8_10
; %bb.9:
	ldr	x0, [sp]
	bl	__ZdlPv
LBB8_10:
Ltmp47:
Lloh40:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh41:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh42:
	adrp	x1, l_.str.1@PAGE
Lloh43:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	w2, #14
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp48:
; %bb.11:
	ldrsb	w8, [sp, #87]
	tbz	w8, #31, LBB8_13
; %bb.12:
	ldr	x0, [sp, #64]
	bl	__ZdlPv
LBB8_13:
	mov	w0, #0
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #160                    ; =160
	ret
LBB8_14:
Ltmp49:
	mov	x19, x0
	add	x0, sp, #64                     ; =64
	b	LBB8_16
LBB8_15:
Ltmp46:
	mov	x19, x0
	mov	x0, sp
LBB8_16:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x19
	bl	___clang_call_terminate
LBB8_17:
Ltmp43:
	mov	x19, x0
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB8_19
; %bb.18:
	ldr	x0, [sp]
	bl	__ZdlPv
LBB8_19:
	add	x0, sp, #64                     ; =64
	bl	__ZN5StockD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB8_20:
Ltmp40:
	mov	x19, x0
	ldrsb	w8, [sp, #63]
	tbz	w8, #31, LBB8_26
; %bb.21:
	ldr	x0, [sp, #40]
	b	LBB8_25
LBB8_22:
Ltmp37:
	mov	x19, x0
	ldursb	w8, [x29, #-17]
	tbz	w8, #31, LBB8_24
; %bb.23:
	ldur	x0, [x29, #-40]
	bl	__ZdlPv
LBB8_24:
	mov	x0, x20
LBB8_25:
	bl	__ZdlPv
LBB8_26:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpLdrGot	Lloh32, Lloh33
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpLdrGot	Lloh36, Lloh37
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpLdrGot	Lloh40, Lloh41
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table8:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp35-Lfunc_begin5            ;   Call between Lfunc_begin5 and Ltmp35
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp36-Ltmp35                  ;   Call between Ltmp35 and Ltmp36
	.uleb128 Ltmp37-Lfunc_begin5            ;     jumps to Ltmp37
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Ltmp39-Ltmp38                  ;   Call between Ltmp38 and Ltmp39
	.uleb128 Ltmp40-Lfunc_begin5            ;     jumps to Ltmp40
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin5            ; >> Call Site 4 <<
	.uleb128 Ltmp42-Ltmp41                  ;   Call between Ltmp41 and Ltmp42
	.uleb128 Ltmp43-Lfunc_begin5            ;     jumps to Ltmp43
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin5            ; >> Call Site 5 <<
	.uleb128 Ltmp45-Ltmp44                  ;   Call between Ltmp44 and Ltmp45
	.uleb128 Ltmp46-Lfunc_begin5            ;     jumps to Ltmp46
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp47-Lfunc_begin5            ; >> Call Site 6 <<
	.uleb128 Ltmp48-Ltmp47                  ;   Call between Ltmp47 and Ltmp48
	.uleb128 Ltmp49-Lfunc_begin5            ;     jumps to Ltmp49
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp48-Lfunc_begin5            ; >> Call Site 7 <<
	.uleb128 Lfunc_end5-Ltmp48              ;   Call between Ltmp48 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #112                    ; =112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96                    ; =96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp50:
	add	x0, sp, #8                      ; =8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp51:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB9_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w8, [x22, #144]
	cmn	w8, #1                          ; =1
	b.ne	LBB9_7
; %bb.3:
Ltmp53:
	add	x8, sp, #24                     ; =24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp54:
; %bb.4:
Ltmp55:
Lloh44:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh45:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24                     ; =24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp56:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp57:
	mov	w1, #32
	blr	x8
Ltmp58:
; %bb.6:
	mov	x24, x0
	add	x0, sp, #24                     ; =24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB9_7:
	add	x3, x20, x21
	ldrsb	w5, [x22, #144]
	mov	w8, #176
	and	w8, w25, w8
	cmp	w8, #32                         ; =32
	csel	x2, x3, x20, eq
Ltmp60:
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp61:
; %bb.8:
	cbnz	x0, LBB9_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5
	orr	w1, w8, w9
Ltmp63:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp64:
LBB9_10:
	add	x0, sp, #8                      ; =8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB9_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112                    ; =112
	ret
LBB9_12:
Ltmp65:
	b	LBB9_15
LBB9_13:
Ltmp59:
	mov	x20, x0
	add	x0, sp, #24                     ; =24
	bl	__ZNSt3__16localeD1Ev
	b	LBB9_16
LBB9_14:
Ltmp62:
LBB9_15:
	mov	x20, x0
LBB9_16:
	add	x0, sp, #8                      ; =8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB9_18
LBB9_17:
Ltmp52:
	mov	x20, x0
LBB9_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp66:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp67:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB9_11
LBB9_20:
Ltmp68:
	mov	x19, x0
Ltmp69:
	bl	___cxa_end_catch
Ltmp70:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB9_22:
Ltmp71:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh44, Lloh45
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table9:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp50-Lfunc_begin6            ; >> Call Site 1 <<
	.uleb128 Ltmp51-Ltmp50                  ;   Call between Ltmp50 and Ltmp51
	.uleb128 Ltmp52-Lfunc_begin6            ;     jumps to Ltmp52
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp53-Lfunc_begin6            ; >> Call Site 2 <<
	.uleb128 Ltmp54-Ltmp53                  ;   Call between Ltmp53 and Ltmp54
	.uleb128 Ltmp62-Lfunc_begin6            ;     jumps to Ltmp62
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp55-Lfunc_begin6            ; >> Call Site 3 <<
	.uleb128 Ltmp58-Ltmp55                  ;   Call between Ltmp55 and Ltmp58
	.uleb128 Ltmp59-Lfunc_begin6            ;     jumps to Ltmp59
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp60-Lfunc_begin6            ; >> Call Site 4 <<
	.uleb128 Ltmp61-Ltmp60                  ;   Call between Ltmp60 and Ltmp61
	.uleb128 Ltmp62-Lfunc_begin6            ;     jumps to Ltmp62
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp63-Lfunc_begin6            ; >> Call Site 5 <<
	.uleb128 Ltmp64-Ltmp63                  ;   Call between Ltmp63 and Ltmp64
	.uleb128 Ltmp65-Lfunc_begin6            ;     jumps to Ltmp65
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp64-Lfunc_begin6            ; >> Call Site 6 <<
	.uleb128 Ltmp66-Ltmp64                  ;   Call between Ltmp64 and Ltmp66
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp66-Lfunc_begin6            ; >> Call Site 7 <<
	.uleb128 Ltmp67-Ltmp66                  ;   Call between Ltmp66 and Ltmp67
	.uleb128 Ltmp68-Lfunc_begin6            ;     jumps to Ltmp68
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp67-Lfunc_begin6            ; >> Call Site 8 <<
	.uleb128 Ltmp69-Ltmp67                  ;   Call between Ltmp67 and Ltmp69
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp69-Lfunc_begin6            ; >> Call Site 9 <<
	.uleb128 Ltmp70-Ltmp69                  ;   Call between Ltmp69 and Ltmp70
	.uleb128 Ltmp71-Lfunc_begin6            ;     jumps to Ltmp71
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp70-Lfunc_begin6            ; >> Call Site 10 <<
	.uleb128 Lfunc_end6-Ltmp70              ;   Call between Ltmp70 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #112                    ; =112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96                    ; =96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB10_15
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1                         ; =1
	b.lt	LBB10_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB10_14
LBB10_3:
	cmp	x23, #1                         ; =1
	b.lt	LBB10_11
; %bb.4:
	cmp	x23, #22                        ; =22
	b.hi	LBB10_6
; %bb.5:
	add	x25, sp, #8                     ; =8
	strb	w23, [sp, #31]
	b	LBB10_7
LBB10_6:
	add	x8, x23, #16                    ; =16
	and	x26, x8, #0xfffffffffffffff0
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB10_7:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0                          ; =0
	add	x8, sp, #8                      ; =8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp72:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp73:
; %bb.8:
	mov	x24, x0
	cmp	x0, x23
	csel	x19, x19, xzr, eq
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB10_10
; %bb.9:
	cmp	x24, x23
	b.ne	LBB10_14
	b	LBB10_11
LBB10_10:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB10_14
LBB10_11:
	sub	x22, x22, x21
	cmp	x22, #1                         ; =1
	b.lt	LBB10_13
; %bb.12:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB10_14
LBB10_13:
	str	xzr, [x20, #24]
	b	LBB10_15
LBB10_14:
	mov	x19, #0
LBB10_15:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112                    ; =112
	ret
LBB10_16:
Ltmp74:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB10_18
; %bb.17:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB10_18:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table10:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp72-Lfunc_begin7            ;   Call between Lfunc_begin7 and Ltmp72
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp72-Lfunc_begin7            ; >> Call Site 2 <<
	.uleb128 Ltmp73-Ltmp72                  ;   Call between Ltmp72 and Ltmp73
	.uleb128 Ltmp74-Lfunc_begin7            ;     jumps to Ltmp74
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp73-Lfunc_begin7            ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp73              ;   Call between Ltmp73 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\351\273\230\350\256\244\346\236\204\351\200\240\345\207\275\346\225\260.\n"

l_.str.1:                               ; @.str.1
	.asciz	"\346\236\220\346\236\204\345\207\275\346\225\260.\n"

l_.str.2:                               ; @.str.2
	.asciz	"\350\277\231\346\224\257\350\202\241\347\245\250\347\232\204\345\237\272\346\234\254\344\277\241\346\201\257\357\274\232"

l_.str.3:                               ; @.str.3
	.asciz	"\n"

l_.str.4:                               ; @.str.4
	.asciz	"\344\273\267\346\240\274\357\274\232"

l_.str.5:                               ; @.str.5
	.asciz	"\n\346\225\260\351\207\217\357\274\232"

l_.str.6:                               ; @.str.6
	.asciz	"\n\345\205\254\345\217\270\345\220\215\347\247\260\357\274\232"

l_.str.7:                               ; @.str.7
	.asciz	"\n\346\200\273\344\273\267: "

l_.str.8:                               ; @.str.8
	.asciz	"Apple"

l_.str.9:                               ; @.str.9
	.asciz	"Mexican"

.subsections_via_symbols
