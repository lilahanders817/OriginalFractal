double move;
int startTime; 
//boolean clicked = false;

void setup() {
  size(600, 600);
  startTime = millis(); 
}

void draw() {
  move = move+0.05;
  background(255, 90, 90);
  fill(255);
  textSize(50);
  textAlign(CENTER);
  text("Be mine,", width/2, 50);
  text("Valentine??", width/2, 580);
  //if (clicked) {
    //fill(255); 
    //background(255, 125, 125); 
 // } 
  //else {
   // fill(255, 0, 0); 
 // }

  fractal(500, move);
  if (isVisible()) {
    noLoop();
  }
}

boolean isVisible() {
  int elapsedTime = millis() - startTime;
  int duration = 10;
  return elapsedTime >= duration;
}

void fractal(double size, double move) {
  if(size <= 1){
    return;
  }
  
  fill(255,0,0);
  //center
  translate(width/2, height/2);
  rotate((float)move-0.5);
  ellipse(0, 0, (float)size, (float)size*4/7);
  //reset to center
  translate(-width/2, -height/2);
  
  fractal(size-10, move*5.5);
}
//void mousePressed() {
 // clicked = true;
//}
