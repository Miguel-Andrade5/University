int snake = 100;
int snakeX;
int snakeY;
int food;
int foodX;
int foodY;
int direction;

void setup(){
  size (750,750);
  background(0,0,0);
}


void draw(){
}


//WASD keys control snake, R restarts game
void keyPressed(){
  if (key == CODED) {
    if (keyCode == W && angle!=270 && (snakeY[1]-8) !=snakeY[2])
    {
      angle=90
    }
      if keyCode == S && angle!=90 && (snakeY[1]+8) !=snakeY[2])
        {
          angle=270;
        }
        if keyCode == A && angle!=0 && (snakeX[1]-8) !=snakeX[2])
         {
           angle=180;
         }
          if keyCode == D && angle!=180 && (snakeX[1]+8) !=snakeX[2])
           {
             angle=0;
           }
           if (keyCode == R)
           {
             restart();
           }
  }
}
   
