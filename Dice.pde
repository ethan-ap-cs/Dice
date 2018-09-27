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
		dots = (int)(Math.random()*7);

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
			
			default :
				System.out.println("fail");
				break;
		}
		
	}
}