class Bomb {
  int x;
  int y;
  boolean collided = false;
  boolean offScreen = false;
  Bomb(int x, int y)
  {
    this.x = x;
    this.y = y;
  }

  void move()
  {
    y ++;
  }
  int y(){
    return y;
  }
  void draw()
  {
    noStroke(); fill(255, 0, 0);
    rect(x, y, 15, 15);
  }
  boolean offScreen()
  {
    if (y() > SCREENY)
    {
      offScreen = true;
    }
    return offScreen;
  }
  boolean collide(Player player)
  {
    
     if(y+15 >= player.ypos &&
     y< player.ypos + 50 &&
     x >= player.xpos &&
     x <= player.xpos + 50)
     {
        collided = true;
     }
  
    return collided;
  }
 



}
