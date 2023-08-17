#line 1 "C:/Users/nayem/OneDrive/Desktop/microcontroller/Relay/RelayDcLED.c"
void main() {
 TRISB = 0x00;
 portb = 0x00;

 while (1) {
 portb.RB0 = 1;
 delay_ms(300);

 portb.RB0 = 0;
 delay_ms(300);
 }
}
