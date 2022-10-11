void setup()
  {
      size(800,900);
      noLoop();
  }
  void draw()
  {
      background(0);
      int count = 0;
      for (int y = 15; y <= 790; y = y + 60) {
        for (int x = 15; x <= 790; x = x + 60) {
          Die bob = new Die(x , y);
          bob.roll();
          bob.show();
          count = count + bob.Rolls;
        }
      }
      fill(255);
      textSize(40);
      text("Total:", 10, 850);
      text(count, 125, 850);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int count;
      int myX;
      int myY;
      int Rolls;
      
      Die(int x, int y) //constructor
      {
          myX=x;
          myY=y;
      }
      void roll()
      {
          Rolls = (int)(Math.random()*6)+1;
      }
      void show()
      {
        noStroke();
        fill(#FFFFFF);
       
        rect(myX, myY, 50, 50, 10);
        fill(0);
        if (Rolls == 1){
           ellipse(myX+25, myY+25, 10,10);
        } else if (Rolls == 2){
           ellipse(myX+12, myY+12, 10,10);
           ellipse(myX+38, myY+38, 10,10);
        } else if (Rolls ==3){       
           ellipse(myX+12, myY+12, 10,10);
           ellipse(myX+25, myY+25, 10,10);
           ellipse(myX+38, myY+38, 10,10); 
        } else if (Rolls == 4){
           ellipse(myX+12, myY+12, 10,10);
           ellipse(myX+38, myY+38, 10,10);
           ellipse(myX+38, myY+12, 10,10);
           ellipse(myX+12, myY+38, 10,10);
        }  else if (Rolls ==5){
           ellipse(myX+12, myY+12, 10,10); 
           ellipse(myX+38 , myY+38, 10,10); 
           ellipse(myX+38, myY+12, 10,10); 
           ellipse(myX+12, myY+38, 10,10);
           ellipse(myX+25, myY+25, 10,10);
        } else{     
           ellipse(myX+12, myY+12, 10,10);
           ellipse(myX+38 , myY+38, 10,10);
           ellipse(myX+38, myY+12, 10,10);
           ellipse(myX+12, myY+38, 10,10);
           ellipse(myX+38, myY+25, 10,10);
           ellipse(myX+12, myY+25, 10,10);
        } 
      }
  }
