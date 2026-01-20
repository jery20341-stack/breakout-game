class Wall extends GameObject {
  private int width;
  private int height;
  private int x;
  private int y;
  
  public Wall(int x, int y, int width, int height){
    super(x, y, width, height);
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }
  
 
  public void update(int x, int left, int right){
    this.x = x;
    if ((x - width) < left){
       x = 0 + width;
    }
    else if ((x + width) >= right){
      x = right - width;
    }
   
    
  }
  
  
  public void draw(){
  fill(0, 100, 100);
  rectMode(CENTER);
  rect(x, y, width, height);
  }
}
