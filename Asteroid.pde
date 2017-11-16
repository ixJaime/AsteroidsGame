class Asteroid extends Floater {
  private int myRotSpeed;
  Asteroid () {
    corners = 7;
    int[] xS = {-3, -6, -6, 0, 6, 6, 3};   
    int[] yS = {5, 3, -2, -5, -2, 3, 5}; 
    xCorners = xS;
    yCorners = yS;
    myColor = 255;   
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500; //holds center coordinates   
    myDirectionX = 0;
    myDirectionY = 0; //holds x and y coordinates of the vector for direction of travel   
    myPointDirection = 270; //holds current direction the ship is pointing in degrees
    myRotSpeed = (int)(Math.random()*11)-5;
  }
    public void move() {
      turn(myRotSpeed);
      super.move();
}
   public void setX(int x) {myCenterX = x;}  
  public int getX(){return (int)myCenterX;}  
  public void setY(int y) {myCenterY = y;}  
  public int getY(){return (int)myCenterY;}   
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;} 
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return myPointDirection;}
}