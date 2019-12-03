Spaceship bob;
Star[] a;
Asteroid[] s;
public void setup() 
{
  size(800,800);
  bob = new Spaceship();
  a = new Star[500];
  s = new Asteroid[30];
  for(int i = 0; i < a.length; i++){
  	a[i] = new Star();
  }
  for(int j = 0; j < s.length; j++){
  	s[j] = new Asteroid();
  }
}
public void draw() 
{
  	background(0);
  	for(int i = 0; i < a.length; i++){
		a[i].show();
}
	for(int j = 0; j < s.length; j++){
		s[j].show();
		s[j].move();
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

