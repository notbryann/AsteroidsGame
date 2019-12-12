class Bullet extends Floater{
	public Bullet(Spaceship theShip){
		myCenterX = bob.getCenterX();
		myCenterY = bob.getCenterY();
		myPointDirection = bob.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/100);
		myDirectionX = 5*Math.cos(dRadians) + bob.getDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + bob.getDirectionY();
	}
	public void show(){
		noStroke();
		ellipse((float)myCenterX, (float)myCenterY, (float)8, (float)8);
	}
	public void move(){
		myCenterX += myDirectionX;
		myCenterY += myDirectionY;
	}
	public double getCenterX(){
		return myCenterX;
	}
	public double getCenterY(){
		return myCenterY;
	}
}