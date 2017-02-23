public class Circle {
	
	/* 円の初期配置 */
	private float ellipseX;
	private float ellipseY;

	/* 円の移動量 */
	private float incrementX;
	private float incrementY;

	/* 円の大きさ */
	private int ellipseSizeX = 20;
	private int ellipseSizeY = 20;

	/* 自身の色 */
	private color myColor = color(100, 144, 22);

	// イニシャライザ
	public Circle (float x, float y, float x_, float y_){
		ellipseX = x;
		ellipseY = y;
		incrementX = x_;
		incrementY = y_;
	}

	public void display() {
		// 円
		fill(myColor);
		ellipse(ellipseX, ellipseY, ellipseSizeX, ellipseSizeY);
		move();
		reflection();
	}

	/* 円を移動させる */
	private void move() {
		ellipseX += incrementX;
 		ellipseY += incrementY;
	}

	/* 円を反射させる */
	private void reflection() {
		if ( ellipseX >= width || ellipseX <= 0 ) {
			incrementX *= -1;
			colorChange(100);
		}
		if ( ellipseY >= height || ellipseY <= 0 ) {
			incrementY *= -1;
			colorChange(100);
		}
	}
	/* 色を変える */
	private void colorChange(int alpha_) {
  		// fill(random(0, 255),random(0, 255),random(0, 255), alpha_);
  		myColor = color(random(0, 255), random(0, 255), random(0, 100), alpha_);
  		fill(myColor);
	}

	/* クリックした時の処理 */
	private void mouseClicked() {}

}