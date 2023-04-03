public class Thomas{
  public double dt = 0.2;
  private double b = 0.208186;
  
  Thomas(){}
  
  public double dx(double x, double y, double z){
    return sin((float)y) - (b*x);
  }
  public double dy(double x, double y, double z){
    return sin((float)z) - (b*y);
  }
  public double dz(double x, double y, double z){
    return sin((float)x) - (b*z);
  }
}
