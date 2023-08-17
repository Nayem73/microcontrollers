char array_CA[]={0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};
char array_CC[]={0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};
void main() {
     int i=0,j;
     int leftDigit, rightDigit;
     ADCON1 = 0x06;    //Disable all analog pin and set all analog pins as digital
     CMCON = 0x07;
     TRISB = 0x00;     //set portb as output
     portb = 0x00;     //Initialization
     TRISC = 0x00;     //set portc as output
     portc = 0x00;     //Initialization

     while(1)
     {
         leftDigit=i/10;
         rightDigit=i%10;
         
         for(j=1;j<=25;j++)
         {
             portc.f0=1;
             portb = array_CA[leftDigit];
             delay_ms(10);
             portc.f0=0;

             portc.f1=1;
             portb = array_CA[rightDigit];
             delay_ms(10);
             portc.f1=0;
         }
         i++;

     }
     
}