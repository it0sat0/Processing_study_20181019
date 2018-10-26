//手を挙げ、腰を振って踊っている謎の生物。のつもりです。
//sinの振動を使い、腰を振っているのを表現しました。踊っているので、背景はクラブっぽくしたつもりです。チカチカしたらごめんなさい。

float x = 15;
int y= 170;
float i = 20;
float s =0;
float j;
float t;
float w;

void setup(){
  size(300, 250);
}

void draw(){
  background(random(100,200),random(100,200),random(100,200));
  noStroke();
  
  t = random(150);
  fill(random(255), random(255), random(255));
  ellipse(random(width), random(height), t, t);
  
  s += 0.1;
  x = i*sin(s);
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
  w ++;
}