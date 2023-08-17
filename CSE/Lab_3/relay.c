void main() {
    TRISB=0x00;
    portb=0x00;
    while(1)
    {
        portb.f2=1;
        PORTB.F0=1;
        PORTB.F1=0;
        delay_ms(10000);
        PORTB.F0=0;
        PORTB.F1=1;
        delay_ms(10000);
    }
}