#line 1 "C:/Users/nayem/OneDrive/Desktop/microcontroller/Motor/MotorIcCode.c"
void main() {
 TRISB = 0x00;
 portb = 0x00;

 TRISC.RC0 = 1;

 portb.RB2 = 1;




 while(1) {
#line 25 "C:/Users/nayem/OneDrive/Desktop/microcontroller/Motor/MotorIcCode.c"
 if (portc.RC0 == 1) {
 portb.RB0 = 1;
 portb.RB1 = 0;
 delay_ms(10000);
 portb.RB2 = 0;
 }
 }
}
