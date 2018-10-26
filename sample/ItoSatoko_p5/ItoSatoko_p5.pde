//前回までのものがあまりにもチカチカしていたり、動きが激しかったため少し変更しました。
//かなり目に優しくなりました。

int b, c, d, e;
float x = 15;
float k = 30;
int y= -50;
float i = 20;
float h = 20;
float s = 0;
float r = 0;
float j;
float t;
float w = 1;
float vx = 1;
float z;
int a = 0;
boolean jump = false;

void drawChar(float w, int y) {

  fill(156, 167, 226);
  ellipse(x+w+e, y+d-40+k, 65, 100);
  ellipse(x-30+w+e, y+d-100+k, 5, 40);
  ellipse(x+30+w+e, y+d-100+k, 5, 40);
  ellipse(w+e, y+d+k, 70, 70);
  ellipse(10+w+e, y+d+40+k, 5, 30);
  ellipse(-10+w+e, y+d+40+k, 5, 30);

  fill(0);
  ellipse(x-15+w+e, y+d-60+k, 10, 10);
  ellipse(x+15+w+e, y+d-60+k, 10, 10);

  fill(242, 202, 170);
  ellipse(x+w+e, y+d-45+k, 20, 15);
}

void setup() {
  size(500, 500);
}

void mousePressed() {
  jump = true;
}

void draw() {
  // background(random(100,200),random(100,200),random(100,200));
  background(255);
  noStroke();

  for (b = 1; b <= 3; b ++) {
    for (c = 1; c <= 4; c ++) {
      t = random(150);
      //  fill(random(255), random(255), random(255));
      //  ellipse(random(width), random(height), t, t);

      s += 0.01;
      x = i*sin(s);
      if (jump == true) {
        if (r <= 5) {
          r += 0.2;
          k = -h*sin(r);
        } else {
          r = 0;
          jump = false;
        }
      }

      drawChar(w+c*100, y+b*150);
      
    }
    c = 0;
  }

  if (-55 >= w || w >= 60) {
    vx = -vx;
  }
  w += vx;
}