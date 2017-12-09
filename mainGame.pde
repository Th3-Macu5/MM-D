Paddle paddle;
Ball ball;
gameScreens screens;

void setup() 
{
  paddle = new Paddle();
  ball = new Ball();
  screens = new gameScreens();
  size(500, 500);
  frameRate(60);
}

void draw() 
{
  enemyOneyPos = ball.y - 30;
  screens.menu();
  screens.deathScreen();
  if (keyPressed == true) 
  { 
    if (key == 'r') 
    {
      screens.menu = 2;
    }
  }
  if (screens.menu == 2) 
  {
    gameMain();
  }
}

void gameMain() 
{
  background(0);
  textSize(20);
  text("Score", 230, 20);
  text(score, 250, 45);
  text("High score", 300, 20);
  text(highScore, 344, 45);
  text("Lifes", 15, 20);
  text(lifes, 30, 45);
  paddle.offSet();
  paddle.collision();
  paddle.randomness();
  ball.life();
  ball.move();
  ball.bounce();
  ball.gravity();
  ball.show();
  rect(rectOnexPos, rectOneyPos, 20, 60);
  rect(rectTwoxPos, enemyOneyPos, 20, 60);
  if (keyPressed == true) {
    if (key == 'w') 
    {
      rectOneyPos = rectOneyPos - 4;
    }
    if (key == 's') 
    {
      rectOneyPos = rectOneyPos + 4;
    }
    if (key == 'i') 
    {
      enemyOneyPos = enemyOneyPos - 4;
    }
    if (key == 'k') 
    {
      enemyOneyPos = enemyOneyPos + 4;
    }
  }
}