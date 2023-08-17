void main() {
   TRISB = 0x00;
   portb = 0x00;
   
   TRISC.RC0 = 1;   //look at this! it can be done too!

   portb.RB2 = 1;
   //portb.RB0 = 0;//everything in portb is set
   //to 0 in the beginning by declaring portb=0x00
   //so no need to set RB0 port to off again
     
   while(1) {
       //portb.RB0 = 1;
       //portb.RB1 = 0;
       //delay_ms(10000);
       
       //portb.RB0 = 0;
       //portb.RB1 = 1;
       //delay_ms(5000);
       
       //portb.RB1 = 0;
//       portb.RB0 = 1;
  //     delay_ms(10000);
       
       if (portc.RC0 == 1) {
          portb.RB0 = 1;
          portb.RB1 = 0;
          delay_ms(10000);
          portb.RB2 = 0;
       }
   }
}