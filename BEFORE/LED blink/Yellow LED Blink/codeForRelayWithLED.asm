
_main:

;codeForRelayWithLED.c,1 :: 		void main() {
;codeForRelayWithLED.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;codeForRelayWithLED.c,3 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;codeForRelayWithLED.c,5 :: 		while (1) {
L_main0:
;codeForRelayWithLED.c,6 :: 		portb.RB0 = 1;
	BSF        PORTB+0, 0
;codeForRelayWithLED.c,7 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;codeForRelayWithLED.c,8 :: 		portb.RB0 = 0;
	BCF        PORTB+0, 0
;codeForRelayWithLED.c,9 :: 		delay_ms(100);
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
;codeForRelayWithLED.c,10 :: 		}
	GOTO       L_main0
;codeForRelayWithLED.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
