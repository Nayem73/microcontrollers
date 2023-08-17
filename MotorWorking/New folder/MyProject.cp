#line 1 "C:/Users/nayem/OneDrive/Desktop/microcontroller/MotorWorking/New folder/MyProject.c"
int i;
void main() {
 TRISB = 0x00;
 portb = 0x00;

 TRISC = 0xFF;

 portb.RB2 = 1;




 while(1) {

 if (portc.RC0 == 1) {
 portb.RB0 = 1;
 portb.RB1 = 0;


 for (i = 0; i < 100; i++) {
 delay_ms(50);
 if (portc.RC1 == 1) {
 portb.RB0 = 0;
 portb.RB1 = 0;
 break;
 }
 }
 portb.RB0 = 0;
 portb.RB1 = 0;

 }
 else if (portc.RC1 == 1) {
 portb.RB0 = 0;
 portb.RB1 = 0;
 }
 else if (portc.RC2 == 1) {
 portb.RB0 = 0;
 portb.RB1 = 1;

 for (i = 0; i < 100; i++) {
 delay_ms(50);
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
