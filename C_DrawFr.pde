void activatePage(page p){
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
  backDrop();
  boxGrid();
  if(name.equals("main.pg")){
    basicCorners();
    System.out.print("test");
  }
}
void drawPageButtons(page p ){
}

void boxGrid(){
  for(int x = 0; x<25; x++){
    for(int y = 0; y<25; y++){
      defaultRect(-1,0);
      rect(x*s,y*s,s,s);
    }
  }
}
void basicCorners(){
  defaultRect(120,0);
  rect(0,0,2*s,10*s);
  rect(0,sH-10*s,2*s,10*s);
  rect(sH-2*s,0,2*s,10*s);
  rect(sH-2*s,sH-10*s,2*s,10*s);
}
