PImage cuadro;
int d;
void setup(){
  size(800, 400);
  
  cuadro=loadImage("arte cubista foto.jpg");
  d=width/2;
}
void draw(){
  background(0);
  
  image(cuadro, 0, 0, 400, 400);
  
  //fondo de base amarillo
  noStroke();
  fill(255, 204, 0);
  rect(d, 0, 400, 200);
  
  //rayos del sol
  noStroke();
  fill(255, 230, 120); //amarillo más claro
  triangle(d+200, 200, d+160, 0, d+200, 0);
  triangle(d+200, 200, d+200, 0, d+240, 0);
  stroke(120);
  strokeWeight(2);
  //izquierda
  line(d+200, 200, d+60, 0);
  line(d+200, 200, d+120, 0);
  //centro
  line(d+200, 200, d+200, 0);
  //derecha
  line(d+200, 200, d+280, 0);
  line(d+200, 200, d+340, 0);
  
  
  //el sol
  fill(255, 80, 0);
  arc(d+200, 250, 260, 260, PI, TWO_PI);
  
  //olas
  fill(0, 0, 120);
  rect(d, 200, 400, 200); //fondo azul
  
  fill(0, 0, 145);
  ellipse(d+130, 230, 260, 90);
  
  fill(0, 120, 200);
  ellipse(d+300, 240, 260, 90);
 
  fill(180, 220, 255);
  ellipse(d+200, 280, 320, 100);
  //
  fill(0, 120, 200);
  ellipse(d+130, 300, 260, 90);
 
  fill(0, 0, 145);
  ellipse(d+300, 310, 260, 90);
  
  fill(200, 230, 255);
  ellipse(d+200, 340, 300, 90);
  //
  fill(0, 80, 160);
  ellipse(d+130, 360, 260, 90);
 
  fill(0, 150, 200);
  ellipse(d+300, 380, 260, 80);
  
  fill(200, 230, 255);
  ellipse(d+200, 420, 300, 90);
  
  //marco
  noFill();
  stroke(120, 140, 90);
  strokeWeight(12);
  rect(d, 0, 400, 400);
  //borde interno
  strokeWeight(3);
  stroke(120);
  rect(d+10, 10, 380, 380);
  
  stroke(100, 120, 80);
  line(d+5, 0, d+5, 400);
  line(d+395, 0, d+395, 400);
}

void mousePressed(){
  println(mouseX, mouseY);
}
