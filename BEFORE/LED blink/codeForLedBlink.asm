
_main:

;codeForLedBlink.c,1 :: 		void main() {
;codeForLedBlink.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;codeForLedBlink.c,3 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;codeForLedBlink.c,5 :: 		while (1) {
L_main0:
;codeForLedBlink.c,6 :: 		PORTB.RB0 = 1;
	BSF        PORTB+0, 0
;codeForLedBlink.c,7 :: 		Delay_ms(500); //1000ms = 1min
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;codeForLedBlink.c,8 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;codeForLedBlink.c,10 :: 		PORTB.RB5 = 1;
	BSF        PORTB+0, 5
;codeForLedBlink.c,11 :: 		Delay_ms(500);
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
;codeForLedBlink.c,12 :: 		PORTB.RB5 = 0;
	BCF        PORTB+0, 5
;codeForLedBlink.c,13 :: 		}
	GOTO       L_main0
;codeForLedBlink.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
