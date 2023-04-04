public class Lorentz extends Attractor{
  protected double dt = 0.01;
  
  private double sigma = 10;
  private double rho = 28;
  private double beta = 8.0/3.0;
  
  public double[] rotations = {-0.068136886, 0.049527932, -1.5502285};
  public double dist = 1000;
  
  Lorentz(int num_points, float min, float max){
    for (int i = 0; i < num_points; i++){
      super.points.add(new Point((double)random(min, max), (double)random(min, max), (double)random(min, max)));
    }
    super.dt = dt;
  }
  
  Lorentz(double x, double y, double z){
    super.points.add(new Point(x, y, z));
    super.dt = dt;
  }
  
  Lorentz(boolean chaos){
    if (chaos){
      double x = (double)random(-2,2);
      double y = (double)random(-2,2);
      double z = (double)random(-2,2);
      super.points.add(new Point(x, y, z));
      super.points.add(new Point(x+0.001, y, z));
    }else{
      super.points.add(new Point(1.1, 2.0, 7.0));
    }
    super.dt = dt;
  }
  
  protected double dx(double x, double y, double z){
    return sigma * (y - x);
  }
  protected double dy(double x, double y, double z){
    return (x * (rho - z)) - y;
  }
  protected double dz(double x, double y, double z){
    return (x * y) - (beta * z);
  }
}
