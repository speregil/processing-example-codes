/*
* Draws a circle inside a rect. Widht and height depends on the position of the mouse 
*/

void setup(){
  size(500,500,P2D);
  rectMode(CENTER);
}

void draw(){
  background(200);
  rect(250,250,20 + mouseX,20 + mouseY);
  ellipse(250,250,20 + mouseX,20 + mouseY);
}
