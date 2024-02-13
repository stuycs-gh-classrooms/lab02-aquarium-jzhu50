class Animal {

  int ax, ay, aw, ah;
  PVector speed;

  Animal(int x, int y, int w, int h) {
    ax = x;
    ay = y;
    aw = w;
    ah = h;
    speed = new PVector(int(random(1, 20)), int(random(1, 20)));
  }

  void display() {
    fill(255, 255, 0);
    rect(ax, ay, aw, ah);
  }

  void hit() {
    if (ax < tankX || ax > tankX + tankW - aw) {
      speed.x *= -1;
    }
    if (ay < tankY || ay > height - ah) {
      speed.y *= -1;
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
  
  void keyPressed() {
    if (key == 'f') {
      
    }
  }
}
