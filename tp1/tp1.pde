PImage bellota;

void setup()
{
  
  size(800,400);
 bellota = loadImage("data/bellota.jpeg");
 
}

void draw()
{
  
  background(246);
  image(bellota,0,0,400,400);
  //relleno pelos costados
   strokeWeight(2);
   noFill();
   bezier(473,162,450,158,450,158,426,146);
   fill(0);
   bezier(426,146,426,253,448,283,485,308);
   noFill();
   bezier(715,162,743,158,743,158,762,146);
   fill(0);
   bezier(762,146,760,252,736,289,703,308);
   ///IZQUIERDA
   beginShape();
   vertex(473,162);
   vertex(449,157);
   vertex(426,148);
   vertex(448,208);
   vertex(473,162);
   endShape();
   ///DERECHA
   beginShape();
   vertex(715,162);
   vertex(741,158);
   vertex(760,149);
   vertex(740,208);
   vertex(715,162);
   endShape();
   
   //relleno pelo arriba
   ///pelos arriba
   beginShape();
   vertex(637,116);
   vertex(637,94);
   vertex(645,104);
   vertex(650,89);
   vertex(665,126);
   endShape();
   beginShape();
  
  //cabeza
  strokeWeight(2);
   fill(255,220,198);
   ellipse(594,230,290,237);
   
   //ojo izquierdo
   strokeWeight(2);
   fill(255);
   ellipse(503,224,110,145);
   noStroke();
   fill(135,202,122);
   ellipse(515,223,85,120);
   stroke(0);
   fill(0);
   ellipse(522,223,70,80);
   noStroke();
   fill(255);
   ellipse(530,215,30,30);
   stroke(0);
   
   //ojo derecho
      fill(255);
   ellipse(685,224,110,145);
   noStroke();
   fill(135,202,122);
   ellipse(674,223,85,120);
   stroke(0);
   fill(0);
   ellipse(666,223,70,80);
   noStroke();
   fill(255);
   ellipse(658,215,30,30);
   
   //pelo arriba
   stroke(0);
   strokeWeight(2);
   fill(0);
   bezier(463,175,522,195,522,195,582,200); 
   line(582,200,593,165);
   line(593,165,602,200);
   bezier(602,200,674,199,674,199,725,175);
   strokeWeight(1);
   line(637,116,637,94);
   line(637,94,645,104);
   line(645,104,650,89);
   line(650,89,665,126);
   fill(0);
   bezier(473,165,536,91,655,91,715,165);
   ///relleno
   beginShape();
   vertex(473,165);
   vertex(593,165);
   vertex(582,200);
   vertex(463,175);
   vertex(473,165);
   endShape();
   beginShape();
   vertex(593,165);
   vertex(715,165);
   vertex(735,175);
   vertex(602,200);
   vertex(593,165);
   endShape();
   
   //cejas
   ///izquierda
   strokeWeight(3);
   line(522,193,578,240);
   line(578,240,578,222);
   ///relleno
   noStroke();
   fill(255,220,198);
   beginShape();
   vertex(522,193);
   vertex(578,240);
   vertex(577,203);
   vertex(522,193);
   endShape();
   ///derecha
   stroke(0);
   strokeWeight(3);
   fill(0);
   line(667,193,606,240);
   line(606,240,606,222);
   ///relleno
   noStroke();
   fill(255,220,198);
   beginShape();
   vertex(667,193);
   vertex(606,240);
   vertex(610,203);
   vertex(667,193);
   endShape();
   
   //boca
   stroke(0);
   strokeWeight(2);
   noFill();  
   bezier(584,300,596,305,610,301,614,282);
   
   stroke(0);
 
}

   
