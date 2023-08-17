int i;
void main() {
   TRISB = 0x00;
   portb = 0x00;

   TRISC = 0xFF;

   portb.RB2 = 1;
   //portb.RB0 = 0;//everything in portb is set
   //to 0 in the beginning by declaring portb=0x00
   //so no need to set RB0 port to off again

   while(1) {

       if (portc.RC0 == 1) {
          portb.RB0 = 1; //running motor forward
          portb.RB1 = 0; //with these 2 lines
          //delay_ms(5000);

          for (i = 0; i < 100; i++) { // Divide the delay into smaller intervals
              delay_ms(50); // Delay for 50 ms
              if (portc.RC1 == 1) {
                  portb.RB0 = 0; // Stop motor immediately
                  portb.RB1 = 0;
                  break; // Exit the loop
              }
          }
          portb.RB0 = 0;//stop motor
          portb.RB1 = 0;//with these 2 lines.
          //portb.RB2 = 0; this line alone also stops motor
       }
       else if (portc.RC1 == 1) {
            portb.RB0 = 0;//stop motor
            portb.RB1 = 0;//with these 2 lines
       }
       else if (portc.RC2 == 1) {
            portb.RB0 = 0; //running motor backwards
            portb.RB1 = 1; //with these 2 lines
            //delay_ms(5000);
            for (i = 0; i < 100; i++) { // Divide the delay into smaller intervals
              delay_ms(50); // Delay for 50 ms
              if (portc.RC1 == 1) {
                  portb.RB0 = 0; // Stop motor immediately
                  portb.RB1 = 0;
                  break; // Exit the loop
              }
           }
            portb.RB0 = 0;//stop motor
            portb.RB1 = 0;//with these 2 lines.
       }
   }
}