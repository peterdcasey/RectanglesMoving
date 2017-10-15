/**
  Rectangle Mover
*/

public class RectMover {
  
  private Rect rect = null;
  private int speed = 10;
  private static final int DEFAULT_SPEED = 10;
  private boolean moving = true;
  
  public RectMover() {
    this(new Rect(width / 2, height / 2,
            20, 20, color(255, 100, 200)), DEFAULT_SPEED);
  }
    
  public RectMover(Rect rect, int speed) {
    this.rect = rect;  
    this.speed = speed;
  }
  
  public void setColor(color c) {
    rect.setColor(c); 
  }
  
  public void draw() {
    rect.draw(); 
  }
  
  boolean isMoving() {
    return moving;
  }
  
  void stopMoving() {
    moving = false; 
  }
  
  void startMoving() {
    moving = true; 
  }
  
  public Rect getRect() {
    return rect; 
  }
  
  public void jump(int newX, int newY) {
    rect.setX(newX);
    rect.setY(newY);
  }
  
  public int x() {
    return rect.getX(); 
  }
  
  public int y() {
    return rect.getY();
  }
  
  public void up() {
    if (moving)
      rect.setY(rect.getY() - speed); 
  }
  public void down() {
    if (moving)
      rect.setY(rect.getY() + speed); 
  }
  public void left() {
    if (moving)
      rect.setX(rect.getX() - speed); 
  }
  public void right() {
    if (moving)
      rect.setX(rect.getX() + speed); 
  }
}