##Graphics configure for code::blocks
01. First download WinBGIm GCC47 file from [here.](https://github.com/tanvir002700/Blog-post/blob/master/WinBGIm_GCC47.zip?raw=true)
02. unzip the WinBGIm_GCC47.zip
03. open "graphics.h" file. and replace 302 line with "int left=0, int top=0, int right=INT_MAX, int bottom=INT_MAX," line.
04. copy & paste "graphics.h" and "winbgim.h" into compiler include folder.
05. copy & paste libbgi.a file into compiler lib folder.
06. Now open code::blocks.
07. Go to settings -> Compiler -> Linker settings
08. Left side Linker libraries click add, and browse the file "libbgi.a" and add. In my pc this is "C:\Program Files (x86)\CodeBlocks\MinGW\lib\libbgi.a"
09. In Right side Other linker options text field copy paste this, "-lbgi -lgdi32 -lcomdlg32 -luuid -loleaut32 -lole32" (without quotes)
10. Press ok.
11. For further clarification see this ![image](http://i.imgur.com/twC2Pdd.jpg)

*now testing. Run this code:
```javascript
#include <graphics.h>
int main()
{
    initwindow(400, 300);
    line(0, 0, 100, 100);
    getch();
    closegraph();
    return 0;
}
```

*If everything is ok and show a straight line. Then congratulation you have done this. :P :P :P
