
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject.c,3 :: 		TRISC = 0xFF;
	MOVLW      255
	MOVWF      TRISC+0
;MyProject.c,5 :: 		portb = 0x00;
	CLRF       PORTB+0
;MyProject.c,6 :: 		portb.f2 = 1;
	BSF        PORTB+0, 2
;MyProject.c,8 :: 		while (1) {
L_main0:
;MyProject.c,9 :: 		if (portc.f0 == 1) {
	BTFSS      PORTC+0, 0
	GOTO       L_main2
;MyProject.c,10 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;MyProject.c,11 :: 		if (portc.f0 == 1) {
	BTFSS      PORTC+0, 0
	GOTO       L_main4
;MyProject.c,12 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;MyProject.c,13 :: 		portb.f1 = 0;
	BCF        PORTB+0, 1
;MyProject.c,14 :: 		}
L_main4:
;MyProject.c,15 :: 		}
	GOTO       L_main5
L_main2:
;MyProject.c,17 :: 		else if (portc.f1 == 1) {
	BTFSS      PORTC+0, 1
	GOTO       L_main6
;MyProject.c,18 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
;MyProject.c,19 :: 		if (portc.f1 == 1) {
	BTFSS      PORTC+0, 1
	GOTO       L_main8
;MyProject.c,20 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;MyProject.c,21 :: 		portb.f1 = 0;
	BCF        PORTB+0, 1
;MyProject.c,22 :: 		}
L_main8:
;MyProject.c,23 :: 		}
	GOTO       L_main9
L_main6:
;MyProject.c,25 :: 		else if (portc.f2 == 1) {
	BTFSS      PORTC+0, 2
	GOTO       L_main10
;MyProject.c,26 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
;MyProject.c,27 :: 		if (portc.f2 == 1) {
	BTFSS      PORTC+0, 2
	GOTO       L_main12
;MyProject.c,28 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;MyProject.c,29 :: 		portb.f1 = 1;
	BSF        PORTB+0, 1
;MyProject.c,30 :: 		}
L_main12:
;MyProject.c,31 :: 		}
L_main10:
L_main9:
L_main5:
;MyProject.c,32 :: 		}
	GOTO       L_main0
;MyProject.c,33 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
