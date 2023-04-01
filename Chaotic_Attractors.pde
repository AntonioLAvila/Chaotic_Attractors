import peasy.*;

double x = 0.1;
double y = 1.0;
double z = 0.01;

double dt = 0.005;

int LENGTH = 100000;

ArrayList<PVector> points = new ArrayList<PVector>();

PeasyCam cam;

void setup(){
  strokeWeight(0.1);
  stroke(255);
  noCursor();
  fullScreen(P3D);
  noFill();
  smooth();
  frameRate(170);
  colorMode(HSB);
  cam = new PeasyCam(this, 500);
}

void draw(){
  background(0);
  scale(12);
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
  if (points.size() >= LENGTH){
    points.remove(0);
    points.add(new PVector((float)x, (float)y, (float)z));
  }else{
    points.add(new PVector((float)x, (float)y, (float)z));
  }
}


// ---------------------Lorentz---------------------------
//double sigma = 10;
//double rho = 28;
//double beta = 8.0/3.0;
//double dx(double x, double y, double z){
//  return sigma * (y - x);
//}
//double dy(double x, double y, double z){
//  return (x * (rho - z)) - y;
//}
//double dz(double x, double y, double z){
//  return (x * y) - (beta * z);
//}

//-------------------------Aizawa----------------------------
//double a = 0.95;
//double b = 0.7;
//double c = 0.6;
//double d = 3.5;
//double e = 0.25;
//double f = 0.1;
//double dx(double x, double y, double z){
//  return ((z - b) * x) - (d * y);
//}
//double dy(double x, double y, double z){
//  return (d * x) + ((z - b) * y);
//}
//double dz(double x, double y, double z){
//  return c + (a * z) - (pow((float)z, 3.0) / 3) - ((pow((float)x, 2.0) + pow((float)y, 2.0)) * (1 + e * z)) + (f * z * pow((float)x, 3));
//}

//----------------------------Halvorsen---------------------------
double a = 1.89;
double dx(double x, double y, double z){
  return -(a * x) - (4 * y) - (4 * z) - pow((float)y, 2.0);
}
double dy(double x, double y, double z){
  return -(a * y) - (4 * z) - (4 * x) - pow((float)z, 2.0);
}
double dz(double x, double y, double z){
  return -(a * z) - (4 * x) - (4 * y) - pow((float)x, 2.0);
}

//--------------------------------Rabinovich-Fabrikant----------------------
//double alpha = 0.14;
//double gamma = 0.10;
//double dx(double x, double y, double z){
//  return y*(z - 1 + pow((float)x, 2.0)) + (gamma * x);
//}
//double dy(double x, double y, double z){
//  return x*(3*z + 1 - pow((float)x, 2.0)) + (gamma * y);
//}
//double dz(double x, double y, double z){
//  return -2*z*(alpha + x*y);
//}
