Spaceship bob;
Star[] a;
public void setup() 
{
  size(600,600);
  bob = new Spaceship();
  a = new Star[250];
  for(int i = 0; i < a.length; i++){
  	a[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < a.length; i++){
	a[i].show();

	}
	bob.show();
	bob.move();
}
public void keyPressed(){
	if(key == 'a'){
		bob.turn(-5);
	}
	if(key == 'd'){
		bob.turn(5);
	}
	if(key == 'w'){
		bob.accelerate(.3);
	}
	if(key == 's'){
		bob.accelerate(-.3);
	}
	if(key == 'f'){
		bob.turn((int)(Math.random()*360));
		bob.setCenterX((int)(Math.random()*600)+1);
		bob.setCenterY((int)(Math.random()*600)+1);
		bob.setDirectionX((int)0);
		bob.setDirectionY((int)0);
	}
}

