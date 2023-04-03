import peasy.*;

int LENGTH = 2147483647;
float MIN = -5;
float MAX = 5;
ArrayList<PVector> line1 = new ArrayList<PVector>();
ArrayList<PVector> line2 = new ArrayList<PVector>();
ArrayList<PVector> line3 = new ArrayList<PVector>();
ArrayList<PVector> line4 = new ArrayList<PVector>();
ArrayList<PVector> line5 = new ArrayList<PVector>();

PeasyCam cam;

Thomas attractor = new Thomas();

double x1 = (double)random(MIN,MAX);
double y1 = (double)random(MIN,MAX);
double z1 = (double)random(MIN,MAX);

double x2 = (double)random(MIN,MAX);
double y2 = (double)random(MIN,MAX);
double z2 = (double)random(MIN,MAX);

double x3 = (double)random(MIN,MAX);
double y3 = (double)random(MIN,MAX);
double z3 = (double)random(MIN,MAX);

double x4 = (double)random(MIN,MAX);
double y4 = (double)random(MIN,MAX);
double z4 = (double)random(MIN,MAX);

double x5 = (double)random(MIN,MAX);
double y5 = (double)random(MIN,MAX);
double z5 = (double)random(MIN,MAX);

void setup(){
  strokeWeight(0.05);
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
  scale(50);
  
  beginShape();
  float h1 = 140;
  float d1 = 1;
  for (PVector vec : line1){
    stroke(h1,255,255);
    vertex(vec.x, vec.y, vec.z);
    if (h1 <= 140){
      d1 = 1;
    }else if(h1 >= 230){
      d1 = -1;
    }
    h1 = h1 + d1;
  }
  endShape();
  
  beginShape();
  float h2 = 140;
  float d2 = 1;
  for (PVector vec : line2){
    stroke(h2,255,255);
    vertex(vec.x, vec.y, vec.z);
    if (h2 <= 140){
      d2 = 1;
    }else if(h2 >= 230){
      d2 = -1;
    }
    h2 = h2 + d2;
  }
  endShape();
  
  beginShape();
  float h3 = 140;
  float d3 = 1;
  for (PVector vec : line3){
    stroke(h3,255,255);
    vertex(vec.x, vec.y, vec.z);
    if (h3 <= 140){
      d3 = 1;
    }else if(h3 >= 230){
      d3 = -1;
    }
    h3 = h3 + d3;
  }
  endShape();
  
  beginShape();
  float h4 = 140;
  float d4 = 1;
  for (PVector vec : line4){
    stroke(h4,255,255);
    vertex(vec.x, vec.y, vec.z);
    if (h4 <= 140){
      d4 = 1;
    }else if(h4 >= 230){
      d4 = -1;
    }
    h4 = h4 + d4;
  }
  endShape();
  
  beginShape();
  float h5 = 140;
  float d5 = 1;
  for (PVector vec : line5){
    stroke(h5,255,255);
    vertex(vec.x, vec.y, vec.z);
    if (h5 <= 140){
      d5 = 1;
    }else if(h5 >= 230){
      d5 = -1;
    }
    h5 = h5 + d5;
  }
  endShape();
  
  updatePositions();
  
  if (line1.size() >= LENGTH){
    line1.remove(0);
    line1.add(new PVector((float)x1, (float)y1, (float)z1));
  }else{
    line1.add(new PVector((float)x1, (float)y1, (float)z1));
  }
  
  if (line2.size() >= LENGTH){
    line2.remove(0);
    line2.add(new PVector((float)x2, (float)y2, (float)z2));
  }else{
    line2.add(new PVector((float)x2, (float)y2, (float)z2));
  }
  
  if (line3.size() >= LENGTH){
    line3.remove(0);
    line3.add(new PVector((float)x3, (float)y3, (float)z3));
  }else{
    line3.add(new PVector((float)x3, (float)y3, (float)z3));
  }
  
  if (line4.size() >= LENGTH){
    line4.remove(0);
    line4.add(new PVector((float)x4, (float)y4, (float)z4));
  }else{
    line4.add(new PVector((float)x4, (float)y4, (float)z4));
  }
  
  if (line5.size() >= LENGTH){
    line5.remove(0);
    line5.add(new PVector((float)x5, (float)y5, (float)z5));
  }else{
    line5.add(new PVector((float)x5, (float)y5, (float)z5));
  }
}

void updatePositions(){
  double dx1 = attractor.dx(x1,y1,z1) * attractor.dt;
  double dy1 = attractor.dy(x1,y1,z1) * attractor.dt;
  double dz1 = attractor.dz(x1,y1,z1) * attractor.dt;
  x1 += dx1;
  y1 += dy1;
  z1 += dz1;
  
  double dx2 = attractor.dx(x2,y2,z2) * attractor.dt;
  double dy2 = attractor.dy(x2,y2,z2) * attractor.dt;
  double dz2 = attractor.dz(x2,y2,z2) * attractor.dt;
  x2 += dx2;
  y2 += dy2;
  z2 += dz2;
  
  double dx3 = attractor.dx(x3,y3,z3) * attractor.dt;
  double dy3 = attractor.dy(x3,y3,z3) * attractor.dt;
  double dz3 = attractor.dz(x3,y3,z3) * attractor.dt;
  x3 += dx3;
  y3 += dy3;
  z3 += dz3;
  
  double dx4 = attractor.dx(x4,y4,z4) * attractor.dt;
  double dy4 = attractor.dy(x4,y4,z4) * attractor.dt;
  double dz4 = attractor.dz(x4,y4,z4) * attractor.dt;
  x4 += dx4;
  y4 += dy4;
  z4 += dz4;
  
  double dx5 = attractor.dx(x5,y5,z5) * attractor.dt;
  double dy5 = attractor.dy(x5,y5,z5) * attractor.dt;
  double dz5 = attractor.dz(x5,y5,z5) * attractor.dt;
  x5 += dx5;
  y5 += dy5;
  z5 += dz5;
}
