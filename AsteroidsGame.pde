Spaceship ship;
Stars [] particles;

public void setup() {
  size(500, 500);
ship = new Spaceship();
particles = new Stars[100];
  for(int i=0; i<particles.length; i++){
    particles[i] = new Stars();
  }
}
public void draw() {
  background(0);
  for(int i=0; i<particles.length; i++){
    particles[i].show();
  }
  ship.show();
  ship.move();
}
public void keyPressed() {
  if(key == 'w') {
    ship.accelerate(0.8);
  }
  if(key == 'd') {
    ship.turn(30);
  }
  if(key == 'a') {
    ship.turn(-30);
  }
  if(key == 's') {
    ship.accelerate(-0.5);
  }
}