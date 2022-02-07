public void ammendString(String varName, String newVar){
  int lineIndex = getLine(mainData, varName);
  mainData[lineIndex] = varName + "=" + newVar + ";";
  saveStrings("Z_GameData.txt",mainData);
}
void writeLevel(int lvl){
  lvl = 1 + lvl;
  setVarRange(mainData, "defaultLevel{");
  String str = "";
  String decimal = "0";
  if(lvl<=numLevels){
    for(int y = 0; y<25; y++){
      for(int x = 0; x<26; x++){
        if(levelBinaryBlocks[x][y] == 3){
            levelBinaryBlocks[x][y] = 1;
          }
        if(levelBinaryBlocks[x][y] == 1 || levelBinaryBlocks[x][y] == 0){
          str = str + levelBinaryBlocks[x][y];
        }
      }
      decimal = String.valueOf(Integer.parseInt(str,2));
      ammendString("lvlMap"+String.valueOf(lvl)+"."+String.valueOf(y+1), decimal);
      str = "";
    }
  }
}
void saveEditorShapes(String varName, int[][] S1){
  setVarRange(mainData, "editor{");
  String str = "1";
  String str2 = "";
  for(int x = 0; x<S1.length; x++){
    for(int y = 0; y<(S1[0].length); y++){    
      str = str + String.valueOf(S1[y][x]);
    }
    str = String.valueOf(Integer.parseInt(str,2));
    str2 += str + ",";
    str = "1";
  }
  ammendString(varName,str2.substring(0,str2.length()-1));
}

//If data text file is corrupted, run resetDefaultData() in setup:
void resetDefaultData(){
  String[] resetData = loadStrings("Z_GameDataReset.txt");
  saveStrings("Z_GameData.txt",resetData);
}
