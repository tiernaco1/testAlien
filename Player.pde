class Player{
  
  int xpos; int ypos;
  int computerLives = 3;
  int playerLives = 3;
  int frameRate = 2;
  int y;
  float shieldHeight;
  boolean noShield;
  color paddleColour = color(130, 120, 50);
  Player(int screen_y)
  {
    xpos=SCREENX/2;
    ypos=screen_y;
    shieldHeight = 10;
  }
  void move(int x){
    if(x>SCREENX-PADDLEWIDTH) xpos = SCREENX-PADDLEWIDTH;
    else xpos=x;
  }
  
  void shield(){
    y = ypos -15;
    rect(xpos, y, PADDLEWIDTH, shieldHeight);
    for(int i = 0; i < count; i++){ 
    if(firingBullet[i].y == y){
      shieldHeight = shieldHeight - 0.2;
      if(shieldHeight == 0)
      {
        return;
      }
    }
    }
  }
  
  void draw()
  {
    fill(paddleColour);
    rect(xpos, ypos, PADDLEWIDTH, PADDLEHEIGHT);
  }
  
}
