void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  }else if (mode == GAME) {
    gameClicks();
  }else {
    println("Error: Mode = " + mode);
  } 
}
