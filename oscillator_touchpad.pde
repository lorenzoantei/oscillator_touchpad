  

import processing.sound.*;
SinOsc sine;

void setup() {
  size(640, 360);
  background(255);
    
  // Create the sine oscillator
  sine = new SinOsc(this);
  sine.play();
  sine.freq(200);
}      

void draw() {
  sine.freq(mouseX);
  sine.amp(map(mouseY,height, 0, 0, 2));
}
