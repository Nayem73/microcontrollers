#line 1 "C:/Users/DELL/OneDrive/Desktop/queston7segment/MyProject.c"
char ca[] = {0xC0, 0xF9, 0xA4, 0xB0,0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};
int i = 0;
int number = 2122;
int number2 = 2140;
int tmpNum;
int num0, num1, num2, num3;
void main() {
 TRISB = 0x00;
 TRISC = 0x00;



 while (1) {
 for (i = 0; i < 25; i++) {
 tmpNum = number;
 num3 = tmpNum % 10;
 tmpNum = tmpNum / 10;

 num2 = tmpNum % 10;
 tmpNum = tmpNum / 10;

 num1 = tmpNum % 10;
 tmpNum = tmpNum / 10;

 num0 = tmpNum % 10;
 tmpNum = tmpNum / 10;

 portc.f0 = 1;
 portb = ca[num0];
 delay_ms(10);
 portc.f0 = 0;

 portc.f1 = 1;
 portb = ca[num1];
 delay_ms(10);
 portc.f1 = 0;

 portc.f2 = 1;
 portb = ca[num2];
 delay_ms(10);
 portc.f2 = 0;

 portc.f3 = 1;
 portb = ca[num3];
 delay_ms(10);
 portc.f3 = 0;
 }
 delay_ms(10);
 number++;
 if (number == 2141) break;
 }

}
