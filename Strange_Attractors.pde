import peasy.*;

double global_dt = 0.01;
Halvorsen attractor = new Halvorsen(100, -2, 2);
PeasyCam cam;

void setup(){
  strokeWeight(0.1);
  //noCursor();
  //size(800, 800, P3D);
  fullScreen(P3D);
  noFill();
  smooth();
  //frameRate(170);
  colorMode(HSB);
  cam = new PeasyCam(this, 500);
  cam.setRotations(2.3360925, -0.45515743, -2.1710842);
  attractor.setDt(global_dt);
}

void draw(){
  background(0);
  scale(13);
  attractor.display();
  attractor.updatePoints();
}
