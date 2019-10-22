import controlP5.*;
ControlP5 cp5;

void setup(){
  size(600,600);
  textSize(40);
  cp5 = new ControlP5(this);
  
  cp5.addButton("play")
     .setValue(0)
     .setPosition(300,300)
     .setSize(100,50);
  
  cp5.addButton("exit")
     .setPosition(300,350)
     .setSize(100,50);
  
  background(#0D51D8);
}

void draw(){
}

void controlEvent(ControlEvent theEvent){
  if(theEvent.isController()){
    print("recu un event de : " + theEvent.getController().getName() + " de valeur" + theEvent.getController().getValue() );
  }
}
