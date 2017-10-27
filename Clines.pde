class Clines
{ 
  int x = 768;
  int y = 0;
 
 void drawline()
 {stroke(0, 255, 0);
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