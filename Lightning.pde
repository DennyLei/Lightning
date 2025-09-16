int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  size(300,300);
  background(0,0,0);
  strokeWeight(3);
}

void draw()
{
stroke(255,255,255);
endX = startX + (int)(Math.random()*10); 
endY = startY + (int)(Math.random()*18)-9;
line(startX,startY,endX,endY);
if(endX == 150);
startX = endX;
startY = endY;
}
void mousePressed() {
  fill(0,0,0,100);
  rect(0,0,300,300);
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
