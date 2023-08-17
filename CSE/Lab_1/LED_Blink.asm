
_main:

;LED_Blink.c,1 :: 		void main() {
;LED_Blink.c,2 :: 		TRISB = 0x00;        //Set portb as output
	CLRF       TRISB+0
;LED_Blink.c,3 :: 		PORTB = 0x00;        //Set portb as off state
	CLRF       PORTB+0
;LED_Blink.c,4 :: 		while(1)
L_main0:
;LED_Blink.c,6 :: 		portb.f7 = 0xff; //set 8th pin of portb as high
	BSF        PORTB+0, 7
;LED_Blink.c,7 :: 		delay_ms(500);
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
;LED_Blink.c,8 :: 		portb.f7 = 0x00; //Set 8th pin of portb as low
	BCF        PORTB+0, 7
;LED_Blink.c,9 :: 		delay_ms(500);
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
;LED_Blink.c,10 :: 		}
	GOTO       L_main0
;LED_Blink.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
