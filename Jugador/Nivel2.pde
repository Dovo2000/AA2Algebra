void segonNivell() {
  obstaculo6.DibujarObstacle();
  obstaculo7.DibujarObstacle();
  obstaculo8.DibujarObstacle();
  meta2.DibujarMeta();

  obstaculo6.ChocarConPlayer(jugador);
  obstaculo7.ChocarConPlayer(jugador);
  obstaculo8.ChocarConPlayer(jugador);
  meta2.ChocarConPlayer(jugador);
  jugador.DibujarPlayer();
}
