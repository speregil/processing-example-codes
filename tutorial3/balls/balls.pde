/*
* Draws two balls moving to oposite corners of the screen
*/

final color RED = color(255,0,0);
final color BLUE = color(0,0,255);
final color WHITE = color(255);

float y1;       // Vertical position of the first ball
float x1;       // Horizontal position of the first ball
float y2;       // Vertical position of the second ball
float x2;       // Horizontal position of the second ball
float r;        // Radius of the first balls
float speed_y;  // Vertical speed per frame of the balloon
float speed_x;  // Horizontal speed per frame of the balloon

void setup(){
  size(500,500,P2D);
  x1 = 250;
  y1 = 250;
  x2 = 250;
  y2 = 250;
  r = 25;
  speed_x = 3;
  speed_y = 3;
}

void draw(){
  background(WHITE);
  
  //Draws the balls
  noStroke();
  fill(RED);
  ellipse(x1,y1,r*2,r*2);
  fill(BLUE);
  ellipse(x2,y2,r*2,r*2);
  
  //Moves the balls
  x1 = x1+speed_x;
  y1 = y1+speed_y;
  
  x2 = x2-speed_x;
  y2 = y2-speed_y;
  
  //Stops moving the balls if reached horizontal or vertical edge
  if(y1+r >= height-1){  //Ball 1
    y1 = height - 1 - r; 
  }
  if(x1+r >= width-1){
    x1 = width - 1 - r;
  }
  
  if(y2-r <= 0){  //Ball 2
    y2 = r; 
  }
  if(x2-r <= 0){
    x2 = r;
  }
}
