int ballCount = 500;
int ballSize = 8;
int ballSpeed = 3;

float[] xSpeed = new float[ballCount];
float[] ySpeed = new float[ballCount];
float[] xPos = new float[ballCount];
float[] yPos = new float[ballCount];
float[] bWidth = new float[ballCount];
float[] bHeight = new float[ballCount];

void setup(){
  size(400,400);
  background(255);
  
  for(int i=0;i<ballCount;i++){
    xSpeed[i] = random(-ballSpeed,ballSpeed);
    ySpeed[i] = random(-ballSpeed,ballSpeed);
    
    bWidth[i] = random(1,ballSize);
    bHeight[i] = bWidth[i];
    
    xPos[i] = width/2 + random(-width/3, width/3);
    yPos[i] = height/2 + random(-height/3, height/3);
  }
  
  noStroke();
}

void draw(){
  background(255);
  
  for(int i =0;i<ballCount;i++){
   fill(i*255/ballCount);
   ellipse(xPos[i],yPos[i],bWidth[i],bHeight[i]);
   
   xPos[i] += xSpeed[i];
   yPos[i] += ySpeed[i];
   
   if(xPos[i] + bWidth[i]/2 >= width || xPos[i] <= bWidth[i]/2){
     xSpeed[i] *= -1;
   }
   
   if(yPos[i] + bHeight[i]/2 >= height || yPos[i] <= bHeight[i]/2){
     ySpeed[i] *= -1;
   }
  }
}
