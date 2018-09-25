Die bob;
void setup(){
	noLoop();
	
}
void draw(){
	bob = new Die(0,0);
	bob.roll();
	bob.show();
}
void mousePressed(){

	redraw();
}
class Die{
	int myX, myY, dots;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll(){
		dots = 2; //(int)(Math.random()*7);

	}
	void show(){
		fill(0);
		rect(myX, myY, 55, 55, 6);
		fill(255);
		switch(dots){
			case 1:
				ellipse(27 + myX, 27 + myY, 18, 18);
				break;
			case 2:
				ellipse(5 + myX, 5 + myY, 12, 12);

			default :
				System.out.println("fail");
				break;
		}
		
	}
}