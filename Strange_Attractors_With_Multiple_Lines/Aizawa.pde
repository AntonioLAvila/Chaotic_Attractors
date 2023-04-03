public class Aizawa{
  public double dt = 0.01;
  
  private double a = 0.95;
  private double b = 0.7;
  private double c = 0.6;
  private double d = 3.5;
  private double e = 0.25;
  private double f = 0.1;
  
  private ArrayList<Point> points = new ArrayList<Point>();
  
  Aizawa(boolean random, int num_points, float min, float max){
    if (random){
      for (int i = 0; i < num_points; i++){
        points.add(new Point((double)random(min, max), (double)random(min, max), (double)random(min, max)));
      }
    }else{
      points.add(new Point(1.0,1.0,1.0));
    }
  }
  
  private double dx(double x, double y, double z){
    return ((z - b) * x) - (d * y);
  }
  private double dy(double x, double y, double z){
    return (d * x) + ((z - b) * y);
  }
  private double dz(double x, double y, double z){
    return c + (a * z) - (pow((float)z, 3.0) / 3) - ((pow((float)x, 2.0) + pow((float)y, 2.0)) * (1 + e * z)) + (f * z * pow((float)x, 3));
  }
  
  public void updatePoints(){
    for(Point p : points){
      double x = p.getX();
      double y = p.getY();
      double z = p.getZ();
      p.update(dx(x,y,z) * dt, dy(x,y,z) * dt, dz(x,y,z) * dt);
    }
  }
  
  public void display(){
    for (Point p : points) p.display();
  }
}
