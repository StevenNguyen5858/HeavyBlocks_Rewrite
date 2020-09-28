int sW = 0;
int sH = 0;
int s = 0;
void settings(){
 //Change pop up screen size here
 float scale = .9;
 sW = ((int)((displayHeight*scale)/(25)))*25;
 sH = ((int)((displayHeight*scale)/(25)))*25;
 s = (int)(sH/25);
 size(sW,sH);
}
void setup(){
  setupPages();
}

void draw(){
  textSize(100);
  //draw page if willDrawScreen:
  fill(0);
  text("oop",100,100);
  for(int i = 0; i<pages.size(); i++){
    text("oop2",100,100); 
    page temp = pages.get(i);
    if(temp.drawOnce){
      drawFrame(temp);
      text("oop",100,100);
    }
  }
}
