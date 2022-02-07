void applyPhysics(entity e){
  //gravity:
  if(e.getType().equals("player")){
    
  }
  //is moving right and can move right
  if(e.vX() > 0 || e.aX() > 0){
    if(canMove(e.vX(),0,e)){
      e.setX(e.posX() + e.vX());
      if(e.vX()<s/3){
        e.setVX(e.vX() + e.aX());
      }
      
    }else{
      e.setVX(0);
    }
  }
  //is moving left and can move left
  if(e.vX() < 0 || e.aX() < 0){
    if(canMove(e.vX(),0,e)){
      e.setX(e.posX() + e.vX());
      e.setVX(e.vX() + e.aX());
    }else{
      e.setVX(0);
    }
  }
 
}

boolean canMove(float delX, float delY, entity e){
  int[][] s = e.getShape();
  float nX = (delX+e.posX())/this.s;
  float nY = (delY+e.posY())/this.s;
  int newX = ceil(nX);
  int newY = ceil(nY);
 
  for(int x = 0; x<s.length-1; x++){
    for(int y = 0; y<s[0].length; y++){ 
      if(levelBinaryBlocks[newX+x-1][newY+y-1] >= 1 && s[x][y] == 1){
        return false;
      }
    }
  }  
  return true;
}



//Animate falling blocks:
boolean hasWaited = false;
int nowCustom = -1000;
int waitTimeCustom = -1000;
//set false any time playScreen starts.

boolean waitedOnce = false;
int count = 0;
void runAnimation(){
  if(hasWaited && waitedOnce==true){
    nowCustom = millis();
    //33 millis per frame (3~30 frames per second)
    waitTimeCustom = 33;
    hasWaited = false;
  }
  if(millis() > nowCustom + waitTimeCustom){
    hasWaited = true;
    waitedOnce = true;
    
    count ++;
    drawFrame(playScreen);
    drawEntities();
  }
  
}
