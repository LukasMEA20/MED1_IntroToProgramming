Circle circle;
Square square;

float xPosition;
float yPosition;
float minSpeed = -3;
float maxSpeed = 3;
float xSpeed = random(minSpeed, maxSpeed);
float ySpeed = random(minSpeed, maxSpeed);
float minRadius = 10;
float maxRadius = 30;
float size = random(minRadius, maxRadius);
boolean switcher = true;

void setup() {
  size(300, 300);
  rectMode(CENTER);
  xPosition = random(width);
  yPosition = random(height);
  square = new Square(xPosition, yPosition, xSpeed, ySpeed, size);
  circle = new Circle(xPosition, yPosition, xSpeed, ySpeed, size);
}

void draw() {
  background(200);

  circle.move();
  square.move();
  if (switcher) {
    circle.display();
  } else if (!switcher) {
    square.display();
  }
}

void mouseClicked() {
  if (switcher) {
    switcher = false;
  } else if (!switcher) {
    switcher = true;
  }
}
