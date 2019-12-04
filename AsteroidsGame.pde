Spaceship bob;
Star[] a;
ArrayList <Asteroid> s;
public void setup() 
{
  size(800,800);
  bob = new Spaceship();
  a = new Star[600];
  s = new ArrayList <Asteroid> ();
  for(int i = 0; i < a.length; i++){
  	a[i] = new Star();
  }
  for(int j = 0; j < 30; j++){
  	s.add(new Asteroid());
  }
}
public void draw() 
{
  	background(0);
  	for(int i = 0; i < a.length; i++){
		a[i].show();
}
	for(int j = 0; j < s.size(); j++){
		s.get(j).show();
		s.get(j).move();
		if(dist((float)bob.getCenterX(),(float)bob.getCenterY(),(float)s.get(j).getCenterX(),(float)s.get(j).getCenterY() )<40){
		s.remove(j);
		}
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

