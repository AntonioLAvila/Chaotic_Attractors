public class Four_Wing extends Attractor{
  protected double dt = 0.05;
  
  private double a = 0.2;
  private double b = 0.01;
  private double c = -0.4;
  
  public double[] rotations = {2.8596098, -0.57462484, 1.1091781};
  public double dist = 300;
    
  Four_Wing(int num_points, float min, float max){
    for (int i = 0; i < num_points; i++){
      super.points.add(new Point((double)random(min, max), (double)random(min, max), (double)random(min, max)));
    }
    super.dt = dt;
  }
  
  Four_Wing(double x, double y, double z){
    super.points.add(new Point(x, y, z));
    super.dt = dt;
  }
  
  Four_Wing(){
    super.points.add(new Point(1.3, -0.18, 0.01));
    super.dt = dt;
  }
  
  protected double dx(double x, double y, double z){
    return (a * x) + (y * z);
  }
  protected double dy(double x, double y, double z){
    return (b * x) + (c * y) - (x * z);
  }
  protected double dz(double x, double y, double z){
    return -z - (x * y);
  }
}
