//your code here
NormalParticle [] space;
void setup()
{
	size(500,500);
	space = new NormalParticle[20];
	for(int i=0; i<space.length; i++)
	{
		space[i] = new NormalParticle();
	}
	//your code here
}
void draw()
{
	background(1);
	for(int i=0; i<space.length; i++)
	{
	 space[i].show();
	 space[i].move();
	 }
	//your code here
}
class NormalParticle implements Particle
{
	double dTheta, dSpeed, myX, myY; 
	int myColor;
	NormalParticle(){
		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		myX = 250;
		myY = 250;
		dSpeed = Math.random()*5;
		dTheta = Math.random()*9* Math.PI;
	}

	public void move(){
		myX = myX + Math.cos(dTheta)*dSpeed;
		myY = myY + Math.sin(dTheta)*dSpeed;
	}

	public void show(){
		fill(myColor);
		ellipse((float)myX, (float)myY, 10, 10);
	}
	//your code here
}

interface Particle
{
	public void move();
	public void show();
}

class OddballParticle //uses an interface
{
	//your code here

}

class JumboParticle //uses inheritance
{
	//your code here

}

