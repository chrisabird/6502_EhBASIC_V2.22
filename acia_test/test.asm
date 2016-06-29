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
	LDA #$00
	STA ACIASTATUS
	LDA #$1F							
	STA ACIACONTROL       
	LDA #$0B              
	STA ACIACOMMAND      

LOOP
	LDA #$41              
	STA ACIADATA         
	JSR WAIT_6551
	JMP LOOP     

WAIT_6551
	PHY      ;Save Y Reg
	PHX      ;Save X Reg

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

.segment "VECTORS"
.word   NMI_VEC					
.word   START           
.word   IRQ_VEC         
