void setup(){
  size(500,500,P2D);
  rectMode(CENTER);
}

void draw(){
  background(200);
  fill(map(mouseX*mouseY,0,500*500,0,255));
  stroke(250,250,40);
  strokeWeight(10);
  rect(mouseX,mouseY,(mouseX + mouseY) / 5,(mouseX + mouseY) / 5);
}
