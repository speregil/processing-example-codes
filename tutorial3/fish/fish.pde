/*
* A foot moves down to crush the fish, the fish moves with the mouse but cannot
* go past the foot
*/

final color WHITE = color(255);

PImage imgFoot;   // Image of the foot
PImage imgFish;   // Image of the fish
float footY;      // Vertical position of the foot
float footHeight; // Height of the foot image
float fishY;      // Vertical position of the fish

void setup(){
  size(500, 500, P2D);
  
  imgFoot = loadImage("foot.png");
  imgFish = loadImage("fish.png");
  
  footY = -250;
  footHeight = 100;
  fishY = 0;

  // Resizes the images to fit the canvas
  imgFoot.resize(width, (int) footHeight);
  imgFish.resize(50, 0);
}

void draw(){
  footY+=1;  // Moves the foot

  // Sets vertical position of the fish depending on the position of the foot
  if(mouseY > footY+footHeight){
    fishY = mouseY;  
  } else{
    fishY = footY+footHeight;  
  }
  
  // Draws the images
  background(WHITE);
  image(imgFish, mouseX, fishY);
  image(imgFoot, 0, footY);
}
