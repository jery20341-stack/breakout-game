class GameObject {
  protected int width;
  protected int height;
  protected int x;
  protected int y;
  
  public boolean collisionCheck(GameObject g){
    int left = this.x;
    int right = this.x + this.width;
    int top = this.y;
    int bottom = this.y + this.height;
    int gLeft = g.x;
    int gRight = g.x + g.width;
    int gTop = g.y;
    int gBottom = g.y + g.height;
    // check top-left corner vs g
    if ( (left > gLeft && left < gRight) && (top > gTop && top < gBottom)){
      return true;
    }
    // check bottom-right corner vs g
    if ((right < gRight && right > gLeft) && (bottom > gTop && bottom < gBottom))  {
      return true;
    }
   return false;
  }
  
  public void print(){
  System.out.println(x + ", " + y + ", " + width + ", " + height);
  }
  
  public GameObject(int x, int y, int width, int height){
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

}
