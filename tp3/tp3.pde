/*
TP N°2 
Alumno: Tomas Medina N° de legajo:119088/9
Comision: 3
Link del video: https://youtu.be/QoOwHhgmobU 
*/

PImage obra;

int cantX;
int cantY;

float r1;
float r2;
float r3;
float circulo1;
float circulo2;
float circulo3;
boolean resetCuadrados = false;

void setup() {

  obra = loadImage("data/obra.jpeg");
  cantX = 14; 
  cantY = 8;
 
  size(800, 400);
  noLoop();
  
  // EMPEZAR CON CIRCULOS BLANCOS
  circulo1 = 255;
  circulo2 = 255;
  circulo3 = 255;
  
  // EMPEZAR CON CUADRADOS NEGROS
  r1 = 0;
  r2 = 0;
  r3 = 0;
}

void draw() {
  // FONDO
  background(145); 

  // OBRA
  for (int i = 0; i < cantX; i++) {
    for (int j = 0; j < cantY; j++) {
      float x = 376 + i * 57;
      float y = j * 57;
      fill(0); 
      rect(x, y, 40, 40);
      
      // COLOR CUADRADOS
      if (resetCuadrados) { 
        fill(0);
      }
      else if(dist(mouseX, mouseY, x + 20, y + 20) < 100) {
        r1 = random(255);
        r2 = random(255);
        r3 = random(255);
        fill(r1, r2, r3);
        rect(x, y, 40, 40);
      }

      // CIRCULOS
      fill(circulo1, circulo2, circulo3);
      ellipseMode(CENTER);
      noStroke();
      ellipse(mouseX - 400 + i * 57, 50 + j * 57, 22, 22);
    }
  }

// IMAGEN OBRA
    image( obra, 0, 0, 400, 400);

}

void mousePressed() {
  cambiarColorDeCirculos(); 
  redraw();
}

void mouseMoved() {
  redraw(); 
}

void cambiarColorDeCirculos() {
  circulo1 = random(255);
  circulo2 = random(255);
  circulo3 = random(255);
}
// FUNCION PARA VOLVER LOS CIRCULOS BLANCOS
void resetCirculos() {
  circulo1 = 255;
  circulo2 = 255;
  circulo3 = 255;
  redraw();
}

// FUNCION PARA VOLVER LOS CUADRADOS A NEGROS
void resetCuadrados() {
  
  resetCuadrados = true;
  redraw();
  
}

// REINICIAR
void keyPressed() {
  if (key == 'r' || key == 'R') {
    resetCirculos(); 
    resetCuadrados();
    
  }
}
