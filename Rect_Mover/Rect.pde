/**
  Rectangle
*/

public class Rect {
  
  private int x = 25;
  private int y = 25;
  private int myHeight = 50;
  private int myWidth = 50;  
  private color myColor = color(20, 195, 167);
  
  public Rect() {
    // do nothing at this point, default Rect  
  }
    
  public Rect(int x, int y, int height, int width, color myColor) {
    this.x = x;
    this.y = y;
    this.myHeight = height;
    this.myWidth = width;
    this.myColor = myColor;
  }
  
  public void setColor(color c) {
    myColor = c; 
  }
  
  public int getHeight() {
    return myHeight;
  }
  
  public int getWidth() {
    return myWidth;
  }
  
  public int getX() {
    return x;
  }
  
  public void setX(int newX) {
    x = newX;
    
    if (x + myWidth > width) {
      x = width  - myWidth;
    }
    
    if (x < 0) {
      x = 0;
    }
  }
  
  public int getY() {
    return y;
  }
  
  public void setY(int newY) {
    y = newY;
    
    if (y + myHeight > height) {
      y = height - myHeight;
    }
    
    if (y < 0) {
      y = 0;
    }
  }
  
  // changes the current fill color!
  void draw() {
    fill(myColor);
    rect(x, y, myHeight, myWidth);
  }
}