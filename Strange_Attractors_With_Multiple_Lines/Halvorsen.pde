public class Halvorsen{
  public double dt = 0.01;
  
  private double a = 1.89;
  
  private ArrayList<Point> points = new ArrayList<Point>();
  
  Halvorsen(boolean random, int num_points, float min, float max){
    if (random){
      for (int i = 0; i < num_points; i++){
        points.add(new Point((double)random(min, max), (double)random(min, max), (double)random(min, max)));
      }
    }else{
      points.add(new Point(1.0,1.0,1.0));
    }
  }
  
  private double dx(double x, double y, double z){
    return -(a * x) - (4 * y) - (4 * z) - pow((float)y, 2.0);
  }
  private double dy(double x, double y, double z){
    return -(a * y) - (4 * z) - (4 * x) - pow((float)z, 2.0);
  }
  private double dz(double x, double y, double z){
    return -(a * z) - (4 * x) - (4 * y) - pow((float)x, 2.0);
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
