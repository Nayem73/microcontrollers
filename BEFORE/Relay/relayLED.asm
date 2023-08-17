
_main:

;relayLED.c,1 :: 		void main() {
;relayLED.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;relayLED.c,3 :: 		PORTB=0x00;
	CLRF       PORTB+0
;relayLED.c,4 :: 		while(1)
L_main0:
;relayLED.c,6 :: 		PORTB.RB0=1;
	BSF        PORTB+0, 0
;relayLED.c,7 :: 		delay_ms(500);
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
;relayLED.c,8 :: 		PORTB.RB0=0;
	BCF        PORTB+0, 0
;relayLED.c,9 :: 		delay_ms(500);
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
;relayLED.c,10 :: 		}
	GOTO       L_main0
;relayLED.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
