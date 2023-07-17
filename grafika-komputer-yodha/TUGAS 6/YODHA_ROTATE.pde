void setup() {  
  size(400, 400);
}
void draw() {  background(220);
  translate(width/2, height/2); 
  rotate(radians(frameCount)); 
  fill(220,20,25);
  triangle(-120, 0, -50, -120, 0, 0);    
  rectMode(CENTER);
  fill(200,255,82);
  rect(50, 50,70,70);
  fill(82,255,255);
  ellipse(100,100, 50, 50);
}
