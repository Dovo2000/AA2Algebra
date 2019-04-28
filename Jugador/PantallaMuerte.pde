void pantallaMuerte() {
  background(0);
  fill(255);
  textSize(50);
  text("GAME OVER", 200, 300); 
  textSize(30);
  text("El tiempo se ha acabado", 200, 400);
  for (int i = 0; i<50; i++) {
    muerte[i].Mover();
    muerte[i].Update();
  }
}
