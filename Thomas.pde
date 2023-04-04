public class Thomas extends Attractor{
  protected double dt = 0.2;
  private double b = 0.208186;
  
  public float[] rotations = {2.3360925, -0.45515743, -2.1710842};
    
  Thomas(int num_points, float min, float max){
    for (int i = 0; i < num_points; i++){
      super.points.add(new Point((double)random(min, max), (double)random(min, max), (double)random(min, max)));
    }
    super.dt = dt;
  }
  
  Thomas(double x, double y, double z){
    super.points.add(new Point(x, y, z));
    super.dt = dt;
  }
  
  Thomas(){
    super.points.add(new Point(1.1, 1.1, -0.01));
    super.dt = dt;
  }
  
  protected double dx(double x, double y, double z){
    return sin((float)y) - (b*x);
  }
  protected double dy(double x, double y, double z){
    return sin((float)z) - (b*y);
  }
  protected double dz(double x, double y, double z){
    return sin((float)x) - (b*z);
  }
}
