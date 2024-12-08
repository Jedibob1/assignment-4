Player player;
Obstical obstical;


void setup(){
  size(400,400);
  rectMode(CENTER);
  player = new Player(80,250);
  obstical = new  Obstical(300,250);
}

void draw(){
 background(255);
 
 fill(0);
 
 rect(200,340,400,120);
 player.display();
 player.printStuff();
 obstical.display();
 obstical.move();
  
}

void keyPressed(){
  if(keyPressed){
    player.move();
    
  }
  
  
  
}
