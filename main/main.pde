import controlP5.*;
ControlP5 cp5;

Button play;
Button exit;
Button manche3;
Button manche5;
Button manche7;
int screen;
int manche;

void setup() {
  size(600, 600);
  textSize(40);
  PFont font = createFont("arial", 30);
  cp5 = new ControlP5(this);

  play = cp5.addButton("play")
    .setPosition(250, 300)
    .setSize(100, 50)
    .setFont(font);

  exit = cp5.addButton("exit")
    .setPosition(250, 350)
    .setSize(100, 50)
    .setFont(font);

  manche3 = cp5.addButton("3")
    .setPosition(225, 300)
    .setSize(50, 50)
    .setFont(font);

  manche5 = cp5.addButton("5")
    .setPosition(275, 300)
    .setSize(50, 50)
    .setFont(font);

  manche7 = cp5.addButton("7")
    .setPosition(325, 300)
    .setSize(50, 50)
    .setFont(font);

  manche3.hide();
  manche5.hide();
  manche7.hide();
}

void draw() {
  if (screen == 0) {
    titlescreen();
  } 
  if(screen == 1){
    choixManche();
  }
  if(screen == 2){
    background(255);
  }
}

void controlEvent(ControlEvent theEvent) {
  if (theEvent.isController()) {
    if (theEvent.getController().getName() == "play" ) {
      screen = 1;
    }
    if(theEvent.getController().getName() == "3"){
      manche = 1;
      screen = 2;
    }
    if(theEvent.getController().getName() == "5"){
      manche = 2;
      screen = 2;
    }
    if(theEvent.getController().getName() == "7"){
      manche = 3;
      screen = 2;
    }
  }
}

void titlescreen() {
  background(#0D51D8);
  textAlign(CENTER);
  text("MORPION", 300, 100);
}
