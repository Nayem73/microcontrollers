
_main:

;motorACWithIC.c,1 :: 		void main() {
;motorACWithIC.c,2 :: 		portb=0x00;
	CLRF       PORTB+0
;motorACWithIC.c,3 :: 		portb.f2=1;
	BSF        PORTB+0, 2
;motorACWithIC.c,4 :: 		while(1)
L_main0:
;motorACWithIC.c,6 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;motorACWithIC.c,7 :: 		portb.f1=1;
	BSF        PORTB+0, 1
;motorACWithIC.c,8 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
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
;motorACWithIC.c,9 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;motorACWithIC.c,10 :: 		portb.f1=0;
	BCF        PORTB+0, 1
;motorACWithIC.c,11 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
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
;motorACWithIC.c,12 :: 		}
	GOTO       L_main0
;motorACWithIC.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
