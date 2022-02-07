//Map is only 25x25, add 2 for 1 extra left right and 1 for 1 under map.
int[][] blankBounds = new int[27][26];
int[][] levelBinaryBlocks = new int[27][26];
int[][] hitBoxBinaryBlocks = new int[27][26];
int[][] tempShapeS = new int[5][5];
int[][] shapeS1 = new int[5][5];
int[][] shapeS2 = new int[5][5];
int[][] shapeS3 = new int[5][5];

/* Binary Blocks Key:
1-3 = solid blocks. 1 = solid, 3 = uneditable solid.
-1 = tint black nonsolid temp
-2 = tint red (cannot place) nonsolid temp
-3 = x tint white nonsolid temp
*/
void drawBinaryBlocks(){
  int sx;
  int sy;
  int sw;
  strokeWeight(1);
  for(int x = 0; x<levelBinaryBlocks.length; x++){
    for(int y = 0; y<(levelBinaryBlocks[0].length); y++){
      sx = (x-1)*s+3;
      sy = y*s+3;
      sw = s-6;
      if(levelBinaryBlocks[x][y] == 1 || levelBinaryBlocks[x][y] == 3){
        defaultRect(0,255);
        rect(sx,sy,sw,sw);
        //image(block1,sx,sy);
      }
    }
  }
  strokeWeight(2);
}
void drawEditingBlocks(){
  int sx;
  int sy;
  int sw;
  strokeWeight(1);
  for(int x = 0; x<levelBinaryBlocks.length; x++){
    for(int y = 0; y<(levelBinaryBlocks[0].length); y++){
      sx = (x-1)*s+2;
      sy = y*s+4;
      sw = s-4;
      if(levelBinaryBlocks[x][y] == 1){
        defaultRect(0,255);
        rect(sx,sy,sw,sw);
      }else if(levelBinaryBlocks[x][y] == -1){
        stroke(255);
        fill(0,200);
        rect(sx,sy,sw,sw);
      }else if(levelBinaryBlocks[x][y] == -2 || levelBinaryBlocks[x][y] == 3){
        stroke(255);
        fill(#E54C4C,200);
        rect(sx,sy,sw,sw);
      }else if(levelBinaryBlocks[x][y] == -3){
        stroke(255);
        noFill();
        rect(sx,sy,sw,sw);
        defaultRect(255,255);
        line(sx,sy,sx+sw,sy+sw);
        line(sx+sw,sy,sx,sy+sw);
      }
    }
  }
  strokeWeight(2);
}

int tempMouseX = 0;
int tempMouseY = 0;
int tempBinary = 0;
int tempBinary2 = 0;
void editingCues(){
  if(editLevel.isActive()){
    if(toggleSquareB.isSelected()){
      if(levelBinaryBlocks[tempMouseX][tempMouseY] == -1){
        levelBinaryBlocks[tempMouseX][tempMouseY] = 0;
      }else if(levelBinaryBlocks[tempMouseX][tempMouseY] == -2){
        levelBinaryBlocks[tempMouseX][tempMouseY] = tempBinary;
      }
      if(levelBinaryBlocks[mouseX/s+1][mouseY/s] == 0){
        levelBinaryBlocks[(mouseX/s)+1][mouseY/s] = -1;
      }else if(levelBinaryBlocks[mouseX/s+1][mouseY/s] != 0){
        tempBinary = levelBinaryBlocks[mouseX/s+1][mouseY/s];
        levelBinaryBlocks[(mouseX/s)+1][mouseY/s] = -2;
      }
      tempMouseX = (mouseX/s)+1; 
      tempMouseY = mouseY/s;
      
      drawPageLayout(editLevel);
      drawPageButtons(editLevel);
    }else if(toggleDeleteB.isSelected()){
      if(levelBinaryBlocks[tempMouseX][tempMouseY] == -3){
        levelBinaryBlocks[tempMouseX][tempMouseY] = tempBinary;
      }else if(levelBinaryBlocks[tempMouseX][tempMouseY] == -2){
        levelBinaryBlocks[tempMouseX][tempMouseY] = tempBinary2;
      }
      if(levelBinaryBlocks[mouseX/s+1][mouseY/s] == 1 || levelBinaryBlocks[mouseX/s+1][mouseY/s] == 2){
        tempBinary = levelBinaryBlocks[mouseX/s+1][mouseY/s];
        levelBinaryBlocks[(mouseX/s)+1][mouseY/s] = -3;
      }else if(levelBinaryBlocks[mouseX/s+1][mouseY/s] == 3 || levelBinaryBlocks[mouseX/s+1][mouseY/s] > 10){
        tempBinary2 = levelBinaryBlocks[mouseX/s+1][mouseY/s];
        levelBinaryBlocks[(mouseX/s)+1][mouseY/s] = -2;
      }
      tempMouseX = (mouseX/s)+1; 
      tempMouseY = mouseY/s;
      
      drawPageLayout(editLevel);
      drawPageButtons(editLevel);
    }
  }
}

int[][] setMapBounds(){
  for(int x = 0; x<blankBounds.length; x++){
    for(int y = 0; y<(blankBounds[0].length); y++){
      blankBounds[x][y] = 0;
    }
  }
  //Floor under map:
  for(int i = 0; i<27;i++){
    blankBounds[i][25] = 3;
  }
  //Right side wall off map:
  for(int i = 0; i<26; i++){
    blankBounds[26][i] = 3;
  }
  //Left side wall off map:
  for(int i = 0; i<26; i++){
    blankBounds[0][i] = 3;
  }
  for(int i = 0; i<10; i++){
    for(int j = 0; j<2; j++){
      blankBounds[j+1][i] = 3;
    }
  }
  for(int i = 0; i<10; i++){
    for(int j = sW/s-2; j<sW/s; j++){
      blankBounds[j+1][i] = 3;
    }
  }
  for(int i = sH/s-10; i<sH/s; i++){
    for(int j = 0; j<2; j++){
      blankBounds[j+1][i] = 3;
    }
  }
  for(int i = sH/s-10; i<sH/s; i++){
    for(int j = sW/s-2; j<sW/s; j++){
      blankBounds[j+1][i] = 3;
    }
  }
  
  return blankBounds;
}



void drawTempShapes(){
  strokeWeight(1);  
  for(int x = 0; x<tempShapeS.length; x++){
    for(int y = 0; y<(tempShapeS[0].length); y++){    
      if(tempShapeS[x][y] == 1){
        defaultRect(0,255);
        rect(((x-1)*s)+14.5*s+2,(y*s)+13*s+2,s-4,s-4);
      }else if(boxGrid && tempShapeS[x][y] == 0){
        defaultRect(grey3,255);
        rect(((x-1)*s)+14.5*s+2,(y*s)+13*s+2,s-4,s-4);
      }
    }
  }
  strokeWeight(2);
}
void drawShape(int[][] s1, float x1, float y1,float scale,color fill,int alpha, color stroke){
  strokeWeight(1);  
  for(int x = 0; x<s1.length; x++){
    for(int y = 0; y<(s1[0].length); y++){ 
      int sw = s-4;
      float sx = (x-1)*scale+x1+2;
      float sy = (y-1)*scale+y1+2;
      if(s1[x][y] == 1){
        stroke(stroke);
        fill(fill,alpha);
        rect(sx,sy,sw,sw);
      }else if(boxGrid && s1[x][y] == 0){
        defaultRect(grey3,stroke);
        rect(sx,sy,sw,sw);
      }
    }
  }
  strokeWeight(2);
}
