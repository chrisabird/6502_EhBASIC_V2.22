
; minimal monitor for EhBASIC and 6502 simulator V1.05

; To run EhBASIC on the simulator load and assemble [F7] this file, start the simulator
; running [F6] then start the code with the RESET [CTRL][SHIFT]R. Just selecting RUN
; will do nothing, you'll still have to do a reset to run the code.

	.include "basic.asm"

; put the IRQ and MNI code in RAM so that it can be changed

IRQ_vec	= VEC_SV+2		; IRQ code vector
NMI_vec	= IRQ_vec+$0A	; NMI code vector


ACIAdat = $5000
ACIAsta = $5001
ACIAcmd = $5002
ACIActl = $5003

; setup for the 6502 simulator environment

; now the code. all this does is set up the vectors and interrupt code
; and wait for the user to select [C]old or [W]arm start. nothing else
; fits in less than 128 bytes

.segment "OS"

; reset vector points here

ACIA_init
	LDA #$00
	STA ACIAsta
	LDA #$1F
	STA ACIActl
	LDA #$0B
	STA ACIAcmd
	rts

RES_vec
	CLD				; clear decimal mode
	LDX	#$FF			; empty stack
	TXS				; set the stack
	JSR	ACIA_init
; set up vectors and interrupt code, copy them to page 2

	LDY	#END_CODE-LAB_vec	; set index/count
LAB_stlp
	LDA	LAB_vec-1,Y		; get byte from interrupt code
	STA	VEC_IN-1,Y		; save to RAM
	DEY				; decrement index/count
	BNE	LAB_stlp		; loop if more to do

; now do the signon message, Y = $00 here

LAB_signon
	LDA	LAB_mess,Y		; get byte from sign on message
	BEQ	LAB_nokey		; exit loop if done

	JSR	V_OUTP		; output character
	INY				; increment index
	BNE	LAB_signon		; loop, branch always

LAB_nokey
	JSR	V_INPT		; call scan input device

	BCC	LAB_nokey		; loop if no key
	
	JSR V_OUTP

	AND	#$DF			; mask xx0x xxxx, ensure upper case
	CMP	#'W'			; compare with [W]arm start
	BEQ	LAB_dowarm		; branch if [W]arm start

	CMP	#'C'			; compare with [C]old start
	BNE	RES_vec		; loop if not [C]old start

	JMP	LAB_COLD		; do EhBASIC cold start

LAB_dowarm
	JMP	LAB_WARM		; do EhBASIC warm start

; byte out to ACIA routine
ACIAout
	PHA
ACIAoutretry
	PLA
	STA	ACIAdat		; save byte to simulated ACIA
	JSR ACIAwait
	RTS

; get character from ACIA routine
ACIAin
	CLC
	LDA	ACIAsta		; get byte from simulated ACIA
	AND #$08
	BEQ	ACIAinend	; branch if no byte waiting
	LDA ACIAdat
	SEC				; flag byte received
ACIAinend
	RTS

ACIAwait
	PHY
	PHX

ACIAdelayloop
	LDY #2

DELAY_LOOP
  LDY   #2    ;Get delay value (clock rate in MHz 2 clock cycles)

MINIDLY
  LDX   #$68      ;Seed X reg

DELAY_1
  DEX         ;Decrement low index
  BNE   DELAY_1   ;Loop back until done
  DEY         ;Decrease by one
  BNE   MINIDLY   ;Loop until done
  PLX         ;Restore X Reg
  PLY         ;Restore Y Reg

DELAY_DONE
  RTS         ;Delay done, return

no_load				; empty load vector for EhBASIC
no_save				; empty save vector for EhBASIC
	RTS

; vector tables

LAB_vec
	.word	ACIAin		; byte in from simulated ACIA
	.word	ACIAout		; byte out to simulated ACIA
	.word	no_load		; null load vector for EhBASIC
	.word	no_save		; null save vector for EhBASIC

; EhBASIC IRQ support

IRQ_CODE
	PHA				; save A
	LDA	IrqBase		; get the IRQ flag byte
	LSR				; shift the set b7 to b6, and on down ...
	ORA	IrqBase		; OR the original back in
	STA	IrqBase		; save the new IRQ flag byte
	PLA				; restore A
	RTI
NMI_CODE
	PHA				; save A
	LDA	NmiBase		; get the NMI flag byte
	LSR				; shift the set b7 to b6, and on down ...
	ORA	NmiBase		; OR the original back in
	STA	NmiBase		; save the new NMI flag byte
	PLA				; restore A
	RTI

END_CODE

LAB_mess
	.byte	$0D,$0A,"6502 EhBASIC [C]old/[W]arm ?",$00
					; sign on string

; system vectors

.segment "VECTORS"

	.word	NMI_vec		; NMI vector
	.word	RES_vec		; RESET vector
	.word	IRQ_vec		; IRQ vector

