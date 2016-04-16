Ball ball;
int score = 0;
import ddf.minim.*;
  Minim minim;
  AudioSample sound;
  PImage backgroundImage;
void setup(){
  size (500, 500);
  minim = new Minim (this);
  sound = minim.loadSample("pong1.wav", 128);
  backgroundImage = loadImage("images.jpg");
ball = new Ball();
}
void draw(){
  image(backgroundImage, 0, 0);
  image(backgroundImage, 0, 0, 500, 500);
  ellipse(ball.ballx, ball.bally, 50, 50);
  fill(0, 0, 255);
  stroke(0, 255, 0);
ball.move();
  rect(mouseX, 465, 90, 23);
  boolean inter = intersects(ball.ballx, ball.bally, mouseX, 532, 90);
  if(inter){
   ball.speedBally = -ball.speedBally;
 score ++;
}
textSize(32);
text(score + "", 10, 60);
if(score >= 10){
  textSize(32);
text("You win your score was " + score, 10, 60);
}
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY - paddleLength && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}
class Ball{
int ballx = 25;
int bally = 255;
int speedBallx = 10;
int speedBally = 10;
void move(){
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
    score --;
  }
  else if (bally < 1){
    ball.speedBally = -ball.speedBally;
    sound.trigger();
  }
}
}
