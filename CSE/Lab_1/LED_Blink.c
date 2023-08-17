void main() {
   TRISB = 0x00;        //Set portb as output
   PORTB = 0x00;        //Set portb as off state
   while(1)
   {
      portb.f7 = 0xff; //set 8th pin of portb as high
      delay_ms(500);
      portb.f7 = 0x00; //Set 8th pin of portb as low
      delay_ms(500);
   }
}