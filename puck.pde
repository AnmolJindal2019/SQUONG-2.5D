class puck{
  float x = 300;
  float y = 200;
  float xspeed = -2;
  float yspeed = 4;


void update()
{x=x+xspeed ;
 y=y+yspeed;
}
  void show() {
    fill(255);
    ellipse(x,y,24,24);
  }

void edges()
{
  if(y<100 || y>350)
  {
    yspeed*=-1;}}


}
