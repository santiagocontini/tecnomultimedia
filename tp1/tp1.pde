boolean estoyDentroDelRect = true;
float x, y, ancho, alto;
int Estado;
int marcaTiempo;
PFont miFuentePorInterfaz;
PImage Jirafa;
PImage Koala;
PImage Cerdo;



void setup() {
  size( 640, 480 );
  
 Jirafa = loadImage("Jirafa.jpg");
 Koala = loadImage("Koala.jepg");
 Cerdo = loadImage("Cerdo.jpg");

  miFuentePorInterfaz = loadFont("Barlow-ExtraBoldItalic-48.vlw");
  x = 240;
  y = 320;
  ancho = 150;
  alto = 50;
  
  Estado = 0;
}

void draw() {
  background (200,50,60);

  
  estoyDentroDelRect = ( mouseX > x ) && ( mouseX < x+ancho ) && ( mouseY > y) && ( mouseY < y+alto);
  

  //estado del Mouse en Boton
  if ( estoyDentroDelRect ) {
    fill( 100 );
  } else {
    fill( 200 );
  }
  stroke(10, 10, 10);
  rect( x, y, ancho, alto );

  //debug
  stroke( 200, 0, 0 );
  line( mouseX, 0, mouseX, height );
  line( 0, mouseY, width, mouseY );
}

int diferenciaT = millis() - marcaTiempo;
  
//MAQUINA DE ESTADOS
  if (Estado == 0) {
  textSize( 24 );
  textFont( miFuentePorInterfaz );
    
  text( "Curiosidades acerca de Animales", 320, 100 );
}
    
  if(Estado == 1){
    image ( Jirafa, 320, 240);
    text(  "La jirafa duerme tan solo 7 minutos por día y lo hace de pie", 320 , 100);
     if( millis() >= 10000){
     Estado =2;
     marcaTiempo= millis();
     }
  }
     
     
  else if (Estado == 2){
    image ( Koala, 320, 240);
    text(  "El Koala duerme 22 horas al día, es el animal mas dormilón", 320 , 100);
    if (diferenciaT >= 20000 ){
      Estado =3;
      marcaTiempo = millis();
     }
     
  }
  else if (Estado == 3){
    image ( Cerdo, 320, 240);
    text(  "A los cerdos les es físicamente imposible mirar al cielo", 320 , 100);
    if (diferenciaT >= 30000 ){
      Estado =4;
      marcaTiempo = millis();
  }
  else if (Estado == 4){
    text( "si quieres volver a ver estas curiosidades, presiona el boton", 320 , 100);
    
    
  }

void mousePressed() {
  
  if ( ( mouseX > x ) && ( mouseX < x+ancho ) && ( mouseY > y) && ( mouseY < y+alto) ) {
    Estado = 1;
  }
}
