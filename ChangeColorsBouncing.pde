
int xLeft;
int xLeftWrap;
int leftWidth;
double yLeft;
int leftAmplitude;
double leftCount;

int xRight; 
int widthRight;
double yRight;
int rightAmplitude;
double rightCount;

int colour = 0;

void setup(){
  
  size(200, 200);
  noStroke();
  xLeft = 105;
  xLeftWrap = 200;
  leftWidth = 70;
  yLeft = 200;
  leftAmplitude = 100;
  leftCount = 23;
  
  xRight = 30; 
  widthRight = 0;
  yRight = 40;
  
  
  leftAmplitude = 70;
  rightAmplitude = 100;
  
  leftCount = 0; 
  rightCount = 80;
  
  colorMode (HSB);
}

void draw(){ 
  background (255);
    leftCount += .1;
    yLeft = 70 + leftAmplitude * (double)sin((float)leftCount);
    
    
    fill(color(colour, 255, 255)); 
      colour++;
      if(colour >= 255) colour = 0;
    if(xLeft-- < -70){
      xLeftWrap = 200; 
      xLeft = 130;
    }
  if(xLeft < 0)
    rect(xLeftWrap--, (int)yLeft, 70, 50);
   rect(xLeft, (int)yLeft, 70, 50);



  rightCount += .1;
  yRight = 30+ rightAmplitude * (double)sin((float)rightCount);
  

    fill(colour, 255, 255);
    rect(xRight, (int)yRight, 60, 40);
    if(xRight++ > 199){
      xRight = 0; 
      widthRight = 0;
    }
  if (xRight > 140){
    rect(0, (int)yRight, widthRight++, 40);
  }

}
