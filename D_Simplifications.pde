int grey0 = 180;
int grey1 = 150;
int grey2 = 130;
int grey3 = 120;
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
void defaultRect(int[] co1or, int stroke){
  fill(co1or[0],co1or[1],co1or[2]);
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
int fitText(int w,int h, String t){ 
  for(int i = 500; ; i--){
    textSize(i);
    if(textAscent()<h-s*.2 && textWidth(t)<w-s*.2){
      return i;
    }
  }
}
//----------@----------@----------@----------@----------@----------@----------   
void test(){
  println("Test");
}
