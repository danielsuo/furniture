float[] height_Dividers;
float[] length_Dividers;

public String shelf_Length_mm, shelf_Height_mm, layer, savePath, fileName;
String typing = "";
String saved = "";
public float outer_Thickness,inner_Thickness,sniglet_Radius,dowel_Diameter,dowel_Radius, vert_Shelf_Length,horiz_Shelf_Length;
public float top_Third,bottom_Third,top_Third_t,top_Third_b,bot_Third_t,bot_Third_b,locked_Ratio;
public float widthC,widthCi,heightC,heightCi,depthC,depthCi,horizC,horizCi,vertC,vertCi,innerC,innerCi,outerC,outerCi,distXC,distYC,backC;

public int shelf_Length,shelf_Height,shelf_Depth,length_Div,height_Div,props,record_Count,recordTextAlpha,saveCount, x,i;

public int startCount = 0;
public int tick = 20;
public boolean dowel_Holes,sniglet_Off, dist_EvenX,dist_GrowX,dist_EvenY,dist_GrowY, back_One,back_Two,back_Bikini,locked,modular,length_Box,height_Box;
public boolean preRecord,record,record_Popup,lock_Proportion,constrain_Ratio,trigger,oneLoop;
public PFont font;
color black,white,gray,orange,Blue,pocket_Color;


boolean length_Mouse=false;
boolean width_Mouse=false;
boolean height_Mouse=false;
boolean lengthDiv_Mouse=false;
boolean heightDiv_Mouse=false;
boolean oT_Mouse=false;
boolean iT_Mouse=false;

boolean distX_Mouse=false;
boolean distY_Mouse=false;
boolean back_Mouse=false;

boolean m_T_Mouse=false;
boolean d_D_Mouse=false;
boolean s_R_Mouse=false;
boolean props_Mouse=false;

boolean u_Mouse=false;
boolean reset=false;
boolean start=false;
boolean loopy=false;
boolean popUp1=false;
boolean popUp2=false;
String units = "mm";

public int distX,distY,back;

public PrintWriter output;
public float line_x1,line_y1,line_x2,line_y2,arc_x,arc_y,new_start,new_end,circ_x,circ_y;

PGraphics controllers;
PShape controlBack,controlBackmm,controlBackinch;
PImage kit_Text,save_Text,success_Text,close_Text;

void setup() {
  size(916,780);
  background(255);
  smooth();
  sniglet_Radius = 5;
  outer_Thickness=19.5;
  inner_Thickness=13;
  dowel_Diameter=5;
  length_Div = 4;
  height_Div = 4;
  shelf_Length = 1300;
  shelf_Height = 1700;
  shelf_Depth = 400;
  props=2;
  i=0;
  distX = 1;
  distY = 1;
  back = 2;
  length_Box=false;
  height_Box=false;
  locked=false;
  modular=false;
  
  pocket_Color = color(138,153,195);
  black = color(0);
  white = color(255);
  gray = color(180);
  orange = color(241,87,49);
  Blue = color(50,50,250);
  font = loadFont("AkzidenzGroteskBQ-Reg-48.vlw");
  textFont(font, 10);
  textAlign(LEFT);
  
  dowel_Holes = true;
  sniglet_Off=true;
  layer = "default";


  controllers = createGraphics(width,height,JAVA2D);
  //controlBack=loadShape("control.svg");
  //save_Text=loadImage("save_Text.png");
  controlBack=loadShape("data/control.svg");
  controlBackmm=loadShape("data/controlmm.svg");
  controlBackinch=loadShape("data/controlinch.svg");
  save_Text=loadImage("data/save_Text.png");
  success_Text=loadImage("data/success_Text.png");
  close_Text=loadImage("data/close_Text.png");

}

void draw() {
  background(255); 
  controlUnder();
  
  if(startCount<3){
    startCount++;
  }
  
  if(saveCount>0 && preRecord){
    trigger=true;
    record=false;
    preRecord=false;
  }
  
  recordPopUp();
  newControllers();
  
  stroke(0);
  strokeWeight(2);
  noFill();

  setDistribution();
  
  pushMatrix();
  translate(width/2-((shelf_Length/2)*.2),height/2-62-((shelf_Height/2)*.2));
  scale(.2);

  if(record) {
    if (fileName == null) {
      record = false;
    }
    else {
      output = createWriter(fileName + ".dxf");
      writeHeader();
    }
  }

  top(0,-50);
 
  for(int i=0; i < height_Div; i++) {
    horizShelf(0,(-shelf_Depth-100)*(i+1));
  }
  for(int j=0; j < length_Div; j++) {
    vertShelf((-shelf_Depth-50)*(j+2),shelf_Height);
  }
  
  back(0,shelf_Height);
  side(shelf_Length+50,shelf_Height,"right");
  side(-50-shelf_Depth,shelf_Height,"left");
 
  foot(-50,shelf_Height+50,PI);
  foot(-50-shelf_Depth,shelf_Height+50,PI/2);
  foot(shelf_Length+50,shelf_Height+50,PI/2);
  foot(shelf_Length+50+shelf_Depth,shelf_Height+50,PI);
 
  bottomSupport(0,shelf_Height+50);
  bottom(0,shelf_Height+200);
 
  front(0,shelf_Height+250+shelf_Depth);
  
  if (record) {
    writeFooter();
    preRecord=false;
    record = false;
    saveCount ++;
  }

  dimensions();

  popMatrix();

  draw3D(80,height-5,.032);

  testPiece(550,670);
  controlOver();
  
  if(popUp1){
    success();
  }
  
  if(trigger){
    pleaseClose();
  }
  
  if(preRecord){
    askForName();
  }
  
//  sidePocket(50,height-100,0,0,0);
//  ellipse(50,height-100,10,10);
}