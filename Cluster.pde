public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    public double myAngle =  Math.random() * 2 * PI;

    public Cluster(int len, int x, int y)
    {
        // your code here
        for (int i = 0; i < NUM_STEMS; i++)
        {
          Tendril test = new Tendril(len, myAngle, x, y);
          test.show();
          myAngle += (2 * PI / 7);
        }
    }
}
