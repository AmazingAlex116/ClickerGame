public int points = 0;
Profile player = new Profile();
public boolean announcementEvent = false;
ArrayList <Announcement> announcements = new ArrayList <Announcement>(); 
public void setup()
{
  size(800, 800);
  textAlign(CENTER);
}
public void draw()
{
  if(announcements.size() > 1) //In case of two level increases at the same time
    announcements.remove(0);
  if(announcementEvent == false) { //Main Screen of Game
    background(255);
    fill(0);
    text("Total Points:", 400, 380);
    text(points, 400, 400);
    player.show();
    player.levelUp();
  } else { //Level Up Screen
    background(255);
      announcements.get(0).show();
    text("Click Anywhere To Continue", 400, 600);
  }
  
  if(player.getLevelingUp()) {
    announcements.add(new Announcement("Level Up: Level " + player.getLevel(), 400, 400, points));
    announcementEvent = true;
  }
    
}
public void mousePressed()
{
  if(announcementEvent == false) {
    points++;
    player.addScore();
  }
  if(announcementEvent == true) {
    announcementEvent = false;
    announcements.remove(0);
    player.setLevelingUp(false);
  }
}
