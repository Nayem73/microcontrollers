
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,2 :: 		short duty = 0; //initial value for duty for motor
	CLRF       main_duty_L0+0
;MyProject.c,3 :: 		TRISB = 0x00; //set as output
	CLRF       TRISB+0
;MyProject.c,4 :: 		TRISD = 0xff; //set as input for buttons
	MOVLW      255
	MOVWF      TRISD+0
;MyProject.c,6 :: 		portb.f0 = 0; //turn off
	BCF        PORTB+0, 0
;MyProject.c,7 :: 		portb.f1 = 1; //turn on
	BSF        PORTB+0, 1
;MyProject.c,9 :: 		PWM1_Init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;MyProject.c,10 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;MyProject.c,11 :: 		PWM1_Set_Duty(duty); //set current duty for PWM
	MOVF       main_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,13 :: 		while (1) {
L_main0:
;MyProject.c,14 :: 		if (portd.f0 == 1) {
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;MyProject.c,15 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;MyProject.c,16 :: 		if (portd.f0 == 1) {
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;MyProject.c,17 :: 		duty += 100;
	MOVLW      100
	ADDWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;MyProject.c,18 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,19 :: 		}
L_main4:
;MyProject.c,20 :: 		}
L_main2:
;MyProject.c,22 :: 		if (portd.f1 == 1) {
	BTFSS      PORTD+0, 1
	GOTO       L_main5
;MyProject.c,23 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;MyProject.c,24 :: 		if (portd.f1 == 1) {
	BTFSS      PORTD+0, 1
	GOTO       L_main7
;MyProject.c,25 :: 		duty -= 100;
	MOVLW      100
	SUBWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;MyProject.c,26 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,27 :: 		}
L_main7:
;MyProject.c,28 :: 		}
L_main5:
;MyProject.c,30 :: 		delay_ms(10);
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
;MyProject.c,31 :: 		}
	GOTO       L_main0
;MyProject.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
