import controlP5.*;
ControlP5 cp5;

PFont attributionText;

//-4.5 to 4.5
float cX = -0.7;
float prev_cX = cX;
float cY = 0.27015;
float prev_cY = cY;
float zx, zy;
float maxIter = 300;
float prev_maxIter = maxIter;

void setup() {
  size(640, 480);
  attributionText = loadFont("BodoniMT-48.vlw");
  cp5 = new ControlP5(this);

  cp5.addSlider("cX").setSize(100, 20).setPosition(540, 390).setRange(-4.5, 4.5).setSliderMode(Slider.FLEXIBLE);
  cp5.addSlider("cY").setSize(100, 20).setPosition(540, 420).setRange(-4.5, 4.5).setSliderMode(Slider.FLEXIBLE);
  ;
  cp5.addSlider("maxIter").setSize(100, 20).setPosition(540, 450).setRange(50, 2000).setSliderMode(Slider.FLEXIBLE);
  ;
}

void draw() {
  if (prev_cX != cX || prev_cY != cY || prev_maxIter != maxIter) {
    for (int x = 0; x < width; x++) {
      for (int y = 0; y < height; y++) {
        zx = 1.5 * (x - width / 2) / (0.5 * width);
        zy = (y - height / 2) / (0.5 * height);
        float i = maxIter;
        while (zx * zx + zy * zy < 4 && i > 0) {
          float tmp = zx * zx - zy * zy + cX;
          zy = 2.0 * zx * zy + cY;
          zx = tmp;
          i -= 1;
        }
        color c = hsv2rgb(i / maxIter * 360, 1, i > 1 ? 1 : 0);
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

color hsv2rgb(float h, float s, float v) {
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

void keyPressed() {
  if (keyCode == 78) {
    saveFrame("Fractal.png");
  }
}
