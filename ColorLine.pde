Circle circle1;
Circle circle2;
Circle circle3;
Circle circle4;

Circle circle5;
Circle circle6;
Circle circle7;
Circle circle8;

void setup() {
  size(600, 200);
  background(255, 255, 255); // 背景を白にする
  noStroke(); // 図形の線を描画しない
  fill(46, 139, 87, 100); // 図形を緑色にする

  circle1 = new Circle(0.0, 0.0, 3.0, 1.5);
  circle2 = new Circle(0.0, 0.0, 2.5, 1.5);
  circle3 = new Circle(0.0, 0.0, 2.0, 1.5);
  circle4 = new Circle(0.0, 0.0, 1.5, 1.5);

  circle5 = new Circle(width - 1, 0.0, 3.0, 1.5);
  circle6 = new Circle(width - 1, 0.0, 2.5, 1.5);
  circle7 = new Circle(width - 1, 0.0, 2.0, 1.5);
  circle8 = new Circle(width - 1, 0.0, 1.5, 1.5);
}

void draw() {
  circle1.display();
  circle2.display();
  circle3.display();
  circle4.display();

  circle5.display();
  circle6.display();
  circle7.display();
  circle8.display();
}

