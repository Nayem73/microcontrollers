
_main:

;MotorIcCode.c,1 :: 		void main() {
;MotorIcCode.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MotorIcCode.c,3 :: 		portb = 0x00;
	CLRF       PORTB+0
;MotorIcCode.c,5 :: 		TRISC.RC0 = 1;   //look at this! it can be done too!
	BSF        TRISC+0, 0
;MotorIcCode.c,7 :: 		portb.RB2 = 1;
	BSF        PORTB+0, 2
;MotorIcCode.c,12 :: 		while(1) {
L_main0:
;MotorIcCode.c,25 :: 		if (portc.RC0 == 1) {
	BTFSS      PORTC+0, 0
	GOTO       L_main2
;MotorIcCode.c,26 :: 		portb.RB0 = 1;
	BSF        PORTB+0, 0
;MotorIcCode.c,27 :: 		portb.RB1 = 0;
	BCF        PORTB+0, 1
;MotorIcCode.c,28 :: 		delay_ms(10000);
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
;MotorIcCode.c,29 :: 		portb.RB2 = 0;
	BCF        PORTB+0, 2
;MotorIcCode.c,30 :: 		}
L_main2:
;MotorIcCode.c,31 :: 		}
	GOTO       L_main0
;MotorIcCode.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
