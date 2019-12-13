Spaceship bob;
Star[] a;
ArrayList <Asteroid> s;
ArrayList <Bullet> d;
public void setup() 
{
  size(800,800);
  bob = new Spaceship();
  a = new Star[600];
  s = new ArrayList <Asteroid> ();
  d = new ArrayList <Bullet> ();
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
	for(int k = 0; k < d.size(); k++){
		d.get(k).show();
		d.get(k).move();
		for(int l = 0; l < s.size(); l++){
			if(dist((float)s.get(l).getCenterX(),(float)s.get(l).getCenterY(),(float)d.get(k).getCenterX(),(float)d.get(k).getCenterY()) < 40){
				s.remove(l);
				d.remove(k);
				break;
			}
		}
	}
	for(int k = 0; k < d.size(); k++){
		if(d.get(k).getCenterX() > 800 || d.get(k).getCenterX() < 0){
			d.remove(d.get(k));
		}else if(d.get(k).getCenterY() > 800 || d.get(k).getCenterY() < 0){
			d.remove(d.get(k));
		}
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
	if(key == 'e'){
		d.add(new Bullet(bob));
	}
}

