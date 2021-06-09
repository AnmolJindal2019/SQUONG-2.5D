class racket2{
  float x = 140;
  float y = 170;
  float xspeed = 6;
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
vertex(530-x2,160);
vertex(525-x2,160);
vertex(560-x2,230);
vertex(565-x2,228);
endShape(CLOSE);
ellipse(527.5-x2,157.55,50,50);
}
  

}
