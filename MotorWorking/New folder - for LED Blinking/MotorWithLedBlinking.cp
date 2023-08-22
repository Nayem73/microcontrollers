#line 1 "C:/Users/nayem/OneDrive/Desktop/microcontroller/MotorWorking/New folder - for LED Blinking/MotorWithLedBlinking.c"
int i;
int cnt_time = 0;
void main() {
 TRISB = 0x00;
 portb = 0x00;

 TRISC = 0xFF;

 portb.RB2 = 1;



 while(1) {

 if (portc.RC0 == 1) {
 portb.RB0 = 1;
 portb.RB1 = 0;

 portb.Rb3 = 1;
 delay_ms(500);
 portb.Rb3 = 0;

 for (i = 0; i < 400; i++) {
 delay_ms(50);
 cnt_time += 50;
 if (cnt_time == 500) {
 if (portb.RB3 == 1) {
 portb.RB3 = 0;
 } else {
 portb.RB3 = 1;
 }
 cnt_time = 0;
 }
 if (portc.RC1 == 1) {
 portb.RB0 = 0;
 portb.RB1 = 0;
 break;
 }
 }
 portb.RB0 = 0;
 portb.RB1 = 0;


 portb.RB3 = 0;
 cnt_time = 0;
 }
 else if (portc.RC1 == 1) {
 portb.RB0 = 0;
 portb.RB1 = 0;
 }
 else if (portc.RC2 == 1) {
 portb.RB0 = 0;
 portb.RB1 = 1;

 for (i = 0; i < 400; i++) {
 delay_ms(50);
 cnt_time += 50;
 if (cnt_time == 500) {
 if (portb.RB3 == 1) {
 portb.RB3 = 0;
 } else {
 portb.RB3 = 1;
 }
 cnt_time = 0;
 }
 if (portc.RC1 == 1) {
 portb.RB0 = 0;
 portb.RB1 = 0;
 break;
 }
 }
 portb.RB0 = 0;
 portb.RB1 = 0;
 }
 }
}
