class stars
{
  int hab;
  String displayname;
  float distance;
  float xg,yg,zg;
  float absmag;
  float mid=300;
  boolean touch=false;
 
  
  
  
  
  
  stars(int ha,String displaynam,float distanc,float x,float y,float z,float absma)
  {
    hab=ha;
    displayname=displaynam;
    distance=distanc;
    xg=x;
    yg=y;
    zg=z;
    absmag=absma;
    
    
    xg=xg*50+mid;
    yg=yg*50+mid;
    
  }
  
  
  void create()
  {

    
    fill(255,255,0);
    ellipse(xg,yg,8,8);
    
    noFill();
    stroke(255,0,0);
    ellipse(xg,yg,absmag/2,absmag/2);

    textSize(10);
    text(displayname,xg+15,yg);
    
  }
  
  void check()
  {
    if((xg >= mouseX) &&
      (xg <= mouseX + 10) &&
      (yg <= mouseY +10) &&
      (yg +10 >= mouseY ))
    {
      
     
      touch=true;
      
      
    }
    else
    {
      touch = false;
      
    }
  }
  
  void touch()
  {
  if(touch)
  {
    if(secondtouch)
    {
      
      stroke(255,255,0);
      line(xg,yg,firstx,firsty);
      secondtouch=false;
    }
    else
    {
    stroke(255,255,0);
    line(xg,yg,mouseX,mouseY);
   // secondtouch=true;
   secondtouch=true;
    firstx=xg;
    firsty=yg;
    
    }
  }
}
  
 
  
  
}