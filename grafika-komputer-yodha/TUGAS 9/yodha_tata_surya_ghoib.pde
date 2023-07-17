class Planet {
  float radius;
  float distance;
  float angle;
  float speed;
  
  Planet(float radius, float distance, float speed) {
    this.radius = radius;
    this.distance = distance;
    this.speed = speed;
    this.angle = 0;
  }
  
  void update() {
    angle += speed;
  }
  
  void display() {
    float x = distance * cos(angle);
    float y = distance * sin(angle);
    ellipse(width/2 + x, height/2 + y, radius, radius);
  }
}

Planet sun;
Planet earth;
Planet mars;
Planet merkurius;
Planet jupiter;
Planet saturnus;
Planet uranus;
Planet neptunus;

void setup() {
  size(800, 600);
  
  sun = new Planet(50, 0, 0);
  earth = new Planet(20, 150, 0.02);
  mars = new Planet(17, 250, 0.03);
  merkurius = new Planet(50, 100, 0.04);
  jupiter = new Planet(30, 250, 0.05);
  saturnus = new Planet(40, 200, 0.06);
  uranus = new Planet(10, 250, 0.01);
  neptunus = new Planet(50, 170, 0.01);
}

void draw() {
  background(0);
  
  sun.display();
  
  earth.update();
  earth.display();
  
  mars.update();
  mars.display();
  
  merkurius.update();
  merkurius.display();
  
  jupiter.update();
  jupiter.display();
  
  saturnus.update();
  saturnus.display();
  
  uranus.update();
  uranus.display();
  
  neptunus.update();
  neptunus.display();

  

}
