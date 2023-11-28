
_light_num:

;MyProject.c,8 :: 		void light_num() {
;MyProject.c,9 :: 		while (1) {
L_light_num0:
;MyProject.c,10 :: 		for (j = 0; j < 25; j++) {
	CLRF       _j+0
	CLRF       _j+1
L_light_num2:
	MOVLW      128
	XORWF      _j+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__light_num17
	MOVLW      25
	SUBWF      _j+0, 0
L__light_num17:
	BTFSC      STATUS+0, 0
	GOTO       L_light_num3
;MyProject.c,11 :: 		number2 = number;
	MOVF       _number+0, 0
	MOVWF      _number2+0
	MOVF       _number+1, 0
	MOVWF      _number2+1
;MyProject.c,12 :: 		if (number2 < 0) number2 *= -1;
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
;MyProject.c,13 :: 		fdigit = number2 / 10;
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
;MyProject.c,14 :: 		ldigit = number2 % 10;
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
;MyProject.c,16 :: 		portc.f0 = 1;
	BSF        PORTC+0, 0
;MyProject.c,17 :: 		if (number < 0) {
	MOVLW      128
	XORWF      _number+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__light_num19
	MOVLW      0
	SUBWF      _number+0, 0
L__light_num19:
	BTFSC      STATUS+0, 0
	GOTO       L_light_num6
;MyProject.c,18 :: 		portb = ca[10];
	MOVF       _ca+10, 0
	MOVWF      PORTB+0
;MyProject.c,19 :: 		}else {
	GOTO       L_light_num7
L_light_num6:
;MyProject.c,20 :: 		portb = ca[fdigit];
	MOVF       _fdigit+0, 0
	ADDLW      _ca+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,21 :: 		}
L_light_num7:
;MyProject.c,22 :: 		vdelay_ms(10);
	MOVLW      10
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVLW      0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;MyProject.c,23 :: 		portc.f0 = 0;
	BCF        PORTC+0, 0
;MyProject.c,25 :: 		portc.f1 = 1;
	BSF        PORTC+0, 1
;MyProject.c,26 :: 		portb = ca[ldigit];
	MOVF       _ldigit+0, 0
	ADDLW      _ca+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,27 :: 		vdelay_ms(10);
	MOVLW      10
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVLW      0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;MyProject.c,28 :: 		portc.f1 = 0;
	BCF        PORTC+0, 1
;MyProject.c,30 :: 		if (portd.f0 == 1) {
	BTFSS      PORTD+0, 0
	GOTO       L_light_num8
;MyProject.c,31 :: 		vdelay_ms(300);
	MOVLW      44
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVLW      1
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;MyProject.c,32 :: 		++number;
	INCF       _number+0, 1
	BTFSC      STATUS+0, 2
	INCF       _number+1, 1
;MyProject.c,33 :: 		if (number == 100) {
	MOVLW      0
	XORWF      _number+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__light_num20
	MOVLW      100
	XORWF      _number+0, 0
L__light_num20:
	BTFSS      STATUS+0, 2
	GOTO       L_light_num9
;MyProject.c,34 :: 		number = 0;
	CLRF       _number+0
	CLRF       _number+1
;MyProject.c,35 :: 		}
L_light_num9:
;MyProject.c,36 :: 		break;
	GOTO       L_light_num3
;MyProject.c,37 :: 		} else if (portd.f1 == 1) {
L_light_num8:
	BTFSS      PORTD+0, 1
	GOTO       L_light_num11
;MyProject.c,38 :: 		vdelay_ms(300);
	MOVLW      44
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVLW      1
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;MyProject.c,39 :: 		--number;
	MOVLW      1
	SUBWF      _number+0, 1
	BTFSS      STATUS+0, 0
	DECF       _number+1, 1
;MyProject.c,40 :: 		if (number == -10) {
	MOVLW      255
	XORWF      _number+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__light_num21
	MOVLW      246
	XORWF      _number+0, 0
L__light_num21:
	BTFSS      STATUS+0, 2
	GOTO       L_light_num12
;MyProject.c,41 :: 		number = 0;
	CLRF       _number+0
	CLRF       _number+1
;MyProject.c,42 :: 		}
L_light_num12:
;MyProject.c,43 :: 		break;
	GOTO       L_light_num3
;MyProject.c,44 :: 		}
L_light_num11:
;MyProject.c,45 :: 		else if (portd.f2 == 1) {
	BTFSS      PORTD+0, 2
	GOTO       L_light_num14
;MyProject.c,47 :: 		numberRelay = number;
	MOVF       _number+0, 0
	MOVWF      _numberRelay+0
	MOVF       _number+1, 0
	MOVWF      _numberRelay+1
;MyProject.c,48 :: 		if (numberRelay < 0) {
	MOVLW      128
	XORWF      _number+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__light_num22
	MOVLW      0
	SUBWF      _number+0, 0
L__light_num22:
	BTFSC      STATUS+0, 0
	GOTO       L_light_num15
;MyProject.c,49 :: 		numberRelay *= -1;
	MOVF       _numberRelay+0, 0
	MOVWF      R0+0
	MOVF       _numberRelay+1, 0
	MOVWF      R0+1
	MOVLW      255
	MOVWF      R4+0
	MOVLW      255
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      _numberRelay+0
	MOVF       R0+1, 0
	MOVWF      _numberRelay+1
;MyProject.c,50 :: 		}
L_light_num15:
;MyProject.c,52 :: 		portc.f2 = 1;
	BSF        PORTC+0, 2
;MyProject.c,53 :: 		vdelay_ms(numberRelay * 1000);
	MOVF       _numberRelay+0, 0
	MOVWF      R0+0
	MOVF       _numberRelay+1, 0
	MOVWF      R0+1
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       R0+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;MyProject.c,54 :: 		portc.f2 = 0;
	BCF        PORTC+0, 2
;MyProject.c,56 :: 		}
L_light_num14:
;MyProject.c,10 :: 		for (j = 0; j < 25; j++) {
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;MyProject.c,57 :: 		}
	GOTO       L_light_num2
L_light_num3:
;MyProject.c,58 :: 		}
	GOTO       L_light_num0
;MyProject.c,59 :: 		}
L_end_light_num:
	RETURN
; end of _light_num

_main:

;MyProject.c,61 :: 		void main() {
;MyProject.c,62 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject.c,63 :: 		portb = 0x00;
	CLRF       PORTB+0
;MyProject.c,65 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;MyProject.c,66 :: 		portc = 0x00;
	CLRF       PORTC+0
;MyProject.c,68 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;MyProject.c,69 :: 		portd = 0x00;
	CLRF       PORTD+0
;MyProject.c,71 :: 		light_num();
	CALL       _light_num+0
;MyProject.c,74 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
