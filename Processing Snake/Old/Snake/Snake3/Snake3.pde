int direction=0;
int snakeSize=4;
int time=0;
int[] sHeadX= new int[2500];
int[] sHeadY= new int[2500];
int foodX=(round(random(47))+1)*8;
int foodY=(round(random(47))+1)*8;
boolean retry=true;
boolean stop=false;
void setup()
{
  restart();
  size(450,450);
  textAlign(CENTER);
  
}
void draw()
{  
  if (stop){}
  
  else
  {
  time+=1;
  fill(0,0,0);
  stroke(0);
  rect(foodX,foodY,15,15);
  fill(0);
  stroke(0);
  
  if ((time % 5)==0) //framerate
  {
    move();
    display();
    checkdead();
  }
  }
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
    if (keyCode == SHIFT)
    {
      restart();
    }
  }
}
void move()
{
  for(int i=snakeSize;i>0;i--)
  {
    if (i!=1)
    {
      //shift back by 1 array
      sHeadX[i]=sHeadX[i-1];
      sHeadY[i]=sHeadY[i-1];
    }
    else
    {
      fill(0,0,0);
      textSize(20);
      text(snakeSize-1,425,425);
    
      //set new spot for snake head
      switch(direction)
      {
        case 0:
        sHeadX[1]+=8;
        break;
        case 90:
        sHeadY[1]-=8;
        break;
        case 180:
        sHeadX[1]-=8;
        break;
        case 270:
        sHeadY[1]+=8;
        break;
      }
    }
  }
  
}
void display()
{
  
  
   
  if (sHeadX[1]==foodX && sHeadY[1]==foodY) // is snake hitting food
  {
    snakeSize+=round(random(3)+1); //spawn food
    retry=true;
    while(retry)
    {
      foodX=(round(random(47))+1)*8;
      foodY=(round(random(47))+1)*8;
      for(int i=1;i<snakeSize;i++)
      {
        
        if (foodX==sHeadX[i] && foodY==sHeadY[i])
        {
          retry=true;
        }
        else
        {
          retry=false;
          i=1000;
        }
      }
    }
  }
  stroke(255);
  fill(0);
  rect(sHeadX[1],sHeadY[1],15,15);
  fill(255);
  rect(sHeadX[snakeSize],sHeadY[snakeSize],15,15);
  
}
void checkdead()
{
  for(int i=2;i<=snakeSize;i++)

    if (sHeadX[1]==sHeadX[i] && sHeadY[1]==sHeadY[i])
    {
      fill(255);
      rect(125,125,160,100);
      fill(0);
      textAlign(CENTER);
      textSize(25);
      text("GAME OVER",225,200);
      textSize(20);
      text("Score:  "+str(snakeSize-1)+" points",225,225);
      text("Restart = Shift.",225,250);
      stop=true;
    }
    //hit wall?
    if (sHeadX[1]>=(width-8) || sHeadY[1]>=(height-8) || sHeadX[1]<=0 || sHeadY[1]<=0)
    {
      fill(255);
      rect(125,125,160,100);
      fill(0);
      textAlign(CENTER);
      textSize(25);
      text("GAME OVER",225,200);
      textSize(20);
      text("Score:  "+str(snakeSize-1)+" points",225,225);
      text("Restart = Shift.",225,250);
      stop=true;
    }
  }

void restart()
{
  background(255);
  sHeadX[1]=200;
  sHeadY[1]=200;
  for(int i=2;i<1000;i++)
  {
    sHeadX[i]=0;
    sHeadY[i]=0;
  }
  stop=false;
  foodX=(round(random(47))+1)*8;
  foodY=(round(random(47))+1)*8;
  snakeSize=4;
  time=0;
  direction=0;
  retry=true;
}
