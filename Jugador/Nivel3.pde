float currentTime;

void tercerNivell() {
  jugador.DibujarPlayer();
  meta3.ChocarConPlayer(jugador);
  meta3.DibujarMeta();
  if (key == 'm' || key == 'M') {
    for (int i =0; i<50; i++) {
      enemigos[i].Expulsar();
    }
  } else {
    for (int i =0; i<50; i++) {
      enemigos[i].Update(jugador);
    }
  }
  for (int i =0; i<50; i++) {
    enemigos[i].ChocarParedes();
    enemigos[i].ChocarConPlayer(jugador);
    enemigos[i].DibujarEnemy();
  }
}
