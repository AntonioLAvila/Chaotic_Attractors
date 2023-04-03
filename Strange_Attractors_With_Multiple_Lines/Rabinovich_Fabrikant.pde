public class Rabinovich_Fabrikant{
  public double dt = 0.01;
  private double alpha = 0.14;
  private double gamma = 0.10;
  
  private ArrayList<Point> points = new ArrayList<Point>();
  
  Rabinovich_Fabrikant(boolean random, int num_points, float min, float max){
    if (random){
      for (int i = 0; i < num_points; i++){
        points.add(new Point((double)random(min, max), (double)random(min, max), (double)random(min, max)));
      }
    }else{
      points.add(new Point(1.0,1.0,1.0));
    }
  }
  
  private double dx(double x, double y, double z){
    return y*(z - 1 + pow((float)x, 2.0)) + (gamma * x);
  }
  private double dy(double x, double y, double z){
    return x*(3*z + 1 - pow((float)x, 2.0)) + (gamma * y);
  }
  private double dz(double x, double y, double z){
    return -2*z*(alpha + x*y);
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
