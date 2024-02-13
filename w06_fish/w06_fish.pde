int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;
int fish = 1;
int turtle = 2;

Tank t;

void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.display();
  t.moveAnimals();
}

void mouseClicked() {
  t.addAnimal(mouseX, mouseY);
}

void keyPressed() {
  if (key == 'f') {
    t.type = 1;
  }
  if (key == 't') {
    t.type = 2;
  }
}
