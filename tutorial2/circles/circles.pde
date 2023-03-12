/*
* Draws circles in the four corners of the screen and in the center
*/

void setup(){
 size(500,500,P2D); 
}

void draw(){
  ellipse(25,25,50,50);    // Top-left
  ellipse(475,25,50,50);   // Top-right
  ellipse(25,475,50,50);   // Bottom-left
  ellipse(475,475,50,50);  // Bottom-right
  ellipse(250,250,50,50);  // Center
}
