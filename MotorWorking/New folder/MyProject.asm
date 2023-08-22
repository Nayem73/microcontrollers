
_main:

;MyProject.c,2 :: 		void main() {
;MyProject.c,3 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject.c,4 :: 		portb = 0x00;
	CLRF       PORTB+0
;MyProject.c,6 :: 		TRISC = 0xFF;
	MOVLW      255
	MOVWF      TRISC+0
;MyProject.c,8 :: 		portb.RB2 = 1;
	BSF        PORTB+0, 2
;MyProject.c,13 :: 		while(1) {
L_main0:
;MyProject.c,15 :: 		if (portc.RC0 == 1) {
	BTFSS      PORTC+0, 0
	GOTO       L_main2
;MyProject.c,16 :: 		portb.RB0 = 1; //running motor forward
	BSF        PORTB+0, 0
;MyProject.c,17 :: 		portb.RB1 = 0; //with these 2 lines
	BCF        PORTB+0, 1
;MyProject.c,20 :: 		for (i = 0; i < 400; i++) { // Divide the delay into smaller intervals
	CLRF       _i+0
	CLRF       _i+1
L_main3:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main18
	MOVLW      144
	SUBWF      _i+0, 0
L__main18:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;MyProject.c,21 :: 		delay_ms(50); // Delay for 50 ms
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;MyProject.c,22 :: 		if (portc.RC1 == 1) {
	BTFSS      PORTC+0, 1
	GOTO       L_main7
;MyProject.c,23 :: 		portb.RB0 = 0; // Stop motor immediately
	BCF        PORTB+0, 0
;MyProject.c,24 :: 		portb.RB1 = 0;
	BCF        PORTB+0, 1
;MyProject.c,25 :: 		break; // Exit the loop
	GOTO       L_main4
;MyProject.c,26 :: 		}
L_main7:
;MyProject.c,20 :: 		for (i = 0; i < 400; i++) { // Divide the delay into smaller intervals
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;MyProject.c,27 :: 		}
	GOTO       L_main3
L_main4:
;MyProject.c,28 :: 		portb.RB0 = 0;//stop motor
	BCF        PORTB+0, 0
;MyProject.c,29 :: 		portb.RB1 = 0;//with these 2 lines.
	BCF        PORTB+0, 1
;MyProject.c,31 :: 		}
	GOTO       L_main8
L_main2:
;MyProject.c,32 :: 		else if (portc.RC1 == 1) {
	BTFSS      PORTC+0, 1
	GOTO       L_main9
;MyProject.c,33 :: 		portb.RB0 = 0;//stop motor
	BCF        PORTB+0, 0
;MyProject.c,34 :: 		portb.RB1 = 0;//with these 2 lines
	BCF        PORTB+0, 1
;MyProject.c,35 :: 		}
	GOTO       L_main10
L_main9:
;MyProject.c,36 :: 		else if (portc.RC2 == 1) {
	BTFSS      PORTC+0, 2
	GOTO       L_main11
;MyProject.c,37 :: 		portb.RB0 = 0; //running motor backwards
	BCF        PORTB+0, 0
;MyProject.c,38 :: 		portb.RB1 = 1; //with these 2 lines
	BSF        PORTB+0, 1
;MyProject.c,40 :: 		for (i = 0; i < 400; i++) { // Divide the delay into smaller intervals
	CLRF       _i+0
	CLRF       _i+1
L_main12:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main19
	MOVLW      144
	SUBWF      _i+0, 0
L__main19:
	BTFSC      STATUS+0, 0
	GOTO       L_main13
;MyProject.c,41 :: 		delay_ms(50); // Delay for 50 ms
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	NOP
	NOP
;MyProject.c,42 :: 		if (portc.RC1 == 1) {
	BTFSS      PORTC+0, 1
	GOTO       L_main16
;MyProject.c,43 :: 		portb.RB0 = 0; // Stop motor immediately
	BCF        PORTB+0, 0
;MyProject.c,44 :: 		portb.RB1 = 0;
	BCF        PORTB+0, 1
;MyProject.c,45 :: 		break; // Exit the loop
	GOTO       L_main13
;MyProject.c,46 :: 		}
L_main16:
;MyProject.c,40 :: 		for (i = 0; i < 400; i++) { // Divide the delay into smaller intervals
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;MyProject.c,47 :: 		}
	GOTO       L_main12
L_main13:
;MyProject.c,48 :: 		portb.RB0 = 0;//stop motor
	BCF        PORTB+0, 0
;MyProject.c,49 :: 		portb.RB1 = 0;//with these 2 lines.
	BCF        PORTB+0, 1
;MyProject.c,50 :: 		}
L_main11:
L_main10:
L_main8:
;MyProject.c,51 :: 		}
	GOTO       L_main0
;MyProject.c,52 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
