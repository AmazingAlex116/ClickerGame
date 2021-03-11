public class Announcement
{
  protected String myText;
  protected int myX, myY;
  protected int myGoalReached;
  Announcement(String text, int x, int y, int goalReached)
  {
    myText = text;
    myX = x;
    myY = y;
    myGoalReached = goalReached;
  }
  public void show()
  {
    text(myText, myX, myY);
  }
  public int getGoalReached() {return myGoalReached;}
}
