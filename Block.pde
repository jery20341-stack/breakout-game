class Block extends GameObject {
 
  private int health;
  private boolean alive;
  public Block(int x, int y, int width, int height){
    super(x, y, width, height);
    this.health = 3;
  }
  
  public void hit(){
    if (health > 0) {
       health--; 
    }
  }
  
  public void draw(){
  fill(health * 80);
  ellipseMode(CORNER);
  ellipse(x, y, width, height);
  }
  
}
