void setup()
{
  size(300, 300);
  noLoop();
}
void draw()
{
  background(0);
  int sum = 0;
  for (int y =50; y<151; y=y+50) {
    for (int x = 50; x < 151; x=x+50)
    {
      Die bob = new Die(x, y);
      bob.show();
      if (bob.myDots <10000) {
        sum = sum + bob.myDots;
      }
    } 
    
  }
  text("total roll " + sum, 150,275);
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, myDots;
  //variable declarations here

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    myDots =  (int)(Math.random()*6+1);//variable initializations here
  }


  void roll()
  {

    //your code here
  }
  void show()
  {

    rect(myX, myY, 50, 50);


    if (myDots==1) {
      ellipse(myX+25, myY+23, 10, 10);
    }

    if (myDots==2) {
      ellipse(myX+10, myY+23, 10, 10);
      ellipse(myX+35, myY+23, 10, 10);
    }

    if (myDots==3) {
      ellipse(myX+10, myY+23, 10, 10);
      ellipse(myX+25, myY+23, 10, 10);
      ellipse(myX+40, myY+23, 10, 10);
    }

    if (myDots==4) {
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+15, myY+35, 10, 10);
      ellipse(myX+35, myY+15, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
    }

    if (myDots==5) {
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+15, myY+35, 10, 10);
      ellipse(myX+35, myY+15, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    }

    if (myDots==6) {
      ellipse(myX+10, myY+15, 10, 10);
      ellipse(myX+10, myY+35, 10, 10);
      ellipse(myX+40, myY+15, 10, 10);
      ellipse(myX+40, myY+35, 10, 10);
      ellipse(myX+25, myY+15, 10, 10);
      ellipse(myX+25, myY+35, 10, 10);
    }
  }
}
