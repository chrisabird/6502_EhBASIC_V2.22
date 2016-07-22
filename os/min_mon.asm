
; minimal monitor for EhBASIC and 6502 simulator V1.05

	.include "basic.asm"

; put the IRQ and MNI code in RAM so that it can be changed

IRQ_vec	= VEC_SV+2		; IRQ code vector
NMI_vec	= IRQ_vec+$0A	; NMI code vector


ACIA_data = $5000
ACIA_status = $5001
ACIA_command = $5002
ACIA_control = $5003


; now the code. all this does is set up the vectors and interrupt code
; and wait for the user to select [C]old or [W]arm start. nothing else
; fits in less than 128 bytes

.segment "OS"

ACIA_init
	LDA #$1F
	STA ACIA_control
	LDA #$0B
	STA ACIA_command
	RTS

; reset vector points here
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
ACIA_out
	PHA
ACIA_out_retry
	LDA ACIA_status
	AND #$10
	BEQ ACIA_out_retry
	PLA
	STA	ACIA_data	
	RTS

; get character from ACIA routine
ACIA_in
	CLC
	LDA	ACIA_status		; get byte from simulated ACIA
	AND #$08
	BEQ	ACIA_in_end	; branch if no byte waiting
	LDA ACIA_data
	SEC				; flag byte received
ACIA_in_end
	RTS

no_load				; empty load vector for EhBASIC
no_save				; empty save vector for EhBASIC
	RTS

; vector tables
LAB_vec
	.word	ACIA_in		; byte in from simulated ACIA
	.word	ACIA_out		; byte out to simulated ACIA
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

