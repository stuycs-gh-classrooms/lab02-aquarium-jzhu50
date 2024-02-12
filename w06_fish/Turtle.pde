class Turtle extends Animal {

  Turtle(int x, int y, int w, int h) {
    super(x, y, w, h);
    speed = new PVector(int(random(1, 20)), int(random(1, 20)));
  }

  void display() {
    fill(#5E574A);
    ellipse(ax, ay, aw, ah);
  }

  void hit() {
    if (ax < tankX || ax+aw > tankX + tankW) {
      speed.x *= -1;
    }
    if (ay < tankY || ay + aw > height - floorH) {
      speed.y *= -1;
    }
  }

  void move() {
    hit();
    ax += speed.x * 2;
    ay += speed.y * 3;
  }
}
