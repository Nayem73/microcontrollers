
_main:

;motor.c,1 :: 		void main() {
;motor.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;motor.c,3 :: 		portb=0x00;
	CLRF       PORTB+0
;motor.c,4 :: 		portb.f2=1;
	BSF        PORTB+0, 2
;motor.c,5 :: 		while(1)
L_main0:
;motor.c,7 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;motor.c,8 :: 		portb.f1=1;
	BSF        PORTB+0, 1
;motor.c,9 :: 		delay_ms(5000);
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
;motor.c,10 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;motor.c,11 :: 		portb.f1=0;
	BCF        PORTB+0, 1
;motor.c,12 :: 		delay_ms(5000);
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
;motor.c,13 :: 		}
	GOTO       L_main0
;motor.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
