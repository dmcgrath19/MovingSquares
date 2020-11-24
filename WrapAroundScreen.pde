int xLeft;
int xLeftWrap;
int leftWidth;

int xRight; 
int widthRight;


void setup(){
  size(200, 200);
  noStroke();
  xLeft = 105;
  xRight = 30; 
  xLeftWrap = 200;
  widthRight = 0;
  leftWidth = 70;
}

void draw(){
  background (255);
  
  fill(200, 160, 200); 
  if(xLeft-- < -70){
    xLeftWrap = 200; 
    xLeft = 130;
  }
  if(xLeft < 0)
    rect(xLeftWrap--, 100, 70, 50);
  
  rect(xLeft, 100, 70, 50);
  
  fill(200, 130, 100);
  if(xRight++ > 199){
    xRight = 0; 
    widthRight = 0;
  }
  if (xRight > 140){
    rect(0, 50, widthRight++, 40);
  }
  
  rect(xRight, 50, 60, 40);
}
