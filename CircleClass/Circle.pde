class Circle {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float radius;

  Circle(float x, float y, float xSpeed, float ySpeed, float radius) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.radius = radius;
  }

  void move() {
    x += xSpeed;
    if (x <= radius/2 || x >= width-radius/2) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y <= radius/2 || y >= height-radius/2) {
      ySpeed *= -1;
    }
  }

  void display() {
    ellipse(x, y, radius, radius);
  }
}
