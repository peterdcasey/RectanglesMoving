import javax.swing.JOptionPane;

RectMover rect;
RectMover rect2;
RandomMovers movers;
  
void setup() {
  size(600, 400); 
  frameRate(60);
  rect = new RectMover(new Rect(), 10);
  rect2 = new RectMover(
                  new Rect(width-60, height-60, 50, 50, color(200,200,240)), 10);
  movers = new RandomMovers(300);
}

void draw() {
  int keyNum = 0;
  
  if (keyPressed) {
    keyNum = key;

    if (key == CODED) {
      switch(keyCode) {
        case UP:
          rect.up();
          break;
        case DOWN:
          rect.down();
          break;
        case LEFT:
          rect.left();
          break;
        case RIGHT:
          rect.right();
          break;
        default:
           JOptionPane.showMessageDialog(null, "KeyCode What???");
      }
    }
    else if (key == 'b' || key == 'B') {
      fill(0);
    }
    else {
     int red = keyNum * 10 % 255;
     int green = keyNum * 20 % 255;
     int blue = keyNum * 30 % 255;
     fill(red, green, blue); 
    }
  } else {
    
  }
  
  color c;
  c = color(45,89,90);
  background(c);
  //JOptionPane.showMessageDialog(null, "red is " + red(c));
  keyPressed = false;
  rect.draw();
  rect2.draw();
  movers.draw();
  checkMovers();
  //rect(rectX, rectY, rectHeight, rectWidth); //<>//
}

void checkMovers() {
  List<RectMover> rects = movers.getMovers();
  RectMover blackHole = rect;
  
  for (RectMover rect : rects) {
    if (isContained(rect, blackHole)) {
      //rect.stopMoving();
      rect.jump(rect2.x(), rect2.y());
      rect.setColor(color(0,255,0));
    }
  }
}

boolean isContained(RectMover mover, RectMover blackHole) {
  boolean result = false;
  Rect bug = mover.getRect();
  Rect hole = blackHole.getRect();
  
  if (bug.getX() >= hole.getX() && bug.getY() >= hole.getY() &&
      bug.getX() + bug.getWidth() <= hole.getX() + hole.getWidth() &&
      bug.getY() + bug.getHeight() <= hole.getY() + hole.getHeight()) {
    result = true;
  }
  return result;
}