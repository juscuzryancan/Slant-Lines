int scale = 20;

void setup() {
  size(640, 640);
  background(#FFE468);
}

void draw() {
  stroke(#2526B3);
  strokeWeight(4);
  for (int i = 0; i < width/scale; i++) {
    for (int j = 0; j < height/scale; j++) {
      if (random(1) > 0.5) {
        line(i*scale, j*scale, i*scale + scale, j * scale + scale);
      } else {
        line(i*scale + scale, j*scale, i*scale, j * scale + scale);
      }
    }
  }
  noLoop();
  
  saveFrame("slantLines-####.png");
}
