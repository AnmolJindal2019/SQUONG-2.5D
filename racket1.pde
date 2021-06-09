class racket1{
  float x = 140;
  float y = 170;
  float xspeed = 0.7;
  float yspeed = 4;


void update()
{x=x+xspeed ;
 y=y+yspeed;
}
  void show() {
    fill(255);
beginShape ();
noStroke();
fill(18,18,18);
vertex(153+x1,163);
vertex(143+x1,163);
vertex(123+x1,231);
vertex(128+x1,233);
endShape(CLOSE);

ellipse(150.5+x1,160.55,50,50);
  }

}
