Formita figurita;
  
void setup() {
  size (680, 680);
  figurita = new Formita(color(11, 57, 84), 340, 340);
}

void draw() {
  figurita.moves();
  figurita.display();
}


class Formita {
  color c;
  float xpos;
  float ypos;
  color back = color(245);

  Formita (color tempC, float tempXpos, float tempYpos) {
    c=tempC;
    xpos=tempXpos;
    ypos=tempYpos;
  }

  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, 20, 10);
  }
  
  void moves() {
    background (back);
    if ((keyPressed == true) && (key == 'w')) {
      if (ypos<=0) {
        ypos=0;
        back = color(255, 233, 0);
      } else {
        ypos -= 3;
      }
    }

    if ((keyPressed == true) && (key == 'a')) {
      if (xpos<=0) {
        xpos=0;
        back = color(127, 0, 255);
      } else {
        xpos -= 3;
      }
    }
    
    if ((keyPressed == true) && (key == 's')) {
      if (ypos>=height) {
        ypos=height;
        back = color(128, 64, 8);
      } else {
        ypos += 3;
      }
    }

    if ((keyPressed == true) && (key == 'd')) {
      if (xpos>=width) {
        xpos=width;
        back = color(255, 0, 128);
      } else {
        xpos += 3;
      }
    }
  }
}
