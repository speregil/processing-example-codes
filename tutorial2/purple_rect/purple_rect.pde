/*
* Draws a fancy purple rect that follows the mouse and whose height and width change
* with the position of the mouse
*/
void setup(){
  size(500,500,P2D);
  rectMode(CENTER);
}

void draw(){
  background(200);
  fill(180,35,200);
  stroke(250,250,40);
  strokeWeight(10);
  rect(mouseX,mouseY,(mouseX + mouseY) / 5,(mouseX + mouseY) / 5);
}
