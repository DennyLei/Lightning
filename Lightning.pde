import gifAnimation.*;

Gif myGif;

int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

int startX2 = (int)(Math.random()*200);
int startY2 = 0;
int endX2 = (int)(Math.random()*200);
int endY2 = 0;

int count = 2;

void setup() {
  size(300, 300);
  background(0);
  strokeWeight(3);
  myGif = new Gif(this, "Shazam.gif");
  myGif.loop();  // continuously loops the gif
}

void draw() {
  stroke(255);
  endX = startX + (int)(Math.random()*18)-9; 
  endY = startY + (int)(Math.random()*10);
  endX2 = startX2 + (int)(Math.random()*18)-9; 
  endY2 = startY2 + (int)(Math.random()*10);

  line(startX, startY, endX, endY);
  line(startX2, startY2, endX2, endY2);

  startX = endX;
  startY = endY;
  startX2 = endX2;
  startY2 = endY2;
  if (count >= 100) {
    image(myGif, 0, 0, width, height);
  }
}

void mousePressed() {
  fill(0, 0, 0, 100);
  rect(0, 0, 300, 300);
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
  startX2 = (int)(Math.random()*200);
  startY2 = 0;
  endX2 = (int)(Math.random()*200);
  endY2 = 0;
  count += 5;
}
