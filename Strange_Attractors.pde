import peasy.*;

double global_dt = 0.008;
int time = 0; //millis
float min = -2;
float max = 2;
int timeout = 5000; //millis

Halvorsen halvorsen = new Halvorsen(100, min, max);
Aizawa aizawa = new Aizawa(100, min, max);
Lorentz lorentz = new Lorentz(100, min, max);
Four_Wing fourWing = new Four_Wing(100, min, max);
Thomas thomas = new Thomas(100, min, max);

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
  cam.setDistance(halvorsen.dist);
  cam.setRotations(halvorsen.rotations[0], halvorsen.rotations[1], halvorsen.rotations[2]);
  //halvorsen.setDt(global_dt);
}

int ct = 0;
int modes = 5;
void draw(){
  background(0);
  scale(13);
  int val = ct % modes;
  if(millis() - time >= timeout){
    switch (val){
      case 0:  //transition to aizawa
        cam.setDistance(aizawa.dist);
        cam.setRotations(aizawa.rotations[0], aizawa.rotations[1], aizawa.rotations[2]);
        halvorsen.resetRandom(min, max);
        break;
      case 1:  //transition to lorentz
        cam.setDistance(lorentz.dist);
        cam.setRotations(lorentz.rotations[0], lorentz.rotations[1], lorentz.rotations[2]);
        aizawa.resetRandom(min, max);
        break;
      case 2:  //transition to fourwing
        cam.setDistance(fourWing.dist);
        cam.setRotations(fourWing.rotations[0], fourWing.rotations[1], fourWing.rotations[2]);
        lorentz.resetRandom(min, max);
        break;
      case 3:  //transition to thomas
        cam.setDistance(thomas.dist);
        cam.setRotations(thomas.rotations[0], thomas.rotations[1], thomas.rotations[2]);
        fourWing.resetRandom(min, max);
        break;
      case 4:  //transition to halvorsen
        cam.setDistance(halvorsen.dist);
        cam.setRotations(halvorsen.rotations[0], halvorsen.rotations[1], halvorsen.rotations[2]);
        thomas.resetRandom(min, max);
        break;
    }
    ct+=1;
    time = millis();
  }

  switch(val){
    case 0:
      halvorsen.display();
      halvorsen.updatePoints();
      break;
    case 1:
      aizawa.display();
      aizawa.updatePoints();
      break;
    case 2:
      lorentz.display();
      lorentz.updatePoints();
      break;
    case 3:
      fourWing.display();
      fourWing.updatePoints();
      break;
    case 4:
      thomas.display();
      thomas.updatePoints();
      break;
  }
}
