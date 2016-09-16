int six = 0;
int sum = 0;
void setup()
{
	noLoop();
	size(520, 580);

}
void draw()
{
	background(0);
	for(int m=20; m<480; m+=100){
		for(int x=20; x<500; x+=100){
			Die bob = new Die(x, m);
			bob.show();
			bob.roll();

		}
	}

	textSize(20);
	text("Total sum: "+sum, 115, 550);
	text("Total # of 6: "+six, 270, 550);
}
void mousePressed()
{
	redraw();
	sum=0;
	six=0;

}
class Die //models one single dice cube
{

	int x1, y1, num, s;
	//variable declarations here
	Die(int x, int y) //constructor
	{
	x1=x;
	y1=y;
	num=(int)(Math.random()*6)+1;
	s=20;
		//variable initializations here
	}
	void roll()
	{
		noStroke();
		fill(240);
		num=(int)(Math.random()*6)+1;
		sum=sum + num;

		//your code here
		if(num == 1) 
		{
			ellipse(x1+40, y1+40, s, s);
		}
		else if(num == 2)
		{
			ellipse(x1+20, y1+20, s, s);
			ellipse(x1+60, y1+60, s, s);
		}
		else if(num == 3)
		{
			ellipse(x1+20, y1+20, s, s);
			ellipse(x1+40, y1+40, s, s);
			ellipse(x1+60, y1+60, s, s);
		}
		else if(num == 4)
		{
			ellipse(x1+20, y1+20, s, s);
			ellipse(x1+20, y1+60, s, s);
			ellipse(x1+60, y1+60, s, s);
			ellipse(x1+60, y1+20, s, s);
		}
		else if(num == 5)
		{
			ellipse(x1+20, y1+20, s, s);
			ellipse(x1+20, y1+60, s, s);
			ellipse(x1+60, y1+60, s, s);
			ellipse(x1+60, y1+20, s, s);
			ellipse(x1+40, y1+40, s, s);
		}
		else if(num == 6)
		{
			six=1+six;
			ellipse(x1+20, y1+20, s, s);
			ellipse(x1+20, y1+60, s, s);
			ellipse(x1+60, y1+60, s, s);
			ellipse(x1+60, y1+20, s, s);
			ellipse(x1+20, y1+40, s, s);
			ellipse(x1+60, y1+40, s, s);
		}
		//your code here
	}
	void show()
	{

	noStroke();
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	rect(x1, y1, 80, 80, 18);
		//your code here
	}
}