.segment "OS"

ACIA_data = $5000       	
ACIA_control = $5003    	
ACIA_command = $5002   	
ACIA_status = $5001   		

NMI_VEC 
IRQ_VEC
START
	LDX #$FF
	TXS
	LDA #$1F							
	STA ACIA_control
	LDA #$0B              
	STA ACIA_command     

LOOP
	LDA ACIA_status
	AND #$10
	BEQ LOOP
	LDA #$41              
	STA ACIA_data      
	JMP LOOP     

.segment "VECTORS"
.word   NMI_VEC					
.word   START           
.word   IRQ_VEC         
