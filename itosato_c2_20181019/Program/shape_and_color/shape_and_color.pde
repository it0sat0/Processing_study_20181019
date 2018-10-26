void setup(){
  size(800, 600); 
}

void draw(){
  background(255, 255, 255);
  noStroke();
  
  
  fill(0, 0, 0);
  
  
  ellipse(150, 200, 200, 200);
  
  rect(300, 100, 200, 200);
  
  triangle(650, 100, 550, 300, 750, 300);
  
   
  fill(255, 0, 0);
  ellipse(150, 450, 200, 200);
  
  fill(0, 255, 0);
  rect(300, 350, 200, 200);
  
  fill(0, 0, 255);
  triangle(650, 350, 550, 550, 750, 550);
  
}
