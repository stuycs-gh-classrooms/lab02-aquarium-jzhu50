class Shellfish extends Animal {

  Shellfish(int x, int y, int w, int h) {
    super(x, y, w, h);
    health = 20;
    speed = new PVector(int(random(1, 10)), pow(-1, int(random(2)))*int(random(1, 3)));
  }

  void display() {
    fill(#B7410E);
    ellipse(ax, ay, aw, ah);
  }

  void hit() {
    if (ax-aw/2 < tankX || ax+aw/2 > tankX + tankW) {
      speed.x *= -1;
    }
    if (ay-ah/2 < tankY || ay+ah/2 > height - floorH) {
      speed.y *= -1;
      health --;
    }
  }

  void move() {
    hit();
    ax += speed.x;
    ay += speed.y;
  }

  boolean isWithin() {
    if (ay-ah/2 < tankY || ay+ah/2 > height - floorH) {
      return false;
    }
    return true;
  }

  void collide(Animal otherAnimal) {}
}
