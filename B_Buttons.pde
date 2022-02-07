//Create ArrayList<button> for each page.
//Initialize button (objects) here using default constructor.(#Help).
ArrayList<button> mainScreenButtons = new ArrayList<button>();
button openPlayB = new button();
button openLevelsB = new button();
button openSettingsB = new button();
ArrayList<button> settingScreenButtons = new ArrayList<button>();
button openMainScreenB = new button();
button exitSettingsB = new button();
button openControlsB = new button();
button openAudioB = new button();
button openVideoB = new button();
button saveSettingsB = new button();
ArrayList<button> audioScreenButtons = new ArrayList<button>();
button volumeVD = new button();
  button volumeMM = new button();
  button volumeMP = new button();
ArrayList<button> videoScreenButtons = new ArrayList<button>();
button strokeVD = new button();
  button strokeMP = new button();
  button strokeMM = new button();
ArrayList<button> controlScreenButtons = new ArrayList<button>();
button settingScaleVD = new button();
  button settingScaleMP = new button();
  button settingScaleMM = new button();
button gridVD = new button();
  button gridMM = new button();
  button gridMP = new button();
ArrayList<button> levelsScreenButtons = new ArrayList<button>();
button levelsBack = new button();
button levelsForward = new button();
button newLevel = new button();
ArrayList<button> playScreenButtons = new ArrayList<button>();
button openEditScreenB = new button();
button openPlayPause = new button();
ArrayList<button> editScreenButtons = new ArrayList<button>();
    button openEditPause = new button();
  ArrayList<button> editBarScreenButtons = new ArrayList<button>();
    button toggleSquareB = new button();
    button toggleDeleteB = new button();
    button toggleTempB1 = new button();
    button toggleTempB2 = new button();
    button toggleTempB3 = new button();
    button createEntityB = new button();
    ArrayList<button> entityCreatorButtons = new ArrayList<button>();
      button toEditB = new button();
      button velocityTypeVD = new button();
        button velocityTypeMM = new button();
        button velocityTypeMP = new button();
      button interactionTypeVD = new button();
        button interactionTypeMM = new button();
        button interactionTypeMP = new button();
      button velocityECVD = new button();
        button velocityECMM = new button();
        button velocityECMP = new button();
      button setTempB1 = new button();
      button setTempB2 = new button();
      button setTempB3 = new button();
ArrayList<button> playPauseScreenButtons = new ArrayList<button>();
      button pauseLevels = new button();
      button pauseRestart = new button();
      button pauseResume = new button();
ArrayList<button> editPauseScreenButtons = new ArrayList<button>();
      button editSave = new button();
      button editResume = new button();
      
void setupButtons(){
  //use button custom constructor to fill in data here.(#Help).
  openPlayB = new button(grey3,0,"Play",8*s,10.25*s,9*s,2*s);
  openLevelsB = new button(grey3,0,"Levels",8*s,12.75*s,9*s,2*s);
  openSettingsB = new button(grey3,0,"Settings",21*s,23*s,1.5*s,1.5*s);
    openControlsB = new button(grey3,0,"Controls",4*s,0,5.5*s,1.5*s);
    openAudioB = new button(grey3,0,"Audio",9.75*s,0,5.5*s,1.5*s);
    openVideoB = new button(grey3,0,"Video",15.5*s,0,5.5*s,1.5*s);
  openMainScreenB = new button(grey3,0,"main",3*s,1*s,1.5*s,1.5*s);
  openPlayPause = new button(grey3,0,"playPause",3*s,1*s,1.5*s,1.5*s);
  
  settingScaleVD = new button(grey3,0,"Scale: ",4.5*s,5.5*s,6*s,1.5*s,scale,0,"scale",.1,1);
    settingScaleMM = new button(grey3,0,"screenScaleMM",11.5*s,5.5*s,1.25*s,1.5*s,.01,-.1,"scale",0,0);
    settingScaleMP = new button(grey3,0,"screenScaleMP",13.25*s,5.5*s,1.25*s,1.5*s,.01,.1,"scale",0,0);
  strokeVD = new button(grey3,0,"Stroke: ",4.5*s,7.5*s,6*s,1.5*s,settStroke,0,"stroke",1,6);
    strokeMM = new button(grey3,0,"strokeMM",11.5*s,7.5*s,1.25*s,1.5*s,.01,-1,"stroke",0,0);
    strokeMP = new button(grey3,0,"strokeMP",13.25*s,7.5*s,1.25*s,1.5*s,.01,1,"stroke",0,0);
  
  volumeVD = new button(grey3,0,"Vol: ",4.5*s,7.5*s,6*s,1.5*s,1.0,0,"volume",0,1);
    volumeMM = new button(grey3,0,"screenScaleMM",11.5*s,7.5*s,1.25*s,1.5*s,.01,-.1,"volume",0,0);
    volumeMP = new button(grey3,0,"screenScaleMP",13.25*s,7.5*s,1.25*s,1.5*s,.01,.1,"volume",0,0);
  gridVD = new button(grey3,0,"Grid: ",4.5*s,9.5*s,6*s,1.5*s,1.0,0,"grid",0,1);
    gridMM = new button(grey3,0,"gridMM",11.5*s,9.5*s,1.25*s,1.5*s,.01,-1,"grid",0,0);
    gridMP = new button(grey3,0,"gridMP",13.25*s,9.5*s,1.25*s,1.5*s,.01,1,"grid",0,0);
  saveSettingsB = new button(grey3,0,"Save & Exit",4.5*s,16*s,5.5*s,1.5*s);
  exitSettingsB = new button(grey3,0,"Exit",11.5*s,16*s,3*s,1.5*s);
  
  levelsBack = new button(grey3,0,"levelsBack",7.939*s,16.34*s,1.46*s,.73*s);
  levelsForward = new button(grey3,0,"levelsForward",15.657*s,16.34*s,1.46*s,.73*s);
  newLevel = new button(grey0,0,"newLevel",(int)(4.64*s+(2*3.299*s)),(int)(2.64*s+(3.299*s)),(int)(2.566*s),(int)(2.566*s));
  
  openEditScreenB = new button(grey3,0,"edit",20.5*s,1*s,1.5*s,1.5*s);
  toggleSquareB = new button(grey3,0,"toggleSquare",3*s,22.5*s,2*s,2*s);
  toggleDeleteB = new button(grey3,0,"toggleDelete",5.5*s,22.5*s,2*s,2*s);
  toggleTempB1 = new button(grey3,0,"toggleTempB1",8.5*s,22.5*s,2*s,2*s);
  toggleTempB2 = new button(grey3,0,"toggleTempB2",11*s,22.5*s,2*s,2*s);
  toggleTempB3 = new button(grey3,0,"toggleTempB3",13.5*s,22.5*s,2*s,2*s);
  createEntityB = new button(grey3,0,"openEntityCreator",20*s,22.5*s,2*s,2*s);
  openEditPause = new button(grey3,0,"editPause",3*s,1*s,1.5*s,1.5*s);
  
  velocityTypeVD = new button(grey3,0,"Type:",13.5*s,6.5*s,3.5*s,1.5*s,0,0,"velocityType",0,0);
    velocityTypeMM = new button(grey3,0,"velocityTypeMM",12*s,6.5*s,1*s,1.5*s,.01,-1,"velocityType",0,0);
    velocityTypeMP = new button(grey3,0,"velocityTypeMP",17.5*s,6.5*s,1*s,1.5*s,.01,1,"velocityType",0,0);
  interactionTypeVD = new button(grey3,0,"Interaction:",13.5*s,8.5*s,3.5*s,1.5*s,0,0,"interactionType",0,2);
    interactionTypeMM = new button(grey3,0,"interactionTypeMM",12*s,8.5*s,1*s,1.5*s,.01,-1,"interactionType",0,0);
    interactionTypeMP = new button(grey3,0,"interactionTypeMP",17.5*s,8.5*s,1*s,1.5*s,.01,1,"interactionType",0,0);
  velocityECVD = new button(grey3,0,"Velocity:",13.5*s,10.5*s,3.5*s,1.5*s,0,0,"velocityEC",-10,10);
    velocityECMM = new button(grey3,0,"velocityECMM",12*s,10.5*s,1*s,1.5*s,.01,-.1,"velocityEC",0,0);
    velocityECMP = new button(grey3,0,"velocityECMP",17.5*s,10.5*s,1*s,1.5*s,.01,.1,"velocityEC",0,0);
  setTempB1 = new button(grey3,0,"setTempB1",7*s,16.5*s,1.5*s,1.5*s);
  setTempB2 = new button(grey3,0,"setTempB2",9*s,16.5*s,1.5*s,1.5*s);
  setTempB3 = new button(grey3,0,"setTempB3",11*s,16.5*s,1.5*s,1.5*s);
  toEditB = new button(grey3,0,"toEditB",5.9*s,5*s,1*s,1*s);
 
  pauseLevels = new button(grey3,0,"pauseLevels",8.5*s,15*s,2*s,2*s);
  pauseRestart = new button(grey3,0,"pauseRestart",11.5*s,15*s,2*s,2*s);
  pauseResume = new button(grey3,0,"pauseResume",14.5*s,15*s,2*s,2*s);
  
  editSave = new button(grey3,0,"eSave & Exit",9.5*s,10.75*s,6*s,1.5*s);
  editResume = new button(grey3,0,"eResume",9.5*s,12.75*s,6*s,1.5*s);
  
  //add button (object) to button ArrayList
  mainScreenButtons.add(openPlayB);
  mainScreenButtons.add(openLevelsB);
  mainScreenButtons.add(openSettingsB);
  
  settingScreenButtons.add(openControlsB);
  settingScreenButtons.add(openAudioB);
  settingScreenButtons.add(openVideoB);
  settingScreenButtons.add(exitSettingsB);
  settingScreenButtons.add(saveSettingsB);
    videoScreenButtons.add(openControlsB);
    videoScreenButtons.add(openAudioB);
    videoScreenButtons.add(openVideoB);
    videoScreenButtons.add(exitSettingsB);
    videoScreenButtons.add(saveSettingsB);
    videoScreenButtons.add(settingScaleVD);
      videoScreenButtons.add(settingScaleMP);
      videoScreenButtons.add(settingScaleMM);
    videoScreenButtons.add(strokeVD);
      videoScreenButtons.add(strokeMP);
      videoScreenButtons.add(strokeMM);
    videoScreenButtons.add(gridVD);
      videoScreenButtons.add(gridMP);
      videoScreenButtons.add(gridMM);
      
    audioScreenButtons.add(openControlsB);
    audioScreenButtons.add(openAudioB);
    audioScreenButtons.add(openVideoB);
    audioScreenButtons.add(exitSettingsB);
    audioScreenButtons.add(saveSettingsB);
    audioScreenButtons.add(volumeVD);
      audioScreenButtons.add(volumeMP);
      audioScreenButtons.add(volumeMM);
      
    controlScreenButtons.add(openControlsB);
    controlScreenButtons.add(openAudioB);
    controlScreenButtons.add(openVideoB);
    controlScreenButtons.add(exitSettingsB);
    controlScreenButtons.add(saveSettingsB);
    
      
  levelsScreenButtons.add(openMainScreenB);
  levelsScreenButtons.add(levelsBack);
  levelsScreenButtons.add(levelsForward);
  levelsScreenButtons.add(newLevel);
  
  playScreenButtons.add(openPlayPause);
  
  editScreenButtons.add(openEditPause);
  editScreenButtons.add(toggleSquareB);
  editScreenButtons.add(toggleDeleteB);
  editScreenButtons.add(toggleTempB1);
  editScreenButtons.add(toggleTempB2);
  editScreenButtons.add(toggleTempB3);
  editScreenButtons.add(createEntityB);
  
  entityCreatorButtons.add(openMainScreenB);
  entityCreatorButtons.add(velocityTypeVD);
  entityCreatorButtons.add(velocityTypeMP);
  entityCreatorButtons.add(velocityTypeMM);
  entityCreatorButtons.add(interactionTypeVD);
  entityCreatorButtons.add(interactionTypeMP);
  entityCreatorButtons.add(interactionTypeMM);
  entityCreatorButtons.add(velocityECVD);
  entityCreatorButtons.add(velocityECMP);
  entityCreatorButtons.add(velocityECMM);
  entityCreatorButtons.add(setTempB1);
  entityCreatorButtons.add(setTempB2);
  entityCreatorButtons.add(setTempB3);
  entityCreatorButtons.add(toEditB);
  
  playPauseScreenButtons.add(openMainScreenB);
  playPauseScreenButtons.add(openEditScreenB);
  playPauseScreenButtons.add(pauseLevels);
  playPauseScreenButtons.add(pauseRestart);
  playPauseScreenButtons.add(pauseResume);
  
  editPauseScreenButtons.add(editSave);
  editPauseScreenButtons.add(editResume);
  editPauseScreenButtons.add(openMainScreenB);
}
int[] color1 = new int[4];
public class button{
  private int co1or = 255;
  private int stroke = 0;
  private String name = "defaultButtonName";
  private int buttonTag;
  private int x = 0; 
  private int y = 0;
  private int w = 0;  
  private int h = 0;
  private boolean isSelected = false;
  //special-button variables:
  private float isValueDisplay = .01;
  private float vDMax = 0;
  private float vDMin = 0;
  private float isValueModifier = .01;
  private String valueInteractionTag = "";
  //Image:
  private PImage icon;
  
  //default constructor:
  button(){
  }
  //custom constructor:
  button(int co1or, int stroke, String name, float x, float y, float w, float h){
    this.co1or = co1or;
    this.stroke = stroke;
    this.name = name;
    this.x = (int)(x);
    this.y = (int)(y);
    this.w = (int)(w);
    this.h = (int)(h);
  }
  //valueModifier constructor:
  button(int co1or, int stroke, String name, float x, float y, float w, float h, float isValueDisplay, float isValueModifier, String valueInteractionTag, float vDMin, float vDMax){
    this.co1or = co1or;
    this.stroke = stroke;
    this.name = name;
    this.x = (int)(x);
    this.y = (int)(y);
    this.w = (int)(w);
    this.h = (int)(h);
    //note isValueDisplay/Modifier is used as both a value and a boolean value.
    this.isValueDisplay = isValueDisplay;
    this.isValueModifier = isValueModifier;
    this.valueInteractionTag = valueInteractionTag;
    this.vDMax = vDMax;
    this.vDMin = vDMin;
  }
  
  public int getColor(){
    return co1or;
  }
  public String getName(){
    return name;
  }
  public int getStroke(){
    return stroke;
  }
  public int getX(){
   return x; 
  }
   public int getY(){
   return y; 
  }
  public int getW(){
   return w;
  }
  public int getH(){
   return h; 
  }
  public void setX(int x){
    this.x = x;
  }
  public void setY(int y){
    this.y = y;
  }
  public void setW(int w){
    this.w = w;
  }
  public void setH(int h){
    this.h = h;
  }
  public boolean isSelected(){
   return isSelected;
  }
  public int getButtonTag(){
    return buttonTag;
  }
  public void setName(String name){
    this.name = name;
  }
  public void setButtonTag(int buttonTag){
    this.buttonTag = buttonTag;
  }
  public void setIsSelected(boolean isSelected){
   this.isSelected = isSelected;
  }
 
  //special-button methods:
  public boolean isValueDisplay(){
    if(isValueDisplay <= -.1 || isValueDisplay == 0 || isValueDisplay>=.1){
      return true;
    }else{
      return false;
    }
  }
  public boolean isValueModifier(){
    if(isValueModifier<=-.1 || isValueModifier>=.1){
      return true;
    }else{
      return false;
    }
  }
  public float getVD(){
    //use in drawButton
    return isValueDisplay;
  }
  public float getVM(){
    return isValueModifier;
  }
  public float getVDMax(){
    return vDMax;
  }
  public float getVDMin(){
    return vDMin;
  }
  public String getLineInteractionTag(){
    return valueInteractionTag;
  }
  public void setValueDisplay(float isValueDisplay){
    this.isValueDisplay = isValueDisplay;
  }
  public PImage getIcon(){
    return icon;
  }
  public void setIcon(PImage p){
    icon = p;
  }
}



//----------@----------@----------@----------@----------@----------@----------  
//----------@----------@----------@----------@----------@----------@----------  
String[] velocityType = {"Static"};
String[] interactionType = {"Passive","Harm","Vanish"};

void drawButton(button b){
  String name = b.getName();
  strokeWeight(settStroke);
  //Selection vs deselection outlines
  if(b.isSelected()){
    defaultRect(-1,255);
  }else{
    strokeWeight(settStroke);
    defaultRect(b.getColor(),b.getStroke());
    rect(b.getX(),b.getY(),b.getW(),b.getH());
  }
  
  //ValueDisplays need to "clear" surface for value text
  if(b.isValueDisplay()){
    fill(b.getColor());
  }else{
    fill(b.getColor(), 240);
  }
  rect(b.getX(),b.getY(),b.getW(),b.getH());
  int settingTextSize = fitText(b.getW(),(int)(b.getH()-.4*s),"00.0");
  
  if(b.isValueDisplay()){
    defaultText(255,255, settingTextSize);
    if(name.equals("Type:") || name.equals("Interaction:") || name.equals("Velocity:")){
      text(b.getName(),b.getX()-(s*7),b.getY()+2*s-.92*s);
    }else{
      text(b.getName(),b.getX()+(b.getW()*.05),b.getY()+2*s-.92*s);
    }
    if(name.equals("Grid: ")){
      if(b.getVD() == 1){
        text("True",b.getX()+(b.getW()*.6),b.getY()+2*s-.92*s);
      }else{
        text("False",b.getX()+(b.getW()*.6),b.getY()+2*s-.92*s);
      }
    }else{
      if(name.equals("Type:")){
        text(velocityType[(int)(b.getVD())],b.getX()+b.getW()/2-(textWidth(velocityType[(int)(b.getVD())]))/2,b.getY()+2*s-.92*s);
      }
      else if(name.equals("Interaction:")){
        text(interactionType[(int)(b.getVD())],b.getX()+b.getW()/2-(textWidth(interactionType[(int)(b.getVD())]))/2,b.getY()+2*s-.92*s);
      }else if(name.equals("Scale: ") || name.equals("Stroke: ")|| name.equals("Vol: ")){
        text(str(b.getVD()),b.getX()+(b.getW()*.628),b.getY()+2*s-.92*s);
      }else{
        text(str(b.getVD()),b.getX()+b.getW()/2-(textWidth(str(b.getVD())))/2,b.getY()+2*s-.92*s);
      }
    }
  }
  if(b.isValueModifier() && b.getVM()<=-.1){
    defaultText(255,255,fitText(b.getW(),(int)(b.getH()-.4*s),"-"));
    text("-",b.getX()+b.getW()/2-(textWidth("-"))/2,b.getY()+2*s-.94*s ); 
  }
  if(b.isValueModifier() && b.getVM()>=.1){
    defaultText(255,255,fitText(b.getW(),(int)(b.getH()-.4*s),"+"));
    text("+",b.getX()+b.getW()/2-(textWidth("+"))/2,b.getY()+2*s-.94*s ); 
  }
  if(name.equals("editPause")){
    stroke(0);
    fill(grey2, 240);
    rect(2.5*s,22*s,20*s,3*s);
  }
  if(name.equals("toggleTempB1")){
    drawShape(shapeS1,b.getX(),b.getY(),(2*s/5),0,255,255);
  }
  if(name.equals("toggleTempB2")){
    drawShape(shapeS2,b.getX(),b.getY(),(2*s/5),0,255,255);
  }
  if(name.equals("toggleTempB3")){
    drawShape(shapeS3,b.getX(),b.getY(),(2*s/5),0,255,255);
  }
    
  if(name.equals("Controls") || name.equals("Audio") || name.equals("Video")){
    defaultText(255,255,fitText(b.getW(),(int)(b.getH()-.4*s),"00.0"));
    text(b.getName(),b.getX()+b.getW()/2-(textWidth(b.getName()))/2,b.getY()+2*s-.92*s); 
  }
  if(name.equals("Save & Exit") || name.equals("Exit")){
    defaultText(255,255,fitText(b.getW(),(int)(b.getH()-.4*s),"00.0"));
    text(b.getName(),b.getX()+b.getW()/2-(textWidth(b.getName()))/2,b.getY()+2*s-.92*s); 
  }
  if(name.equals("eSave & Exit") || name.equals("eResume")){
    defaultText(255,255,fitText(b.getW(),(int)(b.getH()-.4*s),"00.0"));
    text(b.getName().substring(1),b.getX()+b.getW()/2-(textWidth(b.getName().substring(1)))/2,b.getY()+2*s-.92*s); 
  }
  if(name.equals("Play")|| name.equals("Levels")){
    defaultText(255,255,fitText(b.getW(),(int)(b.getH()-.4*s),"Levels"));
    text(b.getName(),b.getX()+b.getW()/2-(textWidth(b.getName()))/2,b.getY()+2*s-.45*s ); 
  }
  if(name.equals("tempLevel")){
    if(b.getButtonTag()+1<=numLevels){
      defaultRect(grey0,0);
      rect(b.getX(),b.getY(),b.getW(),b.getH());
    }else if(b.getButtonTag()-numLevels == 0){
      defaultRect(grey1,0);
      newLevel.setX(b.getX());
      newLevel.setY(b.getY());
      drawButton(newLevel);
    }
  }
  drawButtonIcon(b);
}
void drawButtonIcon(button b){
   PImage buttonIcon = b.getIcon();
   if(buttonIcon != null){
     buttonIcon.resize(b.getW(),b.getH());
     image(buttonIcon,b.getX()+(b.getW()-buttonIcon.width)/2,b.getY()+(b.getW()-buttonIcon.width)/2);
   }
}
