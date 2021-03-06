Die bob;
int sum;
int filter;
void setup(){
	noLoop();
	size(825,900);

}
void draw(){
	background(255);
	sum = 0;
	filter = 255;
	for (int r = 0; r < 826; r+=55){
		filter = (255/20)*r/55 + 60;
		for (int c = 0; c < 826; c+=55){
			bob = new Die(c,r,0, filter,255);
			bob.roll();
			sum += bob.dots;
			bob.show();
		}
	}
	textSize(20);
	text("sum:" + sum, 825/2 - 40, 897);
}
void mousePressed(){
	redraw();
}
class Die{
	int myX, myY, dots, red, green, blue;
	Die(int x, int y, int r, int g, int b)
	{
		myX = x;
		myY = y;
		red = r;
		green = g;
		blue = b;

	}
	void roll(){
		dots = (int)(Math.random()*6) + 1;
	}
	void show(){
		fill(red, green, blue);
		rect(myX, myY, 55, 55, 6);
		stroke(red, green - 50, 255);
		fill(red, green - 50, 255);
		switch(dots){
			case 1:
				ellipse(27 + myX, 27 + myY, 18, 18);
				break;
			case 2:
				ellipse(15 + myX, 15 + myY, 16, 16);
				ellipse(40 + myX, 40 + myY, 16, 16);
				break;
			case 3:
				ellipse(13 + myX, 13 + myY, 16, 16);
				ellipse(28 + myX, 28 + myY, 16, 16);
				ellipse(42 + myX, 42 + myY, 16, 16);
				break;
			case 4:
				ellipse(15 + myX, 15 + myY, 16, 16);
				ellipse(40 + myX, 15 + myY, 16, 16);
				ellipse(15 + myX, 40 + myY, 16, 16);
				ellipse(40 + myX, 40 + myY, 16, 16);
				break;
			case 5:
				ellipse(13 + myX, 13 + myY, 16, 16);
				ellipse(42 + myX, 13 + myY, 16, 16);
				ellipse(13 + myX, 42 + myY, 16, 16);
				ellipse(42 + myX, 42 + myY, 16, 16);
				ellipse(55/2 + myX, 55/2 + myY, 16, 16);
				break;
			case 6:
				ellipse(15 + myX, 11 + myY, 14, 14);
				ellipse(15 + myX, 28 + myY, 14, 14);
				ellipse(15 + myX, 45 + myY, 14, 14);
				ellipse(40 + myX, 11 + myY, 14, 14);
				ellipse(40 + myX, 28 + myY, 14, 14);
				ellipse(40 + myX, 45 + myY, 14, 14);
				break;
			default :
				System.out.println("fail");
				break;
		}

	}
}
