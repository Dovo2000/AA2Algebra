class ParticulaWin {
  // Atributos

  PVector pos;
  PVector vel;
  float acelX;
  float acelY;
  float fuerzaX;
  float fuerzaY;
  float tiempo;
  int tam;
  float posXo;
  float posYo;
  int alpha = 255;
  float masa = 1;

  // Constructor
  ParticulaWin(PVector _pos, PVector _vel, int _t) { 
    pos = _pos;
    vel = _vel;
    tam = _t;
    fuerzaX = 0;
    fuerzaY = 9.8;
    tiempo = 0.04;
    posXo = pos.x;
    posYo = pos.y;
  }
  // Metodos
  // Mover Particula
  void Mover() {
    //Aqui tenemos el SOLVER
    // 1- Calcular la aceleracion
    acelX = fuerzaX/masa;
    acelY = fuerzaY/masa;
    // 2- Calcular la nueva velocidad
    this.vel.x = vel.x + acelX*tiempo;
    this.vel.y = vel.y + acelY*tiempo;
    // 3- Calcular la nueva posicion
    this.pos.x = pos.x + vel.x*tiempo;
    this.pos.y = pos.y + vel.y*tiempo;
    vel.limit(50);
  }
  void Update() {
    trasladar(pos.x, pos.y);
    fill(233, 0, 0);
    ellipse(0, 0, tam, tam);
    resetMatrix();
  }
}
