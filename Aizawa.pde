public class Aizawa extends Attractor{
  protected double dt = 0.01;
  
  private double a = 0.95;
  private double b = 0.7;
  private double c = 0.6;
  private double d = 3.5;
  private double e = 0.25;
  private double f = 0.1;
  
  public double[] rotations = {0.41769165, -0.3316092, 0.38543573};
  public double dist = 300;
    
  Aizawa(int num_points, float min, float max){
    for (int i = 0; i < num_points; i++){
      super.points.add(new Point((double)random(min, max), (double)random(min, max), (double)random(min, max)));
    }
    super.dt = dt;
  }
  
  Aizawa(double x, double y, double z){
    super.points.add(new Point(x, y, z));
    super.dt = dt;
  }
  
  Aizawa(){
    super.points.add(new Point(0.1, 1, 0.01));
    super.dt = dt;
  }
  
  protected double dx(double x, double y, double z){
    return ((z - b) * x) - (d * y);
  }
  protected double dy(double x, double y, double z){
    return (d * x) + ((z - b) * y);
  }
  protected double dz(double x, double y, double z){
    return c + (a * z) - (pow((float)z, 3.0) / 3) - ((pow((float)x, 2.0) + pow((float)y, 2.0)) * (1 + e * z)) + (f * z * pow((float)x, 3));
  }
}
