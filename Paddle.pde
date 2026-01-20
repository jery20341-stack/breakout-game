class Paddle extends GameObject {

  public Paddle(int x, int y, int width, int height){
    super(x, y, width, height);
  }
  
 
  public void update(int x, int left, int right){
    this.x = x;
    if ((x - width) < left){
       x = width;
    }
    else if ((x + width) >= right){
      x = right - width;
    }
   
    
  }
  
  
  public void draw(){
  fill(0);
  rectMode(CENTER);
  rect(x, y, width, height);
  }
}
