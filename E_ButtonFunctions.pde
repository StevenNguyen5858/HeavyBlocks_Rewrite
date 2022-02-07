//If p active, run toggleSelect on buttons
void deselectAllPageButtons(page p){
  for(int i = 0; i<p.getPageButtons().size(); i++){
    button temp = p.getPageButtons().get(i);
    String name = temp.getName();
    if(!name.equals("Audio") && !name.equals("Controls") && !name.equals("Video")){
      temp.setIsSelected(false);
    }
  }
}
String priorityBreak = "false";
void hitCheckPage(page p){
  priorityBreak = "false";
  //If clicked, run button functions and save button name as "priorityBreak"
  for(int i = 0; i<p.getPageButtons().size(); i++){
    button temp = p.getPageButtons().get(i);
    if(hitCheck(temp)){
      toggleSelect(temp);
    }
  }
  //If button isnt "priorityBreak", deselect it.
  for(int i = 0; i<p.getPageButtons().size() && priorityBreak != "false"; i++){
    button temp = p.getPageButtons().get(i);
    if(!temp.getName().equals(priorityBreak)){
      selectOff(temp);
      //revertButtonFunctions(temp);
    }
  }
  //9 level buttons on levels.pg
  if(p.pageTag().equals("levels.pg")){
    for(int col = 1; col<=3; col++){
      for(int row = 1; row<=3; row++){
        button tempB = new button(grey1,0,"tempLevel",(int)(4.64*s+(row*3.299*s)),(int)(2.64*s+(col*3.299*s)),(int)(2.566*s),(int)(2.566*s));
        selectOff(tempB);
        //buttonTag will later be used as index for ArrayList
        tempB.setButtonTag((3*(col-1)+row)-1);
        if(hitCheck(tempB) && tempB.getButtonTag()+1<=numLevels){
          toggleSelect(tempB);
        }
      }
    }
  }
  //Every box in grid.
  if(p.pageTag().equals("editLevel.pg") && priorityBreak == "false"){
    for(int x = 1; x<=27; x++){
      for(int y = 1; y<=25; y++){
        button tempEditB = new button(grey1,0,"editBox",((x-1)*s)+2,((y-1)*s)+2,s-4,s-4);
        selectOff(tempEditB);
        //revertButtonFunctions(temp);
        //buttonTag will later be used as index for ArrayList
        tempEditB.setButtonTag((3*(y-1)+x)-1);
        if(hitCheck(tempEditB)){
          toggleSelect(tempEditB);
        }
      }
    }
  }
  if(p.pageTag().equals("entityCreator.pg")){
    for(int x = 0; x<tempShapeS.length; x++){
      for(int y = 0; y<(tempShapeS[0].length); y++){    
        button tempEditB = new button(grey1,0,"editTempShape",((x-1)*s)+14.5*s,(y*s)+13*s,s,s);
          selectOff(tempEditB);
          //revertButtonFunctions(temp);
          //buttonTag will later be used as index for ArrayList
          tempEditB.setButtonTag((3*(y-1)+x)-1);
          if(hitCheck(tempEditB)){
            toggleSelect(tempEditB);
          }
      
      }
    }
  }
}
//ToggleSelect/button control:
void toggleSelect(button b){
  priorityBreak = b.getName();
  if(!b.isSelected()){
    selectOn(b);
    if(b.isValueModifier()){
      selectOff(b);
    }
  }else{
    selectOff(b);
  }
}
void selectOn(button b){
  if(buttonFunctions(b)){
    b.setIsSelected(true);
    if(pageChanged){
      deselectAllPageButtons(lastActivePage);
    }
    if(!b.getName().equals("editBox") && !b.getName().equals("editTempShape")){
      drawButton(b);
    }
  }
}
void selectOff(button b){
  if(b.isSelected()){
    b.setIsSelected(false);
    drawButton(b);
  }
} 
public boolean hitCheck(button b){
    if(b.getX()<mouseX && mouseX<(b.getX()+b.getW())  &&  b.getY()<mouseY && mouseY<(b.getY()+b.getH())){
      return true;
    }else{
      return false;  
    }
}
//----------@----------@----------@----------@----------@----------@----------  
//----------@----------@----------@----------@----------@----------@----------  
page lastActivePage;
boolean pageChanged;
int currentLevel;
boolean buttonFunctions(button b){
  lastActivePage = getActivePage();
  pageChanged = false;
  String name = b.getName();
  //----------@----------@----------@----------@----------@----------@----------  
  //General Buttons
  if(name.equals("main") || name.equals("Exit")){
    activatePage(main);
    return true;
  }
  if(name.equals("playPause")){
    activatePage(playPause);
  }
  //----------@----------@----------@----------@----------@----------@----------  
  //PlayScreen
  if(name.equals("pauseLevels")){
    activatePage(levels);
  }
  if(name.equals("pauseRestart")){
    loadLevel(mainData, currentLevel);
    activatePage(playScreen);
  }
  if(name.equals("pauseResume")){
    activatePage(playScreen);
  }
  //----------@----------@----------@----------@----------@----------@----------  
  //MainScreen
  if(name.equals("Play")){
    currentLevel = 0;
    loadLevel(mainData, currentLevel);
    activatePage(playScreen);
    return true;
  }
  if(name.equals("Levels")){
    activatePage(levels);
    return true;
  }
  if(name.equals("Settings")){
    activatePage(settings);
    return true;
  }
  //----------@----------@----------@----------@----------@----------@----------  
  //SettingScreen
  if(name.equals("Controls")){
    activatePage(controls);
    return true;
  }
  if(name.equals("Audio")){
    activatePage(audio);
    return true;
  }
  if(name.equals("Video")){
    activatePage(video);
    return true;
  }
  if(name.equals("Save & Exit")){
    
    ammendString("scale", str(settingScaleVD.getVD()));
    scale = settingScaleVD.getVD();
    ammendString("stroke", str(strokeVD.getVD()));
    settStroke = strokeVD.getVD();
    pageBackDrops();
    //ammendString("volume", str(volume));
    activatePage(main);
    return true;
  }
  //----------@----------@----------@----------@----------@----------@----------  
  //LevelsScreen
  if(name.equals("tempLevel")){
   loadLevel(mainData, b.getButtonTag());
   currentLevel = b.getButtonTag();
   activatePage(playScreen);
  }
  if(name.equals("newLevel")){
    //clear binary level:
    levelBinaryBlocks = setMapBounds();
    activatePage(editLevel);
    
  }
  if(name.equals("edit")){
    levelBinaryBlocks = levelBinaryBlocks.clone();
    activatePage(editLevel);
    return true;
  }
  //----------@----------@----------@----------@----------@----------@----------  
  //EditScreen
  if(name.equals("openEntityCreator")){
    activatePage(entityCreator);
    return true;
  }
  if(name.equals("toggleSquare")){
    //temp
    return true;
  }
  if(name.equals("toggleDelete")){
    //temp
    return true;
  }
  if(name.equals("toggleTempB1")){
    //temp
    return true;
  }
  if(name.equals("toggleTempB2")){
    //temp
    return true;
  }
  if(name.equals("toggleTempB3")){
    //temp
    return true;
  }
  if(name.equals("editPause")){
    activatePage(editPause);
  }
  if(name.equals("eResume")){
    activatePage(editLevel);
  }
  if(name.equals("eSave & Exit")){
    writeLevel(currentLevel);
    activatePage(main);
  }
  
    if(name.equals("editBox")){
      
      int tBB = levelBinaryBlocks[(b.getX()/s)+1][b.getY()/s];
      if(toggleSquareB.isSelected() && tBB != -2 && (tBB == 0 || tBB == -1)){
        levelBinaryBlocks[(b.getX()/s)+1][b.getY()/s] = 1;
      }
      if(toggleDeleteB.isSelected() && tBB != -2 && (tBB != 3 || tBB == -3)){
        levelBinaryBlocks[(b.getX()/s)+1][b.getY()/s] = 0;
      }
      drawPageLayout(editLevel);
      drawPageButtons(editLevel);
      return true;
    }
  if(name.equals("editTempShape")){
    if(tempShapeS[(int)(b.getX()/s-12.5)][(int)(b.getY()/s-12.5)] == 1){
      tempShapeS[(int)(b.getX()/s-12.5)][(int)(b.getY()/s-12.5)] = 0;
    }
    else if(tempShapeS[(int)(b.getX()/s-12.5)][(int)(b.getY()/s-12.5)] == 0){
      tempShapeS[(int)(b.getX()/s-12.5)][(int)(b.getY()/s-12.5)] = 1;
    }
    drawTempShapes();
    return true;
  }
  //----------@----------@----------@----------@----------@----------@----------  
  //EntityCreator
  if(name.equals("setTempB1")){
    shapeS1 = tempShapeS;
    drawButton(toggleTempB1);
    saveEditorShapes("mTES1", shapeS1);
    saveStrings("Z_GameData.txt",mainData);
    activatePage(editLevel);
    return true;
  }
  if(name.equals("setTempB2")){
    shapeS2 = tempShapeS;
    drawButton(toggleTempB2);
    saveEditorShapes("mTES2", shapeS2);
    saveStrings("Z_GameData.txt",mainData);
    activatePage(editLevel);
    return true;
  }
  if(name.equals("setTempB3")){
    shapeS3 = tempShapeS;
    drawButton(toggleTempB3);
    saveEditorShapes("mTES3", shapeS3);
    saveStrings("Z_GameData.txt",mainData);
    activatePage(editLevel);
    return true;
  }
    
  if(name.equals("textBox")){
    return true;
  }
  if(b.isValueDisplay()){
    //Add text recognition here 'key' then add return true;
  }
  if(b.isValueModifier()){
  button tempB = new button();
    for(int x = 0; x<getActivePage().getPageButtons().size(); x++){
      tempB = getActivePage().getPageButtons().get(x);
      if(tempB.isValueDisplay() && compareTags(tempB,b)){
        float roundedSum = round((tempB.getVD()+b.getVM()) * 10) / 10.0;
        if(tempB.getVDMin()<=roundedSum && roundedSum<=tempB.getVDMax()){
          tempB.setValueDisplay(roundedSum);
          if(b.getLineInteractionTag().equals("grid")){
            if(tempB.getVD() == 1){
              boxGrid = true;
            }else{
              boxGrid = false;
            }
          }
          drawButton(tempB);
        }
      }
    }
  return true;
  }
  return false;
}
public page getActivePage(){
  for(int i = 0; i<pages.size(); i++){
      page tempP = pages.get(i);
      if(tempP.isActive()){
        return tempP;
      }
  }
  return main;
}

public boolean compareTags(button b, button b1){
  if(b.getLineInteractionTag().equals(b1.getLineInteractionTag())){
    return true;
  }else{
    return false;
  }
}
