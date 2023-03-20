/*
* Creates a moving ball that bounces on the edges of the screen and has a
* shadow in the bottom
*/

color ORANGE = color(200,125,10);    // Color of the ball

int xSpeed;            // Movement speed in X
int ySpeed;            // Movement speed in Y
int xPos;              // Position of the ball in X
int yPos;              // Position of the ball in Y
int ballWidth;         // Width of the ball 
int ballHeight;        // Height of the ball

int xPosShadow;        // Position of the shadow in X
int yPosShadow;        // Position of the shadow in Y
int shadowMaxWidth;    // Maximum width the shadow can reach
int shadowMaxHeight;   // Maximum height the shadow can reach

void setup(){
  size(400,400);
  
  xSpeed = 3;
  ySpeed = 10;
  
  // Initial position of the ball
  ballWidth = 50;
  ballHeight = 50;
  xPos = width/2;
  yPos = height/2;
  
  // Initial position of the sahdow
  shadowMaxWidth = 80;
  shadowMaxHeight = 20;
  xPosShadow = xPos;
  yPosShadow = height - shadowMaxHeight/2;
  
  noStroke();
}

void draw(){
  
  // Moves the ball and the shadow. The shadow only moves horizontally
  xPos += xSpeed;
  yPos += ySpeed;
  xPosShadow += xSpeed;
  
  // Checks if the ball has hit any horizontal edges and reverses speed if so
  if(xPos >= width - ballWidth/2 || xPos <= ballWidth/2){
    xSpeed *= -1;
  }
  
  // Checks if the ball has hit any vertical edges and reverses speed if so
  if(yPos >= yPosShadow - ballHeight/2 || yPos <= ballHeight/2){
    ySpeed *= -1;
  }
  
  // Maps the height and width of the shadow depending to the Y position of the ball
  int shadowWidth = (int)(shadowMaxWidth - (map(yPos,0,height,0,shadowMaxWidth-1)));
  int shadowHeight = (int)(shadowMaxHeight - (map(yPos,0,height,0,shadowMaxHeight-1)));
  
  // Maps the opacity of the shadow to the Y position of the ball 
  int transparency = (int)map(yPos,0,height,50,100);
  color shadow = color(200,200,200,transparency);
  
  // Draws the ball and its shadow
  background(255);
  fill(ORANGE);
  ellipse(xPos,yPos,ballWidth,ballHeight);
  fill(shadow);
  ellipse(xPosShadow,yPosShadow,shadowWidth,shadowHeight);
}
