void activatePage(page p){
  pageChanged = true;
  //deactivates other pages:
  for(int i = 0; i<pages.size(); i++){
    if(pages.get(i) != p){
      pages.get(i).setIsActive(false);  
    }
  }
  //Activates page:
  p.setDrawOnce(true);
}

//Important---
void drawFrame(page p){
  
  drawPageLayout(p);
  drawPageButtons(p);
  
  p.setIsActive(true);
  p.setDrawOnce(false);
}

void drawPageLayout(page p){
  String name = p.pageTag();
  if(!name.equals("entityCreator.pg") && p.layerPriority() == 3){
    image(blank,0,0);
  }
  if(boxGrid && !name.equals("entityCreator.pg") && p.layerPriority() == 3){
    image(grid,0,0);
  }
  
  if(p.layerPriority==3){
    image(p.getPGraphic(),0,0);
  }
  
  if(name.equals("playScreen.pg")){
    drawBinaryBlocks();
  }
  if(name.equals("editLevel.pg")){
    drawEditingBlocks();
  }
  if(name.equals("entityCreator.pg")){
    drawTempShapes();
  }
  
  if(p.layerPriority<=2){
    image(p.getPGraphic(),0,0);
  }
}
void drawPageButtons(page p ){
  String name = p.pageTag();
  for(int i = 0; i<p.getPageButtons().size(); i++){
    drawButton(p.getPageButtons().get(i));
  }
  if(name.equals("levels.pg")){
    for(int col = 1; col<=3; col++){
      for(int row = 1; row<=3; row++){
        button tempB = new button(grey1,0,"tempLevel",(int)(4.64*s+(row*3.299*s)),(int)(2.64*s+(col*3.299*s)),(int)(2.566*s),(int)(2.566*s));
        //buttonTag will later be used as index for ArrayList
        tempB.setButtonTag((3*(col-1)+row)-1);
        drawButton(tempB);
      }
    }
  }
  
}
