
_main:

;MyProject.c,7 :: 		void main() {
;MyProject.c,8 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject.c,9 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;MyProject.c,13 :: 		while (1) {
L_main0:
;MyProject.c,14 :: 		for (i = 0; i < 25; i++) {
	CLRF       _i+0
	CLRF       _i+1
L_main2:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      25
	SUBWF      _i+0, 0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;MyProject.c,15 :: 		tmpNum = number;
	MOVF       _number+0, 0
	MOVWF      _tmpNum+0
	MOVF       _number+1, 0
	MOVWF      _tmpNum+1
;MyProject.c,16 :: 		num3 = tmpNum % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _number+0, 0
	MOVWF      R0+0
	MOVF       _number+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _num3+0
	MOVF       R0+1, 0
	MOVWF      _num3+1
;MyProject.c,17 :: 		tmpNum = tmpNum / 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _number+0, 0
	MOVWF      R0+0
	MOVF       _number+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       FLOC__main+0, 0
	MOVWF      _tmpNum+0
	MOVF       FLOC__main+1, 0
	MOVWF      _tmpNum+1
;MyProject.c,19 :: 		num2 = tmpNum % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _num2+0
	MOVF       R0+1, 0
	MOVWF      _num2+1
;MyProject.c,20 :: 		tmpNum = tmpNum / 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       FLOC__main+0, 0
	MOVWF      _tmpNum+0
	MOVF       FLOC__main+1, 0
	MOVWF      _tmpNum+1
;MyProject.c,22 :: 		num1 = tmpNum % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _num1+0
	MOVF       R0+1, 0
	MOVWF      _num1+1
;MyProject.c,23 :: 		tmpNum = tmpNum / 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+2
	MOVF       R0+1, 0
	MOVWF      FLOC__main+3
	MOVF       FLOC__main+2, 0
	MOVWF      _tmpNum+0
	MOVF       FLOC__main+3, 0
	MOVWF      _tmpNum+1
;MyProject.c,25 :: 		num0 = tmpNum % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+2, 0
	MOVWF      R0+0
	MOVF       FLOC__main+3, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       FLOC__main+0, 0
	MOVWF      _num0+0
	MOVF       FLOC__main+1, 0
	MOVWF      _num0+1
;MyProject.c,26 :: 		tmpNum = tmpNum / 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__main+2, 0
	MOVWF      R0+0
	MOVF       FLOC__main+3, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _tmpNum+0
	MOVF       R0+1, 0
	MOVWF      _tmpNum+1
;MyProject.c,28 :: 		portc.f0 = 1;
	BSF        PORTC+0, 0
;MyProject.c,29 :: 		portb = ca[num0];
	MOVF       FLOC__main+0, 0
	ADDLW      _ca+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,30 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;MyProject.c,31 :: 		portc.f0 = 0;
	BCF        PORTC+0, 0
;MyProject.c,33 :: 		portc.f1 = 1;
	BSF        PORTC+0, 1
;MyProject.c,34 :: 		portb = ca[num1];
	MOVF       _num1+0, 0
	ADDLW      _ca+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,35 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
;MyProject.c,36 :: 		portc.f1 = 0;
	BCF        PORTC+0, 1
;MyProject.c,38 :: 		portc.f2 = 1;
	BSF        PORTC+0, 2
;MyProject.c,39 :: 		portb = ca[num2];
	MOVF       _num2+0, 0
	ADDLW      _ca+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,40 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
;MyProject.c,41 :: 		portc.f2 = 0;
	BCF        PORTC+0, 2
;MyProject.c,43 :: 		portc.f3 = 1;
	BSF        PORTC+0, 3
;MyProject.c,44 :: 		portb = ca[num3];
	MOVF       _num3+0, 0
	ADDLW      _ca+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,45 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
;MyProject.c,46 :: 		portc.f3 = 0;
	BCF        PORTC+0, 3
;MyProject.c,14 :: 		for (i = 0; i < 25; i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;MyProject.c,47 :: 		}
	GOTO       L_main2
L_main3:
;MyProject.c,48 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
;MyProject.c,49 :: 		number++;
	INCF       _number+0, 1
	BTFSC      STATUS+0, 2
	INCF       _number+1, 1
;MyProject.c,50 :: 		if (number == 2141) break;
	MOVF       _number+1, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      93
	XORWF      _number+0, 0
L__main13:
	BTFSS      STATUS+0, 2
	GOTO       L_main10
	GOTO       L_main1
L_main10:
;MyProject.c,51 :: 		}
	GOTO       L_main0
L_main1:
;MyProject.c,53 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
