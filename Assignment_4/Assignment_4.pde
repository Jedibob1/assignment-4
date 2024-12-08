Player player;



void setup(){
  size(400,400);
  rectMode(CENTER);
  player = new Player(80,250);
  
}

void draw(){
 background(255);
 
 fill(0);
 
 rect(200,340,400,120);
 player.display();
 player.printStuff();
  
  
}

void keyPressed(){
  
  
  
  
}
