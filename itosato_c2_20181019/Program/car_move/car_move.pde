void setup(){
 size(800, 600); 
}

int x=600;

void drawChar(int x){

  fill(255, 0, 0);
  rect(x, 300, 400, 100);
  rect(x+100, 200, 200, 100);

  fill(0, 0, 0);
  ellipse(x+70, 400, 100, 100);
  ellipse(x+330, 400, 100, 100);
  
  fill(255);
  ellipse(x+70, 400, 50, 50);
  ellipse(x+330, 400, 50, 50);
  
  fill(255, 255, 0);
  triangle(x+150, 230, x+120, 280, x+180, 280);
}

void draw(){  
  background(255, 255, 255);
  noStroke();
  
  x -= 10;
  drawChar(x);
  
  if(x <= -600){
    x = 1000; 
  }
}
