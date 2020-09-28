//sets default fill/color, intended for rects/shapes:
void defaultRect(int fill, int stroke){
  if(fill == -1){
    noFill();
  }else{
    fill(fill);
  }
  if(stroke == -1){
    noStroke();
  }else{
    stroke(stroke);
  }
}
void defaultRect(int red, int green, int blue, int stroke){
  fill(red,green,blue);
  if(stroke == -1){
    noStroke();
  }else{
    stroke(stroke);
  }
}
//----------@----------@----------@----------@----------@----------@----------  
//sets default fill,stroke,textsize etc, intended for text:
void defaultText(int fill, int stroke, int textSize){
  if(fill == -1){
    noFill();
  }else{
    fill(fill);
  }
  if(stroke == -1){
    noStroke();
  }else{
    stroke(stroke);
  }
  textSize(textSize);
}
void defaultText(int red, int green, int blue, int stroke, int textSize){
  fill(red,green,blue);
  if(stroke == -1){
    noStroke();
  }else{
    stroke(stroke);
  }
  textSize(textSize);
}
//----------@----------@----------@----------@----------@----------@----------  
//----------@----------@----------@----------@----------@----------@----------  
int fitTextHeight(float fitHeight){ 
  for(int i = 5; i<40; i++){
    textSize(i);
    if(Math.abs(fitHeight-textWidth("T")-6) < 10){
      return i;
    }
  }
  return 50;
}
//----------@----------@----------@----------@----------@----------@----------  
//----------@----------@----------@----------@----------@----------@----------  
void backDrop(){
  defaultRect(150,0);
  rect(0,0,sW-1,sH-1);
}

  /*
  public boolean hitCheck(button b){
    if(b.getX()<mouseX && mouseX<(b.getX()+b.getW())  &&  b.getY()<mouseY && mouseY<(b.getY()+b.getH())){
      return true;
    }else{
      return false;  
    }
  }*/
