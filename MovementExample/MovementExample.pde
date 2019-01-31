//Ship Movement - Caleb

//variables for position
float xPos =0;
float yPos = 0;

//Booleans for movement
boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false;

////Boolean for flipping ship direction
//boolean drawShip = true;

//
PImage ship;
PImage flip;

void setup() {
  //window modifications
  size(800, 500);
  background(233, 255, 255);
  
  imageMode(CENTER);

  //initial position
  xPos = width/2;
  yPos = height/2;

  //shape properties
  noStroke();
  fill(0, 0, 255);
  
  ship = loadImage("ship.png");
  flip = loadImage("flip.png");
}

void draw() {
  //wipe
  background(233, 255, 255);

  //draw shape
  //if (drawShip) {
  image(ship, xPos, yPos);
  //}
  //update position
  if (left) {
    xPos = xPos - 1;
    //drawShip = true;
  }
  if (right) {
    xPos++;
    
  // drawShip = false; 
  //  // insert ship horizontal flipper here
  //image(flip, xPos, yPos);

}
  if (up) {
    yPos--;
  }
  if (down) {
    yPos++;
  }
  
  //if the (object) moves past the screen, it will show up on the other side
  if (xPos < 0) {
    xPos = width;
  }
  if (xPos > width) {
    xPos = 0;
  }
   if (yPos < 0) {
    yPos = height;
  }
  if (yPos > height) {
    yPos = 0;
  }
 
}

void keyPressed() {
  
  //if arrow keys are pressed, the (object) will move accordingly
  if (keyCode == LEFT) {
    left = true;
  }
  if (keyCode == RIGHT) {
    right = true;
  }
  if (keyCode == UP) {
    up = true;
  }
  if (keyCode == DOWN) {
    down = true;
  }
}
void keyReleased() {
  
  //if the arrow keys aren't pressed the (object) will stop moving
  if (keyCode == LEFT) {
    left = false;
  }
  if (keyCode == RIGHT) {
    right = false;
  }
  if (keyCode == UP) {
    up = false;
  }
  if (keyCode == DOWN) {
    down = false;
  }
}
