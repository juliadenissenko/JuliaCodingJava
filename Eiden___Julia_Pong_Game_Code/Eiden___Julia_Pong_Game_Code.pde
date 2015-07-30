int y=4;  
int v=0;
import ddf.minim.*;
PImage backgroundImage;
AudioSample sound;
Minim minim;
int x=4;
int sx=7;
int direction=0;



void setup()
{
  backgroundImage = loadImage("yolo.JPG");
  size(1000, 1000);
  minim = new Minim (this);  
  sound = minim.loadSample("bananas.mp3", 128);
}
void draw()
{
  background(221, 255, 255);
  image(backgroundImage, 250, 250); 
  ellipse(x, y, 50, 50);
  fill(238, 153, 170);
  stroke(85, 102, 204);
  rect(mouseX, 920, 100, 20);

  if (x>=1000)
  {
    direction=1;
  } else if (x<=0)
  {
    direction=0;
  }

  if (direction==0)
  {
    x=x+sx;
  } else
  {
    x=x-sx;
  }



  if (y>=1000)
  {
    v=1;
  } else if (y<=0)
  {
    v=0;
  }

  if (v==0)
  {
    y=y+sx;
  } else
  {
    y=y-sx;
  }
  if (y>999)
  {

    sound.trigger();
  }
 if(intersects(x, y, mouseX, 920, 20))
{
v=1;

} 
  
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY - paddleLength && ballX > paddleX && ballX < paddleX + paddleLength)
    return true;
  else 
    return false;
}










