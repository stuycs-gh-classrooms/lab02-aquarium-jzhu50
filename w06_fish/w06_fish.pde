int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;
int fish = 1;
int turtle = 2;
int crab = 3;
int shellfish = 4;

Tank t;

void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH); //intializes and empties tank
  t.display();
}//setup


void draw() {
  background(150);
  t.display();
  t.moveAnimals();
}


void keyPressed() {
  if (key == '1') {
    t.type = 1;
  }
  if (key == '2') {
    t.type = 2;
  }
  if (key == '3') {
    t.type = 3;
  }
  if (key == '4') {
    t.type = 4;
  }
  t.addAnimal(mouseX,mouseY);
} //matches number keys with different animals
