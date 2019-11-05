//your code here
Particle[] mike= new Particle[100];
PImage a;
void setup()
{
  size(300, 300);
  background(0);
  a = loadImage("https://pic1.zhimg.com/50/v2-ca10e2d806d2d2970f6263b7093f2e40_hd.jpg");
  for (int i=0; i< mike.length; i++) {
    mike[i]=new Particle();
  }
  mike[0]= new OddballParticle();
  mike[1]= new OddballParticle();
  mike[2]= new OddballParticle();
}
void draw()
{
  background(0);
  image(a, 200,200,80,80);
  for (int i=0; i<mike.length; i++) {
    mike[i].show();
    mike[i].move();
  }
}
class Particle
{
  double myX, myY, myspeed, myangle;
  int mycolor;
  Particle() {
    myX=150;
    myY=150;
    myangle=Math.random()*2*Math.PI;
    myspeed=Math.random()*10;
    mycolor=color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }

  void show()
  {

    fill(mycolor);
    ellipse((float)myX, (float)myY, 10, 10);
  }
  void move() {
    myX=myX+Math.sin(myangle)*myspeed;
    myY=myY+Math.cos(myangle)*myspeed;
    if(myX>=300||myY>=300){
    myX=150;
    myY=150;
    myangle=Math.random()*2*Math.PI;
    myspeed=Math.random()*10;
    mycolor=color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    }
  }
}
class OddballParticle extends Particle {
  OddballParticle() {
    myX=150;
    myY=150;
    myangle=Math.random()*2*Math.PI;
    myspeed=(Math.random()*5);
    mycolor=(int)Math.random()*256;
  }
  void show()
  {

    fill(mycolor);
    ellipse((float)myX, (float)myY, 50, 50);
  }
  void move() {
    myX=myX+Math.sin(myangle)*myspeed;
    myY=myY+Math.cos(myangle)*myspeed;
    if(myX>=300||myY>=300){
    myX=150;
    myY=150;
    myangle=Math.random()*2*Math.PI;
    myspeed=Math.random()*10;
    mycolor=color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    }
  }
}
