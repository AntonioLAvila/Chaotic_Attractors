public class Rabinovich_Fabrikant{
  public double dt = 0.01;
  private double alpha = 0.14;
  private double gamma = 0.10;
  
  Rabinovich_Fabrikant(){}
  
  public double dx(double x, double y, double z){
    return y*(z - 1 + pow((float)x, 2.0)) + (gamma * x);
  }
  public double dy(double x, double y, double z){
    return x*(3*z + 1 - pow((float)x, 2.0)) + (gamma * y);
  }
  public double dz(double x, double y, double z){
    return -2*z*(alpha + x*y);
  }
}
