#line 1 "D:/Download-D/MC/Me/microcontrollers/Exam/7segment/MyProject1.c"
char array_CC[]={0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};
void main() {
 TRISB = 0x00;
 portb = 0x00;


 while (1) {
 int i;
 for (i = 0; i < 10; i++) {
 portb = array_CC[i];
 delay_ms(1000);

 }

 }


}
