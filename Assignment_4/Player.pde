class Player{

  PVector velocity;
  PVector position; 
  PVector acceleration;
  PVector jumpAcceleration;
  PVector gravityAcceleration;
  float jumpHeight = -10;
  float gravity = 1;
  float jump;
  float ground = 280;
  boolean canJump;
  
  Player(float x, float y){
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0, 0);
    jumpAcceleration = new PVector(0,0);
    gravityAcceleration = new PVector(0, 0);
    
  }
  
  
  
  void display(){
    rectMode(CENTER);
    fill(0,0,255);
    rect(position.x,position.y,40,60);
    
    
  }
  void move(){
    jumpAcceleration = new PVector(0,jump);
    gravityAcceleration = new PVector(0, gravity);
    
    if(position.y >= 250 ){
      velocity.y = 0;  
      acceleration.y = 0;
      
    }else{
      acceleration.add(gravityAcceleration);
    }
    
    
    
    if(velocity.y == 0 && acceleration.y == 0 && canJump){
      jump = jumpHeight;
    }else{
      jump = 0;
    }
    
    
    
    
    
    acceleration.add(jumpAcceleration);
    velocity.add(acceleration);
    
    position.add(velocity);
    
    
    
  }
    
  void printStuff(){
    println(canJump);
    println(position.y);
  }



}
