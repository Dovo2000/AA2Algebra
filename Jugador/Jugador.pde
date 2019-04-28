class Player {
  
  PVector pos;
  PVector vel;
  boolean rozando = false;
  int tam = 50;

  Player(PVector _pos, PVector _vel) {
    pos = _pos;
    vel = _vel;
  }

  void Mover() {
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        vel.y -= 0.5;
      }
      if (key == 's' || key == 'S') {
        vel.y += 0.5;
      }
      if (key == 'd' || key == 'D') {
        vel.x += 0.5;
      }
      if (key == 'a' || key == 'A') {
        vel.x -= 0.5;
      }
    }
    vel.limit(5);
    pos.add(vel);
    ChocarParedes();
  }
  void DibujarPlayer() {
    trasladar(pos.x,pos.y);
    ellipse(0, 0, tam, tam);
    resetMatrix();
  }
  void ChocarParedes() {
    if ((pos.x) + tam/2 >= width) { 
      rozando = true;
      pos.x = width - tam/2;
    }
    if ((pos.x) - tam/2 <= 0) {  
      rozando = true;
      pos.x = tam/2;
    }
    
    else rozando = false;
    if ((pos.y) + tam/2 >= height) {
      rozando = true;
      pos.y = height - tam/2;
    }
    else rozando = false;
    if ((pos.y) - tam/2 <= 0) { 
      rozando = true;
      pos.y = tam/2;
    }
    else rozando = false;
  }
} 
