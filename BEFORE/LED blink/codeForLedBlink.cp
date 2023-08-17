#line 1 "C:/Users/nayem/OneDrive/Desktop/microcontroller/LED blink/codeForLedBlink.c"
void main() {
 TRISB = 0x00;
 PORTB = 0x00;

 while (1) {
 PORTB.RB0 = 1;
 Delay_ms(500);
 PORTB.RB0 = 0;

 PORTB.RB5 = 1;
 Delay_ms(500);
 PORTB.RB5 = 0;
 }
}
