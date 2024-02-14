class Crab extends Animal {

  int k;
  int a;

  Crab(int x, int y, int w, int h) {
    super(x, y, w, h);
    health = 50;
    k = tankH - int(random(-(floorH-50)/2+h/2, (floorH-50)/2-h/2));
    a = int(pow(-1, int(random(2)))); //determines the direction: pos & neg
  }

  void display() {
    fill(255, 0, 0);
    circle(ax, ay, aw);
  }

  void hit() {
    if (ax-aw/2 < tankX || ax+aw/2 > tankX + tankW) {
      speed.x *= -1;
    }
    ay = int(25*a*(sin(radians(ax))))+k;
  }

  void move() {
    hit();
    ax += speed.x;
  }

  void collide(Crab other) {
    if (dist(this.ax, this.ay, other.ax, other.ay) <= aw/2) {
      health --;
    }
  }
}
