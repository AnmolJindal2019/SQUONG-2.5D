import processing.serial.*;
import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;
import javax.swing.KeyStroke;
Serial MyPort;                                
String KeyString = "";




















PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage img10;


















puck puck;
racket1 left;
racket2 right;



void setup() {
 puck = new puck();
 left = new racket1();
 right = new racket2();

 MyPort = new Serial(this, "COM3", 9600);
 MyPort.bufferUntil('\n');

  size(680, 400);
  noLoop();  // draw() will not loop
img = loadImage("indian.png");
img2 = loadImage("indian.png");
img3 = loadImage("indian.png");
img4 = loadImage("indian.png");
img5 = loadImage("indian.png");
img6 = loadImage("indian.png");
img7 = loadImage("indian.png");
img8 = loadImage("indian.png");
img9 = loadImage("indian.png");
img10 = loadImage("crowd.png");
}

float x1 = 0;
float x2 = 0;
float y1 = 0;
float y2=0;
float z =0;
float g =0;
float r1=0;
float r2=0;
float ball=0;
float v1=0;
float v2=0;
void draw() {
background(10);

  
  g=g+0.2;
  if (x1 > width) {
    x1 = 0;
   if(z>20)
    z=z+0.5;
    z=-z;
  }


fill(0,134,214);


beginShape ();
vertex(-35,340);
vertex(715,340);
vertex(645,200);
vertex(35,200);
endShape(CLOSE);

noStroke();

fill(14,17,72);

beginShape ();
vertex(0,340);
vertex(680,340);
vertex(680,349);
vertex(0,349);
endShape(CLOSE);
noStroke();


fill(18,18,18);
beginShape ();
vertex(0,349);
vertex(680,349);
vertex(680,360);
vertex(0,360);
endShape(CLOSE);

fill(247,240,240);

beginShape ();
noStroke();
vertex(-7,315);
vertex(40,220);
vertex(47,220);
vertex(0,315);
endShape(CLOSE);




beginShape ();
noStroke();
vertex(41,218);
vertex(640,218);
vertex(643,223);
vertex(40,223);
endShape(CLOSE);




beginShape ();
stroke(249,243,243);
vertex(641,220);
vertex(687,315);
vertex(681,315);
vertex(634,220);
endShape(CLOSE);







beginShape ();
noStroke();
vertex(0,320);
vertex(680,320);
vertex(680,325);
vertex(0,325);
endShape(CLOSE);

beginShape ();
vertex(200,320);
vertex(230,220);
vertex(237,220);
vertex(208,320);
endShape(CLOSE);



beginShape ();
noStroke();
vertex(441,220);
vertex(467,320);
vertex(460,320);
vertex(434,220);
endShape(CLOSE);

beginShape ();
noStroke();
vertex(25,262);
vertex(223,262);
vertex(220,273);
vertex(20,273);
endShape(CLOSE);

beginShape ();
noStroke();
vertex(445,262);
vertex(660,262);
vertex(660,273);
vertex(450,273);
endShape(CLOSE);


noStroke();
fill(18,18,18);
rect(0,175,700,12.5);
noStroke();
fill(45,45,45);
rect(0,187.5,700,12.5);


fill(66,59,59);
rect(33,110,610,65);
fill(15,1,1);
triangle(325,130,275,180,375,180);

stroke(8,9,8);


line(33,147.5,643,147.5);


line(275,110,275,185);


line(375,110,375,185);


image(img6,335,110);
image(img5,230,110);
beginShape ();
fill(45,24,175);
noStroke();
vertex(275,110);
vertex(275,180);
vertex(325,148.5);
vertex(325,110);
endShape(CLOSE);






beginShape ();
noStroke();
fill(58,30,234);
vertex(375,110);
vertex(375,180);
vertex(325,148.5);
vertex(325,110);
endShape(CLOSE);

image(img,35,110);
image(img2,100,110);
image(img3,165,110);
image(img4,400,110);
image(img7,465,110);
image(img8,530,110);
image(img9,595,110);

image(img10,80,35);
beginShape ();
noStroke();
fill(45,24,175);
vertex(643,110);
vertex(680,70);
vertex(680,175);
vertex(643,175);
endShape(CLOSE);

beginShape ();
noStroke();
fill(58,30,234);
vertex(37,110);
vertex(0,70);
vertex(0,175);
vertex(37,175);
endShape(CLOSE);

line(37,110,643,110);

beginShape ();
fill(58,30,234);

vertex(275,110);
vertex(325,110);
vertex(325,106);
vertex(280,106);
endShape(CLOSE);


beginShape ();
fill(45,24,175);
vertex(325,110);
vertex(375,110);
vertex(370,106);
vertex(325,106);
endShape(CLOSE);




stroke(0);
fill(54,18,16);
ellipse(100+x1,158,50,50);
line(100+x1,180,100+x1,240);
line(100+x1,200,105+x1,220);
line(100+x1,200,95+x1,220);
line(105+x1,220,130+x1,230);
line(95+x1,220,120+x1,230);
line(100+x1,240,110+x1-y1,270);
line(100+x1,240,90+x1+y1,270);




stroke(0);
fill(54,18,16);
ellipse(575-x2,158,50,50);
line(575-x2,180,575-x2,240);
line(575-x2,200,580-x2,220);
line(580-x2,220,555-x2,230);
line(570-x2,220,545-x2,230);
line(575-x2,200,570-x2,220);
line(575-x2,240,585-x2-y2,270);
line(575-x2,240,565-x2+y2,270);






beginShape ();
noStroke();
fill(18,18,18);
vertex(530-x2,160);
vertex(525-x2,160);
vertex(560-x2,230);
vertex(565-x2,228);
endShape(CLOSE);
ellipse(527.5-x2,157.55,50,50);




fill(240);
rect(0,45,680,10);




fill(240);
rect(0,350,width*2,10);

noFill();
puck.update();
puck.show();
puck.edges();
right.show();
left.show();


 if((puck.y <=left.y+10 && puck.y >=left.y-10)||(puck.x <=left.x+10 && puck.x >=left.x-10))

  {   
   
     puck.yspeed =-puck.yspeed;
      
   
    
 
  }
    
  
 
  
  
  
  
  
 if((puck.y <=right.y+10 && puck.y >=right.y-10)||(puck.x <=right.x+10 && puck.x >=right.x-10))

  { 
   
    puck.xspeed =random(-puck.xspeed,-puck.xspeed-1);
  
  }
    
  
    
  
  
     
  text(puck.y,100,100);
    text(v2,150,100);
text(v1,200,100);
}




void keyPressed()
{
  
 
for(int i=0;i<2;i++)
 
 
 
 
 {
    
   
   
   
   
   
   
   
   
   
   
   
   
   if(keyCode == LEFT)
  { 
   
    x2 = x2+1;
  y2 = y2 + 05;
  if(y2 > 20)
  y2=0;
  r2=r2-.5;
  if(r2>50)
  r2=0;
 
   loop();  // Holding down the mouse activates looping 
  
  }
  
 
  
  
  
  
    
 
 if(keyCode == RIGHT)
  { 
    
    x2=x2-1;
  y2 = y2 + 1;
  if(y2 > 20)
  y2 = 0;
 
   loop();  // Holding down the right activates looping
  }
  
  else 
  if(key =='a'|| key =='A') 
  { 
    
    x1=x1-1;
  y1 = y1 + 0.5;
  if(y1 > 20)
  y1 = 0;
  r1=r1+0.5;
  if(r1>20)
  r1=0;
   loop();  // Holding down the a activates looping
  }
  
  
  
  
  
  else
  if(key =='D' || key =='d') 
  { 
    
    x1=x1+1;
  y1 = y1+ 0.5;
  if(y1 > 20)
  y1 = 0;
 r1=r1+0.5;
  if(r1>20)
  r1=0;
 loop();  // Holding down the d activates looping  
}
  
  
  
 
 }
}




void serialEvent(Serial MyPort)throws Exception {
   KeyString = MyPort.readStringUntil('\n');
   KeyString = KeyString.substring(0, KeyString.indexOf(':'));//The string is split. the whole string leaving the colon is taken
   System.out.println(KeyString);//prints the serial string for debugging purpose
   Robot Arduino = new Robot();//Constructor of robot class
   switch(KeyString){
    case "Right" :
      
       Arduino.keyPress(KeyEvent.VK_RIGHT);
       Arduino.keyRelease(KeyEvent.VK_RIGHT);
       break;
case "LEFT" :
       Arduino.keyPress(KeyEvent.VK_LEFT);
       Arduino.keyRelease(KeyEvent.VK_LEFT);      
       break;
       
       
       case "a" :
      
       Arduino.keyPress(KeyEvent.VK_A);
       Arduino.keyRelease(KeyEvent.VK_A);
       break;
case "d" :
       Arduino.keyPress(KeyEvent.VK_D);
       Arduino.keyRelease(KeyEvent.VK_D);      
       break;
   }}
