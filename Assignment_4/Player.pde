class Player{

  PVector velocity;
  PVector position; 
  PVector acceleration;
  PVector jumpAcceleration;
  PVector gravityAcceleration;
  float jumpHeight;
  float gravity;
  float jump;
  float ground = 280;
  boolean canJump;
  
  Player(float x, float y){
    jumpHeight = (-2.5);
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0, 0);
    jumpAcceleration = new PVector(0,jumpHeight);
    gravityAcceleration = new PVector(0, gravity);
    
  }
  
  
  
  void display(){
    rectMode(CENTER);
    fill(0,0,255);
    rect(position.x,position.y,40,60);
    
    
  }
  void move(){
    
    
    if(position.y >= 249){
      if(velocity.y == 0 && acceleration.y == 0 && position.y == 250){
        jump = jumpHeight;
      
      }else{
        jump = 0;
      }
    }
    
    
    velocity.add(jumpAcceleration);
  
    
  }
    
  void printStuff(){
    //println(position.y);
  }
  
  
  void gravity(){
    if(position.y >= 249){
      
      gravity = 0;
    }else{
   gravity = .01;
    }
    
    gravityAcceleration.y = gravity;
    acceleration.add(gravityAcceleration);
    velocity.add(acceleration);
    position.add(velocity);
    
  }


}
