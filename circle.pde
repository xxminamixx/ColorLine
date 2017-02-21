public class circle {
	
	/* 円の初期配置 */
	private float ellipseX;
	private float ellipseY;

	/* 円の移動量 */
	private float incrementX;
	private float incrementY;

	private int ellipseSizeX = 5;
	private int ellipseSizeY = 5;

	// イニシャライザ
	public circle (float x, float y, float x_, float y_){
		ellipseX = x;
		ellipseY = y;
		incrementX = x_;
		incrementY = y_;
	}

	public void display() {
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
			colorChange();
		}
		if ( ellipseY >= height || ellipseY <= 0 ) {
			incrementY *= -1;
			colorChange();
		}
	}
	/* 色を変える */
	private void colorChange() {
  		fill(random(0, 255),random(0, 255),random(0, 255), 100);
	}

	/* クリックした時の処理 */
	private void mouseClicked() {
  		colorChange();
	}

}