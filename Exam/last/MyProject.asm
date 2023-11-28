
_motorRotate0:

;MyProject.c,2 :: 		void motorRotate0() {
;MyProject.c,3 :: 		for (i = 0; i < 50; i++) {
	CLRF       _i+0
	CLRF       _i+1
L_motorRotate00:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__motorRotate020
	MOVLW      50
	SUBWF      _i+0, 0
L__motorRotate020:
	BTFSC      STATUS+0, 0
	GOTO       L_motorRotate01
;MyProject.c,4 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;MyProject.c,5 :: 		delay_us(800);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_motorRotate03:
	DECFSZ     R13+0, 1
	GOTO       L_motorRotate03
	DECFSZ     R12+0, 1
	GOTO       L_motorRotate03
	NOP
;MyProject.c,6 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;MyProject.c,7 :: 		delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_motorRotate04:
	DECFSZ     R13+0, 1
	GOTO       L_motorRotate04
	DECFSZ     R12+0, 1
	GOTO       L_motorRotate04
	NOP
	NOP
;MyProject.c,3 :: 		for (i = 0; i < 50; i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;MyProject.c,8 :: 		}
	GOTO       L_motorRotate00
L_motorRotate01:
;MyProject.c,9 :: 		}
L_end_motorRotate0:
	RETURN
; end of _motorRotate0

_motorRotate90:

;MyProject.c,10 :: 		void motorRotate90() {
;MyProject.c,11 :: 		for (i = 0; i < 50; i++) {
	CLRF       _i+0
	CLRF       _i+1
L_motorRotate905:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__motorRotate9022
	MOVLW      50
	SUBWF      _i+0, 0
L__motorRotate9022:
	BTFSC      STATUS+0, 0
	GOTO       L_motorRotate906
;MyProject.c,12 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;MyProject.c,13 :: 		delay_us(1500);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_motorRotate908:
	DECFSZ     R13+0, 1
	GOTO       L_motorRotate908
	DECFSZ     R12+0, 1
	GOTO       L_motorRotate908
	NOP
;MyProject.c,14 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;MyProject.c,15 :: 		delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_motorRotate909:
	DECFSZ     R13+0, 1
	GOTO       L_motorRotate909
	DECFSZ     R12+0, 1
	GOTO       L_motorRotate909
	NOP
	NOP
;MyProject.c,11 :: 		for (i = 0; i < 50; i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;MyProject.c,16 :: 		}
	GOTO       L_motorRotate905
L_motorRotate906:
;MyProject.c,17 :: 		}
L_end_motorRotate90:
	RETURN
; end of _motorRotate90

_motorRotate180:

;MyProject.c,20 :: 		void motorRotate180() {
;MyProject.c,21 :: 		for (i = 0; i < 50; i++) {
	CLRF       _i+0
	CLRF       _i+1
L_motorRotate18010:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__motorRotate18024
	MOVLW      50
	SUBWF      _i+0, 0
L__motorRotate18024:
	BTFSC      STATUS+0, 0
	GOTO       L_motorRotate18011
;MyProject.c,22 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;MyProject.c,23 :: 		delay_us(2200);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      181
	MOVWF      R13+0
L_motorRotate18013:
	DECFSZ     R13+0, 1
	GOTO       L_motorRotate18013
	DECFSZ     R12+0, 1
	GOTO       L_motorRotate18013
	NOP
	NOP
;MyProject.c,24 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;MyProject.c,25 :: 		delay_us(17800);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      58
	MOVWF      R13+0
L_motorRotate18014:
	DECFSZ     R13+0, 1
	GOTO       L_motorRotate18014
	DECFSZ     R12+0, 1
	GOTO       L_motorRotate18014
	NOP
;MyProject.c,21 :: 		for (i = 0; i < 50; i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;MyProject.c,26 :: 		}
	GOTO       L_motorRotate18010
L_motorRotate18011:
;MyProject.c,27 :: 		}
L_end_motorRotate180:
	RETURN
; end of _motorRotate180

_main:

;MyProject.c,29 :: 		void main() {
;MyProject.c,30 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject.c,31 :: 		while (1) {
L_main15:
;MyProject.c,32 :: 		motorRotate180();
	CALL       _motorRotate180+0
;MyProject.c,33 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
	NOP
;MyProject.c,35 :: 		motorRotate90();
	CALL       _motorRotate90+0
;MyProject.c,36 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
	NOP
;MyProject.c,39 :: 		}
	GOTO       L_main15
;MyProject.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
