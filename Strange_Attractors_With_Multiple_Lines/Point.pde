public class Point{
  private double x;
  private double y;
  private double z;
  private int l = 2147483647; //2147483647
  
  private ArrayList<PVector> line = new ArrayList<PVector>();
  
  Point(double x_init, double y_init, double z_init){
    x = x_init;
    y = y_init;
    z = z_init;
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
