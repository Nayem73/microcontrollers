
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,2 :: 		short duty = 0;
	CLRF       main_duty_L0+0
;MyProject.c,3 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject.c,4 :: 		TRISD = 0xFF;
	MOVLW      255
	MOVWF      TRISD+0
;MyProject.c,6 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;MyProject.c,7 :: 		portb.f1 = 0;
	BCF        PORTB+0, 1
;MyProject.c,9 :: 		PWM1_init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;MyProject.c,10 :: 		PWM1_start();
	CALL       _PWM1_Start+0
;MyProject.c,11 :: 		PWM1_Set_Duty(duty);
	MOVF       main_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,13 :: 		while (1) {
L_main0:
;MyProject.c,14 :: 		if (portd.f0 == 1 && duty < 250) {
	BTFSS      PORTD+0, 0
	GOTO       L_main4
	MOVLW      128
	BTFSC      main_duty_L0+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      250
	SUBWF      main_duty_L0+0, 0
L__main22:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
L__main20:
;MyProject.c,15 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;MyProject.c,16 :: 		if (portd.f0 == 1 && duty < 250) {
	BTFSS      PORTD+0, 0
	GOTO       L_main8
	MOVLW      128
	BTFSC      main_duty_L0+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVLW      250
	SUBWF      main_duty_L0+0, 0
L__main23:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
L__main19:
;MyProject.c,17 :: 		duty += 10;
	MOVLW      10
	ADDWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;MyProject.c,18 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,19 :: 		}
L_main8:
;MyProject.c,20 :: 		}
L_main4:
;MyProject.c,22 :: 		if (portd.f1 == 1 && duty > 0) {
	BTFSS      PORTD+0, 1
	GOTO       L_main11
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_duty_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main11
L__main18:
;MyProject.c,23 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
;MyProject.c,24 :: 		if (portd.f1 == 1 && duty > 0) {
	BTFSS      PORTD+0, 1
	GOTO       L_main15
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_duty_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main15
L__main17:
;MyProject.c,25 :: 		duty -= 10;
	MOVLW      10
	SUBWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;MyProject.c,26 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,27 :: 		}
L_main15:
;MyProject.c,28 :: 		}
L_main11:
;MyProject.c,29 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
;MyProject.c,30 :: 		}
	GOTO       L_main0
;MyProject.c,31 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
