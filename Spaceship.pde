class Spaceship extends Floater  
{   
   public Spaceship(){
   	corners = 14;
   	xCorners = new int[corners];
   	yCorners = new int[corners];
   	xCorners[0] = 16;
   	yCorners[0] = 0;
   	xCorners[1] = 4;
   	yCorners[1] = 2;
   	xCorners[2] = 4;
   	yCorners[2] = 10;
   	xCorners[3] = 8;
   	yCorners[3] = 11;
   	xCorners[4] = 4;
   	yCorners[4] = 12;
   	xCorners[5] = -3;
   	yCorners[5] = 12;
   	xCorners[6] = 1;
   	yCorners[6] = 9;
   	xCorners[7] = -6;
   	yCorners[7] = 0;
   	xCorners[8] = 1;
   	yCorners[8] = -9;
   	xCorners[9] = -3;
   	yCorners[9] = -12;
   	xCorners[10] = 4;
   	yCorners[10] = -12;
   	xCorners[11] = 8;
   	yCorners[11] = -11;
   	xCorners[12] = 4;
   	yCorners[12] = -10;
   	xCorners[13] = 4;
   	yCorners[13] = -2;
   	myColor = color(255);
   	myCenterX = 400;
   	myCenterY = 400;
   	myDirectionX = 0;
   	myDirectionY = 0;
   	myPointDirection = 0;
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
   public void setPointer(double w){
      myPointDirection = w;
   }
}
