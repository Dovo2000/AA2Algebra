class Meta {
  PVector pos;
  int ancho;
  int alto;
  float angulo;
  boolean cogido = false;
  float trasladoX;
  float trasladoY;

  Meta(PVector _pos, int _ancho, int _alto, float _angulo) {
    pos = _pos;
    ancho = _ancho;
    alto = _alto;
    angulo = _angulo;
    trasladoX = random(12, 17);
    trasladoY = random(12, 17);
  }
  void DibujarMeta() {
    angulo+= PI/180;
    if (angulo>=TWO_PI) angulo = 0;
    trasladar(pos.x, pos.y);

    rotar(angulo);

    fill(255, 255, 0, 80);
    rect(0, 0, ancho, alto);
    escalar(0.5);
    fill(255, 255, 0);
    ellipse(0, 0, ancho, alto);

    resetMatrix();
  }
  void ChocarConPlayer(Player jug) {
    trasladar(pos.x, pos.y);
    PVector posJug = PVector.sub(jug.pos, pos);

    posJug.rotate(-angulo); //Función de PVector que gira el vector, no los ejes para eso usamos nuestra funcion rotar(float); 
    posJug.add(pos);

    PVector puntoCercano = new  PVector(0, 0);

    if (posJug.x < pos.x - ancho) {
      puntoCercano.x = pos.x - ancho;
    } else if (posJug.x > pos.x + ancho) {
      puntoCercano.x = pos.x + ancho;
    } else {
      puntoCercano.x = posJug.x;
    }

    if (posJug.y < pos.y - alto) {
      puntoCercano.y = pos.y - alto;
    } else if (posJug.y > pos.y + alto) {
      puntoCercano.y = pos.y + alto;
    } else {
      puntoCercano.y = posJug.y;
    }

    float dist = dist(puntoCercano.x, puntoCercano.y, posJug.x, posJug.y);

    if (dist < jug.tam/2) {
      //Colision
      //Al tocar la pared reinicia la posición del jugador a la entrada
      jug.pos.x = jug.tam/2;
      jug.pos.y = jug.tam/2;
      jug.vel.x = 0;
      jug.vel.y = 0;
      cogido = true;
      //Y pasa al siguiente nivel
      nextLevel = true;
    }
    resetMatrix();
  }
  void Orbitar(Player jug) {
    angulo+= PI/180;
    if (angulo>=TWO_PI) angulo = 0;
    trasladar(jug.pos.x, jug.pos.y);
    rotar(angulo);
    trasladar(trasladoX, trasladoY);


    fill(255, 255, 0);
    escalar(0.5);
    ellipse(0, 0, ancho, alto);
    resetMatrix();
  }
}
