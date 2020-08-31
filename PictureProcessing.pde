PImage pic;
int siz = 20;

void setup(){
 size(1024, 768);
 pic = loadImage("1.jpeg");
 background(0);
}

void draw(){
 for(int i = 0; i<3000; i++){
    float x = random(width);
    float y = random(height);
    color c = pic.get(int(x), int(y));
    fill(c, 25);
    noStroke();
    float r = red(c);
    float g = green(c);
    float b = blue(c);
    if (r > g && r > b)
      ellipse(x,y, siz,siz);
      else
      if (g > r && g > b)
      rect(x,y, siz,siz);
      else
      rect(x,y, siz,siz);
 }
}