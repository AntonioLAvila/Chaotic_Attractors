import peasy.*;

Aizawa attractor = new Aizawa(1000, -5, 5);
PeasyCam cam;

void setup(){
  strokeWeight(0.05);
  noCursor();
  fullScreen(P3D);
  noFill();
  smooth();
  //frameRate(170);
  colorMode(HSB);
  cam = new PeasyCam(this, 500);
}

void draw(){
  background(0);
  scale(50);
  attractor.display();
  attractor.updatePoints();
}
