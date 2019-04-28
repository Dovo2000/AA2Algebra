void pantallaVictoria() {
  background(0);
  fill(255);
  textSize(50);
  text("ENHORABUENA", 200, 300); 
  for (int i = 0; i<100; i++) {
    win[i].Mover();
    win[i].Update();
  }
}
