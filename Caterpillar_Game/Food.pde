PImage candy;

class food{
  float size = 20 ;
  float x;
  float y;
  float col = floor(width/size);
  float row = floor(height/size);
  
  food(){
    x = floor(random(col))*size;
    y = floor(random(row))*size;
    candy = loadImage("candy.png");
  }
  void foodlocation(){
    x = floor(random(col))*size;
    y = floor(random(row))*size;
  }
  void display(){
    image(candy, x, y, size, size);
  }
}
