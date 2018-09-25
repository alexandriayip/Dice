void setup()
{
  size(300,300);
  noLoop();
}
void draw()
{
   background(0);
  for (int i = 50; i < 101; i=i+50)
  {
    Die bob = new Die(i,150);
    bob.show();
  
  //your code here
}
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX,myY;
  //variable declarations here
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;//variable initializations here
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    rect(myX,myY,20,20);
  }
}
