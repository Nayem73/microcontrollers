
_main:

;relay.c,1 :: 		void main() {
;relay.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;relay.c,3 :: 		portb=0x00;
	CLRF       PORTB+0
;relay.c,5 :: 		while(1)
L_main0:
;relay.c,7 :: 		portb.f2=1;
	BSF        PORTB+0, 2
;relay.c,8 :: 		PORTB.F0=1;
	BSF        PORTB+0, 0
;relay.c,9 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;relay.c,10 :: 		delay_ms(10000);
	MOVLW      102
	MOVWF      R11+0
	MOVLW      118
	MOVWF      R12+0
	MOVLW      193
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
;relay.c,11 :: 		PORTB.F0=0;
	BCF        PORTB+0, 0
;relay.c,12 :: 		PORTB.F1=1;
	BSF        PORTB+0, 1
;relay.c,13 :: 		delay_ms(10000);
	MOVLW      102
	MOVWF      R11+0
	MOVLW      118
	MOVWF      R12+0
	MOVLW      193
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;relay.c,14 :: 		}
	GOTO       L_main0
;relay.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
