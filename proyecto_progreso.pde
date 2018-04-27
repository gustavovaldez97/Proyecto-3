//head
import processing.sound.*;
int pantalla = 0;
float[] jugador1;
float[] jugador2;
float[] char1=new float[2];
float[] char2=new float[2];
float[] char3=new float[2];
float[] char4=new float[2];
float[] char5=new float[2];
float vida1=20;
float vida2=20;
int turno=0;
int seleccion=0;

SoundFile main;
PImage img;
PImage aguaImage;
PImage fuegoImage;
PImage tierraImage;
PImage aireImage;
PImage rayoImage;
PImage select;
PFont streamster;
luchador agua;
luchador fuego;
luchador tierra;
luchador aire;
luchador rayo;

//setup
void setup(){
  size(600,400);
  main = new SoundFile(this, "main.mp3");
  agua = new LAgua(3,3,65,113);
  fuego = new LFuego(5,3,250,113);
  tierra = new LTierra(2,5,425,113);
  aire = new LAire(4,3,157,206);
  rayo = new LRayo(5,2,337,206);
  char1[0]=3;
  char1[1]=3;
  char2[0]=5;
  char2[1]=3;
  char3[0]=2;
  char3[1]=5;
  char4[0]=4;
  char4[1]=3;
  char5[0]=5;
  char5[1]=2;
  main.loop();
  img=loadImage("logo.jpg");
  aguaImage=loadImage("agua.png");
  fuegoImage=loadImage("fuego.png");
  tierraImage=loadImage("tierra.png");
  aireImage=loadImage("aire.png");
  rayoImage=loadImage("rayo.png");
  select=loadImage("grid.jpg");
  streamster=createFont("Streamster",40);
}  

//draw
void draw(){
  
  if(pantalla==0){
    pantallaInicio();
  }
  if(pantalla==1){
    pantallaSelect();
  }
  if(pantalla==2){
    pantallaCombat();
  }
  if(pantalla==3){
    pantallaResult();
  }
}

// pantallas

void pantallaInicio(){
  //que hay en la pantalla de inicio
  image(img,0,0,600,400);
  textSize(25);
  fill(#FAB8B8);
  textFont(streamster);
  textAlign(LEFT, BOTTOM);
  text("Haga click para iniciar", 170,300);
}

void pantallaSelect(){
  //que hay en la segunda pantalla
  image(select,0,0,600,400);
  textSize(40);
  textAlign(LEFT,CENTER);
  text("Selecciona a tu luchador",150,50);
  agua.display();
  fuego.display();
  tierra.display();
  aire.display();
  rayo.display();
  fill(#FFE0FA);
  textSize(25);
  textAlign(LEFT,CENTER);
  text("1/6.Agua",150,133);
  textAlign(LEFT,CENTER);
  text("2/7.Fuego",300,133);
  textAlign(LEFT,CENTER);
  text("3/8.Tierra",450,133);
  textAlign(LEFT,CENTER);
  text("4/9.Aire",200,266);
  textAlign(LEFT,CENTER);
  text("5/0.Rayo",400,266);
  textSize(20);
  fill(255);
  textAlign(LEFT, BOTTOM);
  text("El jugador 1 selecciona \ncon las teclas del 1  al 5", 15, 375);
  textAlign(LEFT, BOTTOM);
  text("El jugador 2 selecciona \ncon las teclas del 6  al 0", 415, 375);
  }
  
  

void pantallaCombat(){
  //que hay en la tercera pantalla
  background(0);
  fill(#FFBA79);
  ellipseMode(CENTER);
  ellipse(width/2, 300, 500, 100);
  translate(15, 20);
  pushMatrix();
  if(jugador1==char1){
    agua.display();
  }else if(jugador1==char2){
    fuego.display();
  }else if(jugador1==char3){
    tierra.display();
  }else if(jugador1==char4){
    aire.display();
  }else if(jugador1==char5){
    rayo.display();
  }
  popMatrix();
  fill(255,0,0);
  rect(50,200,vida1*10,10);
  
  translate(40, 20);
  pushMatrix();
  if(jugador2==char1){
    agua.display();
  }else if(jugador2==char2){
    fuego.display();
  }else if(jugador2==char3){
    tierra.display();
  }else if(jugador2==char4){
    aire.display();
  }else if(jugador2==char5){
    rayo.display();
  }
  popMatrix();
  fill(255,0,0);
  rect(300,180,vida2*10,10);
  
  textSize(15);
  fill(255);
  text("Jugador1 ataca con TAB", 10,10);
   fill(255);
  text("Jugador2 ataca con ENTER", 300,10);
}

void pantallaResult(){
  //que hay en la cuarta pantalla
  background(0);
  fill(#7F158F);
  triangle(100,100,500,150,300,350);
  if(vida1<=0){
    textSize(40);
    fill(255);
    textAlign(LEFT, CENTER);
    text("El jugador 2 \n ha ganado",200,200);
  }else if(vida2<=0){
    textSize(40);
    fill(255);
    textAlign(LEFT, CENTER);
    text("El jugador 1 \n ha ganado",200,200);
  }
  textSize(25);
  fill(255);
  textAlign(LEFT, BOTTOM);
  text("Haga click para reiniciar", 200,400);
}

void mousePressed(){
  if(pantalla==0){
      seleccion();
  }
  if (pantalla==3){
    restart();
  }
}

void keyPressed(){
  if(pantalla==1){
    switch(key){
    case '1':
    jugador1=char1;
    fill(0,255,0);
    rect(10,10,20,20);
    println("jugador1 seleccionado");
    break;
    case '2':
    jugador1=char2;
    fill(0,255,0);
    rect(10,10,20,20);
    println("jugador1 seleccionado");
    break;
    case '3':
    jugador1=char3;
    fill(0,255,0);
    rect(10,10,20,20);
    println("jugador1 seleccionado");
    break;
    case '4':
    jugador1=char4;
    fill(0,255,0);
    rect(10,10,20,20);
    println("jugador1 seleccionado");
    break;
    case '5':
    jugador1=char5;
    fill(0,255,0);
    rect(10,10,20,20);
    println("jugador1 seleccionado");
    break;
    case '6':
    jugador2=char1;
    pantalla=2;
    println("jugador2 seleccionado");
    println("turno del jugador1");
    break;
    case'7':
    jugador2=char2;
    pantalla=2;
    println("jugador2 seleccionado");
    println("turno del jugador1");
    break;
    case '8':
    jugador2=char3;
    pantalla=2;
    println("jugador2 seleccionado");
    println("turno del jugador1");
    break;
    case '9':
    jugador2=char4;
    pantalla=2;
    println("jugador2 seleccionado");
    println("turno del jugador1");
    case '0':
    jugador2=char5;
    pantalla=2;  
    println("jugador2 seleccionado");
    println("turno del jugador1");
    break;
    }
 }       
   if(pantalla==2){
     if(turno==0){
      if(key==TAB){
        fill(0,255,0);
        rect(10,10,20,20); 
        damage1();
         turno=1;
         println("Turno del jugador 2");
        }
      }else if(turno==1){
        if(key==ENTER){
        fill(0,0,255);
        rect(400,10,20,20); 
          damage2();
          println("Turno del jugador 1");
          turno=0; 
        }
      }
   }
}



void seleccion(){
  pantalla=1;
}

void combate(){
  pantalla=2;
}

void resolucion(){
  pantalla=3;
}


void damage1(){
  vida2-=jugador1[0]/jugador2[1];
  if(vida2<=0){
    resolucion();
  }
}

void damage2(){
    vida1-=jugador2[0]/jugador1[1];
    if(vida1<=0){
    resolucion();
  }
}

void restart(){
  vida1=20;
  vida2=20;
  turno=0;
  pantalla=0;
}
