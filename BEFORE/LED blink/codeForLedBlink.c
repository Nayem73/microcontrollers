void main() {
     TRISB = 0x00;
     PORTB = 0x00;
     
     while (1) {
       PORTB.RB0 = 1;
       Delay_ms(500); //1000ms = 1min
       PORTB.RB0 = 0;

       PORTB.RB5 = 1;
       Delay_ms(500);
       PORTB.RB5 = 0;
     }
}