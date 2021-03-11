public int points = 0;
public void setup()
{
  size(800, 800);
}
public void draw()
{
  background(255);
  fill(0);
  text(points, 400, 400);
}
public void mousePressed()
{
  points++;
}
