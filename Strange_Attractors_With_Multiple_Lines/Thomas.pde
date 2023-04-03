public class Thomas{
  public double dt = 0.2;
  private double b = 0.208186;
  
  private ArrayList<Point> points = new ArrayList<Point>();
  
  Thomas(boolean random, int num_points, float min, float max){
    if (random){
      for (int i = 0; i < num_points; i++){
        points.add(new Point((double)random(min, max), (double)random(min, max), (double)random(min, max)));
      }
    }else{
      points.add(new Point(1.0,1.0,1.0));
    }
  }
  
  private double dx(double x, double y, double z){
    return sin((float)y) - (b*x);
  }
  private double dy(double x, double y, double z){
    return sin((float)z) - (b*y);
  }
  private double dz(double x, double y, double z){
    return sin((float)x) - (b*z);
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
