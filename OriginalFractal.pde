public void setup() {
    size(500, 500);
    rectMode(CENTER);
}
public void draw(){
  background(0);
  myFractal(250,250,480);
}
public void myFractal(int x, int y, int siz) {
  frameRate(3);
  fill((int)(Math.random()*156)+100,(int)(Math.random()*156)+100,(int)(Math.random()*156)+100);
  ellipse(x,y,siz,siz);
  if(siz < 4){
    ellipse(x,y,siz,siz);
  }
  else{
    myFractal(x-siz/6,y-siz/6,siz/4);
    myFractal(x-siz/6,y+siz/6,siz/4);
    myFractal(x+siz/6,y-siz/6,siz/4);
    myFractal(x+siz/6,y+siz/6,siz/4);
  }
}
