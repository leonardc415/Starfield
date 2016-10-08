//your code here
Particle [] space;
void setup()
{
	size(800,800);
	space = new Particle[200];
	for(int i=0; i<space.length; i++)
	{
		space[i] = new NormalParticle();
	}
	space[0] = new OddballParticle();
	space[1] = new JumboParticle();
}

void draw()
{
	background(1);
	for(int i=0; i<space.length; i++)
	{
	 space[i].show();
	 space[i].move();
	 }
}

class NormalParticle implements Particle
{
	double dTheta, dSpeed, myX, myY; 
	int myColor;
	NormalParticle()
	{
		myColor = color(255, 255, 255);
		myX = 400;
		myY = 400;
		dSpeed = Math.random()*5;
		dTheta = Math.random()*9* Math.PI;
	}

	public void move()
	{
		myX = myX + Math.cos(dTheta)*dSpeed;
		myY = myY + Math.sin(dTheta)*dSpeed;
	}

	public void show()
	{
		fill(myColor);
		ellipse((float)myX, (float)myY, 5, 5);
	}
	//your code here
}

interface Particle
{
	public void move();
	public void show();
}

class OddballParticle implements Particle //moves slower + differnt shape
{
	double dTheta, dSpeed, myX, myY; 
	int myColor;
	OddballParticle(){
		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		myX = 250;
		myY = 250;
		dSpeed = Math.random()*3;
		dTheta = Math.random()*5* Math.PI;
	}

	public void move(){
		myX = myX + Math.cos(dTheta)*dSpeed;
		myY = myY + Math.sin(dTheta)*dSpeed;
	}

	public void show(){
		fill(myColor);
		rect((float)myX, (float)myY, 10, 10);
	}
}

class JumboParticle extends NormalParticle//uses inheritance
{
	int mySize;
	JumboParticle()
	{
		mySize = (int)(Math.random()*20)+10;
	}
	void show()
	{
		ellipse((float)myX, (float)myY, mySize, mySize);
	}
}

