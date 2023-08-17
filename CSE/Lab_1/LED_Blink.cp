#line 1 "C:/Users/nayem/OneDrive/Desktop/CSE/LED_Blink.c"
void main() {
 TRISB = 0x00;
 PORTB = 0x00;
 while(1)
 {
 portb.f7 = 0xff;
 delay_ms(500);
 portb.f7 = 0x00;
 delay_ms(500);
 }
}
