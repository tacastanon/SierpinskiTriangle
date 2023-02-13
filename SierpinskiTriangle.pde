int lenSize = 100;

public void setup() {
  size(600, 600);
}

public void draw() {
  background(#FFCCCC);
  sierpinski(5, 595, lenSize);
}

public void sierpinski(int x, int y, int len) {
  if (len <= 10) {
    triangle(x, y, x + len / 2, y + len, x - len / 2, y + len);
  } else
  {
    sierpinski(x, y, len / 2);
    sierpinski(x + len / 2, y, len / 2);
    sierpinski(x + len / 4, y - len / 2, len / 2);
  }
}

public void keyPressed() {
  if (keyPressed) {
    if (key == 'd') {
      lenSize += 100;
    }
    if (key == 'a') {
      lenSize -= 100;
    }
  }
}
