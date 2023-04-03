public class Aizawa{
  public double dt = 0.01;
  private double a = 0.95;
  private double b = 0.7;
  private double c = 0.6;
  private double d = 3.5;
  private double e = 0.25;
  private double f = 0.1;
  
  Aizawa(){}
  
  public double dx(double x, double y, double z){
    return ((z - b) * x) - (d * y);
  }
  public double dy(double x, double y, double z){
    return (d * x) + ((z - b) * y);
  }
  public double dz(double x, double y, double z){
    return c + (a * z) - (pow((float)z, 3.0) / 3) - ((pow((float)x, 2.0) + pow((float)y, 2.0)) * (1 + e * z)) + (f * z * pow((float)x, 3));
  }
}
