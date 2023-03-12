/*
* Draws four circles that mirror each other horizontally and vertically and
* follow the position of the mouse
*/
void setup(){
  size(500,500,P2D);
}

void draw(){
  ellipse(mouseX,mouseY,10,10);
  ellipse(500-mouseX,mouseY,10,10);
  ellipse(mouseX,500-mouseY,10,10);
  ellipse(500-mouseX,500-mouseY,10,10);
}
