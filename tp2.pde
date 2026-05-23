PImage portadaImg;
PImage img1;
PImage img2;
PImage img3;
PImage img4;

PFont fuente;

int pantalla = 0;
int tiempo;

float textoX;

void setup(){

  size(640,480);

  //imágenes
  portadaImg = loadImage("portada.jpg");

  img1 = loadImage("jane.jpg");

  img2 = loadImage("equipo.jpg");

  img3 = loadImage("redjohn.jpg");

  img4 = loadImage("final.jpg");

  //fuente
  fuente = createFont("Arial",48);

  textFont(fuente);

  tiempo = millis();

  textoX = -300;

}

void draw(){

  background(0);

  //cambio automático
  if(millis() - tiempo > 5000){

    pantalla++;

    tiempo = millis();

    textoX = -300;

  }

  //límite
  if(pantalla > 5){

    pantalla = 5;

  }

  //pantallas
  if(pantalla == 0){

    portada();

  }

  if(pantalla == 1){

    escena1();

  }

  if(pantalla == 2){

    escena2();

  }

  if(pantalla == 3){

    escena3();

  }

  if(pantalla == 4){

    escena4();

  }

  if(pantalla == 5){

    finalPantalla();

  }

  //animación texto
  textoX += 2;

}

void portada(){

  image(portadaImg,0,0,640,480);

  fill(255);

  textSize(40);

  text("THE MENTALIST", textoX, 420);

}

void escena1(){

  image(img1,0,0,640,480);

  fill(255);

  textSize(30);

  text("Patrick Jane", textoX, 430);

}

void escena2(){

  image(img2,0,0,640,480);

  fill(255);

  textSize(28);

  text("El equipo del BIC", textoX, 430);

}

void escena3(){

  image(img3,0,0,640,480);

  fill(255,0,0);

  textSize(30);

  text("Red John", textoX, 430);

}

void escena4(){

  image(img4,0,0,640,480);

  fill(255);

  textSize(26);

  text("La cacería llegó a su fin.", textoX, 430);

}

void finalPantalla(){

  background(0);

  fill(255);

  textSize(40);

  text("FIN",260,150);

  //mouse botón
  if(mouseX > 220 && mouseX < 420 &&
     mouseY > 350 && mouseY < 410){

      fill(200);

  }else{

      fill(120);

  }

  //botón
  rect(220,350,200,60);

  fill(0);

  textSize(24);

  text("REINICIAR",245,388);

}

void mousePressed(){

  if(pantalla == 5 &&
     mouseX > 220 && mouseX < 420 &&
     mouseY > 350 && mouseY < 410){

      pantalla = 0;

      tiempo = millis();

      textoX = -300;

  }

}
