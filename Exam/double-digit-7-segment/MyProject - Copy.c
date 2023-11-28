char ca[] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90, 0xBF};
int i, j;
int fdigit, ldigit;
int number = 0, number2 = 0;

void light_num() {



    while (1) {
         for (j = 0; j < 25; j++) {
             number2 = number;
             if (number2 < 0) number2 *= -1;
             fdigit = number2 / 10;
             ldigit = number2 % 10;

             portc.f0 = 1;
             if (number < 0) {
                portb = ca[10];
             }else {
                   portb = ca[fdigit];
             }
             delay_ms(10);
             portc.f0 = 0;

             portc.f1 = 1;
             portb = ca[ldigit];
             delay_ms(10);
             portc.f1 = 0;

             if (portd.f0 == 1) {
                delay_ms(300);
                ++number;
                break;
             } else if (portd.f1 == 1) {
               delay_ms(300);
               --number;
               break;
             }
         }


    }
}

void main() {
     TRISB = 0x00;
     portb = 0x00;

     TRISC = 0x00;
     portc = 0x00;

     TRISD = 0xff;
     portd = 0x00;

     light_num();


}