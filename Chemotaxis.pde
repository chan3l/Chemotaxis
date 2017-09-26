Bacteria [] colony;

void setup()   
{     
  colony = new Bacteria[10]; 
  for (int i =0; i<colony.length; i++)
    colony[i] = new Bacteria();
  size(1000, 800);
}   
void draw()   
{    
  background(0);
  for (int i=0; i<colony.length; i++)
  {
  colony[i].move();
  colony[i].show();
  }
}  
class Bacteria    
{     
  int myX;
  int myY;
  Bacteria() {
    myX=500;
    myY=400;
  }
  void move() {
    myX = myX+(int)(Math.random()*10-5);
    myY = myY+(int)(Math.random()*10-5);
  }
  void show() {
    ellipse(myX, myY, 100, 100);
  }
}    