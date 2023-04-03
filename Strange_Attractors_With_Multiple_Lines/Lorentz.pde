public class Lorentz{
  public double dt = 0.01;
  private double sigma = 10;
  private double rho = 28;
  private double beta = 8.0/3.0;
  
  Lorentz(){}
  
  public double dx(double x, double y, double z){
    return sigma * (y - x);
  }
  public double dy(double x, double y, double z){
    return (x * (rho - z)) - y;
  }
  public double dz(double x, double y, double z){
    return (x * y) - (beta * z);
  }
}
