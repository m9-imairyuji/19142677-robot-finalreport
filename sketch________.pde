float angle1=0;

float CX0=0;
float CY0=0;
float CZ0=0;

float X1=10;
float Y1=10;
float Z1=60;

float angle2=0;

float X2=10;
float Y2=40;
float Z2=10;


float X3=10;
float Y3=40;
float Z3=10;

float X4=10;
float Y4=40;
float Z4=10;

float X5=5;
float Y5=40;
float Z5=5;

float X6=5;
float Y6=5;
float Z6=5;

float X7=1;
float Y7=10;
float Z7=3;

float CX7=0;

float angle3=0;
float angle4=0;

float shift4=0;

float color1=255;

float dif=1.0;
void setup() {
  size(1200, 800, P3D);
  frameRate(100);
  
  camera(150,150,100,0,0,0,0,0,-1);
}

void draw(){
  
    background(255);
  
   if(keyPressed){
    if(key == 'X'){
      CX0 = CX0 + dif;
    }
    if(key == 'Y'){
      CY0 = CY0 + dif;
    }
    if(key == 'x'){
      CX0 = CX0 - dif;
    }
    if(key == 'y'){
      CY0 = CY0 - dif;
    }
    if(key == '1'){
      angle1 = angle1 + dif;
    }
    if(key == '!'){
      angle1 = angle1 - dif;
    }
    if(key == '2'){
      angle2 = angle2 + dif;
    }
    if(key == '"'){
      angle2 = angle2 - dif;
    }
    if(key == '3'){
      angle3 = angle3 + dif;
    }
    if(key == '#'){
      angle3 = angle3 - dif;
      
    }
    if(key == '4'){
      angle4 = angle4 + dif;
    }
    if(key == '$'){
      angle4 = angle4 - 2*dif;
      
    }
    if(key == '5'){
      if(shift4<Y3-10){
      shift4 = shift4 + 0.3*dif;
      }
    }
    if(key =='%'){
      if(shift4>0){
        shift4 = shift4 - 0.3*dif;
      }
    }
    if (key == '6'){
      if( CX7 < (X6+X7)/2-1){
        CX7 = CX7 + 0.1*dif;
      }
    }
    if (key == '&'){
      if( CX7 > 0){
        CX7 = CX7 - 0.1*dif;
      }
    }
    if(key == 'r'){
        angle1=0;
        angle2=0;
        angle3=0;
        angle4=0;
        CX0=0;
        CY0=0;
        CZ0=0;
        CX7=0;
        shift4=0;
    }
   }
  pushMatrix();
  camera();
  hint(DISABLE_DEPTH_TEST);
  textSize(10);
  textAlign(LEFT);
  fill(100,120,100);
  text("Push 1 (shift + 1) : Rotate 1st joint", 900, 20);
  text("Push 2 (shift + 2) : Rotate 2nd joint", 900, 40);
  text("Push 3 (shift + 3) : Rotate 3rd joint", 900, 60);
  text("Push 4 (shift + 4) : Rotate 4th joint", 900, 80);
  text("Push 5 (shift + 5) : Stretch ( Shrink ) the arm", 900, 100);
  text("Push 6 (shift + 6) : Hold ( Open ) the hand",900, 120);
  text("Push x (shift + x) : Tranlate the machine in X-axis direction", 900, 160);
  text("Push y (shift + y) : Tranlate the machine in Y-axis direction", 900, 180);
  text("Left mouse click  ( Push r ) to Reset the machine Status", 900, 220);
  hint(ENABLE_DEPTH_TEST);  // 
  popMatrix();
  
  fill(100,120,100);
  translate(CX0,CY0,CZ0);
  box(X1,Y1,Z1);
  
  rotateZ(radians(angle1));
  translate(0,(Y2-Y1)/2,(Z1+Z2)/2);
  fill(100,120,100);
  box(X2,Y2,Z2); 
  
  translate(-(X1+X2)/2, (Y2-Z3)/2, 0);
  rotateX(radians(angle2));
  
  translate(0,(Y3-Z3)/2,0);
  fill(100,120,100);
  box(X3,Y3,Z3);
  
  translate(-(X3+X4)/2,(Y3-Z4)/2,0);
  rotateX(radians(angle3));
  
  translate(0,(Y4-Z3)/2,0);
  fill(100,120,100);
  box(X4,Y4,Z4);
  
  translate(0,shift4,0);
  box(X5,Y5,Z5);
  
  translate(0,(Y5+Y6)/2, 0);
  rotateY(radians(angle4));
  
  box(X6,Y6,Z6);
  
  pushMatrix();
  translate((X6+X7)/2-CX7,Y7/2,0);
  box(X7,Y7,Z7);
  popMatrix();
  translate(-(X6+X7)/2+CX7,Y7/2,0);
  box(X7,Y7,Z7);
}

void mousePressed(){
        angle1=0;
        angle2=0;
        angle3=0;
        angle4=0;
        CX0=0;
        CY0=0;
        CZ0=0;
        CX7=0;
        shift4=0;
    };
