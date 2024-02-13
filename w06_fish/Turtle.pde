class Turtle extends Animal {

  Turtle(int x, int y, int w, int h) {
    super(x, y, w, h);
    speed = new PVector(int(random(1, 5)), int(random(1, 5)));
  }

  void display() {
    fill(#22A89e);
    ellipse(ax, ay, aw, ah);
  }

  void hit() {
    if (ax < tankX || ax+aw/2 > tankX + tankW) {
      speed.x *= -1;
    }
    if (ay-ah/2 < height - floorH || ay+ah/2 > height) {
      speed.y *= -1;
    }
  }

  void move() {
    hit();
    ax += speed.x;
    ay += speed.y * 2;
  }

  boolean isWithin() {
    if (ay-ah/2 < height - floorH || ay+ah/2 > height) {
      return false;
    }
    return true;
  }
}
