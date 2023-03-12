/*
* Draws teo ellipses which height and widht change respectivley with the Y and X
* position of the mouse
*/

void setup(){
 size(500,500,P2D);
}

void draw(){
  ellipse(250,250,mouseX,100);
  ellipse(250,250,100,mouseY);
}
