
_main:

;servo.c,1 :: 		void main() {
;servo.c,3 :: 		TRISB=0x00;
	CLRF       TRISB+0
;servo.c,4 :: 		portb=0x00;
	CLRF       PORTB+0
;servo.c,5 :: 		while(1)
L_main0:
;servo.c,7 :: 		for(i=1;i<=50;i++)
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVF       R1+0, 0
	SUBLW      50
L__main21:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;servo.c,9 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;servo.c,10 :: 		delay_us(800);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;servo.c,11 :: 		portb.f0=0x00;
	BCF        PORTB+0, 0
;servo.c,12 :: 		delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;servo.c,7 :: 		for(i=1;i<=50;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo.c,13 :: 		}
	GOTO       L_main2
L_main3:
;servo.c,14 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
;servo.c,15 :: 		for(i=1;i<=50;i++)
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
L_main8:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVF       R1+0, 0
	SUBLW      50
L__main22:
	BTFSS      STATUS+0, 0
	GOTO       L_main9
;servo.c,17 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;servo.c,18 :: 		delay_us(1500);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
;servo.c,19 :: 		portb.f0=0x00;
	BCF        PORTB+0, 0
;servo.c,20 :: 		delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
	NOP
;servo.c,15 :: 		for(i=1;i<=50;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo.c,21 :: 		}
	GOTO       L_main8
L_main9:
;servo.c,22 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
;servo.c,23 :: 		for(i=1;i<=50;i++)
	MOVLW      1
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
L_main14:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVF       R1+0, 0
	SUBLW      50
L__main23:
	BTFSS      STATUS+0, 0
	GOTO       L_main15
;servo.c,25 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;servo.c,26 :: 		delay_us(2200);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      181
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	NOP
	NOP
;servo.c,27 :: 		portb.f0=0x00;
	BCF        PORTB+0, 0
;servo.c,28 :: 		delay_us(17800);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      58
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
;servo.c,23 :: 		for(i=1;i<=50;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;servo.c,29 :: 		}
	GOTO       L_main14
L_main15:
;servo.c,30 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
;servo.c,32 :: 		}
	GOTO       L_main0
;servo.c,33 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
