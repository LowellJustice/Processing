import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import controlP5.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Fractals extends PApplet {


ControlP5 cp5;

PFont attributionText;

//-4.5 to 4.5
float cX = -0.7f;
float prev_cX = cX;
float cY = 0.27015f;
float prev_cY = cY;
float zx, zy;
float maxIter = 300;
float prev_maxIter = maxIter;

public void setup() {
  
  attributionText = loadFont("BodoniMT-48.vlw");
  cp5 = new ControlP5(this);

  cp5.addSlider("cX").setSize(100, 20).setPosition(540, 390).setRange(-4.5f, 4.5f).setSliderMode(Slider.FLEXIBLE);
  cp5.addSlider("cY").setSize(100, 20).setPosition(540, 420).setRange(-4.5f, 4.5f).setSliderMode(Slider.FLEXIBLE);
  ;
  cp5.addSlider("maxIter").setSize(100, 20).setPosition(540, 450).setRange(50, 2000).setSliderMode(Slider.FLEXIBLE);
  ;
}

public void draw() {
  if (prev_cX != cX || prev_cY != cY || prev_maxIter != maxIter) {
    for (int x = 0; x < width; x++) {
      for (int y = 0; y < height; y++) {
        zx = 1.5f * (x - width / 2) / (0.5f * width);
        zy = (y - height / 2) / (0.5f * height);
        float i = maxIter;
        while (zx * zx + zy * zy < 4 && i > 0) {
          float tmp = zx * zx - zy * zy + cX;
          zy = 2.0f * zx * zy + cY;
          zx = tmp;
          i -= 1;
        }
        int c = hsv2rgb(i / maxIter * 360, 1, i > 1 ? 1 : 0);
        set(x, y, c);
      }
    }
    prev_cX = cX;
    prev_cY = cY;
    prev_maxIter = maxIter;
  }
  fill(255);
  textFont(attributionText, 18);
  text("A project by Lowell Justice", 10, 460);
}

public int hsv2rgb(float h, float s, float v) {
  float c = v * s;
  float x = c * (1 - abs(((h/60) % 2) - 1));
  float m = v - c;

  float r, g, b;
  if (h < 60) {
    r = c;
    g = x;
    b = 0;
  } else if (h < 120) {
    r = x;
    g = c;
    b = 0;
  } else if (h < 180) {
    r = 0;
    g = c;
    b = x;
  } else if (h < 240) {
    r = 0;
    g = x;
    b = c;
  } else if (h < 300) {
    r = x;
    g = 0;
    b = c;
  } else {
    r = c;
    g = 0;
    b = x;
  }

  int ri = round((r + m) * 255);
  int gi = round((g + m) * 255);
  int bi = round((b + m) * 255);

  return color(ri, gi, bi);
}

public void keyPressed() {
  if (keyCode == 78) {
    saveFrame("Fractal.png");
  }
}
  public void settings() {  size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Fractals" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
