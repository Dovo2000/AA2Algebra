class Player {

  PVector pos;
  PVector vel;
  boolean rozando = false;
  int tam = 25;

  Player(PVector _pos, PVector _vel) {
    pos = _pos;
    vel = _vel;
  }

  void Mover() {
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        vel.y -= 0.2;
      }
      if (key == 's' || key == 'S') {
        vel.y += 0.2;
      }
      if (key == 'd' || key == 'D') {
        vel.x += 0.2;
      }
      if (key == 'a' || key == 'A') {
        vel.x -= 0.2;
      }
    }
    vel.limit(2.5);
    pos.add(vel);
    ChocarParedes();
  }
  void DibujarPlayer() {
    fill(0, 255, 0, 200);
    trasladar(pos.x, pos.y);
    ellipse(0, 0, tam, tam);
    resetMatrix();
  }
  void ChocarParedes() {
    if ((pos.x) + tam/2 >= width) { 
      pos.x = width - tam/2;
      vel.x = 0;
    }
    if ((pos.x) - tam/2 <= 0) {  
      pos.x = tam/2;
      vel.x = 0;
    } 
    if ((pos.y) + tam/2 >= height) {
      pos.y = height - tam/2;
      vel.y = 0;
    } else 
    if ((pos.y) - tam/2 <= 0) { 
      pos.y = tam/2;
      vel.y = 0;
    }
  }
} 
