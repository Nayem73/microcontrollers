
_main:

;codeForRelay.c,1 :: 		void main() {
;codeForRelay.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;codeForRelay.c,3 :: 		PORTB = 0X00;
	CLRF       PORTB+0
;codeForRelay.c,5 :: 		while (1) {
L_main0:
;codeForRelay.c,6 :: 		portb.RB0 = 1;
	BSF        PORTB+0, 0
;codeForRelay.c,7 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
;codeForRelay.c,8 :: 		portb.RB0 = 0;
	BCF        PORTB+0, 0
;codeForRelay.c,9 :: 		}
	GOTO       L_main0
;codeForRelay.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
