void mousePressed(){
  loopy=true;
  loop();
}

void mouseReleased(){
  reset=false;
  start=false;
  loopy=false;
}

void askForName() {
  noStroke();
  fill(255,200);
  rect(770,441,140,50);
  image(save_Text,773,444);
  strokeWeight(1);
  stroke(0);
  fill(235,150);
  rect(777,495,130,25);
  noStroke();
  textFont(font,14);
  textAlign(RIGHT);
//  text("Type a name for your file, \nno symbols, press enter to save: ", 50,60);
  strokeWeight(2);
  fill(orange);
  stroke(orange);
  text(typing,899,513);
  noFill();
  textAlign(CENTER);
  strokeWeight(2);
  textAlign(LEFT);
}

void success(){
//  fill(241,87,49,recordTextAlpha);
//  textFont(font,12);
//  textAlign(LEFT);
//  image(success_Text,780,540);
//  text("Success! File saved in your sketch folder as:\n" + sketchPath("") +fileName+ ".dxf",50,130);
//  noFill();
//  textAlign(CENTER);
}

void pleaseClose(){
  fill(241,87,49);
  textFont(font,12);
  textAlign(LEFT);
  image(close_Text,790,600);
//  text("Please close and reopen program to save another file.",50,210);
  noFill();
  textAlign(CENTER);
  record=false;
  preRecord=false;
}

void keyPressed(){
  if (key == '\n' && saveCount==0) {
    fileName = typing;
    typing = ""; 
  }
  if (key == BACKSPACE || key == DELETE){
    typing = typing.substring(0,max(0,typing.length()-1));
  }
  else {
    typing = typing + key; 
  }
}

void keyReleased(){
  if (key=='\n'){
    record=true;
    record_Popup=true;
  }
  loopy=true;
  loop();
  loopy=false;
}






// extra functions \/   \/

void testPiece(float cornerX,float cornerY){
  pushMatrix();
  translate(cornerX+50,cornerY);
  scale(.5);
  rotate(PI/2);
  fill(255,230);
  rect(0,0,200,100);
  noFill();
  
  ellipse(100,50-outer_Thickness/2-outer_Thickness,dowel_Diameter,dowel_Diameter);
  
  line(50,100,50,100-outer_Thickness-sniglet_Radius);
  arc(50+sniglet_Radius,100-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  arc(50+sniglet_Radius*3,100-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  line(50,100-outer_Thickness,100-outer_Thickness/2,100-outer_Thickness);
  
  line(100-outer_Thickness/2,100,100-outer_Thickness/2,50-outer_Thickness/2);
  arc(100-outer_Thickness/2-sniglet_Radius,50-outer_Thickness/2+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  arc(100-outer_Thickness/2-sniglet_Radius,50-outer_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  line(100-outer_Thickness/2-sniglet_Radius,50-outer_Thickness/2,100+outer_Thickness/2+sniglet_Radius,50-outer_Thickness/2);
  arc(100+outer_Thickness/2+sniglet_Radius,50-outer_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(100+outer_Thickness/2+sniglet_Radius,50-outer_Thickness/2+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  line(100+outer_Thickness/2,50-outer_Thickness/2,100+outer_Thickness/2,100);
  
  line(100+outer_Thickness/2,100-outer_Thickness,150,100-outer_Thickness);
  arc(150-sniglet_Radius*3,100-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  arc(150-sniglet_Radius,100-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  line(150,100,150,100-outer_Thickness-sniglet_Radius);
  
  popMatrix();
}



void dimensions() {
  textFont(font, 64);
  textAlign(CENTER);
  if(length_Mouse == true) {
    stroke(124,162,165);
    line(0,shelf_Height/2,shelf_Length,shelf_Height/2);
    line(-tick,shelf_Height/2+tick,tick,shelf_Height/2-tick);
    line(shelf_Length-tick,shelf_Height/2+tick,shelf_Length+tick,shelf_Height/2-tick);
    fill(255,215);
    noStroke();
    rect(shelf_Length/2-150,shelf_Height/2-80,290,70);
    fill(124,162,165);
    text(shelf_Length + " " + "mm", shelf_Length/2, shelf_Height/2-20);
    noFill();
    stroke(0);
  }
  if(height_Mouse == true) {
    stroke(124,162,165);
    line(shelf_Length/2,0,shelf_Length/2,shelf_Height);
    line(shelf_Length/2-tick,tick,shelf_Length/2+tick,-tick);
    line(shelf_Length/2-tick,shelf_Height+tick,shelf_Length/2+tick,shelf_Height-tick);
    fill(255,215);
    noStroke();
    rect(shelf_Length/2+10,shelf_Height/2-55,250,100);
    fill(124,162,165);
    text(shelf_Height + " " + "mm", shelf_Length/2+150, shelf_Height/2);
    noFill();
    stroke(0);
  }
  textFont(font, 10);
  textAlign(LEFT);
}


void setDistribution() {
  dowel_Radius = dowel_Diameter/2;
  
  vert_Shelf_Length = shelf_Height-400-outer_Thickness*2;
  horiz_Shelf_Length = shelf_Length-outer_Thickness*2;
  
  
  noStroke();
  fill(255,127);
  
  
//  if(shelf_Length_mm != null) {
//    shelf_Length = int(float(shelf_Length_mm));
//    sX.setValue(shelf_Length);
//    shelf_Length_mm = null;
//    widthC=map(shelf_Length,1000,2000,175+3,175+260-3);
//    
//    length_Box=false;
//  }
  
//  if(shelf_Length_mm == null && sLmm.isMousePressed() == true){
//    length_Box=true;
//  }
//  
//  if(length_Box){
//    rect(130,672,42,20);
//  }

//  if(shelf_Height_mm != null) {
//    shelf_Height = int(float(shelf_Height_mm));
////    sY.setValue(shelf_Height);
//    shelf_Height_mm = null;
//    heightC=map(shelf_Height,1000,2000,175+3,175+260-3);
//    
//    height_Box=false;
//  }
//  
//  if(shelf_Height_mm == null && sHmm.isMousePressed() == true){
//    height_Box=true;
//  }
  
//  if(height_Box){
//    rect(130,692,42,20);
//  }
  
  stroke(0);
  noFill();




  height_Dividers = new float[height_Div];
  length_Dividers = new float[length_Div];

  if(dist_EvenX) {
    for (int i=0; i < length_Dividers.length; i++) {
      length_Dividers[i] = ((shelf_Length-outer_Thickness*2)/(length_Div+1))*(i+1);
    }
  }
  if(dist_EvenY) {
    for (int i=0; i < height_Dividers.length; i++) {
      height_Dividers[i] = ((shelf_Height-outer_Thickness*2-400)/(height_Div+1))*(i+1);
    }
  }

  if(dist_GrowX) {
    if(length_Div == 4) {
      length_Dividers[3] = ((shelf_Length-outer_Thickness*2)/(15))*(10);
      length_Dividers[2] = ((shelf_Length-outer_Thickness*2)/(15))*(6);
      length_Dividers[1] = ((shelf_Length-outer_Thickness*2)/(15))*(3);
      length_Dividers[0] = ((shelf_Length-outer_Thickness*2)/(15))*(1);
    }
    if(length_Div == 3) {
      length_Dividers[2] = ((shelf_Length-outer_Thickness*2)/(10))*(6);
      length_Dividers[1] = ((shelf_Length-outer_Thickness*2)/(10))*(3);
      length_Dividers[0] = ((shelf_Length-outer_Thickness*2)/(10))*(1);
    }
    if(length_Div == 2) {
      length_Dividers[1] = ((shelf_Length-outer_Thickness*2)/(6))*(3);
      length_Dividers[0] = ((shelf_Length-outer_Thickness*2)/(6))*(1);
    }
    if(length_Div == 1) {
      length_Dividers[0] = ((shelf_Length-outer_Thickness*2)/(3))*(1);
    }
    if(length_Div == 0) {
    }
  }
  if(dist_GrowY) {
    if(height_Div == 4) {
      height_Dividers[3] = ((shelf_Height-outer_Thickness*2-400)/(15))*(10);
      height_Dividers[2] = ((shelf_Height-outer_Thickness*2-400)/(15))*(6);
      height_Dividers[1] = ((shelf_Height-outer_Thickness*2-400)/(15))*(3);
      height_Dividers[0] = ((shelf_Height-outer_Thickness*2-400)/(15))*(1);
    }
    if(height_Div == 3) {
      height_Dividers[2] = ((shelf_Height-outer_Thickness*2-400)/(10))*(6);
      height_Dividers[1] = ((shelf_Height-outer_Thickness*2-400)/(10))*(3);
      height_Dividers[0] = ((shelf_Height-outer_Thickness*2-400)/(10))*(1);
    }
    if(height_Div == 2) {
      height_Dividers[1] = ((shelf_Height-outer_Thickness*2-400)/(6))*(3);
      height_Dividers[0] = ((shelf_Height-outer_Thickness*2-400)/(6))*(1);
    }
    if(height_Div == 1) {
      height_Dividers[0] = ((shelf_Height-outer_Thickness*2-400)/(3))*(1);
    }
    if(height_Div == 0) {
    }
  }
  
  if(height_Div>=2) {
    top_Third = (shelf_Height-height_Dividers[height_Div-1]-400-outer_Thickness*2)/3;
    top_Third_t = -400-outer_Thickness-height_Dividers[height_Div-1]-top_Third*2;
    top_Third_b = -400-outer_Thickness-height_Dividers[height_Div-1]-top_Third;
    bottom_Third = (height_Dividers[height_Div-2])/3;
    bot_Third_t = -400-outer_Thickness-bottom_Third*2;
    bot_Third_b = -400-outer_Thickness-bottom_Third;
  }

  //if(shelf_Length < 870 && dist_GrowX && length_Div > 3) {
  //  length_Div=3;
  //}
  //if(shelf_Length < 600 && dist_GrowX && length_Div > 2) {
  //  length_Div=2;
  //}
  if(shelf_Height < 1550 && dist_GrowY && height_Div > 3) {
    height_Div = 3;
  }
  if(shelf_Height < 1170 && dist_GrowY && height_Div>2) {
    height_Div = 2;
  }
  //distributions/\
  
  
  //proportions\/
  if(locked) {
    shelf_Height = constrain(int(shelf_Length+locked_Ratio),1000,2000);
    heightC=map(shelf_Height,1000,2000,175+3,175+260-3);
  }
  else {
    locked_Ratio = shelf_Height-shelf_Length;
  }
  
  if(modular){
    //sY.setValue(shelf_Length+400);
    shelf_Height=constrain(shelf_Length+400,1000,2000);
    heightC=map(shelf_Height,1000,2000,175+3,175+260-3);
  }
  
  if(modular || locked){
    noStroke();
    fill(255,127);
    rect(173,695+2,262,6);
    noFill();
    stroke(0);
  }
  
  noStroke();
  
  if(props==2){
    fill(orange);
    ellipse(445+12,686,12,12);
    fill(gray);
    ellipse(445+12,686+19,12,12);
    ellipse(445+12,686+38,12,12);
    locked=false;
    modular=false;
  }
  if(props==1){
    fill(orange);
    ellipse(445+12,686+19,12,12);
    fill(gray);
    ellipse(445+12,686,12,12);
    ellipse(445+12,686+38,12,12);
    locked=true;
    modular=false;
  }
  if(props==0){
    fill(orange);
    ellipse(445+12,686+38,12,12);
    fill(gray);
    ellipse(445+12,686,12,12);
    ellipse(445+12,686+19,12,12);
    locked=false;
    modular=true;
  }
  //proportions/\
  
  //conditions\/
  noFill();
  stroke(0);
  strokeWeight(.75);
  rect(635,748,49,10);
  rect(635+78,748,49,10);
  rect(282,748,32,10);
  rect(368,748,32,10);
  
  noStroke();
  
  if(!dowel_Holes && mouseX>=636 && mouseX<=636+48 && mouseY>=748 && mouseY<=748+10 && mousePressed){
    dowel_Holes=true;
//    dowel_Off.setValue(true);
  }
  
  if(dowel_Diameter==3){
    fill(0);
    rect(570+65,748,50/3,10);
    fill(gray);
    ellipse(559+65,748+5,12,12);
  }
  if(dowel_Diameter==5){
    fill(0);
    rect(570+50/3+65,748,50/3,10);
    fill(gray);
    ellipse(559+65,748+5,12,12);
  }
  if(dowel_Diameter==7){
    fill(0);
    rect(570+50*2/3+65,748,50/3,10);
    fill(gray);
    ellipse(559+65,748+5,12,12);
  }
  
  if(!dowel_Holes){
    fill(orange);
    ellipse(559+65,748+5,12,12);
    dowel_Diameter=0;
  }
  if(dowel_Holes && mouseX>=618 && mouseX<=618+12 && mouseY>=747 && mouseY<=747+12 && mousePressed && !d_D_Mouse){
    dowel_Diameter=5;
//    d_D.setValue(5);
  }
  
  //
  
  if(!sniglet_Off && mouseX>=714 && mouseX<=714+48 && mouseY>=748 && mouseY<=748+10 && mousePressed){
    sniglet_Off=true;
//    snig_Off.setValue(true);
  }
  
  if(sniglet_Radius==3){
    fill(0);
    rect(570+65+78,748,50/3,10);
    fill(gray);
    ellipse(559+65+78,748+5,12,12);
  }
  if(sniglet_Radius==5){
    fill(0);
    rect(570+50/3+65+78,748,50/3,10);
    fill(gray);
    ellipse(559+65+78,748+5,12,12);
  }
  if(sniglet_Radius==7){
    fill(0);
    rect(570+50*2/3+65+78,748,50/3,10);
    fill(gray);
    ellipse(559+65+78,748+5,12,12);
  }
  
  if(!sniglet_Off){
    fill(orange);
    ellipse(559+65+78,748+5,12,12);
    sniglet_Radius=0;
  }
  if(sniglet_Off && mouseX>=696 && mouseX<=696+12 && mouseY>=747 && mouseY<=747+12 && mousePressed && !s_R_Mouse){
    sniglet_Radius=5;
//    sniglet_Off=false;
//    s_R.setValue(5);
  }
  //conditions/\
  
  
  fill(0);
  if(distX==0){
    dist_EvenX = true;
    dist_GrowX = false;
    rect(368,748,16,10);
  }
  if(distX==1){
    dist_EvenX = false;
    dist_GrowX = true;
    rect(368+16,748,16,10);
  }
  if(distY==0){
    dist_EvenY = true;
    dist_GrowY = false;
    rect(282,748,16,10);
  }
  if(distY==1){
    dist_EvenY = false;
    dist_GrowY = true;
    rect(282+16,748,16,10);
  }
  
  if(back==2){
    back_One=true;
    back_Two=false;
    back_Bikini=false;
    fill(orange);
    ellipse(789+6,676+10,12,12);
    fill(gray);
    ellipse(789+6,676+29,12,12);
    ellipse(789+6,676+48,12,12);
  }
  if(back==1){
    back_One=false;
    back_Two=true;
    back_Bikini=false;
    fill(orange);
    ellipse(789+6,676+10,12,12);
    fill(gray);
    ellipse(789+6,676+29,12,12);
    ellipse(789+6,676+48,12,12);
    back_One = false;
    back_Two = true;
    back_Bikini = false;
    fill(orange);
    ellipse(789+6,676+29,12,12);
    fill(gray);
    ellipse(789+6,676+10,12,12);
    ellipse(789+6,676+48,12,12);
  }
  if(back==0){
    back_One = false;
    back_Two = false;
    back_Bikini=true;
    fill(orange);
    ellipse(789+6,676+10,12,12);
    fill(gray);
    ellipse(789+6,676+29,12,12);
    ellipse(789+6,676+48,12,12);
    back_One = false;
    back_Two = false;
    back_Bikini=true;
    fill(orange);
    ellipse(789+6,676+48,12,12);
    fill(gray);
    ellipse(789+6,676+10,12,12);
    ellipse(789+6,676+29,12,12);
  }
  
  noFill();
  strokeWeight(2);
  stroke(0);





}




void draw3D(int x, int y, float scal) {
//  fill(40);
//  noStroke();
//  rect(0,650,127,130);
//  
//  strokeWeight(10);
//  stroke(240);
  
  stroke(0);
  noFill();
  
  pushMatrix();
  translate(x,y);
  scale(scal);

  line(0,0,100/sqrt(2),-100/sqrt(2));
  line(0,0,-100/sqrt(2),-100/sqrt(2));
  line(0,0,0,-shelf_Height);
  line(0,-shelf_Height,shelf_Depth/sqrt(2),-shelf_Depth/sqrt(2)-shelf_Height);
  line(shelf_Depth/sqrt(2),-shelf_Depth/sqrt(2),shelf_Depth/sqrt(2),-shelf_Depth/sqrt(2)-shelf_Height);
  line((shelf_Depth-100)/sqrt(2),-(shelf_Depth-100)/sqrt(2),shelf_Depth/sqrt(2),-shelf_Depth/sqrt(2));
  line((shelf_Depth-100)/sqrt(2),-(shelf_Depth-100)/sqrt(2),(shelf_Depth-150)/sqrt(2),-(shelf_Depth-150)/sqrt(2)-300);
  line(150/sqrt(2),-150/sqrt(2)-300,(shelf_Depth-150)/sqrt(2),-(shelf_Depth-150)/sqrt(2)-300);
  line(100/sqrt(2),-100/sqrt(2),150/sqrt(2),-150/sqrt(2)-300);

  line(-shelf_Length/sqrt(2),-shelf_Length/sqrt(2),(-shelf_Length+100)/sqrt(2),(-shelf_Length+100)/sqrt(2));
  line(-100/sqrt(2),-100/sqrt(2),-150/sqrt(2),-150/sqrt(2)-300);
  line(-150/sqrt(2),-150/sqrt(2)-300,(-shelf_Length+150)/sqrt(2),(-shelf_Length+150)/sqrt(2)-300);
  line((-shelf_Length+100)/sqrt(2),(-shelf_Length+100)/sqrt(2),(-shelf_Length+150)/sqrt(2),(-shelf_Length+150)/sqrt(2)-300);

  line(0,-shelf_Height,-shelf_Length/sqrt(2),-shelf_Length/sqrt(2)-shelf_Height);
  line(-shelf_Length/sqrt(2),-shelf_Length/sqrt(2),-shelf_Length/sqrt(2),-shelf_Length/sqrt(2)-shelf_Height);
  line(-shelf_Length/sqrt(2),-shelf_Length/sqrt(2)-shelf_Height,-shelf_Length/sqrt(2)+shelf_Depth/sqrt(2),-shelf_Length/sqrt(2)-shelf_Height-shelf_Depth/sqrt(2));
  line(shelf_Depth/sqrt(2),-shelf_Depth/sqrt(2)-shelf_Height,-shelf_Length/sqrt(2)+shelf_Depth/sqrt(2),-shelf_Length/sqrt(2)-shelf_Height-shelf_Depth/sqrt(2));

  line(0,-400,-shelf_Length/sqrt(2),-shelf_Length/sqrt(2)-400);

  for(int i=0; i < height_Div; i++) {
    line(0,-400-outer_Thickness-height_Dividers[i],-shelf_Length/sqrt(2),-shelf_Length/sqrt(2)-400-outer_Thickness-height_Dividers[i]);
//    stroke(200);
    for(int j=0; j < length_Div; j++) {
      
    }
//    stroke(0);
  }

  for(int i=0; i < length_Div; i++) {
    line((-shelf_Length+outer_Thickness+length_Dividers[i])/sqrt(2),(-shelf_Length+outer_Thickness+length_Dividers[i])/sqrt(2)-400,
    (-shelf_Length+outer_Thickness+length_Dividers[i])/sqrt(2),(-shelf_Length+outer_Thickness+length_Dividers[i])/sqrt(2)-shelf_Height);
  }

  popMatrix();

  strokeWeight(2);
  stroke(0);
}



void recordPopUp(){
  if(record_Popup){
    record_Count ++;
    popUp1=true;
    if(record_Count<=250){
      recordTextAlpha=255;
      image(success_Text,780,530);
    }
    else if(record_Count<=350){
      recordTextAlpha=int(map(record_Count,200,300,255,0));
      tint(255,255*(map(record_Count,250,350,1,0)));
      image(success_Text,780,530);
    }
    else{
      record_Count=0;
      record_Popup=false;
      popUp1=false;
    }
    println(record_Count);
  }
  stroke(0);
}