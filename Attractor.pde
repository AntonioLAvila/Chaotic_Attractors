public abstract class Attractor{
  protected double dt;
  protected ArrayList<Point> points = new ArrayList<Point>();
  
  protected abstract double dx(double x, double y, double z);
  protected abstract double dy(double x, double y, double z);
  protected abstract double dz(double x, double y, double z);
  
  public void updatePoints(){
    for(Point p : points){
      double x = p.getX();
      double y = p.getY();
      double z = p.getZ();
      p.update(dx(x,y,z) * dt, dy(x,y,z) * dt, dz(x,y,z) * dt);
    }
  }
  
  public void display(){
    for (Point p : points) p.display();
  }
  
  public void setDt(double dt){
    this.dt = dt;
  }
  
  public void reset(){
    for (Point p : points) p.reset();
  }
  
  public void resetRandom(float min, float max){
    for (Point p : points) p.resetRandom(min, max);
  }
}
