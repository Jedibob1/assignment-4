class Player{

  PVector velocity;
  PVector position; 
  PVector acceleration;
  float jumpHeight = -60;
  float gravity = 1;
  float ground = 280;
  boolean touchGround;
  
  Player(float x, float y){
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    
  }
  
  
  
  void display(){
    rectMode(CENTER);
    fill(0,0,255);
    rect(position.x,position.y,40,60);
    
    
  }
  void move(){
    if(position.y == 250){
      velocity.y = 0;
      acc
    }
    
  }
    
  void printStuff(){
    println(touchGround);
    println(position.y);
  }



}
