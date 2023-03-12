/*
* Draws a 9-triangle mosaic with 4 triangles
*/

void setup(){
 size(500,500,P2D);
}

void draw(){
  background(255);
  noFill();
  triangle(250,250,200,350,300,350);
  triangle(250,250,150,250,200,150);
  triangle(250,250,350,250,300,150);
  triangle(250,450,100,150,400,150);
}
