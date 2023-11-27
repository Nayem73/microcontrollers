void main() {
TRISB = 0x00;
PORTB = 0x00;
PORTB.rb2 = 0xff;
     while (1) {
           PORTB.rb0 = 0xff;
           PORTB.rb1 = 0x00;
           delay_ms(20000);
           portB.rb0 = 0x00;
           PORTB.rb1 = 0xff;
           delay_ms(20000);
     
     }
}