class Bounds {
  private int left;
  private int right;
  private int top;
  private int bottom;
  
  public Bounds(int left, int right, int top, int bottom) {
    this.left = left;
    this.right = right;
    this.top = top;
    this.bottom = bottom;
  }
  
  public int left() {
    return left; 
  }
  
  public int right() {
    return right;
  }
  
  public int top() {
    return top;
  }
  
  public int bottom() {
    return bottom;
  }
}