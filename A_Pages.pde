ArrayList<page> pages = new ArrayList<page>();
page main = new page();
//Initialize page (objects) here. (Default constructor).
void setupPages(){
  //use page custom constructor to fill in data here.
  main = new page(mainScreenButtons,true,true,"main");
  //add page (object) to pages ArrayList
  pages.add(main);
}

public class page{
  //page variables
  private ArrayList<button> pageButtons = new ArrayList<button>();
  private boolean drawOnce = false;
  private boolean isActive = false;
  private String pageTag = ".pg";
  
  //default constructor.
  page(){
  }
  //custom constructor.
  page(ArrayList<button> pageButtons, boolean drawOnce, boolean isActive, String pageTag ){
    this.pageButtons = pageButtons;
    this.drawOnce = drawOnce;
    this.isActive = isActive;
    this.pageTag = pageTag + this.pageTag;
   
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
  void setDrawOnce(boolean drawOnce){
    this.drawOnce = drawOnce; 
  }
  void setIsActive(boolean isActive){
    this.isActive = isActive;
  }
}
