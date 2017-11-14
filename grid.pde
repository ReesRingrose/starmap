void grid()
{
  
  float x=0;
float y=0;

int xnum=-5,ynum=-5;

  background(0);
  
  stroke(128,0,128);
 
  x=50;
  while(x<width-50)
  {
  line(x,50,x,height-50);
  x+=50;
  }
    line(x,50,height-50,550);

  
  y=50;
  while(y<width-50)
  {
  line(50,y,width-50,y);
  y+=50;
  }
    line(50,y,width-50,550);
    
    x=50;y=50;
   
   while(x<height)
   {
      fill(128,0,128);
      text(xnum, 19,x+5);
      xnum++;
      x+=50;
   }
   
    while(y<width)
   {
      fill(128,0,128);
      text(ynum, y+-7,26);
      ynum++;
      y+=50;
   }
    

}