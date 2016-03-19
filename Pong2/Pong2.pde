int ballx = 25;
int bally = 255;
int speedBallx = 10;
int speedBally = 10;
import ddf.minim.*;
  Minim minim;
  AudioSample sound;
  PImage backgroundImage;
void setup(){
  size (500, 500);
  minim = new Minim (this);
  sound = minim.loadSample("Pong.wav", 128);
  backgroundImage = loadImage("Kanvar.jpg");
}
void draw(){
  image(backgroundImage, 0, 0);
  image(backgroundImage, 0, 0, 500, 500);
  ellipse(ballx, bally, 50, 50);
  fill(0, 0, 255);
  stroke(0, 255, 0);
  ballx = ballx + speedBallx;
  bally = bally + speedBally;
  if (ballx > 499){
    speedBallx = -speedBallx;
    sound.trigger();
  }
  else if (ballx < 1){
    speedBallx = -speedBallx;
    sound.trigger();
  }
  if (bally > 499){
    speedBally = -speedBally;
    sound.trigger();
  }
  else if (bally < 1){
    speedBally = -speedBally;
    sound.trigger();
  }
  rect(mouseX, 465, 90, 23);
  boolean inter = intersects(ballx, bally, mouseX, 532, 90);
  if(inter){
   speedBally = -speedBally;
  }
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY - paddleLength && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}
