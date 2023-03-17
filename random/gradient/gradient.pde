/*
* Creates a simple grayscale gradient of ellipses 
*/

int xpos;            // Initial X position of the ellipses
int ypos;            // Initial Y position of the ellipses
int interval;        // Size of the gradient intervals
int iterations;      // Higher iterations means a smoother gradient
int gradientWidth;   // Width of the ellipses
int gradientHeight;  // Height of the ellipses

void setup(){
 size(200,200);
 
 gradientWidth = width;
 gradientHeight = width;
 xpos = width/2;
 ypos = height/2;
 iterations = 100;
 interval = 255/iterations;
}

void draw(){
 background(200);
 noStroke();
 
 // Draws several ellipses equal to the number of provided iterations
 // changing the size and shade of gray in each step
 int step = 0;
 while(step < iterations){
  fill(interval*step);
  ellipse(xpos,ypos,gradientWidth-(interval*step),gradientHeight-(interval*step));
  step++;
 }
}
