//<>// //<>// //<>//
int niveles;
boolean nextLevel;
Player jugador;
Obstacle obstaculo, obstaculo1, obstaculo2, obstaculo3, obstaculo4, obstaculo5, obstaculo6, obstaculo7, obstaculo8, obstaculo9, obstaculo10;
Particula[] rozando;
Enemy enemigo1;
Meta meta1, meta2;
NormalEnemy normalEnemie,normalEnemie2;
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
  // Enemy
  normalEnemie = new NormalEnemy(new PVector(100, 300), new PVector(0,2));
  normalEnemie2 = new NormalEnemy(new PVector(500, 100), new PVector(0,2));
  enemigo1 = new Enemy(new PVector(random(width),random(height)));
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
  rozando = new Particula[10];

  for (int i = 0; i<10; i++) {
    rozando[i] = new Particula(0.9, new PVector(0, 0), new PVector(random(-70.0, 70.0), random(-70.0, 70.0)), 20);
  }
  niveles = 3;
  nextLevel = false;
}
void draw() {
  nextLevel = false;
  background(51,51,255);
  jugador.Mover();
  if (meta1.cogido) meta1.Orbitar(jugador);
  if (meta2.cogido) meta2.Orbitar(jugador);
  switch(niveles) {
  case 1:
    primerNivell();
    break;
  case 2:
    segonNivell();
    
    
    break;
  case 3:
    tercerNivell();
    break;
  };
  if (nextLevel) {
    nextLevel = false;
    niveles++;
    if (niveles > 3) niveles = 1;
  }
}
