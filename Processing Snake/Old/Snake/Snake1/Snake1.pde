int direction=0;
int snakeSize=10;
int time=1;
int[] sHeadX= new int[4000];
int[] sHeadY= new int[4000];
int foodX=(round(random(50))+1)*8;
int foodY=(round(random(50))+1)*8;

void setup()
{
  size(450,450);
  textAlign(CENTER);
}




void draw()
{

  fill(0,0,0);
  stroke(0);
  rect(foodX,foodY,15,15);
  fill(0);
  stroke(0);
  
}




void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP && direction!=270 && (sHeadY[1]-8)!=sHeadY[2])
    {
      direction=90;
    }
    if (keyCode == DOWN && direction!=90 && (sHeadY[1]+8)!=sHeadY[2])
    {
      direction=270;
    }if (keyCode == LEFT && direction!=0 && (sHeadX[1]-8)!=sHeadX[2])
    {
      direction=180;
    }if (keyCode == RIGHT && direction!=180 && (sHeadX[1]+8)!=sHeadX[2])
    {
      direction=0;
    }
  }
}
    
    
    
    
    
    
    
    
    
