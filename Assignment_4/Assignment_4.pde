Player player;
Obstical obstical;


void setup(){
  size(400,400);
  rectMode(CENTER);
  player = new Player(80,250);
  obstical = new  Obstical(400);
  
  
}
void draw(){
 background(255);
 
 fill(0);
 
 rect(200,340,400,120);
 player.display();
 player.printStuff();
 //player.gravity();
 
 if(player.position.y > 250){
     player.position.y = 250;
     player.velocity.y = 0; 
 }
 
 if(keyPressed){
   player.move();
   
 }else{
   player.gravity();
 }
 
 obstical.display();
 obstical.move();
 
}

void keyPressed(){
 // if(keyPressed){
  //  player.move();
    
  //}
  
  
  
}
