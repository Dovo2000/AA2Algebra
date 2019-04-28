class Obstacle {
  PVector pos;
  int ancho;
  int alto;
  float angulo;
  Obstacle(PVector _pos, int _ancho, int _alto, float _angulo) {
    pos = _pos;
    ancho = _ancho/2;
    alto = _alto/2;
    angulo = _angulo;
  }
  void DibujarObstacle() {
    //angulo+= PI/180;
    //if (angulo>=TWO_PI) angulo = 0;
    trasladar(pos.x, pos.y);

    //fill(0, 255, 0, 80);
    //rect(0, 0, ancho, alto);

    //rotar(angulo);





    fill(255, 0, 0, 80);
    rect(0, 0, ancho, alto);

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
      jug.pos.x = jug.tam;
      jug.pos.y = jug.tam;
      jug.vel.x = 0;
      jug.vel.y = 0;
    }
    resetMatrix();
  }
}
