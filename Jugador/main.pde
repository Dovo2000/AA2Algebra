 //<>// //<>//

Player jugador;
Obstacle obstaculo, obstaculo1, obstaculo2, obstaculo3, obstaculo4, obstaculo5, obstaculo6, obstaculo7, obstaculo8, obstaculo9, obstaculo10;
Particula[] rozando;


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
  size(1400, 900);
}
void setup() {
  frameRate(90);
  rectMode(RADIUS);
  jugador = new Player(new PVector(25, 25), new PVector(0, 0));  
  // primer nivell
  obstaculo = new Obstacle(new PVector(width/2 - 100, height/2 +300), 100, 900, 0);
  obstaculo1 = new Obstacle(new PVector(10, 600), 100, 900, 0);
  obstaculo2 = new Obstacle(new PVector(300, 300), 100, 800, 0);
  obstaculo3 = new Obstacle(new PVector(900, 300), 100, 800, 0);
  obstaculo4 = new Obstacle(new PVector(1500, 650), 800, 100, 0);
  obstaculo5 = new Obstacle(new PVector(1700, 10), 800, 100, 0);
  // primer nivell
  // segon nivell
  obstaculo6 = new Obstacle(new PVector(1050, 10), 100, 1300, 0);
  obstaculo7 = new Obstacle(new PVector(700, 600), 100, 600, 0);
  obstaculo8 = new Obstacle(new PVector(300, 200), 100, 600, 0);
  // segon nivell
  rozando = new Particula[10];

  for (int i = 0; i<10; i++) {
    rozando[i] = new Particula(0.9, new PVector(0, 0), new PVector(random(-70.0, 70.0), random(-70.0, 70.0)), 20);
  }
}
void draw() {
  background(150);
  jugador.Mover();
  
  //primerNivell();
  segonNivell();
  tercerNivell();
  
  jugador.DibujarPlayer();
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
