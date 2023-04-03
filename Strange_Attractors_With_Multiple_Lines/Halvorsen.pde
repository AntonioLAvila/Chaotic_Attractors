public class Halvorsen{
  public double dt = 0.01;
  private double a = 1.89;
  
  Halvorsen(){}
  
  public double dx(double x, double y, double z){
    return -(a * x) - (4 * y) - (4 * z) - pow((float)y, 2.0);
  }
  public double dy(double x, double y, double z){
    return -(a * y) - (4 * z) - (4 * x) - pow((float)z, 2.0);
  }
  public double dz(double x, double y, double z){
    return -(a * z) - (4 * x) - (4 * y) - pow((float)x, 2.0);
  }
}
