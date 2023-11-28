#line 1 "C:/Users/DELL/OneDrive/Desktop/mc/MyProject1.c"
void main() {
 TRISB = 0x00;
 portb = 0x00;

 while (1) {
 portb.f4 = 1;
 delay_ms(2000);

 portb.f4 = 0;
 delay_ms(500);
 }
}
