Spaceship ship;
ArrayList <Asteroid> rocks;
Stars [] particles;

public void setup() {
  size(500, 500);
ship = new Spaceship();
rocks = new ArrayList <Asteroid>();
particles = new Stars[100];
for(int i = 0; i < 10; i++) {
  rocks.add(i, new Asteroid());
}
  for(int i=0; i<particles.length; i++){
    particles[i] = new Stars();
  }
}
public void draw() {
  background(0);
  for(int i=0; i<particles.length; i++){
    particles[i].show();
  }
    for(int i=0; i<rocks.size(); i++) {
     rocks.get(i).show();
     rocks.get(i).move();
     rocks.get(i).accelerate(0.01);
     if(rocks.get(i).collide(ship.getX(), ship.getY()) == true) {
       rocks.remove(i);
     }
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
  if(key == 'h') {
    ship.setX((int)(Math.random()*500));
    ship.setY((int)(Math.random()*500));
    ship.setPointDirection((int)(Math.random()*360));
    ship.setDirectionX(0);
    ship.setDirectionY(0);
  }
}