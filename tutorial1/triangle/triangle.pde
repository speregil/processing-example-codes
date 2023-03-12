/*
* Draws a triangle that follows the mouse and leaves no trail
*/

void setup(){
 size(500,500,P2D);
}

void draw(){
  background(200);
  triangle(mouseX,mouseY,mouseX+100,mouseY,mouseX+50,mouseY-120);
}
