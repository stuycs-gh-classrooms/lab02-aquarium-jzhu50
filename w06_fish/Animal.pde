class Animal {

  int ax, ay, aw, ah;
  int health;
  PVector speed;

  Animal(int x, int y, int w, int h) {
    this.ax = x;
    this.ay = y;
    this.aw = w;
    this.ah = h;
    health = 5;
    speed = new PVector(int(random(1, 20)), int(random(1, 20)));
  }

  void display() {
    fill(255, 255, 0);
    rect(ax, ay, aw, ah);
  }

  void hit() {
    if (ax < tankX || ax > tankX + tankW - aw) {
      speed.x *= -1;
      health --;
    }
    if (ay < tankY || ay > height - ah) {
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
    if (ax < tankX || ax > tankX + tankW - aw || ay < tankY || ay > height - ah) {
      return false;
    }
    return true;
  }

  void collide(Animal otherAnimal) {
    if (this.ax < otherAnimal.ax + otherAnimal.aw &&
      this.ax + this.aw > otherAnimal.ax &&
      this.ay < otherAnimal.ay + otherAnimal.ah &&
      this.ay + this.ah > otherAnimal.ay) {
      this.health--;
      otherAnimal.health--;
    }
  }
}
