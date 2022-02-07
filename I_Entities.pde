ArrayList<entity> entities = new ArrayList<entity>();
entity player1 = new player();
int[][] playerS = 
{{1,1}};
void setupEntities(){
  player1 = new player(2*s,14*s,0,0,s,-9.8,playerS,255,255,255,"player",s);
  entities.add(player1);
}
void drawEntities(){
  /*for(int i = 0; i<entities.size(); i++){
    entity t = entities.get(i);
    drawShape(t.getShape(),t.posX(),t.posY(),s,t.getFill(),t.getAlpha(),t.getStroke());
    applyPhysics(t);
  }*/
}

public class entity{
  private int[][] shape;
  private float x;
  private float y;
  private float velocityX = 0;
  private float velocityY = 0;
  private float accelerationX = 0;
  private float accelerationY = 0;
  private float maxSpeed = 1000;
  private color fill = #03FF2A;
  private int alpha = 100;
  private color stroke = 0;
  private String eType = "undefined";
  
  entity(float x, float y, float vX, float vY, float aX, float aY, int[][] shape, String eType, float maxSpeed){
    this.x = x;
    this.y = y;
    this.velocityX = vX;
    this.velocityY = vY;
    this.accelerationX = aX;
    this.accelerationY = aY;
    this.shape = shape;
    this.eType = eType;
    this.maxSpeed = maxSpeed;
  }
  entity(float x, float y, float vX, float vY, float aX, float aY, int[][] shape, color fill, int alpha, color stroke, String eType, float maxSpeed){
    this.x = x;
    this.y = y;
    this.velocityX = vX;
    this.velocityY = vY;
    this.accelerationX = aX;
    this.accelerationY = aY;
    this.shape = shape;
    this.fill = fill;
    this.alpha = alpha;
    this.stroke = stroke;
    this.eType = eType;
    this.maxSpeed = maxSpeed;
  }
  entity(){
  }
  
  //Methods:
  float posX(){
    return x;
  }
  float posY(){
    return y;
  }
  float vX(){
    return velocityX;
  }
  float vY(){
    return velocityY;
  }
  float aX(){
    return accelerationX;
  }
  float aY(){
    return accelerationY;
  }
  int[][] getShape(){
    return shape;
  }
  color getFill(){
    return fill;
  }
  int getAlpha(){
    return alpha;
  }
  color getStroke(){
    return stroke;
  }
  String getType(){
    return eType;
  }
  float getMaxSpeed(){
    return maxSpeed;
  }
  
  void setX(float x){
    this.x = x;
  }
  void setY(float y){
    this.y = y;
  }
  void setVX(float vX){
    this.velocityX = vX;
  }
  void setVY(float vY){
    this.velocityY = vY;
  }
  void setAX(float aX){
    this.accelerationX = aX;
  }
  void setAY(float aY){
    this.accelerationY = aY;
  }
  void setShape(int[][] s){
    this.shape = s;
  }
  
}
public class player extends entity{
  player(float x, float y, float vX, float vY, float aX, float aY, int[][] shape, color fill, int alpha, color stroke, String eType, float maxSpeed){
    super(x,y,vX,vY,aX,aY,shape,fill,alpha,stroke,eType,maxSpeed);
  }
  player(){
  }
}
