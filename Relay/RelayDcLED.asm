
_main:

;RelayDcLED.c,1 :: 		void main() {
;RelayDcLED.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;RelayDcLED.c,3 :: 		portb = 0x00;
	CLRF       PORTB+0
;RelayDcLED.c,5 :: 		while (1) {
L_main0:
;RelayDcLED.c,6 :: 		portb.RB0 = 1;
	BSF        PORTB+0, 0
;RelayDcLED.c,7 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
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
;RelayDcLED.c,9 :: 		portb.RB0 = 0;
	BCF        PORTB+0, 0
;RelayDcLED.c,10 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
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
;RelayDcLED.c,11 :: 		}
	GOTO       L_main0
;RelayDcLED.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
