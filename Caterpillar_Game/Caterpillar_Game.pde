import processing.serial.*;
import processing.sound.*;
SoundFile music;
SoundFile chomp;
SoundFile scream;

caterpillar caterpillar;
food food;
start start;
gameover gameover;
int play = 0;

void setup(){
  fullScreen();
  food = new food();
  caterpillar = new caterpillar();
  start = new start();
  gameover = new gameover();  
  music = new SoundFile(this, "music.mp3");
  music.loop();
}

void draw(){
  if (play==0){
    background(0);
    start.display();
    
    if (dist(mouseX, mouseY, width/2, height/2)<100){
      cursor(HAND);
      } 
    else{
      cursor(ARROW);
    }
  }

  if (play==1){
    background(#196F23);
    food.display();
    caterpillar.display();
    caterpillar.update();
    caterpillar.checkEdges();
    if (caterpillar.eat(food.x, food.y)){
      food.foodlocation();
      chomp = new SoundFile(this, "aud_chomp.mp3");
      chomp.play();
    }
    caterpillar.dead();
    if(caterpillar.total+1>10)
    frameRate(15);
    else
    frameRate(10);
  }
  if (play== 2){
    background(0);
    gameover.display();
    
    if (dist(mouseX, mouseY, width/2, height/2)<200){
      cursor(HAND);
    } 
    else{
      cursor(ARROW);
    }
  }
}
void keyPressed(){
  if (key == CODED){
    if (keyCode == UP){
      caterpillar.direction(0, -20);
    }
    else if (keyCode == DOWN){
      caterpillar.direction(0, 20);
    }
    else if (keyCode == RIGHT){
      caterpillar.direction(20, 0);
    }
    else if (keyCode == LEFT){
      caterpillar.direction(-20, 0);
    }
  }
}
void mouseClicked(){
  if (dist(mouseX, mouseY, width/2, height/2)<100){
    play =  1;
    frameRate(8);
  }
}
