#line 1 "C:/Users/nayem/OneDrive/Desktop/microcontroller/motor_AC/motorACWithIC.c"
void main() {
 portb=0x00;
 portb.f2=1;
 while(1)
 {
 portb.f0=0;
 portb.f1=1;
 delay_ms(5000);
 portb.f0=1;
 portb.f1=0;
 delay_ms(5000);
 }
}
