class Breakout {
  private Ball ball;
  private Paddle paddle;
  private int blockColumns;
  private Block[] blocks;
  private Wall topWall;
  private Wall bottomWall;
  private Wall leftWall;
  private Wall rightWall;
  
  public Breakout(int width, int height){
    int blockWidth = 50;
    int blockHeight = 50;
    ball = new Ball(width / 2, height / 2, 25, 25);
    paddle = new Paddle(width / 2, height, 100, 50);
    // walls
    leftWall = new Wall(-100, -100, 100, height + 200);
    rightWall = new Wall(width, -100, 100, height + 200);
    topWall = new Wall(-100, -100, width + 200, 100);
    bottomWall = new Wall(-100, height, width + 200, 100);
    // blocks
    blockColumns = width / blockWidth;
    blocks = new Block[blockColumns];
    for(int i = 0; i < blockColumns; i++) {
      int blockX = i * blockWidth;
      int blockY = 0;
      blocks[i] = new Block(blockX, blockY, blockWidth, blockHeight);
    }
  }
  
  public void update(int mX, int mY){
    ball.update();
    if (ball.collisionCheck(leftWall)) {
    ball.bounceX();
    }
    if (ball.collisionCheck(rightWall)) {
    ball.bounceX();
    }
    if (ball.collisionCheck(topWall)) {
    ball.bounceY();
    }
    if (ball.collisionCheck(bottomWall)) {
    ball.bounceY();
    }
    if (ball.collisionCheck(paddle)) {
    ball.bounceX();
    }
    paddle.update(mX, 0, width);
    ball.print();
    paddle.print();
    // ball.checkCollision(left, right, top, bottom);
  }
  
  public void draw(){
    fill(50, 50, 150);
    rectMode(CORNER);
    rect(0, 0, width, height);
    for(int i = 0; i < blocks.length; i++) {
      blocks[i].draw();
      
    }
  ball.draw();
  paddle.draw();
  }
  
  
}
