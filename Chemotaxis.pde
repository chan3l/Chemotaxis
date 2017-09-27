Bacteria [] colony;

void setup()   
{     
  colony = new Bacteria[20]; 
  for (int i =0; i<colony.length; i++)
    colony[i] = new Bacteria();
  size(1000, 800);
}   
void draw()   
{    
  background((int)(Math.random()*256+1), (int)(Math.random()*256+1), (int)(Math.random()*256+1));
  for (int i=0; i<colony.length; i++)
  {
    colony[i].move1();
    colony[i].show();
  }
}  
class Bacteria    
{     
  int myX;
  int myY;
  int y2;
  int xb;
  int yb;
  Bacteria() {
    myX=500;
    myY=400;
    y2 = 100;
    xb=500;
    yb = 400;
  }
  void move1() {
      myX = myX+(int)(Math.random()*20-10);
      myY = myY+(int)(Math.random()*20-10);
  }
  void move() {
    if (mouseX>myX)
    {
      xb= 0;
    } else
      xb= 10;
    if (mouseY>myY)
    {
      yb=0;
    } else
    {
      yb=10;
    }
    myX = myX+(int)(Math.random()*11-xb);
    myY = myY+(int)(Math.random()*11-yb);
  }
  void show() {
    fill((int)(Math.random()*256+1), (int)(Math.random()*256+1), (int)(Math.random()*256+1));
    PFont font =createFont("Arial Bold Italic", 90);
    textFont(font);
    textAlign(CENTER);
    if (y2 >= 100 && y2<800) {
      text("MY EYES HURT", 500, y2);
      y2=y2+100;
    } else {
      y2=100;
    }
    ellipse(myX, myY, 100, 100);
  }
}    