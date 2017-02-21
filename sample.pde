/* 画面サイズ */
int sizeX = 600;
int sizeY = 200;

circle circle1 = new circle(0.0, 0.0, 3.0, 1.5);
circle circle2 = new circle(0.0, 0.0, 2.5, 1.5);
circle circle3 = new circle(0.0, 0.0, 2.0, 1.5);
circle circle4 = new circle(0.0, 0.0, 1.5, 1.5);

void setup() {
  size(600, 200);
  background(255, 255, 255); // 背景を白にする
  noStroke(); // 図形の線を描画しない
  fill(46, 139, 87, 100); // 図形を緑色にする
}

void draw() {
  circle1.display();
  circle2.display();
  circle3.display();
  circle4.display();
}

