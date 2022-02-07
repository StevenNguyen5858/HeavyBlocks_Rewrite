ArrayList<String> dataSetNames = new ArrayList<String>();
int indexMin = 0;
int indexMax = 0;
float scale = .8;
float settStroke = 2;
int numLevels = 0;
boolean boxGrid = false;
String[] mainData;
PImage block1;
void setupData(){
  dataSetNames.add("settings{");
  dataSetNames.add("playerData{");
  dataSetNames.add("controls{");
  dataSetNames.add("defaultLevel{");
  dataSetNames.add("editor{");
}
void loadData(){
  mainData = loadStrings("Z_GameData.txt");
  for(int i = 0; i<dataSetNames.size(); i++){
    String name = dataSetNames.get(i);
    setVarRange(mainData, name);
    if(name.equals("settings{")){
      loadSettings(mainData);
    }
    if(name.equals("controls{")){
      loadControls(mainData);
    }
    if(name.equals("defaultLevel{")){
      loadDefaultLevel(mainData);
    }
    if(name.equals("editor{")){
      loadEditor(mainData);
    }
  }

}
//----------@----------@----------@----------@----------@----------@----------
//LoadFunctions:
void loadEditor(String[] data){
  String str;
  ArrayList<Float> tempArr = new ArrayList<Float>();
  for(int y = 0; y<3; y++){
    str = getValue(data[getLine(data,"mTES"+String.valueOf(y+1))]);
    tempArr = stringToArrayList(str);
    for(int i = 0; i<stringToArrayList(str).size(); i++){
      float g = tempArr.get(i);
      int n = (int)(g);
      String binaryRow = ( Integer.toBinaryString(n) ).substring(1);
      for(int j = 0; j< binaryRow.length(); j++){
        if(y == 0){
          shapeS1[j][i] = Integer.valueOf(binaryRow.substring(j,j+1));
        }
        if(y == 1){
          shapeS2[j][i] = Integer.valueOf(binaryRow.substring(j,j+1));
        }
        if(y == 2){
          shapeS3[j][i] = Integer.valueOf(binaryRow.substring(j,j+1));
        }
      }
    }
  }
}
void loadSettings(String[] data){
  //Scale must be directly unpacked from settings(){
  boxGrid = boolean(getValue(data[getLine(data,"grid")]));
  scale = float(getValue(data[getLine(data,"scale")]));
  settStroke = float(getValue(data[getLine(data,"stroke")]));
}
void loadControls(String[] data){
  //println(getValue(data[getLine(data,"left")]));
  //println(getValue(data[getLine(data,"right")]));
  //println(getValue(data[getLine(data,"jump")]));
}
void loadDefaultLevel(String[] data){
  int indexFound;
  //Simple counter for number of levels-
  for(int i = 0; i<indexMax; i++){
    String str2 = data[i];
    indexFound = str2.indexOf("lvlName");
    if(indexFound != -1){
      numLevels++;
    }
  }
  String binaryMap;
  String str;
  for(int y = 0; y<25; y++){
    binaryMap = getValue(data[getLine(data,"lvlMap1."+String.valueOf(y+1))]);
    str = Integer.toBinaryString(Integer.valueOf(binaryMap));
    for(int x = 0; x<25; x++){
      levelBinaryBlocks[x][y] = Integer.valueOf(str.substring(x,x+1));
    }
  }
}
void loadLevel(String[] data, int lvl){
  //Clear array first:
  levelBinaryBlocks = setMapBounds();
  String binaryMap;
  String str;
  lvl = lvl+1;
  setVarRange(mainData, "defaultLevel{");
  if(lvl<=numLevels){
    for(int y = 0; y<25; y++){
      binaryMap = getValue(data[getLine(data,"lvlMap"+String.valueOf(lvl)+"."+String.valueOf(y+1))]);
      str = Integer.toBinaryString(Integer.valueOf(binaryMap));
      for(int x = 0; x<25; x++){
        if(levelBinaryBlocks[x][y] != 3){
          levelBinaryBlocks[x][y] = Integer.valueOf(str.substring(x,x+1));
        }
      }
    }
  }
}
//----------@----------@----------@----------@----------@----------@---------- 
//data parse functions:
public ArrayList stringToArrayList(String str){
  ArrayList<Float> parsed = new ArrayList<Float>();
  String str2 = "";
  for(int i = str.length(); i>0; i--){
    str2 = str.substring(i-1,i) + str2;
    if(str.substring(i-1,i).equals(",")){
      parsed.add(0,Float.valueOf(str2.substring(1)));
      str2 = "";
    }
    if(i==1){
      parsed.add(0,Float.valueOf(str2));
      return parsed;
    }
  }
  return parsed;
}
public int getLine(String[] data, String varName){
  int x = 0;
  for(int i = 0; i<indexMax; i++){
    String str = data[i];
    x = str.indexOf(varName);
    if(x != -1){
      return i;
    }
  }
  return -1;
}
public String getValue(String str){
  //Returns value between = and ;
  boolean foundStart = false;
  String value = "";
  for(int a = 0; a<str.length(); a++){
    if(str.substring(a,a+1).equals(";")){
      if(value.equals("")){
        return "ErrorStr=" + str;
      }
      return value;
    }
    if(foundStart){
      value = value + str.substring(a,a+1);
    }
    if(str.substring(a,a+1).equals("=")){
      foundStart = true;
    }
  }
  return "-1";
}
void setVarRange(String[] data,String dataSetName){
  indexMax = data.length;
  int x = 0;
  boolean startFound = false;
  for(int i = 0; i<indexMax; i++){
    if(startFound == false){
      x = data[i].indexOf(dataSetName);
      if(x != -1){
      indexMin = i;
      x = 0;
      startFound = true;
    }
    }else{
      x = data[i].indexOf("}");
      if(x != -1){
        indexMax = i;
      }
    }
  }
}
//----------@----------@----------@----------@----------@----------@---------- 
//Need to rewrite data reset:
