int width = 10;
int height = 10;
int size = 10;
float snakeX = 10;
float snakeY = 10;
int foodX=(int) random(10, 440);
int foodY=(int) random(10, 440);
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = true;
int score = 0;

void setup() {
  size(450,450);
  frameRate(60);
}

void draw(){
 background(255);
 
   fill(0); 
   textSize(18);
   text("Score:"+score,370,445);
 
 if (up){
   snakeY -= 2;
 }
 else if (down){
   snakeY += 2;
 }
  else if (left){
   snakeX -= 2;
 } 
  else if (right){
   snakeX += 2;
 } 
 
 //snake hits food and generates new location + adds length to snake + adds 1 to score
 if ( snakeX + 10 >= foodX && // Snakes right hits foods left
      snakeX <= foodX + 10 && // Snakes left hits foods right
      snakeY + 10 >= foodY && // Snakes top hits foods bottom
      snakeY <= foodY +  10)  // Snakes bottom hits foods top
 
 {
   foodX = (int) random(10, 440);
   foodY = (int) random(10, 440);
   score += 1;
   
 }
 //dectects if snake hit the edge of windows if so then restart game
  if (snake hits edge) // to do
  {
    restart();
  }

 fill(0);
 rect(snakeX,snakeY,10,10);
 fill(255,0,0);
 rect(foodX,foodY, 10,10);
 }

 
 
 //key directions for snake
 void keyPressed()
{
  if (key == CODED && keyPressed)
  {
    {
      up = true;
      down = false;
      left = false;
      right = false;
    }
    if (keyCode == DOWN)
    {
      up = false;
      down = true;
      left = false;
      right = false;
    }
        if (keyCode == LEFT)
    {
      up = false;
      down = false;
      left = true;
      right = false;
    }
        if (keyCode == RIGHT)
    {
      up = false;
      down = false;
      left = false;
      right = true;
    }
  }
}
 
 //restarts to new game
void restart()
{
  background(255);
  snakeX = 10;
  snakeY = 10;
  score = 0;
  up = false;
  down = false;
  left = false;
  right = true;
}
 
 
