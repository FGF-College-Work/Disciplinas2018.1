#include <stdio.h>
#include <conio.h>
#include <graphics.h>
#include <math.h>

void lineIncremental(int x1, int y1, int x2, int y2){
	int x;
	float dy = y2-y1;
	float dx = x2-x1;
	float m = dy/dx;
	float y = y1;
	if((m > -1) || (m < 1)){
		for(x=x1; x<=x2;x++){
			putpixel(x, floor(0.5+y), WHITE);
			y+=m;
		}
		
	}
	else{
		for(x=y1; x<=y2;x++){
			putpixel(x, floor(0.5+y), WHITE);
			x+=1/m;
		}
	}
	
	
}

int main(){
	int gd=DETECT, gm;
	initgraph(&gd, &gm, "");
	lineIncremental(100, 10, 300, 400);
	lineIncremental(100, 400, 300, 10);
	getch();
}
