PImage imgFoot;   // Image of the foot
PImage imgFish;   // Image of the fish
float footY;      // Vertical position of the foot
float footHeight; // Height of the foot image
float fishY;      // Vertical position of the fish

void setup(){
  size(500,500,P2D);
  
  imgFoot = loadImage("foot.png");
  imgFish = loadImage("fish.png");
  
  footY = -250;
  footHeight = 100;
  fishY = 0;
}

void draw(){
  background(255);
  
  // Resizes the images to fit the canvas
  imgFoot.resize(width,100);
  imgFish.resize(30,0);
  
  // Sets vertical position of the fish depending on the position of the foot
  if(mouseY > footY+footHeight){
    fishY = mouseY;  
  } else{
    fishY = footY+footHeight;  
  }
  
  // Draws the images
  image(imgFish,mouseX,fishY);
  image(imgFoot,0,footY);
 
  footY+=1;  // Moves the foot
}
