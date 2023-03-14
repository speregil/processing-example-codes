/*
* Creates a ballon falling in the screen
*/

final color ORANGE = color(255,165,0);
final color WHITE = color(255);

float y;              // Vertical position of the balloon
float x;              // Horizontal position of the balloon
float r;              // Radius of the balloon
float cord_length;    // Lenght of the cord of the ballon
float speed_y;        // Vertical speed per frame of the balloon
float speed_x;        // Horizontal speed per frame of the balloon

void setup(){
  size(500,500,P2D);
  
  x = 250;
  y = 50;
  r = 25;
  cord_length = 150;
  speed_x = 1;
  speed_y = 1;
}

void draw(){
  //Moves the balloon
  x = x+speed_x;
  y = y+speed_y;
  
  //Stops moving the balloon if reached the horizontal or vertical edge
  if(y+r >= height-1){  // Vertical edge
    y = height - 1 - r; 
  }
  
  if(x+r >= width-1){  // Horizontal edge
    x = width - 1 - r;
  }
  
  background(WHITE);
  
  //Draws the balloon
  noStroke();
  fill(ORANGE);
  ellipse(x,y,r*2,r*2);
  stroke(1);
  line(x,y+r,x,y+r+cord_length);
}
