PImage obra;

int cantX;
int cantY;

float r1;
float r2;
float r3;

void setup (){

obra = loadImage("data/obra.jpeg");
cantX = 14 ; 
cantY = 14 ;
 
size(800,400);
}
void draw () {
// FONDO
background(145); 

// OBRA
for (int i=0; i<24; i++) {
 for(int j=0; j<8; j++) {
   fill(255);
  ellipseMode(CENTER);
  noStroke();
 ellipse(mouseX-400+i*57, 50+j*57, 22,22);
 if (mousePressed==true); {

r1 = random(255);
r2 = random(255);
r3 = random(255);
  
}

 r1 = 0;
 r2 = 0;
 r3 = 0;

  fill(r1,r2,r3);
 rect(376+i*57,j*57,40,40);
 }
}




// IMAGEN OBRA
image( obra, 0, 0, 400, 400);

}

void mousePressed() {
  if (mousePressed==true); {
   
  

r1 = random(255);
r2 = random(255);
r3 = random(255);
  
}
}
