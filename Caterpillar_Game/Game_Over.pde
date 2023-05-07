PImage [] gif;
int frames;//number of gif frames
int f;
PFont font3;

class gameover{
  float score;
  
  gameover(){
    frames = 13;
    gif = new PImage[frames];
    
    int f = 0;
    while(f < frames){
      gif[f] = loadImage("frame_"+f+"_delay-0.1s.gif");
      f = f + 1;
      }
}
  void display(){
    image(gif[f], 0, 0, width, height);
    f = f + 1;
    if (f == frames) f = 0;
    
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text("Your Score: ", width/2, height-520);
    text((int)score, width/2+120, height-520);
   
    textAlign(CENTER);
    font3 = loadFont("AcademyEngravedLetPlain-48.vlw"); 
    fill(#FF0527);
    textFont(font3, 75);
    text("GAME OVER", width/2, height/2);
    
    fill(0);
    textSize(30);
    text("Click to Play Again", width/2, height -400);
  }
}
