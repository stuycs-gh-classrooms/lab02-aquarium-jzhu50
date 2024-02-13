class Tank {
  ArrayList<Animal> a;
  int tx, ty, tw, th, flh;
  int type;

  Tank(int x, int y, int w, int h, int fh) {
    tx = x;
    ty = y;
    tw = w;
    th = h;
    flh = fh;
    type = 0;
    a = new ArrayList<Animal>();
  }

  void display() {
    noStroke();
    fill(0, 255, 255);
    rect(tx, ty, tw, th);
    fill(#c2b280);
    rect(tx, height-flh, tw, flh);
    for (int i=0; i<a.size(); i++) {
      if (a.get(i).isWithin()) {
        a.get(i).display();
      }
    }
  }

  void addAnimal(int x, int y) {
    if (type == 1) {
      a.add(new Fish(x, y, 25, 10));
    }
    if (type == 2) {
      a.add(new Turtle(x, y, 25, 15));
    }
  }

  void moveAnimals() {
    for (int i=0; i<a.size(); i++) {
      a.get(i).move();
    }
  }
}
