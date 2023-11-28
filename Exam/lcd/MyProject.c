sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;

char a[] = "Nayem";
char b[] = "CSE, Pabna University of Science & Technology.";
int i;

void main() {
     LCD_Init();
     LCD_Cmd(_LCD_CURSOR_OFF);
     LCD_Cmd(_LCD_CLEAR);
     LCD_Out(1,1,a);
     LCD_Out(2,1,b);
     delay_ms(80);
     
     while (1) {
           for (i = 0; i < 20; i++) {
               LCD_Cmd(_LCD_SHIFT_LEFT);
               delay_ms(100);
           }
           //Lcd_Cmd(_LCD_CLEAR);
           
           for (i = 0; i < 20; i++) {
               LCD_Cmd(_LCD_SHIFT_RIGHT);
               delay_ms(100);
           }
           //LCD_Cmd(_LCD_CLEAR);
     }
}