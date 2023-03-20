int numRects;
int minWidth;
int minHeight;
int maxWidth;
int maxHeight;

void setup(){
  size(800,800);

  numRects = 250;
  minWidth = 10;
  minHeight = 10;
  maxWidth = 200;
  maxHeight = 200;
  
  background(255);
   for(int i=0;i<numRects;i++){
     float x = random(width);
     float y = random(height);
     float w = random(minWidth,maxWidth);
     float h = random(minHeight,maxHeight);
     float r = random(255);
     float g = random(255);
     float b = random(255);
     
     fill(color(r,g,b,70));
     rect(x,y,w,h);
  }
}
