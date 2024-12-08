class Player{

  PVector velocity;
  PVector position; 
  PVector acceleration;
  PVector jumpAcceleration;
  PVector gravityAcceleration;
  float jumpHeight = -10;
  float gravity = 10;
  float ground = 280;
  boolean touchGround;
  
  Player(float x, float y){
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0, 0);
    jumpAcceleration = new PVector(0,0);
    
  }
  
  
  
  void display(){
    rectMode(CENTER);
    fill(0,0,255);
    rect(position.x,position.y,40,60);
    
    
  }
  void move(){
    if(position.y >= 250 && velocity.y == 0 && acceleration.y == 0){
      
      
    }
    
  }
    
  void printStuff(){
    println(touchGround);
    println(position.y);
  }



}
