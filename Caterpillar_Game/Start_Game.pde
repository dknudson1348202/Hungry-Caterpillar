PFont font1;
PFont font2;

class start{
    void display(){
      background(0);
      font1 = loadFont("AcademyEngravedLetPlain-48.vlw"); 
      textAlign(CENTER);
      fill(255);
      textFont(font1, 75);
      text("Click to Start", width/2, height/2);
      
      font2 = loadFont("AmericanTypewriter-Semibold-48.vlw");
      fill(#F77828);
      textFont(font2, 35);
      text("Move the caterpillar to eat the candy using the arrow keys.\n If the caterpillar runs into itself, it's Game Over.\n Hitting the edge of the screen will transport the caterpillar \n to the opposite side.", width/2, height-350); 
  
      fill(#F9FA47);
      textFont(font2, 50);
      text("Good Luck!", width/2, height -100);

  }
}    
 
