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
		bob.myPointDirection -= 5;
	}
	if(key == 'd'){
		bob.myPointDirection +=5;
	}
	/*if(key == 'w'){
		bob.
	}*/
}

