.segment "OS"

NMI_VEC: 
IRQ_VEC:
START:
	LDX #$FF
	TXS
	LDA #$FF
	STA $6002
	STA $6003
AGAIN:
	LDA #$AA
	STA $6000
	STA $6001
	JMP AGAIN 

.segment "VECTORS"              
.word   NMI_VEC              
.word   START              
.word   IRQ_VEC            
