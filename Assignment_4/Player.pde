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
    
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0, 0.5);
    
    
  }
  
  
  
  void display(){
    rectMode(CENTER);
    fill(0,0,255);
    rect(position.x,position.y,40,60);
    
    
  }
  void move(){
    
    
   
    
    if(position.y <= 249){
      velocity.y += acceleration.y;
      
    }else if (velocity.y > 0){
      velocity.y = 0;
      position.y = 250;
      
    }
    position.y += velocity.y;
    
  
    
  }
  
  
  void printStuff(){
    //println(position.y);
  }
  
  
  void jump(){
    if(position.y >= 249){
      if(velocity.y == 0 && position.y == 250){
         velocity.y = -12;
         
         println(position.y + " " + velocity.y + " " + acceleration.y);
      }
    }
    
    
  }


}
