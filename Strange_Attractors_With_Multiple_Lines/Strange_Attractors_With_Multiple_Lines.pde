import peasy.*;

Lorentz attractor = new Lorentz(true, 5, -1, 1);
PeasyCam cam;

void setup(){
  strokeWeight(0.05);
  noCursor();
  size(800, 800, P3D);
  //fullScreen(P3D);
  noFill();
  smooth();
  frameRate(170);
  colorMode(HSB);
  cam = new PeasyCam(this, 500);
}

void draw(){
  background(0);
  attractor.display();
  attractor.updatePoints();
}
