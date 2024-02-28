class Tendril
{
  public static final int SEG_LENGTH = 10; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;

  private double startX;
  private double startY;
  private double endX;
  private double endY;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    //your code here
    if (myNumSegments >= 36)
    {
      stroke(101,142,126);
      strokeWeight(3);
    }
    else if (myNumSegments >= 9)
    {
      stroke(165,12,50);
      strokeWeight(4);
    }
    else
    {
      stroke(0);
      strokeWeight(5);
    }
    
    
    startX = myX;
    startY = myY;
    for (int i = 0; i < myNumSegments; i++)
    {
      myAngle += Math.random() * 0.2 - 0.1;
      endX = startX + cos((float)myAngle) * SEG_LENGTH;
      endY = startY + sin((float)myAngle) * SEG_LENGTH;

      line( (float)startX, (float)startY, (float)endX, (float)endY);

      startX = endX;
      startY = endY;
    }
    
    if (myNumSegments >= 0.1)
    {
      Cluster c = new Cluster((int) myNumSegments / 4, (int) startX, (int) startY);
    }
  }
}
