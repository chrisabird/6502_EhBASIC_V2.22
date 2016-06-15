.segment "OS"

ACIADATA = $5000       	
ACIACONTROL = $5003    	
ACIACOMMAND = $5002   	
ACIASTATUS = $5001   		

NMI_VEC 
IRQ_VEC
START
	LDX #$FF
	TXS
	STZ ACIASTATUS			
	LDA ACIADATA
	LDA #$1E							
	STA ACIACONTROL       
	LDA #$0B              
	STA ACIACOMMAND      

LOOP
	LDA ACIASTATUS				
	AND #$10         			
	BEQ LOOP         			
	LDA #$41              
	STA ACIADATA         
	JMP LOOP              

.segment "VECTORS"
.word   NMI_VEC					
.word   START           
.word   IRQ_VEC         
