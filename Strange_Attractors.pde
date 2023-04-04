import peasy.*;

double global_dt = 0.008;
int time = 0; //in s
float min = -2;
float max = 2;
int timeout = 20;
Halvorsen attractor = new Halvorsen(100, min, max);

float r = attractor.rotations[0];
float p = attractor.rotations[1];
float y = attractor.rotations[2];

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
  cam.setRotations(r, p, y);
  attractor.setDt(global_dt);
}

void draw(){
  background(0);
  time = millis()/1000;
  scale(13);
  attractor.display();
  attractor.updatePoints();
  if(time != 0 && time % timeout == 0){
    attractor.resetRandom(min, max);
  }
}
