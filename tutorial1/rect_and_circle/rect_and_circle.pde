/*
* Draws a circle inside a rect. Both follow the mouse
*/

void setup(){
 size(500,500,P2D);
}

void draw(){
  background(200);
  rect(mouseX-50,mouseY-50,100,100);
  ellipse(mouseX,mouseY,100,100);
}
