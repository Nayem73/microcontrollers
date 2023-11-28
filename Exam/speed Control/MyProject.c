void main() {
     short duty = 0; //initial value for duty for motor
     TRISB = 0x00; //set as output
     TRISD = 0xff; //set as input for buttons

     portb.f0 = 0; //turn off
     portb.f1 = 1; //turn on
     
     PWM1_Init(1000);
     PWM1_Start();
     PWM1_Set_Duty(duty); //set current duty for PWM
     
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