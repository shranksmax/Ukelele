class Alines
{ 
  int x = 1536;
  int y = 0;
 
 void drawline()
 {stroke(255, 255, 255);
  line(0,400, x, y);
  line(width,400, x, y);
}
  void update()
  {if(y< height)
    y=y+5;
    else 
    y=0;
   {if (y>=height)
   x=x+20;}
  }
}