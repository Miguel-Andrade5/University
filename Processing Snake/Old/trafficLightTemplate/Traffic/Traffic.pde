int xpos=0;
int ypos=0;

car car1; 
ArrayList carList=new ArrayList();

Lights Lightsight;
int i=0; 
 
 //Lightsights, Red, Amber, Green
int r;
int a;
int g;




//Toggle lights on/off
boolean isRed= false;
boolean isOrange= false;
boolean isGreen= false;

//framerate
int count;

void settings() {
   size(1080, 1290);
}


void setup() {

  

 
  Lightsight = new Lights(width/2-100, height/2+105);
 
 car1 = new car (width/2-30, height, int(255));
 car2 = new car (width/2-30, height, int(255));
 Lightsight = new Lights(width/2-30, height/2+105);
 for (int i=0; i<8; i++){
 carList.add(new car(width/2-30, height+back, (color(int(255), (int(230)), (int(200))))));
 }
 
}



void draw() {
  
count = frameCount/60;
    
Lightsight.Display();
Lightsight.TurnRed();
Lightsight.TurnGreen();
Lightsight.TurnOrange();
 
}

  void display() {
    fill(0);//Black Rectangle 
    rect(xpos, ypos, 40, 80);//Takes x and y position 
 
    fill(255, 0, 0);//red circle for red light
    ellipse( xpos+20, ypos+15, 20, 20);//fade to represent it's off
    fill(50, 200);//faded grey
    ellipse( xpos+20, ypos+15, 20, 20);
 
    fill(255, 255, 0);//Orange circle for orange light
    ellipse( xpos+20, ypos+40, 20, 20);
    fill(50, 200);//Faded grey to represent it's off
    ellipse( xpos+20, ypos+40, 20, 20);
 
    fill(0, 255, 0);
    ellipse( xpos+20, ypos+65, 20, 20);
    fill(50, 200);
    ellipse( xpos+20, ypos+65, 20, 20);


public class Lights {
 
  int xpos;
  int ypos;
 
 
  Lights(int x, int y) {
    xpos =150;
    ypos =80;
  }
 
  void display() {
    fill(0);//Black Rectangle 
    rect(xpos, ypos, 40, 80);//Takes x and y position 
 
    fill(255, 0, 0);//red circle for red light
    ellipse( xpos+20, ypos+15, 20, 20);//fade to represent it's off
    fill(50, 200);//faded grey
    ellipse( xpos+20, ypos+15, 20, 20);
 
    fill(255, 255, 0);//Orange circle for orange light
    ellipse( xpos+20, ypos+40, 20, 20);
    fill(50, 200);//Faded grey to represent it's off
    ellipse( xpos+20, ypos+40, 20, 20);
 
    fill(0, 255, 0);
    ellipse( xpos+20, ypos+65, 20, 20);
    fill(50, 200);
    ellipse( xpos+20, ypos+65, 20, 20);
  }

Boolean TurnRed() {
    if (isRed==true) {
      fill(255, 0, 0);//red circle for red light
      ellipse( xpos+20, ypos+15, 20, 20);
    }
 
    if (isRed==true){
    return (true);
    } else {
      return (false);
    }
  }
 
  Boolean TurnOrange() {
    if (isOrange==true) {
      fill(255, 255, 0);//Orange circle for orange light
      ellipse( xpos+20, ypos+40, 20, 20);
    }
    return isOrange;
  }
 
  Boolean TurnGreen() {
    if (isGreen==true) {
      fill(0, 255, 0 );//Orange circle for orange light
      ellipse( xpos+20, ypos+65, 20, 20);
    }
    return isGreen;
  }
}
  }
