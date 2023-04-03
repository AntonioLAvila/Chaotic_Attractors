import peasy.*;

double global_dt = 0.008;
int time = 0; //in s
Halvorsen attractor = new Halvorsen(100, -2, 2);
PeasyCam cam;

void setup(){
  strokeWeight(.4);
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
  time = millis()/1000;
  scale(13);
  attractor.display();
  attractor.updatePoints();
  if(time % 120 == 0){
    attractor.reset();
    time = 0;
  }
}
