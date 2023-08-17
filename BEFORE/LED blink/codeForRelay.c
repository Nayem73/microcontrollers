void main() {
     TRISB = 0x00;
     PORTB = 0X00;
     
     while (1) {
           portb.RB0 = 1;
           delay_ms(200);
           portb.RB0 = 0;
     }
}