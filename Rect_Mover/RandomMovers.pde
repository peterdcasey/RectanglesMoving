import java.util.List;
import java.util.ArrayList;
import java.util.Random;

public class RandomMovers {
  private List<RectMover> movers = new ArrayList<RectMover>();
  private Random rnd = new Random();
  
  public RandomMovers(int howMany) {
    for (int i = 0; i < howMany; i += 1) {
      movers.add(new RectMover());
    }
  }
  
  public List getMovers() {
    return movers; 
  }
  
  public void draw() {
    for (RectMover rect : movers) {
      if (rect.isMoving()) {
        randomMove(rect);
        rect.draw();
      }
    }
  }
  
  private void randomMove(RectMover rect) {
    int direction = rnd.nextInt(4);
    
    switch(direction) { //<>//
      case 0:
        rect.left();
        break;
      case 1:
        rect.up();
        break;
      case 2:
        rect.right();
        break;
      case 3:
        rect.down();
        break;
      default:
        break;
    }
  }
}