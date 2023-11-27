
_light_num:

;MyProject.c,6 :: 		void light_num() {
;MyProject.c,10 :: 		while (1) {
L_light_num0:
;MyProject.c,11 :: 		for (j = 0; j < 25; j++) {
	CLRF       _j+0
	CLRF       _j+1
L_light_num2:
	MOVLW      128
	XORWF      _j+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__light_num16
	MOVLW      25
	SUBWF      _j+0, 0
L__light_num16:
	BTFSC      STATUS+0, 0
	GOTO       L_light_num3
;MyProject.c,12 :: 		number2 = number;
	MOVF       _number+0, 0
	MOVWF      _number2+0
	MOVF       _number+1, 0
	MOVWF      _number2+1
;MyProject.c,13 :: 		if (number2 < 0) number2 *= -1;
	MOVLW      128
	XORWF      _number+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__light_num17
	MOVLW      0
	SUBWF      _number+0, 0
L__light_num17:
	BTFSC      STATUS+0, 0
	GOTO       L_light_num5
	MOVF       _number2+0, 0
	MOVWF      R0+0
	MOVF       _number2+1, 0
	MOVWF      R0+1
	MOVLW      255
	MOVWF      R4+0
	MOVLW      255
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      _number2+0
	MOVF       R0+1, 0
	MOVWF      _number2+1
L_light_num5:
;MyProject.c,14 :: 		fdigit = number2 / 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _number2+0, 0
	MOVWF      R0+0
	MOVF       _number2+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _fdigit+0
	MOVF       R0+1, 0
	MOVWF      _fdigit+1
;MyProject.c,15 :: 		ldigit = number2 % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _number2+0, 0
	MOVWF      R0+0
	MOVF       _number2+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _ldigit+0
	MOVF       R0+1, 0
	MOVWF      _ldigit+1
;MyProject.c,17 :: 		portc.f0 = 1;
	BSF        PORTC+0, 0
;MyProject.c,18 :: 		if (number < 0) {
	MOVLW      128
	XORWF      _number+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__light_num18
	MOVLW      0
	SUBWF      _number+0, 0
L__light_num18:
	BTFSC      STATUS+0, 0
	GOTO       L_light_num6
;MyProject.c,19 :: 		portb = ca[10];
	MOVF       _ca+10, 0
	MOVWF      PORTB+0
;MyProject.c,20 :: 		}else {
	GOTO       L_light_num7
L_light_num6:
;MyProject.c,21 :: 		portb = ca[fdigit];
	MOVF       _fdigit+0, 0
	ADDLW      _ca+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,22 :: 		}
L_light_num7:
;MyProject.c,23 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_light_num8:
	DECFSZ     R13+0, 1
	GOTO       L_light_num8
	DECFSZ     R12+0, 1
	GOTO       L_light_num8
	NOP
;MyProject.c,24 :: 		portc.f0 = 0;
	BCF        PORTC+0, 0
;MyProject.c,26 :: 		portc.f1 = 1;
	BSF        PORTC+0, 1
;MyProject.c,27 :: 		portb = ca[ldigit];
	MOVF       _ldigit+0, 0
	ADDLW      _ca+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,28 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_light_num9:
	DECFSZ     R13+0, 1
	GOTO       L_light_num9
	DECFSZ     R12+0, 1
	GOTO       L_light_num9
	NOP
;MyProject.c,29 :: 		portc.f1 = 0;
	BCF        PORTC+0, 1
;MyProject.c,31 :: 		if (portd.f0 == 1) {
	BTFSS      PORTD+0, 0
	GOTO       L_light_num10
;MyProject.c,32 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_light_num11:
	DECFSZ     R13+0, 1
	GOTO       L_light_num11
	DECFSZ     R12+0, 1
	GOTO       L_light_num11
	DECFSZ     R11+0, 1
	GOTO       L_light_num11
	NOP
	NOP
;MyProject.c,33 :: 		++number;
	INCF       _number+0, 1
	BTFSC      STATUS+0, 2
	INCF       _number+1, 1
;MyProject.c,34 :: 		break;
	GOTO       L_light_num3
;MyProject.c,35 :: 		} else if (portd.f1 == 1) {
L_light_num10:
	BTFSS      PORTD+0, 1
	GOTO       L_light_num13
;MyProject.c,36 :: 		delay_ms(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_light_num14:
	DECFSZ     R13+0, 1
	GOTO       L_light_num14
	DECFSZ     R12+0, 1
	GOTO       L_light_num14
	DECFSZ     R11+0, 1
	GOTO       L_light_num14
	NOP
	NOP
;MyProject.c,37 :: 		--number;
	MOVLW      1
	SUBWF      _number+0, 1
	BTFSS      STATUS+0, 0
	DECF       _number+1, 1
;MyProject.c,38 :: 		break;
	GOTO       L_light_num3
;MyProject.c,39 :: 		}
L_light_num13:
;MyProject.c,11 :: 		for (j = 0; j < 25; j++) {
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;MyProject.c,40 :: 		}
	GOTO       L_light_num2
L_light_num3:
;MyProject.c,43 :: 		}
	GOTO       L_light_num0
;MyProject.c,44 :: 		}
L_end_light_num:
	RETURN
; end of _light_num

_main:

;MyProject.c,46 :: 		void main() {
;MyProject.c,47 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject.c,48 :: 		portb = 0x00;
	CLRF       PORTB+0
;MyProject.c,50 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;MyProject.c,51 :: 		portc = 0x00;
	CLRF       PORTC+0
;MyProject.c,53 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;MyProject.c,54 :: 		portd = 0x00;
	CLRF       PORTD+0
;MyProject.c,56 :: 		light_num();
	CALL       _light_num+0
;MyProject.c,59 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
