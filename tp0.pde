PImage imagen;

void setup (){
  size(800,400);
  background(100);
  imagen = loadImage ("Perro.jpg");
  image(imagen,400, 0);
}

void draw (){
  //cabeza
  noStroke();
  fill(200);
  ellipse(200,200,300,350);
  ellipse(200,350,330,330);
  
   //orejas
  triangle(10,130,100,80,80,300);
  
  //ojo izq
  ellipse(100,150,80,80);
  fill(62,35,8);
  noStroke();
  
  
  ellipse(97,150,70,78);
  fill(0);
  
  ellipse(95,150,60,60);
  fill(255);
  
   //ojo der
  ellipse(300,150,80,80);
  fill(62,35,8);
  noStroke();
  
  ellipse(303,150,70,78);
  fill(0);
  
  ellipse(303,150,60,60);
  fill(255);
  
  //nariz
  fill(165,135,105);
  ellipse(230,215,80,60);
  
  fill(40);
  ellipse(220,215,10,15);
  
   fill(40);
  ellipse(250,210,10,15);
  
  
  //Boca
  stroke(40);
  strokeWeight(10);
  line(150,260,280,250);
  line(130,245,150,260);
}
