void main() {
     short duty = 0;
     TRISB = 0x00;
     TRISD = 0xFF;
     
     portb.f0 = 1;
     portb.f1 = 0;
     
     

     PWM1_Init(1000);
     PWM1_Start();
     PWM1_Set_Duty(duty);
     
     while (1) {
           if (portd.f0 == 1 && duty < 250) {
              delay_ms(100);
              if (portd.f0 == 1 && duty < 250) {
                 duty += 10;
                 PWM1_Set_Duty(duty);
              }
           }
           if (portd.f1 == 1 && duty > 0) {
              delay_ms(100);
              if (portd.f1 == 1 && duty > 0) {
                 duty -= 10;
                 PWM1_Set_Duty(duty);
              }
           }
           
           delay_ms(10);
           
     }
      
}