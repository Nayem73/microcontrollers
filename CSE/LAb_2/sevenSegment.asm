
_main:

;sevenSegment.c,3 :: 		void main() {
;sevenSegment.c,4 :: 		int i=0,j;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;sevenSegment.c,6 :: 		TRISB = 0x00;     //set portb as output
	CLRF       TRISB+0
;sevenSegment.c,7 :: 		portb = 0x00;     //Initialization
	CLRF       PORTB+0
;sevenSegment.c,8 :: 		TRISC = 0x00;     //set portc as output
	CLRF       TRISC+0
;sevenSegment.c,9 :: 		portc = 0x00;     //Initialization
	CLRF       PORTC+0
;sevenSegment.c,11 :: 		while(1)
L_main0:
;sevenSegment.c,13 :: 		leftDigit=i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_leftDigit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_leftDigit_L0+1
;sevenSegment.c,14 :: 		rightDigit=i%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_rightDigit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_rightDigit_L0+1
;sevenSegment.c,16 :: 		for(j=1;j<=25;j++)
	MOVLW      1
	MOVWF      main_j_L0+0
	MOVLW      0
	MOVWF      main_j_L0+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_j_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main8
	MOVF       main_j_L0+0, 0
	SUBLW      25
L__main8:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;sevenSegment.c,18 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;sevenSegment.c,19 :: 		portb = array_CA[leftDigit];
	MOVF       main_leftDigit_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegment.c,20 :: 		delay_ms(10);
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
;sevenSegment.c,21 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;sevenSegment.c,23 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;sevenSegment.c,24 :: 		portb = array_CA[rightDigit];
	MOVF       main_rightDigit_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegment.c,25 :: 		delay_ms(10);
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
;sevenSegment.c,26 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;sevenSegment.c,16 :: 		for(j=1;j<=25;j++)
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;sevenSegment.c,27 :: 		}
	GOTO       L_main2
L_main3:
;sevenSegment.c,28 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;sevenSegment.c,30 :: 		}
	GOTO       L_main0
;sevenSegment.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
