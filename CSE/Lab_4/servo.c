void main() {
     int i;
     TRISB=0x00;
     TRISD = 0x00;
     portb=0x00;
     portd=0x00;
     while(1)
     {
          for(i=1;i<=50;i++)
          {
                portb.f0=0xff;
                delay_us(800);
                portb.f0=0x00;
                delay_us(19200);
          }
          delay_ms(2000);
          for(i=1;i<=50;i++)
          {
                portb.f0=0xff;
                delay_us(1500);
                portb.f0=0x00;
                delay_us(18500);
          }
          delay_ms(2000);
          for(i=1;i<=50;i++)
          {
                portb.f0=0xff;
                delay_us(2200);
                portb.f0=0x00;
                delay_us(17800);
          }
          delay_ms(2000);
          
     }
}