class Obstical{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float speed = -0.1;
  
  Obstical(float x){
    position = new PVector(x, 250);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
  
  void display(){
    fill(255,0,0);
    rect(position.x,position.y, 50,50);
    
    
  }
  
  
  
  
  void move(){
     acceleration = new PVector(speed, 0);
     velocity.add(acceleration);
     position.add(velocity);
    
    
  }
  
  
  
  
  
  
  
  
  
  
}
