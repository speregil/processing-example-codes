/*
* Draws a line with one point in the (0,0) and the other one follows the mouse
*/

void setup(){
 size(500,500,P2D);
}

void draw(){
  background(255);
  line(0,0,mouseX,mouseY);
}
