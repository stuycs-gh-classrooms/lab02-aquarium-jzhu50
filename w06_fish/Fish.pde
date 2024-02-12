class Fish extends Animal {

  Fish(int x, int y, int w, int h) {
    super(x, y, w, h);
    speed = new PVector(int(random(1, 10)), int(random(1, 10)));
  }

  void display() {
    fill(#ff8c69);
    square(ax, ay, aw);
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
    ax += speed.x * 3;
    ay += speed.y * 2;
  }
}
