import controlP5.*;
ControlP5 cp5;

Button play;
Button exit;

void setup() {
  size(600, 600);
  textSize(40);
  PFont font = createFont("arial", 30);
  cp5 = new ControlP5(this);

  play = cp5.addButton("play")
    .setPosition(250, 300)
    .setSize(100, 50)
    .setFont(font)
    .setValue(0);

  exit = cp5.addButton("exit")
    .setPosition(250, 350)
    .setSize(100, 50)
    .setFont(font);

  background(#0D51D8);
}

void draw() {
  if (play.getValue() == 0) {
    titlescreen();
  } else {
    background(0);
    play.hide();
    exit.hide();
  }
}

void controlEvent(ControlEvent theEvent) {
  if (theEvent.isController()) {
    if (theEvent.getController().getName() == "play" ) {
      play.setValue(1);
    }
  }
}

void titlescreen() {
  textAlign(CENTER);
  text("MORPION", 300, 100);
}
