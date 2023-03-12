final color RED = color(255,0,0);
final color WHITE = color(255,255,255);

float rectSize;       // Size of the rect
float rectX;          // Horizontal position of the rect
float speed;          // Speed of the rect

void setup(){
  size(500,500,P2D);
  
  rectSize = 50;
  rectX = 200;
  speed = 3;
}

void draw(){
  background(WHITE);
  
  // Draws the rect
  fill(RED)
  rect(rectX,200,rectSize,rectSize);
  
  // Resets the position of the rect if it moves out of the canvas
  if(rectX > width){
    rectX = -rectSize;
  }
  
  rectX += speed;  // Moves the rect
}
