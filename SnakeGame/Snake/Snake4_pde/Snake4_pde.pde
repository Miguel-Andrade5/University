int w = 10;
int h = 10;
int size = 10;
float snakeX = 10;
float snakeY = 10;
ArrayList<PVector>body = new ArrayList<PVector>(); // new array
int foodX=(int) random(10, 390);
int foodY=(int) random(10, 390);
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = true;
int score = 0;

void setup() {
  size(400,400);
  frameRate(60);
}

void draw(){
 background(255);
 
   fill(0); 
   textSize(18);
   text("Score:"+score,320,395);
   
   body.add(new PVector(snakeX, snakeY));
   while(body.size() > score*3)
   body.remove(0); 
   
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
 
 rect(snakeX, snakeY, w, h); 
 for(int i=0; i<body.size(); i++)
 rect(body.get(i).x, body.get(i).y, w, h);
 fill(255);
 rect(snakeX, snakeY, h, w);
 
 
 //snake hits food and generates new location + adds length to snake + adds 1 to score
 if ( snakeX + 10 >= foodX && // Snakes right hits foods left
      snakeX <= foodX + 10 && // Snakes left hits foods right
      snakeY + 10 >= foodY && // Snakes top hits foods bottom
      snakeY <= foodY +  10)  // Snakes bottom hits foods top
 
 {
   foodX = (int) random(10, 390);
   foodY = (int) random(10, 390);
   score += 1;

 }
 
  snakeX = constrain(snakeX, snakeX/2, width-snakeX/40);
  snakeY = constrain(snakeY, snakeY/2, height-snakeY/40);
 
  
 //dectects if snake hit the edge of windows if so then restart game


 fill(0);
 rect(snakeX,snakeY,w, h);
 fill(255,0,0);
 rect(foodX,foodY, w, h);
 }
 

 
 
 //key directions for snake
 void keyPressed(){
    if (keyCode == UP && down == false) // this stops the snake from being able to go into its body
     {
      up = true;
      down = false;
      left = false;
      right = false;
    }
    if (keyCode == DOWN && up == false)
    {
      up = false;
      down = true;
      left = false;
      right = false;
    }
        if (keyCode == LEFT && right == false)
    {
      up = false;
      down = false;
      left = true;
      right = false;
    }
        if (keyCode == RIGHT && left == false)
    {
      up = false;
      down = false;
      left = false;
      right = true;
    }
  }

 
 void hitborder(){
   
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
 
 
