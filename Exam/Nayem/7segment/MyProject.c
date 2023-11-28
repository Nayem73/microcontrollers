char ca[] = {0xC0, 0xF9, 0xA4, 0xB0,0x99, 0x92};
int i = 0;
int number = 5423;
void main() {
     TRISB = 0x00;
     TRISC = 0x00;
     
     

     while (1) {
         for (i = 0; i < 25; i++) {
             portc.f0 = 1;
             portb = ca[5];
             delay_ms(10);
             portc.f0 = 0;
             
             portc.f1 = 1;
             portb = ca[4];
             delay_ms(10);
             portc.f1 = 0;
             
             portc.f2 = 1;
             portb = ca[2];
             delay_ms(10);
             portc.f2 = 0;
             
             portc.f3 = 1;
             portb = ca[3];
             delay_ms(10);
             portc.f3 = 0;
         }
     }

}