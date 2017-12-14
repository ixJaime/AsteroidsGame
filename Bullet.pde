class Bullet extends Floater {
  Bullet(Spaceship, ship) {
    myCenterX = 250;
    myCenterY = 250;
    myPointDirection = 270;
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians);
    myDirectionY = 5 * Math.sin(dRadians);
  }
}
  
  public void show() {
    ellipse(
}