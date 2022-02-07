void setupGraphics(){
  boxGrid();
  basicCorners();
  pageBackDrops();
  buttonGraphics();
}
//----------@----------@----------@----------@----------@----------@----------
//Page Backdrops:
PGraphics blank;
PGraphics PG;
PGraphics mainPG;
PGraphics lvlsPG;
PGraphics playPG;
PGraphics pausPG;
PGraphics editPG;
PGraphics ebarPG;
PGraphics eCrePG;
PGraphics ePauPG;
PGraphics settPG;

void pageBackDrops(){
  blank = createGraphics(sW,sH);
  mainPG = createGraphics(sW,sH);
  lvlsPG = createGraphics(sW,sH);
  playPG = createGraphics(sW,sH);
  pausPG = createGraphics(sW,sH);
  editPG = createGraphics(sW,sH);
  ebarPG = createGraphics(sW,sH);
  eCrePG = createGraphics(sW,sH);
  settPG = createGraphics(sW,sH);
  ePauPG = createGraphics(sW,sH);
  
  blank.beginDraw();
  blank.background(grey1);
  blank.endDraw();
  
  mainPG.beginDraw();
  mainPG.image(corners,0,0);
  mainPG.stroke(0);
  mainPG.fill(0);
  mainPG.textSize(fitText(11*s,2*s,"Heavy Blocks")); 
  mainPG.text("Heavy Blocks",2.5*s,1.75*s);
  mainPG.strokeWeight(settStroke);
  mainPG.fill(grey2,240);
  mainPG.rect(7.5*s,9.75*s,10*s,5.5*s);
  mainPG.endDraw();
  
  settPG.beginDraw();
  settPG.image(corners,0,0);
  settPG.fill(200,100);
  settPG.rect(0,0,width,height);
  settPG.fill(grey2,240);
  settPG.stroke(0);
  settPG.strokeWeight(settStroke);
  settPG.rect(4*s,5*s,11*s,13*s);
  settPG.rect(15.5*s,5*s,5.5*s,13*s);
  settPG.endDraw();
 
  lvlsPG.beginDraw();
  lvlsPG.image(corners,0,0);
  lvlsPG.stroke(0);
  lvlsPG.fill(0);
  lvlsPG.textSize(fitText(11*s,2*s,"Heavy Blocks")); 
  lvlsPG.text("Levels",sW/2-(textWidth("Levels")/2),5*s-.5*s);
  lvlsPG.fill(grey2);
  lvlsPG.strokeWeight(settStroke);
  lvlsPG.rect(7*s,5*s,11*s,13*s);
  lvlsPG.endDraw();
  
  editPG.beginDraw();
  editPG.image(grid,0,0);
  editPG.endDraw();
  
  eCrePG.beginDraw();
  eCrePG.fill(grey2,240);
  eCrePG.stroke(0);
  eCrePG.strokeWeight(settStroke);
  eCrePG.rect(4*s,5*s,11*s,13*s);
  eCrePG.rect(15.5*s,5*s,5.5*s,13*s);
  eCrePG.endDraw();
  
  pausPG.beginDraw();
  pausPG.fill(200,100);
  pausPG.rect(0,0,width,height);
  pausPG.fill(grey2,240);
  pausPG.stroke(0);
  pausPG.strokeWeight(settStroke);
  pausPG.rect(7*s,5*s,11*s,13*s);
  pausPG.endDraw();
  
  ePauPG.beginDraw();
  ePauPG.fill(200,100);
  ePauPG.rect(0,0,width,height);
  ePauPG.fill(grey2,240);
  ePauPG.stroke(0);
  ePauPG.strokeWeight(2);
  ePauPG.endDraw();
  
}
//----------@----------@----------@----------@----------@----------@----------
//Button Graphics:

void buttonGraphics(){
  
}

//----------@----------@----------@----------@----------@----------@----------
//Button Icons:
void setupImages(){
  openMainScreenB.setIcon(loadImage("Home.png"));
  openPlayPause.setIcon(loadImage("Pause.png"));
  openEditPause.setIcon(loadImage("Pause.png"));
  openSettingsB.setIcon(loadImage("Settings.png"));
  openEditScreenB.setIcon(loadImage("Edit.png"));
  pauseLevels.setIcon(loadImage("Menu.png"));
  pauseRestart.setIcon(loadImage("Restart.png"));
  pauseResume.setIcon(loadImage("Play.png"));
  newLevel.setIcon(loadImage("Plus2.png"));
  block1 = loadImage("Block2(128).png");
  block1.resize(s,s);
}

//----------@----------@----------@----------@----------@----------@----------
//General Graphics:
PGraphics grid;
void boxGrid(){
  grid = createGraphics(sW,sH);
  grid.beginDraw();
  for(int x = 0; x<25; x++){
    for(int y = 0; y<25; y++){
      grid.noFill();
      grid.stroke(0);
      grid.strokeWeight(1);
      grid.rect(x*s,y*s,s,s);
    }
  }
  grid.endDraw();
}
PGraphics corners;
void basicCorners(){
  int cornerH = 10*s+6;
  int cornerW = 2*s+6;
  corners = createGraphics(sW,sH);
  corners.beginDraw();
  corners.fill(grey3);
  corners.stroke(0);
  corners.strokeWeight(settStroke);
  corners.rect(-6,-6,cornerW,cornerH);
  corners.rect(-6,sH-cornerH+6,cornerW,cornerH);
  corners.rect(sH-cornerW+6,-6,cornerW,cornerH);
  corners.rect(sH-cornerW+6,sH-cornerH+6,cornerW,cornerH);
  corners.endDraw();
}
