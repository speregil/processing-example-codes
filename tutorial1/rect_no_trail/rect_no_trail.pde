/*
* Draws a rect that follows the mouse and leaves no trail in the background
*/

void setup(){
 size(500,500,P2D);
}

void draw(){
  background(200);
  rect(mouseX,mouseY,50,50);
}
