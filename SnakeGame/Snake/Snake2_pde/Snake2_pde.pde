int width = 10;
int height = 10;
int size = 10;
float snakeX = 10;
float snakeY = 10;
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = true;

void setup() {
  size(400,400);
  frameRate(120);
}

void draw(){
 background(255);
 
 
 if (up){
   snakeY -= 1;
 }
 else if (down){
   snakeY += 1;
 }
  else if (left){
   snakeX -= 1;
 } 
  else if (right){
   snakeX += 1;
 } 
 
 
 fill(0);
 rect(snakeX,snakeY,10,10);
}
 
 
 
 void keyPressed()
{
  if (key == CODED && keyPressed)
  {
    if (keyCode == UP)
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
 
