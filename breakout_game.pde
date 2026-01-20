private Breakout game;

void setup() {
  size(800, 800);
  game = new Breakout(width, height);
}

void draw() {
  game.update(mouseX, mouseY);
  game.draw();
}
