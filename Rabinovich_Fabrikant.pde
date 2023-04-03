public class Rabinovich_Fabrikant extends Attractor{
  public double dt = 0.05;
  private double alpha = 0.14;
  private double gamma = 0.10;
  
  
  Rabinovich_Fabrikant(int num_points, float min, float max){
    for (int i = 0; i < num_points; i++){
      super.points.add(new Point((double)random(min, max), (double)random(min, max), (double)random(min, max)));
    }
    super.dt = dt;
  }
  
  Rabinovich_Fabrikant(double x, double y, double z){
    super.points.add(new Point(x, y, z));
    super.dt = dt;
  }
  
  Rabinovich_Fabrikant(){
    super.points.add(new Point(-1, 0, 0.5));
    super.dt = dt;
  }
  
  protected double dx(double x, double y, double z){
    return y*(z - 1 + pow((float)x, 2.0)) + (gamma * x);
  }
  protected double dy(double x, double y, double z){
    return x*(3*z + 1 - pow((float)x, 2.0)) + (gamma * y);
  }
  protected double dz(double x, double y, double z){
    return -2*z*(alpha + x*y);
  }
}
