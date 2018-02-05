#include <stdio.h>
#include <graphics.h>

main(){
	int i,j,left,top,bottom,right;
	initwindow(700,500);
	left = 10; right = 60; top = 10; bottom = 200;
	line(left - 10, top + 150, left + 410, top + 150);
	getch ();
	closegraph ();
}
