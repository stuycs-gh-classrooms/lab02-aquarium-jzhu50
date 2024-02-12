class Tank {
  int tx, ty, tw, th, flh;
  ArrayList<Animal> a;
  ArrayList<Fish> f;
  ArrayList<Turtle> t;

  Tank(int x, int y, int w, int h, int fh) {
    tx = x;
    ty = y;
    tw = w;
    th = h;
    flh = fh;
    a = new ArrayList<Animal>();
    f = new ArrayList<Fish>();
    t = new ArrayList<Turtle>();
  }

  void display() {
    noStroke();
    fill(0, 255, 255);
    rect(tx, ty, tw, th);
    fill(#c2b280);
    rect(tx, height-flh, tw, flh);
  }

  /*
  void addAnimal(int x, int y) {
   a.add(new Animal(x, y, 50, 25));
   for (int i=0; i<a.size(); i++) {
   a.get(i).display();
   }
   }
   
   void moveAnimals() {
   for (int i=0; i<a.size(); i++) {
   a.get(i).display();
   a.get(i).move();
   }
   }
   */

  void addAnimal(int x, int y) {
    f.add(new Fish(x, y, 50, 25));
    for (int i=0; i<f.size(); i++) {
      f.get(i).display();
    }
    t.add(new Turtle(x, y, 50, 25));
    for (int i=0; i<t.size(); i++) {
      t.get(i).display();
    }
  }

  void moveAnimals() {
    for (int i=0; i<f.size(); i++) {
      f.get(i).display();
      f.get(i).move();
    }
    for (int i=0; i<t.size(); i++) {
      t.get(i).display();
      t.get(i).move();
    }
  }
}
