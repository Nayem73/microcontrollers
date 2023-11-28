
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject.c,3 :: 		portb = 0x00;
	CLRF       PORTB+0
;MyProject.c,5 :: 		while (1) {
L_main0:
;MyProject.c,6 :: 		portb.f4 = 1;
	BSF        PORTB+0, 4
;MyProject.c,7 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;MyProject.c,9 :: 		portb.f4 = 0;
	BCF        PORTB+0, 4
;MyProject.c,10 :: 		delay_ms(500);
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
;MyProject.c,11 :: 		}
	GOTO       L_main0
;MyProject.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
