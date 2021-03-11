public int backgroundC = 255;
Announcement[] announcements = new Announcement[5];
public int points = 0;

public void setup()
{
  size(800, 800);
  announcements[0] = new Announcement("good job", 10, 10, 100);//Goal:hundred
  announcements[1] = new Announcement("casualsAreHere = false;", 10, 30, 1000);//Goal:thousand
  announcements[2] = new Announcement("you better not be using an autoclicker", 10, 30, 10000);//Goal:ten thousand
  announcements[3] = new Announcement("no", 10, 50, 100000);//Goal:hundred thousand
  announcements[4] = new Announcement("what", 10, 70, 1000000);//Goal:million
}
public void draw()
{
  background(backgroundC);
  fill(0);
  text(points, 400, 400);
  for(int i = 0; i < announcements.length; i++)
    if(points >= announcements[i].getGoalReached())
      announcements[i].show();
}
public void mouseClicked()
{
  points++;
}
