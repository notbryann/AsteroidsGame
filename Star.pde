class Star //note that this class does NOT extend Floater
{
	int x, y;
	public Star(){
		x = (int)(Math.random()*801)+1;
		y = (int)(Math.random()*801)+1;
  	}
  	public void show(){
  		noStroke();
  		fill(255);
  		ellipse(x,y,3,3);
  	}
}
