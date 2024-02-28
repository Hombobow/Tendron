public void setup()
{
  size(1000, 1000);  
  noLoop();
}

public void draw()
{
  background(146,221,237);
  Cluster c = new Cluster(36, 500, 500); // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  redraw();
}
