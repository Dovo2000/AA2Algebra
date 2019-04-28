class ParticulaMuerte{
   float masa;
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
  
   ParticulaMuerte(float _m, PVector _pos, PVector _vel, int _t) {
    masa = _m;
    pos = _pos;
    vel = _vel;
    tam = _t;
    fuerzaX = 0;
    fuerzaY = 9.8;
    tiempo = 0.04;
    posXo = pos.x;
    posYo = pos.y;
  }
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
   trasladar(30, 0);
  
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
class Particula {
  // Atributos
  float masa;
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

  // Constructor
  Particula(float _m, PVector _pos, PVector _vel, int _t) {
    masa = _m;
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
    ////Aqui tenemos el SOLVER
    //// 1- Calcular la aceleracion
    //acelX = fuerzaX/masa;
    //acelY = fuerzaY/masa;
    //// 2- Calcular la nueva velocidad
    //this.vel.x = vel.x + acelX*tiempo;
    //this.vel.y = vel.y + acelY*tiempo;
    //// 3- Calcular la nueva posicion
    //this.pos.x = pos.x + vel.x*tiempo;
    //this.pos.y = pos.y + vel.y*tiempo;
    //vel.limit(50);
    trasladar(30, 0);
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
