void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == GAMEOVER) {
    gameOverClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == OPTIONS) {
    optionsClicks();
  } else if (mode == WIN) {
    winClicks();
  } else {
     println("Mode error");
  }
}
