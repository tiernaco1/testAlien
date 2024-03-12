class Shield {
  int x, y; // Position of the shield
  int health; // Health points of the shield
  int width, height; // Dimensions of the shield
  color shieldColor; // Color of the shield
  boolean active;
  color hitColor;
  color weakColor;
  color dangerColor;

  Shield(int x, int y, int width, int height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.health = 100; // Initial health of the shield
    this.shieldColor = color(0, 255, 0); // Green color for the shield
    this.weakColor = color(255, 165, 0);
    this.dangerColor = color(255, 0, 0);
  }

  void draw() {

    fill(shieldColor);
    rect(x, y, width, height);
  }

  void takeDamage(int damage) {
    health -= damage;
    if (health <= 80 && health > 60)
    {
      shieldColor = color(255, 255, 0);
    }
    else if (health <= 60 && health >= 40)
    {
      shieldColor = weakColor;
    }
    else if (health <= 20 && health > 0)
    {
      shieldColor = dangerColor;
    }
    else if (health <= 0) 
    {
      shields.remove(this);
    } else {
      fill(shieldColor);
      rect(x, y, width, height);
    }
  }
}
