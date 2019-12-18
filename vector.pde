
PVector location;  
PVector velocity;  
PVector gravity;  
void setup() {
  pixelDensity(2);
  size(640, 360);
  location = new PVector(width/2, height/2);
  velocity = new PVector(5, 6);
  gravity = new PVector(0, 0.2);
  background(255, 55, 155);
}

void draw() {
  location.add(velocity);
  velocity.add(gravity);
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
    stroke(255);
  }
  if (location.y > height || location.y<0) {
    velocity.y = velocity.y * -1; 
    location.y = height;
  }

  stroke(0);
  strokeWeight(2);
  fill(noise(255), random(155), noise(255));
  ellipse(location.x, location.y, 48, 48);
}
