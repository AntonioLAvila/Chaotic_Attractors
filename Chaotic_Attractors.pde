import peasy.*;

double x = 1;
double y = 1;
double z = 1;

double sigma = 10;
double rho = 28;
double beta = 8.0/3.0;
double dt = 0.005;

ArrayList<PVector> points = new ArrayList<PVector>();

PeasyCam cam;

void setup(){
  //size(1920, 1080, P3D);
  fullScreen(P3D);
  noFill();
  smooth();
  frameRate(170);
  colorMode(HSB);
  cam = new PeasyCam(this, 500);
}

void draw(){
  background(0);
  stroke(255);
  translate(0, 0, -80);
  scale(3);
  beginShape();
  for (PVector v : points){
    vertex(v.x, v.y, v.z);
  }
  endShape();
  
  double dx = dx(x,y,z) * dt;
  double dy = dy(x,y,z) * dt;
  double dz = dz(x,y,z) * dt;
  x += dx;
  y += dy;
  z += dz;
  points.add(new PVector((float)x, (float)y, (float)z));
}


// Lorentz
double dx(double x, double y, double z){
  return sigma * (y - x);
}
double dy(double x, double y, double z){
  return (x * (rho - z)) - y;
}
double dz(double x, double y, double z){
  return (x * y) - (beta * z);
}
