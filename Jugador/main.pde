//<>// //<>// //<>// //<>//
int niveles;
boolean nextLevel;
boolean Win;
Player jugador;
Obstacle obstaculo, obstaculo1, obstaculo2, obstaculo3, obstaculo4, obstaculo5, obstaculo6, obstaculo7, obstaculo8, obstaculo9, obstaculo10;
ParticulaWin[] win;
Meta meta1, meta2, meta0, meta3;
NormalEnemy normalEnemie, normalEnemie2, normalEnemie3;
Enemy[] enemigos;
ParticulaMuerte[] muerte;
Meta meta1, meta2, meta0;
NormalEnemy normalEnemie,normalEnemie2, normalEnemie3;
//Funciones con las matrices de transformacion homogenea
void trasladar(float incrementoX, float incrementoY) { 
  applyMatrix(1.0, 0.0, incrementoX, 
    0.0, 1.0, incrementoY);
}
void rotar(float angulo) {
  applyMatrix(cos(angulo), -sin(angulo), 0.0, 
    sin(angulo), cos(angulo), 0.0);
}
void escalar(float esc) {
  applyMatrix(esc, 0.0, 0.0, 
    0.0, esc, 0.0);
}

public void settings() {
  size(1200, 600);
}
void setup() {
  frameRate(90);
  rectMode(RADIUS);
  jugador = new Player(new PVector(25, 25), new PVector(0, 0)); 
  win = new ParticulaWin[100];
  for (int i = 0; i<100; i++) {
    win[i] = new ParticulaWin(new PVector(width/2, height/2), new PVector(random(-70.0, 70.0), random(-70.0, 70.0)), 20);
  }

  // Enemy
  normalEnemie = new NormalEnemy(new PVector(100, 300), new PVector(0, 2));
  enemigos = new Enemy[50];
  for (int j = 0; j<50; j++) {
    enemigos[j] = new Enemy(new PVector(random(200, width), random(height)));
  }

  normalEnemie2 = new NormalEnemy(new PVector(450, 200), new PVector(2, 0));
  normalEnemie3 = new NormalEnemy(new PVector(1100, 525), new PVector(2, 0));
  // Nivel 0
  obstaculo9 = new Obstacle(new PVector(600, 150), 10000, 50, 0);
  meta0 = new Meta(new PVector(1100, 50), 20, 20, 0);
  // primer nivell
  obstaculo = new Obstacle(new PVector(width/2 - 100, height/2 +300), 100, 900, 0);
  obstaculo1 = new Obstacle(new PVector(10, 600), 100, 900, 0);
  obstaculo2 = new Obstacle(new PVector(250, 200), 100, 500, 0);
  obstaculo3 = new Obstacle(new PVector(700, 200), 100, 550, 0);
  obstaculo4 = new Obstacle(new PVector(1000, 600), 900, 70, 0);
  obstaculo5 = new Obstacle(new PVector(1000, 10), 500, 100, 0);
  meta1 = new Meta(new PVector(1100, 200), 20, 20, 0);
  // primer nivell
  // segon nivell
  obstaculo6 = new Obstacle(new PVector(900, 10), 100, 900, 0);
  obstaculo7 = new Obstacle(new PVector(600, 600), 100, 600, 0);
  obstaculo8 = new Obstacle(new PVector(300, 200), 100, 600, 0);
  meta2 = new Meta(new PVector(1075, 200), 20, 20, 0); 
  // segon nivell
  meta3 = new Meta(new PVector(1075, 200), 20, 20, 0);



  niveles = 3;
  muerte= new ParticulaMuerte[50];
  
  for (int i = 0; i<50; i++) {
    muerte[i] = new ParticulaMuerte(0.9, new PVector(jugador.pos.x, jugador.pos.y), new PVector(random(-70.0, 70.0), random(-70.0, 70.0)), 20);
  }
  niveles = 0;
  nextLevel = false;
  Win = false;
}
void draw() {
  
  nextLevel = false;
  background(51, 51, 255);
  jugador.Mover();
  if (meta1.cogido) meta1.Orbitar(jugador);
  if (meta2.cogido) meta2.Orbitar(jugador);
  switch(niveles) {
  case 0:
  fill(255);
    textSize(50);
    text("Parecen unas ruinas abandonadas...", 200, 300); 
    textSize(20);
    text((60000-millis())/1000, 900, 20); 
    nivellZero();
    break;
  case 1:
  fill(255);
    textSize(40);
    text("¿Un laberinto?", 325, 100);
     textSize(20);
    text((60000-millis())/1000, 900, 20);
    primerNivell();
    break;
  case 2:
  fill(255);
    textSize(50);
    text("¡Enemigos!", 450, 100); 
    segonNivell();
     textSize(20);
    text((60000-millis())/1000, 900, 20); 
    
    break;
  case 3:
  fill(255);
    textSize(30);
    text("¿Este poder...? ", 400, 500);
    textSize(20);
    text("(Pulsa espacio para repeler enemigos)", 350, 550);
     textSize(20);
    text((60000-millis())/1000, 900, 20); 
    tercerNivell();
    break;
  case 4:
    pantallaVictoria();
    break;
  };
  if (nextLevel) {
    nextLevel = false;
    niveles++;
    if (niveles > 3) Win = true;
  }
  if((3000-millis() <= 0) ){
    for (int j = 0; j<50; j++) {
    muerte[j].Update();
    muerte[j].Mover();
    muerte[j].ChocarParedes();
  }

}

}
















//trasladar(width/2, height/2);
//obstaculo.DibujarObstacle();
//obstaculo.ChocarConPlayer(jugador);
//jugador.Mover();
//jugador.DibujarPlayer();
//resetMatrix(); 

////   for (int j = 0; j<10; j++) {
////     trasladar(jugador.pos.x, jugador.pos.y);
////     rozando[j].Mover();
////     rozando[j].Update();
////     resetMatrix();
////   }
//// }
