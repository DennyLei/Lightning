int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  size(300,300);
  background(255,255,255);
  strokeWeight(3);
}

void draw()
{
stroke((int)(Math.random()*9));
while(endX<=300){
endX = startX + (int)(Math.random()*10); 
endY = startY + (int)(Math.random()*18)-9;
line(startX,startY,endX,endY);
if(endX == 150)

startX = endX;
startY = endY;
}
}
void mousePressed() {
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
