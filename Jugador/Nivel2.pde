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
  
  normalEnemie.DibujarNormalEnemy();
  normalEnemie2.DibujarNormalEnemy();
  normalEnemie3.DibujarNormalEnemy();
  normalEnemie.move1();
  normalEnemie2.move2();
  normalEnemie3.move3();
  normalEnemie.ChocarConPlayer(jugador);
  normalEnemie2.ChocarConPlayer(jugador);
}
