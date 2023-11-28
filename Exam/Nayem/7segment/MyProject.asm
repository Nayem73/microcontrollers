
_main:

;MyProject.c,4 :: 		void main() {
;MyProject.c,5 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject.c,6 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;MyProject.c,10 :: 		while (1) {
L_main0:
;MyProject.c,11 :: 		for (i = 0; i < 25; i++) {
	CLRF       _i+0
	CLRF       _i+1
L_main2:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVLW      25
	SUBWF      _i+0, 0
L__main10:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;MyProject.c,12 :: 		portc.f0 = 1;
	BSF        PORTC+0, 0
;MyProject.c,13 :: 		portb = ca[5];
	MOVF       _ca+5, 0
	MOVWF      PORTB+0
;MyProject.c,14 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;MyProject.c,15 :: 		portc.f0 = 0;
	BCF        PORTC+0, 0
;MyProject.c,17 :: 		portc.f1 = 1;
	BSF        PORTC+0, 1
;MyProject.c,18 :: 		portb = ca[4];
	MOVF       _ca+4, 0
	MOVWF      PORTB+0
;MyProject.c,19 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
;MyProject.c,20 :: 		portc.f1 = 0;
	BCF        PORTC+0, 1
;MyProject.c,22 :: 		portc.f2 = 1;
	BSF        PORTC+0, 2
;MyProject.c,23 :: 		portb = ca[2];
	MOVF       _ca+2, 0
	MOVWF      PORTB+0
;MyProject.c,24 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
;MyProject.c,25 :: 		portc.f2 = 0;
	BCF        PORTC+0, 2
;MyProject.c,27 :: 		portc.f3 = 1;
	BSF        PORTC+0, 3
;MyProject.c,28 :: 		portb = ca[3];
	MOVF       _ca+3, 0
	MOVWF      PORTB+0
;MyProject.c,29 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
;MyProject.c,30 :: 		portc.f3 = 0;
	BCF        PORTC+0, 3
;MyProject.c,11 :: 		for (i = 0; i < 25; i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;MyProject.c,31 :: 		}
	GOTO       L_main2
L_main3:
;MyProject.c,32 :: 		}
	GOTO       L_main0
;MyProject.c,34 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
