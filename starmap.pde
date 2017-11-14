stars[] stars;
boolean secondtouch=false;
float firstx,firsty;
void setup()
{
  Table table = loadTable("HabHYG15ly.csv","header");
  
  stars = new stars[table.getRowCount()];
  
  for(int i=0;i<table.getRowCount();i++)
  {
    
    TableRow row = table.getRow(i);
    
    int hab = row.getInt("Hab?");
    String displayname = row.getString("Display Name");
    float distance = row.getFloat("Distance");
    float xg = row.getFloat("Xg");
    float yg = row.getFloat("Yg");
    float zg = row.getFloat("Zg");
    float absmag = row.getFloat("AbsMag");
    
    stars[i] = new stars(hab,displayname,distance,xg,yg,zg,absmag);
    
  }

  size(600,600);
   
  //Rees Ringrose C15388176
  
 

  
}

void draw()
{
    grid();
   
    for(int i = 0 ; i<stars.length ; i++)
  {
    stars[i].create();
  }
  
   for(int i = 0 ; i<stars.length ; i++)
  {
    stars[i].touch();
  }
  
  
}


void mousePressed()
{
  
  for(int j=0;j<stars.length;j++)
  {
    
    stars[j].check();
    
  }
  
}