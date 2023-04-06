/*
* This program creates a variable group of balls all bouncing at the same time
* in the screen
*/

/*
* Stats for the behaviour of the program
*/
int ballCount;        // Number of balls in the screen
int ballSize;         // Base size for all balls
int ballSpeed;        // Base speed for all balls

float[] xSpeed;       // X speeds of all the balls
float[] ySpeed;       // Y speed of all balls
float[] xPos;         // X position of all balls
float[] yPos;         // Y position of all balls
float[] bWidth;       // Width pf all balls
float[] bHeight;      // Height of all balls

/*
* Initialises the canvas and all the variables
*/
void setup(){
  size(400,400);
  noStroke();
  
   /*
   * Initializes all the variables
   */
   ballCount = (int)random(500,801);
   ballSize = 8;
   ballSpeed = 3;
   
   xSpeed = new float[ballCount];
   ySpeed = new float[ballCount];
   xPos = new float[ballCount];
   yPos = new float[ballCount];
   bWidth = new float[ballCount];
   bHeight = new float[ballCount];
  
  /*
  * Fills all the arrays with their initial values
  */
  for(int i=0;i<ballCount;i++){
    xSpeed[i] = random(-ballSpeed,ballSpeed);
    ySpeed[i] = random(-ballSpeed,ballSpeed);
    
    bWidth[i] = random(1,ballSize);
    bHeight[i] = bWidth[i];
    
    xPos[i] = width/2 + random(-width/3, width/3);
    yPos[i] = height/2 + random(-height/3, height/3);
  }
}

/*
* Iteratively draws all the balls and updates their positions
*/
void draw(){
  background(255);
  
  for(int i =0;i<ballCount;i++){
   // Update the current ball's position
   xPos[i] += xSpeed[i];
   yPos[i] += ySpeed[i];
   
   // Checks if the current ball should bounce
   if(xPos[i] + bWidth[i]/2 >= width || xPos[i] <= bWidth[i]/2){
     xSpeed[i] *= -1;
   }
   
   if(yPos[i] + bHeight[i]/2 >= height || yPos[i] <= bHeight[i]/2){
     ySpeed[i] *= -1;
   }
   
   // Draws the current ball
   fill(i*255/ballCount);
   ellipse(xPos[i],yPos[i],bWidth[i],bHeight[i]);
  }
}
