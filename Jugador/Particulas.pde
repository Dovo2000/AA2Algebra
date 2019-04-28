class ParticulaMuerte{
   float masa;
  PVector pos;
  PVector vel;
  float acelX;
  float acelY;
  float fuerzaX;
  float fuerzaY;
  int tam;
  float posXo;
  float posYo;
  
   ParticulaMuerte(float _m, PVector _pos, PVector _vel, int _t) {
    masa = _m;
    pos = _pos;
    vel = _vel;
    tam = _t;
    fuerzaX = 0;
    fuerzaY = 9.8;
    posXo = pos.x;
    posYo = pos.y;
  }
  void Mover() {
    // Add speed to location.
  pos.y = pos.y + vel.y;

  // Add gravity to speed.
  vel.y = vel.y + fuerzaY;

  // If square reaches the bottom
  // Reverse speed
  if (pos.y > height) {
    // Multiplying by -0.95 instead of -1 slows the square 
    // down each time it bounces (by decreasing speed).  
    // This is known as a "dampening" effect and is a more 
    // realistic simulation of the real world (without it, 
    // a ball would bounce forever).
    vel.y = vel.y * -0.95;
    pos.y = height;
  }
  
  }
  
  void Update() {

    fill(233, 0, 0, 80);
    ellipse(pos.x, pos.y, tam, tam);
    fill(255);
  }
  void Eliminar() {
    pos.x = 2000;
    pos.y = 0;
    tam = 0;
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
    } ;
    if ((pos.y) - tam/2 <= 0) { 
     
      pos.y = tam/2;
      vel.y = 0;
    } 
  }
}
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
    } ;
    if ((pos.y) - tam/2 <= 0) { 
     
      pos.y = tam/2;
      vel.y = 0;
    } 
  }
}
