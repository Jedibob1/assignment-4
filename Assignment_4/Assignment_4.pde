Player player;
Obstical[] obstical;


void setup(){
  size(400,400);
  rectMode(CENTER);
  player = new Player(80,100);
  obstical = new  Obstical[12];
  for(int i = 0; i < obstical.length ; i++){
     obstical[i] = new Obstical(int(random(400,1800)));
     if(obstical[i].position.y <= 0){
        obstical[i].position.y = random(400,1800);
        if(i == int(obstical.length)){
          
        }
      }
     println(i);
  }
  
}     
void draw(){
 background(255);
 
 fill(0);
 
 rect(200,340,400,120);
 player.display();
 player.printStuff();
 
 
 player.move();
  for(int i = 0; i < obstical.length ; i++){
   
   obstical[i].display();
   obstical[i].move();
   
  
 }
 
 
 if(keyPressed){
   player.jump();
   
 }
 
 
 
}

void keyPressed(){
 
  
  
}
