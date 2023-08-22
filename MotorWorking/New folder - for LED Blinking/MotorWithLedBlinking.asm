
_main:

;MotorWithLedBlinking.c,3 :: 		void main() {
;MotorWithLedBlinking.c,4 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MotorWithLedBlinking.c,5 :: 		portb = 0x00;
	CLRF       PORTB+0
;MotorWithLedBlinking.c,7 :: 		TRISC = 0xFF;
	MOVLW      255
	MOVWF      TRISC+0
;MotorWithLedBlinking.c,9 :: 		portb.RB2 = 1;
	BSF        PORTB+0, 2
;MotorWithLedBlinking.c,13 :: 		while(1) {
L_main0:
;MotorWithLedBlinking.c,15 :: 		if (portc.RC0 == 1) {
	BTFSS      PORTC+0, 0
	GOTO       L_main2
;MotorWithLedBlinking.c,16 :: 		portb.RB0 = 1; //running motor forward
	BSF        PORTB+0, 0
;MotorWithLedBlinking.c,17 :: 		portb.RB1 = 0; //with these 2 lines
	BCF        PORTB+0, 1
;MotorWithLedBlinking.c,19 :: 		portb.Rb3 = 1;
	BSF        PORTB+0, 3
;MotorWithLedBlinking.c,20 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;MotorWithLedBlinking.c,21 :: 		portb.Rb3 = 0;
	BCF        PORTB+0, 3
;MotorWithLedBlinking.c,23 :: 		for (i = 0; i < 400; i++) { // Divide the delay into smaller intervals
	CLRF       _i+0
	CLRF       _i+1
L_main4:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVLW      144
	SUBWF      _i+0, 0
L__main25:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;MotorWithLedBlinking.c,24 :: 		delay_ms(50); // Delay for 50 ms
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;MotorWithLedBlinking.c,25 :: 		cnt_time += 50;
	MOVLW      50
	ADDWF      _cnt_time+0, 0
	MOVWF      R1+0
	MOVF       _cnt_time+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      _cnt_time+0
	MOVF       R1+1, 0
	MOVWF      _cnt_time+1
;MotorWithLedBlinking.c,26 :: 		if (cnt_time == 500) {
	MOVF       R1+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVLW      244
	XORWF      R1+0, 0
L__main26:
	BTFSS      STATUS+0, 2
	GOTO       L_main8
;MotorWithLedBlinking.c,27 :: 		if (portb.RB3 == 1) {
	BTFSS      PORTB+0, 3
	GOTO       L_main9
;MotorWithLedBlinking.c,28 :: 		portb.RB3 = 0;
	BCF        PORTB+0, 3
;MotorWithLedBlinking.c,29 :: 		} else {
	GOTO       L_main10
L_main9:
;MotorWithLedBlinking.c,30 :: 		portb.RB3 = 1;
	BSF        PORTB+0, 3
;MotorWithLedBlinking.c,31 :: 		}
L_main10:
;MotorWithLedBlinking.c,32 :: 		cnt_time = 0;
	CLRF       _cnt_time+0
	CLRF       _cnt_time+1
;MotorWithLedBlinking.c,33 :: 		}
L_main8:
;MotorWithLedBlinking.c,34 :: 		if (portc.RC1 == 1) {
	BTFSS      PORTC+0, 1
	GOTO       L_main11
;MotorWithLedBlinking.c,35 :: 		portb.RB0 = 0; // Stop motor immediately
	BCF        PORTB+0, 0
;MotorWithLedBlinking.c,36 :: 		portb.RB1 = 0;
	BCF        PORTB+0, 1
;MotorWithLedBlinking.c,37 :: 		break; // Exit the loop
	GOTO       L_main5
;MotorWithLedBlinking.c,38 :: 		}
L_main11:
;MotorWithLedBlinking.c,23 :: 		for (i = 0; i < 400; i++) { // Divide the delay into smaller intervals
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;MotorWithLedBlinking.c,39 :: 		}
	GOTO       L_main4
L_main5:
;MotorWithLedBlinking.c,40 :: 		portb.RB0 = 0;//stop motor
	BCF        PORTB+0, 0
;MotorWithLedBlinking.c,41 :: 		portb.RB1 = 0;//with these 2 lines.
	BCF        PORTB+0, 1
;MotorWithLedBlinking.c,44 :: 		portb.RB3 = 0;
	BCF        PORTB+0, 3
;MotorWithLedBlinking.c,45 :: 		cnt_time = 0;
	CLRF       _cnt_time+0
	CLRF       _cnt_time+1
;MotorWithLedBlinking.c,46 :: 		}
	GOTO       L_main12
L_main2:
;MotorWithLedBlinking.c,47 :: 		else if (portc.RC1 == 1) {
	BTFSS      PORTC+0, 1
	GOTO       L_main13
;MotorWithLedBlinking.c,48 :: 		portb.RB0 = 0;//stop motor
	BCF        PORTB+0, 0
;MotorWithLedBlinking.c,49 :: 		portb.RB1 = 0;//with these 2 lines
	BCF        PORTB+0, 1
;MotorWithLedBlinking.c,50 :: 		}
	GOTO       L_main14
L_main13:
;MotorWithLedBlinking.c,51 :: 		else if (portc.RC2 == 1) {
	BTFSS      PORTC+0, 2
	GOTO       L_main15
;MotorWithLedBlinking.c,52 :: 		portb.RB0 = 0; //running motor backwards
	BCF        PORTB+0, 0
;MotorWithLedBlinking.c,53 :: 		portb.RB1 = 1; //with these 2 lines
	BSF        PORTB+0, 1
;MotorWithLedBlinking.c,55 :: 		for (i = 0; i < 400; i++) { // Divide the delay into smaller intervals
	CLRF       _i+0
	CLRF       _i+1
L_main16:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main27
	MOVLW      144
	SUBWF      _i+0, 0
L__main27:
	BTFSC      STATUS+0, 0
	GOTO       L_main17
;MotorWithLedBlinking.c,56 :: 		delay_ms(50); // Delay for 50 ms
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	NOP
	NOP
;MotorWithLedBlinking.c,57 :: 		cnt_time += 50;
	MOVLW      50
	ADDWF      _cnt_time+0, 0
	MOVWF      R1+0
	MOVF       _cnt_time+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      _cnt_time+0
	MOVF       R1+1, 0
	MOVWF      _cnt_time+1
;MotorWithLedBlinking.c,58 :: 		if (cnt_time == 500) {
	MOVF       R1+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__main28
	MOVLW      244
	XORWF      R1+0, 0
L__main28:
	BTFSS      STATUS+0, 2
	GOTO       L_main20
;MotorWithLedBlinking.c,59 :: 		if (portb.RB3 == 1) {
	BTFSS      PORTB+0, 3
	GOTO       L_main21
;MotorWithLedBlinking.c,60 :: 		portb.RB3 = 0;
	BCF        PORTB+0, 3
;MotorWithLedBlinking.c,61 :: 		} else {
	GOTO       L_main22
L_main21:
;MotorWithLedBlinking.c,62 :: 		portb.RB3 = 1;
	BSF        PORTB+0, 3
;MotorWithLedBlinking.c,63 :: 		}
L_main22:
;MotorWithLedBlinking.c,64 :: 		cnt_time = 0;
	CLRF       _cnt_time+0
	CLRF       _cnt_time+1
;MotorWithLedBlinking.c,65 :: 		}
L_main20:
;MotorWithLedBlinking.c,66 :: 		if (portc.RC1 == 1) {
	BTFSS      PORTC+0, 1
	GOTO       L_main23
;MotorWithLedBlinking.c,67 :: 		portb.RB0 = 0; // Stop motor immediately
	BCF        PORTB+0, 0
;MotorWithLedBlinking.c,68 :: 		portb.RB1 = 0;
	BCF        PORTB+0, 1
;MotorWithLedBlinking.c,69 :: 		break; // Exit the loop
	GOTO       L_main17
;MotorWithLedBlinking.c,70 :: 		}
L_main23:
;MotorWithLedBlinking.c,55 :: 		for (i = 0; i < 400; i++) { // Divide the delay into smaller intervals
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;MotorWithLedBlinking.c,71 :: 		}
	GOTO       L_main16
L_main17:
;MotorWithLedBlinking.c,72 :: 		portb.RB0 = 0;//stop motor
	BCF        PORTB+0, 0
;MotorWithLedBlinking.c,73 :: 		portb.RB1 = 0;//with these 2 lines.
	BCF        PORTB+0, 1
;MotorWithLedBlinking.c,74 :: 		}
L_main15:
L_main14:
L_main12:
;MotorWithLedBlinking.c,75 :: 		}
	GOTO       L_main0
;MotorWithLedBlinking.c,76 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
