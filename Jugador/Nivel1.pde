void primerNivell() {
  obstaculo.DibujarObstacle();
  obstaculo1.DibujarObstacle();
  obstaculo2.DibujarObstacle();
  obstaculo3.DibujarObstacle();
  obstaculo4.DibujarObstacle();
  obstaculo5.DibujarObstacle();
  meta1.DibujarMeta();

  obstaculo.ChocarConPlayer(jugador);
  obstaculo1.ChocarConPlayer(jugador);
  obstaculo2.ChocarConPlayer(jugador);
  obstaculo3.ChocarConPlayer(jugador);
  obstaculo4.ChocarConPlayer(jugador);
  meta1.ChocarConPlayer(jugador);
  jugador.DibujarPlayer();
}
