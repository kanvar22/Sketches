import javax.swing.JOptionPane;
int y = 0;
int randomx;
int score = 0;
void setup() {
  size(400, 400);
}

void draw() {
  background(0, 0, 0);
  ellipse(randomx, y, 10, 40);
  fill(0, 80, 500);
  stroke(0, 0, 0);
  //speed of ball
  y = y + 2;
  //Subtracts score
  if (y == 400) {
    score = score - 1;
    //text("" + score);
    System.exit(1);
  }
  //paddle
  rect(mouseX, 389, 50, 50);
  //Brings to top
  if (y > 389) {
    y = 0;
    randomx = (int)random(width);
    //text("" + score);
  }
  if(y = 380){
    if(x > mouseX){
      if(x < mouseX + 50){
       score++;
      text("You got one point"); 
      }
    }
  }
}

