int snake = 100;
int size = 50;
int snakeX = 0;
int snakeY = 0;
int food = (int) random(10, 20);
int foodX = (int) random(0, height-food);
int foodY = (int) random (0, width-food);
int direction;
int KeyPress;
int moveX = 0;
int moveY = 0;
int angle=0;
//arrays
int []snakesX = new int[2500];
int []snakesY = new int[2500];

int [] x = new int[10000];
int [] y = new int[10000];

void setup(){
  size (750,750);
  background(0,0,0);
}


void draw(){
  background (0);
  //places food randomly
  rect(foodX, foodY, food, food);
  fill(255);
  switch(direction){
    case 0: snakeY--; break;
    case 1: snakeX--; break;
    case 2: snakeY++; break;
    case 3: snakeX++; break;
  }
  //creating the tail
  for (int i = size-1; i > 0; i--){
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  //adding values to beginning of the array
    x[0] = snakeX;
    y[0] = snakeY;
    
   //drawing the rectangles
     for (int i = 0; i < size; i++)
    {
      rect(x[i], y[i], 20, 20);
    } 
    
    if (dist(snakeX, snakeY, foodX, foodY) < (5) + (food/2))
    {
      int food = (int) random(10, 20);
      int foodX = (int) random(0, height-food);
      int foodY = (int) random (0, width-food);
      size +=100;
    }
    snakeY = constrain(snakeY, 5, height);
    snakeX = constrain(snakeX, 5, width);
  }
  




void keyPressed(){
    if (key == CODED)
  {
    if (keyCode == UP && angle!=270 && (snakesY[1]-8)!=snakesY[2])
    {
      angle=90;
    }
    if (keyCode == DOWN && angle!=90 && (snakesY[1]+8)!=snakesY[2])
    {
      angle=270;
    }if (keyCode == LEFT && angle!=0 && (snakesX[1]-8)!=snakesX[2])
    {
      angle=180;
    }if (keyCode == RIGHT && angle!=180 && (snakesX[1]+8)!=snakesX[2])
    {
      angle=0;
    }
  }
}
