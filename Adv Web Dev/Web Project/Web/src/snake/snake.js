const canvas=document.getElementById('gameCanvas');
const ctx=canvas.getContext('2d');

class snakeBody{
constructor(x, y){
    this.x=x;
    this.y=y;
  }
}
let speed=7;
let tileCount=20; 
let tileSize=canvas.clientWidth/tileCount-2;
let headX=10;
let headY=10;
const snakeBlocks=[];
let tailLength=2;
let velocityX=0;
let velocityY=0;
let FoodX=5;
let FoodY=5;
let score=0;

function drawGame(){

    changeSnakePosition();
 
    let result=isGameOver();
    
    if(result){
        return;
    }

    clearScreen();
    drawSnake();
    drawFood();
    checkCollision()
    drawScore();
    setTimeout(drawGame, 1000/speed);
}

function isGameOver(){
    let gameOver=false; 
    if(velocityY===0 && velocityX===0){
        return false;
    }
    if(headX<0){
        gameOver=true;
    }
    else if(headX===tileCount){
        gameOver=true;
    }
    else if(headY<0){
        gameOver=true;
    }
    else if(headY===tileCount){
        gameOver=true;
    }

     for(let i=0; i<snakeBlocks.length;i++){
         let block=snakeBlocks[i];
         if(block.x===headX && block.y===headY){
             gameOver=true;
             break;
         }
     }

     if (score >= 8) {
        updatePage3Link();
        console.log(updatePage3Link);
      }

    if (gameOver){
     ctx.fillStyle="black";
     ctx.font="50px verdana";
     ctx.fillText("Game Over! ", canvas.clientWidth/6.5, canvas.clientHeight/2);
    }
    return gameOver;
}

function drawScore(){
ctx.fillStyle="black";
ctx.font="18px verdena";
ctx.fillText("Score: " +score, canvas.clientWidth-70,15);
}

 function clearScreen(){
  ctx.fillStyle= 'white'
  ctx.fillRect(0,0,canvas.clientWidth,canvas.clientHeight)
 }
 
 function drawSnake(){
    
    ctx.fillStyle="green";

    for(let i=0;i<snakeBlocks.length;i++){
        let block=snakeBlocks[i]
         ctx.fillRect(block.x *tileCount, block.y *tileCount, tileSize,tileSize)
    }

    snakeBlocks.push(new snakeBody(headX,headY));
    
    if(snakeBlocks.length>tailLength){
        snakeBlocks.shift();
    }

    ctx.fillStyle="green";
    ctx.fillRect(headX* tileCount,headY* tileCount, tileSize,tileSize)
 }

 function changeSnakePosition(){
     headX=headX + velocityX;
     headY=headY+ velocityY;
     
 }
 function drawFood(){
     ctx.fillStyle="red";
     ctx.fillRect(FoodX*tileCount, FoodY*tileCount, tileSize, tileSize)
 }

 function checkCollision(){
     if(FoodX==headX && FoodY==headY){
         FoodX=Math.floor(Math.random()*tileCount);
         FoodY=Math.floor(Math.random()*tileCount);
         tailLength++;
         score++;
     }   
 }

 document.body.addEventListener('keydown', keyDown);

 function keyDown(event) {

  if (event.keyCode == 38) {
      if (velocityY == 1) //Prevent snake tunring on itself
          return;
      velocityY = -1;
      velocityX = 0;
  }

  if (event.keyCode == 40) { //Down arrow
      if (velocityY == -1)
          return;
      velocityY = 1;
      velocityX = 0;
  }

  if (event.keyCode == 37) { //Left arrow
      if (velocityX == 1)
          return;
      velocityY = 0;
      velocityX = -1;
  }

  if (event.keyCode == 39) { //Right arrow
      if (velocityX == -1)
          return;
      velocityY = 0;
      velocityX = 1;
  }
}


 drawGame(); 