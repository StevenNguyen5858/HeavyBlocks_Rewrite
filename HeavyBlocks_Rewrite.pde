//commit test
int sW = 0;
int sH = 0;
int s = 0;
void setup(){
  frameRate(60);
  setupData();
  //If data text file is corrupted, run resetDefaultData()
  //resetDefaultData();
  loadData();
  setupGraphics();
  setupPages();
  setupButtons();
  setupImages();
  setupEntities();
}
void settings(){
 mainData = loadStrings("Z_GameData.txt");
 boolean foundStart = false;
  String value = "";
  String str = mainData[2];
  boolean end = false;
  for(int a = 0; a<str.length() && !end; a++){
    if(str.substring(a,a+1).equals(";")){
      scale = float(value);
      foundStart = false;
      end = true;
    }
    if(foundStart){
      value = value + str.substring(a,a+1);
    }
    if(str.substring(a,a+1).equals("=")){
      foundStart = true;
    }
  }
  sW = ((int)((displayHeight*scale)/(25)/16))*25*16;
  sH = ((int)((displayHeight*scale)/(25)/16))*25*16;
  s = (int)(sH/25);
  size(sW,sH);
}

int fpsAverage = 30;
void setTitle() {
  fpsAverage = (int)((fpsAverage *9 + frameRate)/10);
  String sFPS = Integer.toString(int(fpsAverage));
  surface.setTitle( "FPS: " + sFPS + " | " + nf(frameRate,2,2) + " | " + millis()/1000 + " | " + nf(player1.posX()/s,2,1) + " | " + nf(player1.posY()/s,2,0));
}
void draw(){
  setTitle();
  //draw page if willDrawScreen:
  for(int i = 0; i<pages.size(); i++){
    page temp = pages.get(i);
    if(temp.drawOnce){
      drawFrame(temp);
    }
  }
  if(getActivePage().pageTag().equals("playScreen.pg")){
    playerMovement();
    runAnimation();
  }
  editingCues();
}




void mousePressed(){
  hitCheckPage(getActivePage());
}
void mouseMoved(){
  
}
void mouseDragged(){
  if(editLevel.isActive()){
  int tBB2 = levelBinaryBlocks[floor(mouseX/s)+1][floor(mouseY/s)];
    if(toggleSquareB.isSelected() && tBB2 != -2 && (tBB2 == 0 || tBB2 == -1)){
      levelBinaryBlocks[floor(mouseX/s)+1][floor(mouseY/s)] = 1;
    }
    if(toggleDeleteB.isSelected() && tBB2 != -2 && (tBB2 != 3 || tBB2 == -3)){
      levelBinaryBlocks[floor(mouseX/s)+1][floor(mouseY/s)] = 0;
    }
  }
}
void playerMovement(){
  if(p1Right){
    player1.setX(player1.vX()+player1.posX());
    player1.setVX(min(player1.vX()+player1.aX(), player1.getMaxSpeed()));
  }
}

void keyReleased(){
  if(playScreen.isActive()){
    if(key == 'd' || key == 'a'){
      p1Left = false;
      p1Right = false;
    }
  }
}
boolean p1Left = false;
boolean p1Right = false;
void keyPressed(){
  if(playScreen.isActive()){
    if(key == 'd'){
      p1Right = true;
    }
    if(key == 'a'){
      p1Left = true;
    }
  }
  
  if(editLevel.isActive()){
    if(key == '1'){
      toggleSelect(toggleSquareB);
    }
    if(key == '2'){
      toggleSelect(toggleDeleteB);
    }
    if(key == '3'){
      toggleSelect(toggleTempB1);
    }
    if(key == '4'){
      toggleSelect(toggleTempB2);
    }
    if(key == '5'){
      toggleSelect(toggleTempB3);
    }
    for(int i = 0; i<editLevel.getPageButtons().size(); i++){
      button temp = editLevel.getPageButtons().get(i); 
      if(!temp.getName().equals(priorityBreak)){
        selectOff(temp);
      }
    }
    if(levelBinaryBlocks[floor(mouseX/s)+1][floor(mouseY/s)] == -1){
      levelBinaryBlocks[floor(mouseX/s)+1][floor(mouseY/s)] = 0;
    }
  }
}
