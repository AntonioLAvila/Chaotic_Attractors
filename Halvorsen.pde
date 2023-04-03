public class Halvorsen extends Attractor{
  public double dt = 0.01;
  
  private double a = 1.89;
  
  Halvorsen(int num_points, float min, float max){
    for (int i = 0; i < num_points; i++){
      super.points.add(new Point((double)random(min, max), (double)random(min, max), (double)random(min, max)));
    }
    super.dt = dt;
  }
  
  Halvorsen(double x, double y, double z){
    super.points.add(new Point(x, y, z));
    super.dt = dt;
  }
  
  Halvorsen(){
    super.points.add(new Point(-1.48, -1.51, 2.04));
    super.dt = dt;
  }
  
  protected double dx(double x, double y, double z){
    return -(a * x) - (4 * y) - (4 * z) - pow((float)y, 2.0);
  }
  protected double dy(double x, double y, double z){
    return -(a * y) - (4 * z) - (4 * x) - pow((float)z, 2.0);
  }
  protected double dz(double x, double y, double z){
    return -(a * z) - (4 * x) - (4 * y) - pow((float)x, 2.0);
  }
}
