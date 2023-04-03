public class Lorentz{
  public double dt = 0.01;
  
  private double sigma = 10;
  private double rho = 28;
  private double beta = 8.0/3.0;
  
  private ArrayList<Point> points = new ArrayList<Point>();
  
  Lorentz(boolean random, int num_points, float min, float max){
    if (random){
      for (int i = 0; i < num_points; i++){
        points.add(new Point((double)random(min, max), (double)random(min, max), (double)random(min, max)));
      }
    }else{
      points.add(new Point(1.0,1.0,1.0));
    }
  }
  
  private double dx(double x, double y, double z){
    return sigma * (y - x);
  }
  private double dy(double x, double y, double z){
    return (x * (rho - z)) - y;
  }
  private double dz(double x, double y, double z){
    return (x * y) - (beta * z);
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
