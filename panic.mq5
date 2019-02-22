#import "panic.dll"
void panic(void);
#import

#property indicator_chart_window
#property indicator_buffers 1
#property indicator_plots 1

#property indicator_label1 "SMA"
#property indicator_type1  DRAW_LINE
#property indicator_color1 clrRed
#property indicator_style1 STYLE_SOLID
#property indicator_width1 2

double sma[];

int OnInit()
{
    SetIndexBuffer(0, sma, INDICATOR_DATA);

    return INIT_SUCCEEDED;
}

int OnCalculate(
        const int TOTAL,
        const int PREV,
        const datetime &T[],
        const double &O[],
        const double &H[],
        const double &L[],
        const double &C[],
        const long &TICK_VOL[],
        const long &VOL[],
        const int &SP[])
{
    panic();

    return TOTAL;
}
