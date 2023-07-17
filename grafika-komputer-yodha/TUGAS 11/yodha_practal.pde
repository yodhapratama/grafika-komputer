color RED = color(255, 0, 0);
color BLUE = color(0, 0, 255);
void setup() {
  size(1000, 1000);
  noStroke();
  background(0);
}
void draw() {
  drawCircle(width/2, height/2, 200, BLUE);
}
void drawCircle(float x, float y, float radius, color c) {
  fill(c);
  ellipse(x, y, radius, radius);
  if (radius > 1) {
    pushMatrix();
    translate(x - radius/2, y - radius/2);
    rotate(PI/2); //rotate each branch 90 degrees
    drawCircle(0, 0, radius/1.4, c == RED? BLUE : RED); //the color of each branch alternates from red to blue
    popMatrix();
    pushMatrix();
    translate(x - radius/2, y + radius/2);
    rotate(-PI/2);
    drawCircle(0, 0, radius/1.4, c == RED? BLUE : RED);
    popMatrix();
  }
}
