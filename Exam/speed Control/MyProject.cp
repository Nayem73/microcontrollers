#line 1 "D:/Download-D/MC/Me/microcontrollers/Exam/speed Control/MyProject.c"
void main() {
 short duty = 0;
 TRISB = 0x00;
 TRISD = 0xff;

 portb.f0 = 0;
 portb.f1 = 1;

 PWM1_Init(1000);
 PWM1_Start();
 PWM1_Set_Duty(duty);

 while (1) {
 if (portd.f0 == 1) {
 delay_ms(100);
 if (portd.f0 == 1) {
 duty += 100;
 PWM1_Set_Duty(duty);
 }
 }

 if (portd.f1 == 1) {
 delay_ms(100);
 if (portd.f1 == 1) {
 duty -= 100;
 PWM1_Set_Duty(duty);
 }
 }

 delay_ms(10);
 }
}
