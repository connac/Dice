void setup()
{
	background(255);
	noLoop();
	size(800, 800);
}
void draw()
{
Die d = new Die(1,2);	//your code here
d.roll();
d.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int x1, y1, num;
	//variable declarations here
	Die(int x, int y) //constructor
	{
	x1=x;
	y1=y;
	num=(int)(Math.random()*6)+1;
		//variable initializations here
	}
	void roll()
	{
		noStroke();
		fill(0);
		
		//your code here
		if(num == 1) 
		{
			ellipse(x1+40, y1+40, 10, 10);
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
	fill(Math.random()*255,Math.random()*255,Math.random()*255);
	rect(x1, y1, 20, 20, 18);
		//your code here
	}
}