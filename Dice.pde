Dice bob;
void setup(){
	noLoop();
	bob = new Dice();
}
void draw(){
	bob.roll();
}
void mousePressed(){
	redraw();
}
class Dice{
	int myX, myY, dots;
	Dice(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll(){
		dots = (int)(Math.random()*7);
		System.out.println("dots: "+dots);
	}
	void show(){
		//your code here
	}
}
