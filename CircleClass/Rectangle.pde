class Square {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float size;

  Square(float x, float y, float xSpeed, float ySpeed, float size) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.size = size;
  }

  void move() {
    x += xSpeed;
    if (x <= size/2 || x >= width-size/2) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y <= size/2 || y >= height-size/2) {
      ySpeed *= -1;
    }
  }

  void display() {
    rect(x, y, size, size);
  }
}
