class Stars //note that this class does NOT extend Fler
{
  private int x, y;
   Stars() {
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
  }
  
  public void show() {
    fill(255);
    ellipse(x, y, 2.75, 2.75);
}
}