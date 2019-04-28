 //<>//

Player jugador;
Obstacle obstaculo;
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
  size(800, 700);
}
void setup() {
  frameRate(90);
  rectMode(RADIUS);
  jugador = new Player(new PVector(25, 25), new PVector(0, 0));  
  obstaculo = new Obstacle(new PVector(width/2, height/2), 100, 200, 0);
  rozando = new Particula[10];

  for (int i = 0; i<10; i++) {
    rozando[i] = new Particula(0.9, new PVector(0, 0), new PVector(random(-70.0, 70.0), random(-70.0, 70.0)), 20);
  }
}
void draw() {
  background(150);
  jugador.Mover();
  obstaculo.DibujarObstacle();
  obstaculo.ChocarConPlayer(jugador);
  jugador.DibujarPlayer();



















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
}
