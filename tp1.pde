 PFont font;
 PImage foto;
 PImage foto2;
void setup(){
 size(400,400);
 
 font = loadFont ("FightThis-48.vlw");
 
 
 foto =loadImage ("Edward.jpg");
 foto2 =loadImage ("helena.jpg");
 
 textAlign(CENTER, CENTER);
 fill(255);
}
void draw(){ 
  if(frameCount <258){
 background(#0A3E7C);
  }
  if(frameCount >259){
 background(#155A50);
  }
  if(frameCount >755){
 background(#154B5A);
  }    
  if(frameCount >1175){
 background(#151C5A);
  }
  if(frameCount >1430){
 background(#155A41);
  }  
  if(frameCount >1910){
 background(#1E155A);
  }  
  if(frameCount >2325){
 background(0);
  } 

  
 //PANTALLA 1: TITULO
 textFont (font);
  textSize(60);
 text("FIGHT", 195, 190-frameCount);
 textSize(60);
 text("CLUB", 200, 240-frameCount);

 //PANTALLA 2: PROTAGONISTA
 textFont (font);
 textSize(35);
 text("STARRING", 200, (505-frameCount)*1.5);
 textFont (font);
 text("EDWARD", 200, (535-frameCount)*1.5);
 text("NORTON", 200,(560-frameCount)*1.5);
 textFont (font);
 textSize(20);
 text("as Tyler Durden", 200, (585-frameCount)*1.5);
 image (foto,0,(595-frameCount)*1.5);
 
 //PANTALLA 3: PERSONAJE SECUNDARIO 
 textFont (font);
 text("HELENA BONHAM CARTER", 200,(980-frameCount)*1.5);
 textFont (font);
 textSize(15);
 text("as Marla Singer", 200,(1000-frameCount)*1.5);
 image (foto2,0,(1010-frameCount)*1.5);

 //PANTALLA 4: MUSICA
 textFont (font);
 textSize(30);
 text("MUSIC BY", 200, (1395-frameCount)*1.5);
 textFont (font);
 text("Dust Brothers", 200, (1425-frameCount)*1.5);
 
 
 //PANTALLA 5: DIRECCION
 textSize(5);
 textFont (font);
 text("A FILM BY", 200,1800-frameCount);
 textFont (font);
 textSize(55);
 text("David", 200, 1845-frameCount);
 text("Fincher", 200, 1890-frameCount);
 
 //PANTALLA 6: THE END
 textFont (font);
 textSize(80);
 text("THE END", 200, 2300-frameCount);
 
 println(frameCount);
}
