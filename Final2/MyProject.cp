#line 1 "C:/Users/nayem/OneDrive/Desktop/Final2/MyProject.c"
char ca[] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90, 0xBF};
int i, j;
int fdigit, ldigit;
int number = 0, number2 = 0;
int k = 0;
int numberRelay;

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
 vdelay_ms(10);
 portc.f0 = 0;

 portc.f1 = 1;
 portb = ca[ldigit];
 vdelay_ms(10);
 portc.f1 = 0;

 if (portd.f0 == 1) {
 vdelay_ms(300);
 ++number;
 if (number == 100) {
 number = 0;
 }
 break;
 } else if (portd.f1 == 1) {
 vdelay_ms(300);
 --number;
 if (number == -10) {
 number = 0;
 }
 break;
 }
 else if (portd.f2 == 1) {

 numberRelay = number;
 if (numberRelay < 0) {
 numberRelay *= -1;
 }

 portc.f2 = 1;
 vdelay_ms(numberRelay * 1000);
 portc.f2 = 0;

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
