class Enemy {

  PVector pos;
  PVector vel;
  boolean rozando = false;
  int tam = 100;
boolean arriba = false;
  Enemy(PVector _pos, PVector _vel) {
    pos = _pos;
    vel = _vel;
  }
  
  void DibujarEnemy() {
    fill(0, 150, 150, 80);
    trasladar(pos.x, pos.y);
    ellipse(0, 0, tam, tam);
    resetMatrix();
  }
  void ChocarParedes() {
    if ((pos.x) + tam/2 >= width) { 
      rozando = true;
      pos.x = width - tam/2;
      vel.x = 0;
    }
    if ((pos.x) - tam/2 <= 0) {  
      rozando = true;
      pos.x = tam/2;
      vel.x = 0;
    } else rozando = false;
    if ((pos.y) + tam/2 >= height) {
      rozando = true;
      pos.y = height - tam/2;
      vel.y = 0;
    } else rozando = false;
    if ((pos.y) - tam/2 <= 0) { 
      rozando = true;
      pos.y = tam/2;
      vel.y = 0;
    } else rozando = false;
  }
}

// NORMAL ENEMY 

 class NormalEnemy{
  PVector pos;
  PVector vel;
  boolean rozando = false;
  float angulo = 1;
  int tam = 100;
  boolean arriba = true;
  NormalEnemy(PVector _pos, PVector _vel) {
    pos = _pos;
    vel = _vel;
  }
  void move1(){
   if(pos.y > 500 || pos.y < 100){
     vel.y *= -1;
   } //<>//
    
    
    vel.limit(2.5);
    pos.add(vel);
    ChocarParedes(); 
  }
   
   void move2(){
    if(pos.x < 450 || pos.x > 750){
     vel.x *= -1;
   }
    
    
    
    
    
    vel.limit(2.5);
    pos.add(vel);
    ChocarParedes(); 
  }
   void move3(){
    if(pos.x < 700 || pos.x > 1101){
     vel.x *= -1;
   }
    
    vel.limit(2.5);
    pos.add(vel);
    ChocarParedes(); 
   }
  void DibujarNormalEnemy() {
    fill(200, 0, 0, 200);
    trasladar(pos.x, pos.y);
    ellipse(0, 0, tam, tam);
    resetMatrix();
  }
   void ChocarParedes() {
    if ((pos.x) + tam/2 >= width) { 
      rozando = true;
      pos.x = width - tam/2;
      vel.x = 0;
    }
    if ((pos.x) - tam/2 <= 0) {  
      rozando = true;
      pos.x = tam/2;
      vel.x = 0;
    } else rozando = false;
    if ((pos.y) + tam/2 >= height) {
      rozando = true;
      pos.y = height - tam/2;
      vel.y = 0;
    } else rozando = false;
    if ((pos.y) - tam/2 <= 0) { 
      rozando = true;
      pos.y = tam/2;
      vel.y = 0;
    } else rozando = false;
  }
  void ChocarConPlayer(Player jug) {
    PVector posJug = PVector.sub(jug.pos, pos);
    PVector puntoCercano = new  PVector(0, 0);
    float dist = dist(puntoCercano.x, puntoCercano.y, posJug.x, posJug.y);

    if (dist < jug.tam/2 + tam/2) {
      //Colision
      //Al tocar la pared reinicia la posición del jugador a la entrada
      jug.pos.x = jug.tam;
      jug.pos.y = jug.tam;
      jug.vel.x = 0;
      jug.vel.y = 0;
    }
    resetMatrix();
  }
  }
  
