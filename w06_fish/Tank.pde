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
    rect(tx, ty, tw, th); //tank
    fill(#c2b280);
    rect(tx, height-flh, tw, flh); //water
    displayAll();
  }

  void addAnimal(int x, int y) {
    if (type == 1) {
      a.add(new Fish(x, y, 25, 10));
    }
    if (type == 2) {
      a.add(new Turtle(x, y, 25, 15));
    }
    if (type == 3) {
      a.add(new Crab(x, y, 25, 25));
    }
    if (type == 4) {
      a.add(new Shellfish(x, y, 20, 25));
    }
  }

  void moveAnimals() {
    for (int i=0; i<a.size(); i++) {
      if (a.get(i).health == 0) {
        a.remove(i);
      } else {
        a.get(i).move();
      }
    }
  }

  void displayAll() {
    for (int i = 0; i < a.size(); i++) {
      if (a.get(i).isWithin()) {
        if (i + 1 < a.size()) { // Check if there's a next element
          a.get(i).collide(a.get(i+1));
        }
        if (a.get(i).health > 0) {
          a.get(i).display();
        }
      }
    }
  } //displays all the animals
}
