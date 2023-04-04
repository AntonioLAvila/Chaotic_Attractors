import peasy.*;

double global_dt = 0.008;
int time = 0; //millis
float min = -2;
float max = 2;
int timeout = 10000;
Lorentz attractor = new Lorentz(100, min, max);

double r = attractor.rotations[0];
double p = attractor.rotations[1];
double y = attractor.rotations[2];

PeasyCam cam;

void setup(){
  strokeWeight(.8);
  //noCursor();
  //size(800, 800, P3D);
  fullScreen(P3D);
  noFill();
  smooth();
  //frameRate(170);
  colorMode(HSB);
  cam = new PeasyCam(this, 500);
  cam.setDistance(attractor.dist);
  cam.setRotations(r, p, y);
  attractor.setDt(global_dt);
}

void draw(){
  background(0);
  scale(13);
  attractor.display();
  attractor.updatePoints();
  if(millis() - time >= timeout){
    attractor.resetRandom(min, max);
    time = millis();
  }
}
