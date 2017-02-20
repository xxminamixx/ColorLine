/* 円の初期配置 */
float ellipseX = 0;
float ellipseY = 0;

/* 円の移動量 */
float incrementX = 3.0;
float incrementY = 1.5;

/* 画面サイズ */
int sizeX = 600;
int sizeY = 200;

void setup() {
  size(600, 200);
  background(255, 255, 255); // 背景を白にする
  noStroke(); // 図形の線を描画しない
  fill(46, 139, 87); // 図形を緑色にする
}

void draw() {
  ellipse(ellipseX, ellipseY, 20, 20);
  move();
  reflection();
}

/* 円を移動させる */
void move() {
  ellipseX += incrementX;
  ellipseY += incrementY;
}

/* 円を反射させる */
void reflection() {
  if ( ellipseX >= width || ellipseX <= 0 ) {
    incrementX *= -1;
    colorChange();
  }

  if ( ellipseY >= height || ellipseY <= 0 ) {
    incrementY *= -1;
    colorChange();
  }
}

/* 色を変える */
void colorChange() {
  fill(random(0, 255),random(0, 255),random(0, 255));
}

/* クリックした時の処理 */
void mouseClicked() {
  colorChange();
}