#line 1 "C:/Users/nayem/OneDrive/Desktop/microcontroller/Relay/relayLED.c"
void main() {
 TRISB=0x00;
 PORTB=0x00;
 while(1)
 {
 PORTB.RB0=1;
 delay_ms(500);
 PORTB.RB0=0;
 delay_ms(500);
 }
}
