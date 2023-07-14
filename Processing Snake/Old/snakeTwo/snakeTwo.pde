int snake = 100;
int snakeX = 0;
int snakeY = 0;
int food;
int foodX;
int foodY;
int direction;
int KeyPress;
int moveX = 0;
int moveY = 0;

//array for moving snake
int []snakesX;
int []snakesY;

void setup(){
  size (750,750);
  background(0,0,0);
}


void draw(){
}


//WASD keys control snake, R restarts game, P pauses it
void keyPressed(){
  int KeyPress = keyCode;
  //87 is keycode for W // W is Up
  if (KeyPress == 87) {
    if (snakesY[1] != snakesY[0]-10){
      moveY = -10;
      moveX = 0;
    }
  }      //83 is keycode for S // S is Down
  else if (KeyPress == 83){
         if (snakesY[1] != snakesY[0]+10){
           moveY = 10;
           moveX = 0;
    }    //65 is keycode for A // A is Left
  }else if (KeyPress == 65){
         if (snakesX[1] != snakesX[0]-10){
           moveY = 0;
           moveX = -10;
    }    //68 is keycode for D // D is Right
  }else if (KeyPress == 68){
         if (snakesX[1] != snakesX[0]+10){
           moveY = 0;
           moveX = 10;
    }    //82 is keycode for R // R is for Reset
  }else if (KeyPress == 82){
    
    }
}else if (KeyPress == 80){
    
    }
  

  
