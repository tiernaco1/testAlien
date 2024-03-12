// changing something hdhawhhfahwf
class Alien {
 /* declare variables for alien position, direction of movement and appearance */
 int xpos ; int ypos;
 int dx = 1; int dy = 0;
 boolean exploded;
 PImage myImage;
 PImage currentImage;
 
 /* Constructor is passed the x and y position where the alien is to
 be created, plus the image to be used to draw the alien */
 
 Alien(int xpos, int ypos, PImage myImage){
  /* set up the new alien object */ 
  this.xpos = xpos;
  this.ypos = ypos;
  this.myImage = myImage;
  this.currentImage = myImage;
  
  
  
 }  
   
    void draw(){
    /* Draw the alien using the image() method demonstrated in class */
    image(currentImage, xpos, ypos);
  }
   
   
   void move(){
  /* Move the alien according to the instructions in the exercise */
  
   xpos= xpos + dx;
   ypos = ypos + dy;
   
   xpos += dx;
      
    if (xpos > width - currentImage.width || xpos < 0) {
      xpos = constrain(xpos, 0, width - currentImage.width);  
      ypos += currentImage.height;
      dx = -dx;
  
  
 }
}

  
  void explode(){
  exploded = true;
  currentImage = explode;
  }
}
