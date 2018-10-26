//手を挙げ、腰を振って踊っている謎の生物。のつもりです。
//sinの振動を使い、腰を振っているのを表現しました。踊っているので、背景はクラブっぽくしたつもりです。チカチカしたらごめんなさい。

float x = 15;
float k = 30;
int y= 170;
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

void setup(){
  size(300, 250);
}

void mousePressed(){
  jump = true;
}

void draw(){
  background(random(100,200),random(100,200),random(100,200));
  noStroke();
  
  t = random(150);
  fill(random(255), random(255), random(255));
  ellipse(random(width), random(height), t, t);
  
  s += 0.1;
  x = i*sin(s);
  if(jump == true){
    if(r <= 5){
      r += 0.2;
      k = -h*sin(r);
      }else{
        r = 0;
        jump = false;
      }
  }
    
  fill(156, 167, 226);
  ellipse(x+w, y-40+k, 65, 100);
  ellipse(x-30+w, y-100+k, 5, 40);
  ellipse(x+30+w, y-100+k, 5, 40);
  ellipse(w, y+k, 70, 70);
  ellipse(10+w, y+40+k, 5, 30);
  ellipse(-10+w, y+40+k, 5, 30);
  
  fill(0);
  ellipse(x-15+w, y-60+k, 10, 10);
  ellipse(x+15+w, y-60+k, 10, 10);
  
  fill(242, 202, 170);
  ellipse(x+w, y-45+k, 20, 15);
  
  if(0 >= w || w >= 300){
    vx = -vx;
  }
  w += vx;
}