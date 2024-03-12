// feshlfhsegesgjus
class Bullet {
  /* Insert the code for your Bullet class here.
You need: variables to store the position aand appearance of the bullet.
A constructor
A method to move the bullet
A method to draw the bullet
A method to check for collisions
*/



float Bx; float By;
float dy = -4;

Bullet(float Bx, float By)
{
this.Bx = Bx;
this.By = By;
}

void move()
{
By += dy;
}

void collide(Alien theAlien)
{
  if ((Bx + 10 > theAlien.xpos && Bx - 10 < theAlien.xpos + aliens.length) && (theAlien.ypos + aliens.length > By -10 && theAlien.ypos < By + 10))
  {
    theAlien.explode();
  }


}



void draw() {
    fill(255, 0, 0); 
    ellipse(Bx, By, 10, 10); 
  }

  boolean isOffscreen() {
    return By < 0;
  }

}
