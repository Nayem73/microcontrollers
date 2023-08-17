void main() {
     TRISB = 0x00;
     PORTB = 0x00;

     while (1) {
           portb.RB0 = 1;
           delay_ms(100);
           portb.RB0 = 0;
           delay_ms(100);
     }
}