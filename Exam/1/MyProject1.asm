
_main:

;MyProject1.c,1 :: 		void main() {
;MyProject1.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject1.c,3 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;MyProject1.c,4 :: 		PORTB.rb2 = 0xff;
	BSF        PORTB+0, 2
;MyProject1.c,5 :: 		while (1) {
L_main0:
;MyProject1.c,6 :: 		PORTB.rb0 = 0xff;
	BSF        PORTB+0, 0
;MyProject1.c,7 :: 		PORTB.rb1 = 0x00;
	BCF        PORTB+0, 1
;MyProject1.c,8 :: 		delay_ms(20000);
	MOVLW      203
	MOVWF      R11+0
	MOVLW      236
	MOVWF      R12+0
	MOVLW      132
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;MyProject1.c,9 :: 		portB.rb0 = 0x00;
	BCF        PORTB+0, 0
;MyProject1.c,10 :: 		PORTB.rb1 = 0xff;
	BSF        PORTB+0, 1
;MyProject1.c,11 :: 		delay_ms(20000);
	MOVLW      203
	MOVWF      R11+0
	MOVLW      236
	MOVWF      R12+0
	MOVLW      132
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;MyProject1.c,13 :: 		}
	GOTO       L_main0
;MyProject1.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
