/*
* Draws two rects which X and Y position correspond to the X and Y position of
* the mouse
*/

void setup(){
 size(500,500,P2D);
}

void draw(){
  background(200);
  fill(150,0,0);
  rect(mouseX,150,100,100);
  fill(0,0,150);
  rect(150,mouseY,100,100);
}
