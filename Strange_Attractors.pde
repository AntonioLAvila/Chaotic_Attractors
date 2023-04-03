import peasy.*;

double global_dt = 0.05;
Four_Wing attractor = new Four_Wing(1000, -5, 5);
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
  attractor.setDt(global_dt);
}

void draw(){
  background(0);
  scale(50);
  attractor.display();
  attractor.updatePoints();
}
