import peasy.*;

Lorentz attractor = new Lorentz(false, 100, -2, 2, true);
PeasyCam cam;

void setup(){
  strokeWeight(0.05);
  noCursor();
  //size(800, 800, P3D);
  fullScreen(P3D);
  noFill();
  smooth();
  frameRate(170);
  colorMode(HSB);
  cam = new PeasyCam(this, 500);
}

void draw(){
  background(0);
  scale(50);
  attractor.display();
  attractor.updatePoints();
}
