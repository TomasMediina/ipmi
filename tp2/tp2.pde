/*
TP N°2 
Alumno: Tomas Medina N° de legajo:119088/9
Comision: 3
*/

PImage fondo1, fondo2, fondo3, fondo4, obra1, obra2, obra3, obra4;

PFont fuente;

int estado;

int contador;

float posX;

float posY;

float tamaño;

float velocidad1;

float velocidad;

String texto1;

String texto2;

String texto3;

void setup() {

  fondo1 = loadImage("data/fondo1.jpeg");
  fondo2 = loadImage("data/fondo2.jpeg");
  fondo3 = loadImage("data/fondo3.jpeg");
  fondo4 = loadImage("data/fondo4.jpeg");

  obra1 = loadImage("data/obra1.jpg");
  obra2 = loadImage("data/obra2.jpg");
  obra3 = loadImage("data/obra3.jpg");
  obra4 = loadImage("data/obra4.jpg");

  fuente = createFont("data/Tox Typewriter.ttf", 32);

  texto1 = "Sistema de control de 900 relés con luces, 3000 metros de cables aproximadamente, 40 placas de control digital, componentes electrónicos, una máquina de escribir con un sistema mecánico de censado, una red inalámbrica y una computadora con un soft dedicado (que realiza el control del sistema en general) con una base de datos donde se guarda todas las acciones de los espectadores (C++ y Arduino), medidas variables.";
  texto2 = "“Lo recuerdo” son las primeras palabras del cuento ficcional “Funes el memorioso” de Borges, que relata haber conocido a Irineo Funes: un joven con una memoria prodigiosa, recordaba con detalle cada preciso instante, cada imagen, cada sensación y podía evocarla sin pasar por alto ningún detalle: “Mi memoria, señor, es como vaciadero de basuras”. Olvidar es parte del proceso de memorizar, a los recuerdos los distorsionamos cada ves que los reconstruimos con las intenciones que le otorgamos con el presente.";
  texto3 = "La particularidad de esta maquina de escribir es que puede recordar. Recuerda las acciones de los espectadores con exactitud. Así como Funes tardaba un día en recordar un día, esta maquina recuerda las acciones de todos los espectadores del día anterior. Trayendo al presente sus recuerdos, incorporando en la matrices de relés la letra presionada al mismo momento que fue presionada exactamente 24 horas antes. Los textos escritos se mezclan: entre los recordados y los presente generando una vinculación entre los espectadores de ayer y de hoy, y estos últimos con los de mañana.";

  estado = 1;
  contador = 0;
  posX = 50.0;
  posY = 480.0;
  velocidad = 1.5;
  velocidad1 = 0.2;
  tamaño = 0.0;

  size(640, 480);
}

void draw() {
  //PANTALLA 1
  if (estado==1) {

    image( fondo1, 0, 0, width, height);
    image( obra1, 100, 50, 450, 300);
    fill(255, 160, 100);
    textFont(fuente);
    textAlign(CENTER);
    textSize(40);
    text("Lo recuerdo", 320, 400);
    textSize(20);
    text("de Leo Nuñez", 320, 420);
    text("Futuro Volátil / Casa Naranja, Córdoba, Argentina. 2018", 320, 470);

    contador++;
    if (contador>=120) {
      estado++;
      contador=0;
    }
  }
  //PANTALLA 2
  else if (estado==2) {
    image (fondo2, 0, 0, width, height);
    image (obra2, 100, 20, 450, 300);
    textFont(fuente);
    textAlign(CENTER);
    textSize(tamaño);
    text(texto1, 60 , 330 , 500, 350);
    }
    tamaño = tamaño + velocidad1;
    if (tamaño>18){
     tamaño = 18;
    }
    contador++;
    if (contador>=200) {
      estado++;
      contador=0;
    }
//PANTALLA 3
  else if (estado==3) {
    image (fondo3, 0, 0, width, height);
    image (obra3, 100, 20, 450, 300);
    textFont(fuente);
    textAlign(CENTER);
    textSize(15);
    text(texto2, posX , posY , 500, 350);
    posY = posY - velocidad;
    contador++;
    if (contador>=200) {
      estado++;
      contador=0; 
    }
    print("posY=" + posX);
    print("contador=" + contador);
    }
//PANTALLA 4
    else if (estado ==4) {
      image (fondo4, 0, 0, width, height);
    image (obra4, 100, 20, 450, 300);
    textFont(fuente);
    textAlign(LEFT);
    textSize(15);
    text(texto3, posX , posY , 500, 350);
    posX = posX + velocidad;
    if (posX>100) {
      posX = 100;
    }
    //BOTON VOLVER
   if ( mouseX>560 && mouseX<560+70 && mouseY >50 && mouseY<50+40 ) {
      fill(255, 160, 100);
    } else {
      fill(200);
    }

    rect( 560, 50, 70, 40);
    fill(0);
    text("VOLVER", 570, 75);
    fill(255, 160, 100);
    }
    }
    
void mousePressed() {
//BOTON VOLVER
 if (estado==4) {
    if (mouseX>560 && mouseX<560+70
      && mouseY >50 && mouseY<50+40) {
      estado = 1;
    }
 }
 else {
    estado++;
    contador = 0;
   }   
}
