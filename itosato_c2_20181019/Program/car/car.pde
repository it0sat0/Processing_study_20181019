void setup(){
 size(800, 600); 
}

void draw(){
  background(255, 255, 255);
  noStroke();
  
  
  fill(255, 0, 0);
  rect(200, 300, 400, 100);
  rect(300, 200, 200, 100);

  fill(0, 0, 0);
  ellipse(270, 400, 100, 100);
  ellipse(530, 400, 100, 100);
  
  fill(255, 255, 255);
  ellipse(270, 400, 50, 50);
  ellipse(530, 400, 50, 50);
  
  fill(255, 255, 0);
  triangle(350, 230, 320, 280, 380, 280);
}
