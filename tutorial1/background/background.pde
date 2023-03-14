/*
* Draws a circle that follows the mouse. The background of the screen is a
* custom image
*/

PImage bg;  // Background image

void setup(){
 size(256,256,P2D);
 bg = loadImage("img.jpg");
}

void draw(){
  background(bg);
  ellipse(mouseX,mouseY,25,25);
}
