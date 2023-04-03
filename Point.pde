public class Point{
  private double x;
  private double y;
  private double z;
  private int l = 100; //2147483647
  
  private double x_init;
  private double y_init;
  private double z_init;
  
  private ArrayList<PVector> line = new ArrayList<PVector>();
  
  Point(double x, double y, double z){
    this.x = x;
    this.y = y;
    this.z = z;
    x_init = x;
    y_init = y;
    z_init = z;
    line.add(new PVector((float)x, (float)y, (float)z));
  }
  
  public void display(){
    beginShape();
    float h = 140;
    float d = 1;
    for (PVector vec : line){
      stroke(h,255,255);
      vertex(vec.x, vec.y, vec.z);
      if (h <= 140){
        d = 1;
      }else if(h >= 230){
        d = -1;
      }
      h = h + d;
    }
    endShape();
  }
  
  public void update(double dx, double dy, double dz){
    x += dx;
    y += dy;
    z += dz;
    if (line.size() >= l){
      line.remove(0);
      line.add(new PVector((float)x, (float)y, (float)z));
    }else{
      line.add(new PVector((float)x, (float)y, (float)z));
    }
  }
  
  public void reset(){
    line.clear();
    x = x_init;
    y = y_init;
    z = z_init;
  }
  
  public void resetRandom(float min, float max){
    line.clear();
    x = (double)random(min, max);
    y = (double)random(min, max);
    z = (double)random(min, max);
  }
  
  public double getX(){
    return x;
  }
  
  public double getY(){
    return y;
  }
  
  public double getZ(){
    return z;
  }
  
}
