void main() {
     TRISB = 0x00;
     TRISC = 0xFF;
     
     portb = 0x00;
     portb.f2 = 1;
     
     while (1) {
           if (portc.f0 == 1) {
              delay_ms(100);
              if (portc.f0 == 1) {
                 portb.f0 = 1;
                 portb.f1 = 0;
              }
           }
           
           else if (portc.f1 == 1) {
                delay_ms(100);
                if (portc.f1 == 1) {
                   portb.f0 = 0;
                   portb.f1 = 0;
                }
           }
           
           else if (portc.f2 == 1) {
              delay_ms(100);
              if (portc.f2 == 1) {
                 portb.f0 = 0;
                 portb.f1 = 1;
              }
           }
     }
}