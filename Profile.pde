public class Profile
{
  protected int myLevel;
  protected int myScore;
  protected int myScoreToLevel;
  protected boolean levelingUp;
  Profile()
  {
    myLevel = 1;
    myScore = 0;
    myScoreToLevel = myLevel*10;
    levelingUp = false;
  }
  public void show()
  {
    textSize(20);
    text("Level: " + myLevel, 600, 50);
    text("Score: " + myScore + "/" + myScoreToLevel, 600, 70);
  }
  public void addScore()
  {
    myScore++;
  }
  public void levelUp()
  {
    if(myScore >= myScoreToLevel) {
      myLevel++;
      levelingUp = true;
      myScore = 0;
      myScoreToLevel = myLevel*10;
    }
  } 
  public boolean getLevelingUp() {return levelingUp;}
  public int getLevel() {return myLevel;}
  public void setLevelingUp(boolean a) {levelingUp = a;}
}
