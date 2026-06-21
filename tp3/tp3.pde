//video: https://youtu.be/cGNUZUvLQmI
PImage referencia;

float giro = 0;
float tamBase = 14;

int cantidadAnillos = 6;

void setup() {

  size(800, 400);

  referencia = loadImage("opart.jpeg");
  referencia.resize(400, 400);

  rectMode(CENTER);
}

void draw() {

  background(150);

  //imagen referencia
  image(referencia, 0, 0);

  //lado derecho
  fill(150);
  noStroke();
  rectMode(CORNER);
  rect(400, 0, 400, 400);

  rectMode(CENTER);

  giro += velocidad();

  pushMatrix();

  translate(600, 200);

  dibujarOpArt(cantidadAnillos);

  popMatrix();

  fill(0);
  textSize(14);
  text("A = más anillos", 410, 20);
  text("Z = menos anillos", 410, 40);
  text("R = reiniciar", 410, 60);
}

void dibujarOpArt(int anillos) {

  for (int a = 1; a <= anillos; a++) {

    float radio = a * 28 + 25;

    int cuadrados = a * 14 + 10;

    for (int i = 0; i < cuadrados; i++) {

      float angulo = TWO_PI / cuadrados * i;

      pushMatrix();

      if (a % 2 == 0) {
        rotate(angulo + giro);
      } else {
        rotate(angulo - giro);
      }

      translate(radio, 0);

      rotate(angulo * 1.5);

      dibujarCuadrado(i, a);

      popMatrix();
    }
  }
}

//función con parámetros
void dibujarCuadrado(int i, int anillo) {

  if (mousePressed) {

    fill(random(255), random(255), random(255));

  } else {

    if (i % 2 == 0) {
      fill(220);
      stroke(255);
    } else {
      fill(130);
      stroke(60);
    }
  }

  float d = dist(mouseX, mouseY, 600, 200);

  float tam = calcularTam(d);

  square(0, 0, tam);
}

//función que retorna valor
float calcularTam(float distancia) {

  return map(distancia, 0, 350, 10, 18);
}

//función que retorna valor
float velocidad() {

  return map(mouseX, 400, 800, 0, 0.03);
}

void keyPressed() {

  if (key == 'a' || key == 'A') {

    cantidadAnillos++;

  } else if (key == 'z' || key == 'Z') {

    cantidadAnillos--;

    if (cantidadAnillos < 3) {
      cantidadAnillos = 3;
    }

  } else if (key == 'r' || key == 'R') {

    reiniciar();
  }
}

void reiniciar() {

  cantidadAnillos = 6;

  giro = 0;
}
