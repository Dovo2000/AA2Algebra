void tercerNivell() {
  jugador.DibujarPlayer();
  if (keyPressed) {
    if (keyCode == CONTROL) {
      enemigo1.Expulsar(jugador);
    }
    else{
      
    }
  }
  enemigo1.Update(jugador);
  enemigo1.ChocarParedes();
  enemigo1.DibujarEnemy();
}
