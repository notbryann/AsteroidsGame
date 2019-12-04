class Asteroid extends Floater
{
	private int rSpeed;
	public Asteroid(){
		corners = 7;
		xCorners = new int[corners];
   		yCorners = new int[corners];
   		xCorners[0] = 0;
   		yCorners[0] = -25;
   		xCorners[1] = -20;
   		yCorners[1] = -16;
	   	xCorners[2] = -24;
	   	yCorners[2] = 6;
	   	xCorners[3] = -11;
	   	yCorners[3] = 23;
	   	xCorners[4] = 11;
	   	yCorners[4] = 23;
	   	xCorners[5] = 24;
	   	yCorners[5] = 6;
	   	xCorners[6] = 20;
	   	yCorners[6] = -16;
	   	myColor = color(120,119,115);
	   	myCenterX = Math.random()*800;
	   	myCenterY = Math.random()*800;
	   	myDirectionX = Math.random()*6-3;
	   	myDirectionY = Math.random()*6-3;
	   	rSpeed = (int)(Math.random()*10)-5;
	}
	public void move(){
		turn(rSpeed);
		super.move();
	}
	public void setDirectionX(double x){
      myDirectionX = x;
   	}
   	public void setDirectionY(double y){
      myDirectionY = y;
   	}
   	public void setCenterX(double q){
      myCenterX = q;
   	}
  	public void setCenterY(double e){
      myCenterY = e;
   	}
   	public double getCenterX(){
   		return myCenterX;
   	}
   	public double getCenterY(){
   		return myCenterY;
   	}
}	