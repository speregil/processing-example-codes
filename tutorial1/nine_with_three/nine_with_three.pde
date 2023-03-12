/*
* Draws a mosaic of nine squares with three rects
*/

void setup(){
 size(500,500,P2D);
}

void draw(){
  background(255);
  noFill();
  rect(1,1,width - 1,height - 1);
  rect(width/3,1,width/3,height - 1);
  rect(1,height/3,width - 1,height/3);
}
