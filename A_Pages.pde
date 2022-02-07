ArrayList<page> pages = new ArrayList<page>();
//Initialize page (objects) here using default constructor.(#Help).
page main = new page();
page levels = new page();
page playScreen = new page();
  page playPause = new page();
page editLevel = new page();
  page editBar = new page();
    page entityCreator = new page();
  page editPause = new page();
page settings = new page();
  page audio = new page();
  page controls = new page();
  page video = new page();
void setupPages(){
  strokeWeight(2);
  //use page custom constructor to fill in data here.(#Help).

  main = new page(mainScreenButtons,mainPG,"main",3);
  main.setIsActive(true);
  main.setDrawOnce(true);
  
  levels = new page(levelsScreenButtons,lvlsPG,"levels",3);
  
  playScreen = new page(playScreenButtons,playPG,"playScreen",3);
    playPause = new page(playPauseScreenButtons,pausPG,"playPause",2);
    
  editLevel = new page(editScreenButtons,editPG,"editLevel",3);
    editBar = new page(editBarScreenButtons,ebarPG,"editBar",2);
      entityCreator = new page(entityCreatorButtons,eCrePG,"entityCreator",1);
     editPause = new page(editPauseScreenButtons,ePauPG,"editPause",2);
      
  settings = new page(settingScreenButtons,settPG,"settings",3);
    audio = new page(audioScreenButtons,settPG,"audio",3);
    controls = new page(controlScreenButtons,settPG,"controls",3);
    video = new page(videoScreenButtons,settPG,"video",3);
    
  //add page (object) to pages ArrayList.(#Help).
  pages.add(main);
  pages.add(levels);
  pages.add(playScreen);
    pages.add(playPause);
  pages.add(editLevel);
    pages.add(editBar);
      pages.add(entityCreator);
    pages.add(editPause);
  pages.add(settings);
    pages.add(audio);
    pages.add(controls);
    pages.add(video);
  //Loads and assigns all pages' their background frames from PGraphics tab.
}

public class page{
  //page variables
  private ArrayList<button> pageButtons = new ArrayList<button>();
  private boolean drawOnce = false;
  private boolean isActive = false;
  private String pageTag = ".pg";
  //If two pages are active at the same time, the smaller number priority will have its buttons checked first.
  private int layerPriority = 0;
  private PGraphics P;
  //default constructor.
  page(){
  }
  //custom constructor.
  page(ArrayList<button> pageButtons, String pageTag, int layerPriority){
    this.pageButtons = pageButtons;
    this.pageTag = pageTag + this.pageTag;
    this.layerPriority = layerPriority;
  }
  page(ArrayList<button> pageButtons, PGraphics P, String pageTag, int layerPriority){
    this.pageButtons = pageButtons;
    this.P = P;
    this.pageTag = pageTag + this.pageTag;
    this.layerPriority = layerPriority;
  }
  
  ArrayList<button> getPageButtons(){
    return pageButtons; 
  }
  boolean drawOnce(){
    return drawOnce;
  }
  boolean isActive(){
    return isActive; 
  }
  String pageTag(){
    return pageTag;
  }
  int layerPriority(){
    return layerPriority;
  }
  PGraphics getPGraphic(){
    return P;
  }
  void setPGraphic(PGraphics P){
    this.P = P;
  }
  void setDrawOnce(boolean drawOnce){
    this.drawOnce = drawOnce; 
  }
  void setIsActive(boolean isActive){
    this.isActive = isActive;
  }
}
