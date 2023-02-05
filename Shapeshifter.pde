color c;
int shape;
boolean bg = true;

void setup() {
  size(250, 250);
  rectMode(CENTER);
  shape = 1;
  c = color(random(255), random(255), random(255));
}



void draw() {

  
  if(bg == true){
  background(255);
  }
  else{
  background(100);
  }
  
  stroke(0);
  fill(255);
  rect(width/2, height/2-100, 100, 30);

  fill(0);
  textSize(18);
  text("Background", width/2-45, height/2-95); 

  if (shape > 3) {
    shape = 1;
  } else if (shape < 1) {
    shape = 3;
  }

  fill(c);

  if (shape == 1) {
    rect(width/2, height/2, 100, 100);
  } else if (shape == 2) {
    ellipse(width/2, height/2, 100, 100);
  } else if (shape == 3) {
    triangle(width/2-50, height/2+50, width/2, height/2-50, width/2+50, height/2+50);
  }
}

void keyPressed() {

  if (keyCode == 32) {
    c = color(random(255), random(255), random(255));
  }

  if (keyCode == 39) {
    shape++;
  }
  if (keyCode == 37) {
    shape--;
  }
}

void mousePressed() {
  if(mouseX <= width/2+50 && mouseX >= width/2-50 && mouseY <= height/2-85 && mouseY >= height/2-115){
    if(bg == true){
      bg = false;
    }
    else if(bg == false){
      bg = true;
    }
   
  }
  
}
