int x = 50;
int y = 100;
void setup(){
size (1000, 1000);
}
void draw(){
background(0, 0, 0);
ellipse (x, y, 100, 100);
fill(229, 255, 0);
noStroke();
y++;
if (y>1100){
  y--;
}
if(y > 1000){
 y = 50;
}
int ran = (int) random (1000)
}
