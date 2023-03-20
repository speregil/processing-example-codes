int minWidth;
int maxWidth;
int minHeight;
int maxHeight;

void setup(){
 size(800, 800);
 
 minWidth = 10;
 maxWidth = 150;
 minHeight = 10;
 maxHeight = 150;
 
 float currentX = 0.0f;
 float currentY = 0.0f;
 
 background(255);
 
 while(currentX < width && currentY < height){
  float w = random(minWidth,maxWidth);
  float h = random(minHeight,maxHeight);
  
  rect(currentX,currentY,w,h);
  currentX+=w;
  
  if(currentX >= width){
    if(currentY+h <= height)
      currentX = 0;
    currentY+=h;
  }
 }
}
