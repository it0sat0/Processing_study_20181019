//前回までのものがあまりにもチカチカしていたり、動きが激しかったため少し変更しました。
//かなり目に優しくなりました。

int b, c, d, e;
float x = 0;
float k = 30;
float i = 30;
float h = 20;
float s = 0;
float r = 0;
float j;
float t;
float z;
int a = 0;
int n = 15;
float[] w, y, vx, vy;

void drawChar(float w, float y) {
  fill(156, 167, 226);
  ellipse(x+w, y-40, 65, 100);
  ellipse(x-30+w, y-100, 5, 40);
  ellipse(x+30+w, y-100, 5, 40);
  ellipse(w, y, 70, 70);
  ellipse(10+w, y+40, 5, 30);
  ellipse(-10+w, y+40, 5, 30);

  fill(0);
  ellipse(x-15+w, y-60, 10, 10);
  ellipse(x+15+w, y-60, 10, 10);

  fill(242, 202, 170);
  ellipse(x+w, y-45, 20, 15);
}

void setup() {
  size(600, 600);
  w = new float[n];
  y = new float[n];
  vx = new float[n];
  vy = new float[n];
  for (int f = 0; f < n; f ++) {
    float angle = random(360);
    w[f] = random(width-100)+50;
    y[f] = random(height);
    vx[f] = 2*cos(2*PI/360*angle);
    vy[f] = 2*sin(2*PI/360*angle);
  }
}

void draw() {
  background(255);
  noStroke();

  t = random(150);

  s += 0.1;
  x = i*sin(s);
  for (int f = 0; f < n; f++) {
    drawChar(w[f], y[f]);
    w[f] += vx[f];
    y[f] += vy[f];
    if (w[f] <= 30 || w[f] >= width-50) {
      vx[f] = -vx[f];
    }
    if (y[f] <=120 || y[f] >= height-50) {
      vy[f] = -vy[f];
    }
  }
}