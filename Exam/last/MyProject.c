int i;
void motorRotate0() {
      for (i = 0; i < 50; i++) {
          portb.f0 = 1;
          delay_us(800);
          portb.f0 = 0;
          delay_us(19200);
      }
}
void motorRotate90() {
      for (i = 0; i < 50; i++) {
          portb.f0 = 1;
          delay_us(1500);
          portb.f0 = 0;
          delay_us(18500);
      }
}


void motorRotate180() {
      for (i = 0; i < 50; i++) {
          portb.f0 = 1;
          delay_us(2200);
          portb.f0 = 0;
          delay_us(17800);
      }
}

void main() {
     TRISB = 0x00;
     while (1) {
           motorRotate180();
           delay_ms(1000);
           
           motorRotate90();
           delay_ms(1000);
           //motorRotate180();
           //delay_ms(2000);
     }
}