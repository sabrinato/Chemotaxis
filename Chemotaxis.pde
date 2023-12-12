//declare bacteria variables here 
Bacteria [] bob;
void setup()   
{  
  size (400, 400);
  bob = new Bacteria [500];
  for (int i = 0; i < bob.length; i++){
    bob[i] = new Bacteria();
  }
  //initialize bacteria variables here
}   
void draw()   
{    
   background (0);
   for (int i = 0; i < 500; i++){
   bob[i].move();
   bob[i].show();
   } 
  //move and show the bacteria
}  
class Bacteria  
{     
  int myX, myY, myColor;
  Bacteria()
  {
    myX = 200;
    myY = 200;
    myColor = color(255, 255, 0);
  }  

  void move ()
  {
    myX += (int)(Math.random()*4)-1;
    myY += (int)(Math.random()*4)+1;
  }  

  void show () 
  {
    fill (myColor);     
    ellipse (myX, myY, 50, 50);
  }
}    
