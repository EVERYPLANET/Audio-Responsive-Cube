import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void setup() {
  size(1024,1000,P3D);
  colorMode(HSB);
  
  box = new cube(150,0.02f,20,color(30,140,200),width/2,height/2);
  betterBox = new cube(50,0.04f,10,color(90,70,100),width/2,height/2);
  evenBetterBox = new cube(250,0.01f,10,color(90,70,100),width/2,height/2);
  
  minim = new Minim(this);
  ai = minim.getLineIn(Minim.MONO,512, 44100, 16);
  ap = minim.loadFile("C:\\Users\\every\\Downloads\\btbp2.mp3", 512);
  ap.play();
  ab = ap.mix;
  
  
  
}

float theta = 0;
cube box;
cube betterBox;
cube evenBetterBox;
Minim minim; 
AudioPlayer ap;
AudioInput ai;
AudioBuffer ab;

void draw() {
  background(0);
  noStroke();
  //stroke(255);
  //strokeWeight(2);
  
  lights();
  
  box.update();
  box.render();
  
  betterBox.update();
  betterBox.render();
  
  evenBetterBox.update();
  evenBetterBox.render();
  

  
}
