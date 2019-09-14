void newControllers() {
    tint(255);
  shape(controlBack, 0,650);
  if(units=="mm"){
    shape(controlBackmm,0,650);
  }
  if(units=="inches"){
    shape(controlBackinch,0,650);
  }
  stroke(0);
  
  noFill();
  stroke(0);
  strokeWeight(.75);
  //rect(175,748,50,10);//table_Height outline
  rect(175,748,50,10);//units outline
  noStroke();
  
  if(units == "mm"){
    fill(black);
    rect(175,748,50/2,10);
  }
  if(units == "inches"){
    fill(black);
    rect(200,748,25,10);
  }
  
  if(mouseX>=175 && mouseX<=225 && mouseY>=748 && mouseY<=758 && mousePressed && start==false) {
    if(mousePressed){
      u_Mouse=true;
    }
  }
  if(!mousePressed){
    u_Mouse=false;
  }
  if(u_Mouse && mouseX<200){
    units="mm";
  }
  if(u_Mouse && mouseX>=200){
    units="inches";
  }
//units toggle
  
  noStroke();
  fill(orange);
  textFont(font, 18);
  textAlign(LEFT);
  if(units=="mm"){
    text(shelf_Length,130,690);
    text(shelf_Height,130,710);
    text(shelf_Depth,130,735);
    text(nf(outer_Thickness,1,1),614,686);
    text(nf(inner_Thickness,1,1),685,686);
  }
  if(units=="inches"){
    text(int(shelf_Length/25.4),130,690);
    text(int(shelf_Height/25.4),130,710);
    text(int(shelf_Depth/25.4),130,735);
    text(nf(outer_Thickness/25.4,1,1),614,686);
    text(nf(inner_Thickness/25.4,1,1),685,686);
  }
  
  noStroke();
  
  
  
  
  widthC=map(shelf_Length,1000,2000,175+3,175+260-3);                    
  fill(white);
  rect(widthC-6,681+5-3,12,6);
  fill(orange);
  ellipse(widthC,681+5,3,3);

  if(mouseX>=175 && mouseX<=175+260 && mouseY>=681 && mouseY<=681+10 && start==false) {
    if(mousePressed==true) {
      length_Mouse=true;
    }
  }
  if(mousePressed==false) {
    length_Mouse=false;
  }
  if(length_Mouse == true) {
    shelf_Length = round((constrain(int(map(mouseX,175,175+260-5,1000,2000)),1000,2000))/5)*5;
  }
  
  
  
  
  heightC=map(shelf_Height,1000,2000,175+3,175+260-3);
  fill(white);
  rect(heightC-6,695+5-3,12,6);
  fill(orange);
  ellipse(heightC,695+5,3,3);
  
  if(mouseX>=175 && mouseX<=175+260 && mouseY>=695 && mouseY<=695+10 && start==false) {
    if(mousePressed==true) {
      height_Mouse=true;
    }
  }
  if(mousePressed==false) {
    height_Mouse=false;
  }
  if(height_Mouse == true) {
    shelf_Height = round((constrain(int(map(mouseX,175,175+260-5,1000,2000)),1000,2000))/5)*5;
  }
  
  
  
  depthC=map(shelf_Depth,350,450,175+3,175+70-3);
  fill(white);
  rect(depthC-6,723+5-3,12,6);
  fill(orange);
  ellipse(depthC,723+5,3,3);
  
  if(mouseX>=175 && mouseX<=175+70 && mouseY>=723 && mouseY<=723+10 && start==false) {
    if(mousePressed==true) {
      width_Mouse=true;
    }
  }
  if(mousePressed==false) {
    width_Mouse=false;
  }
  if(width_Mouse == true) {
    shelf_Depth = round((constrain(int(map(mouseX,175,175+70-5,350,450)),350,450))/50)*50;
  }

  
  
  
  horizC=map(length_Div,0,4,368+3,368+67-3);
  fill(white);
  rect(horizC-6,723+5-3,12,6);
  fill(orange);
  ellipse(horizC,723+5,3,3);
  
  if(mouseX>=368 && mouseX<=368+67 && mouseY>=723 && mouseY<=723+10 && start==false) {
    if(mousePressed==true) {
      lengthDiv_Mouse=true;
    }
  }
  if(mousePressed==false) {
    lengthDiv_Mouse=false;
  }
  if(lengthDiv_Mouse == true) {
    length_Div = round((constrain(int(map(mouseX,368,368+67-5,0,4)),0,4))/1)*1;
  }
  
  
  
  vertC=map(height_Div,0,4,282+3,282+67-3);
  fill(white);
  rect(vertC-6,723+5-3,12,6);
  fill(orange);
  ellipse(vertC,723+5,3,3);
  
  if(mouseX>=282 && mouseX<=282+67 && mouseY>=723 && mouseY<=723+10 && start==false) {
    if(mousePressed==true) {
      heightDiv_Mouse=true;
    }
  }
  if(mousePressed==false) {
    heightDiv_Mouse=false;
  }
  if(heightDiv_Mouse == true) {
    height_Div = round((constrain(int(map(mouseX,282,282+67-5,0,4)),0,4))/1)*1;
  }
  
  
  
  
  outerC=map(outer_Thickness,10,30,618+3,618+144-3);
  fill(white);
  rect(outerC-6,707+5-3,12,6);
  fill(orange);
  ellipse(outerC,707+5,3,3);
  
  if(mouseX>=618 && mouseX<=618+144 && mouseY>=707 && mouseY<=707+10 && start==false) {
    if(mousePressed==true) {
      oT_Mouse=true;
    }
  }
  if(mousePressed==false) {
    oT_Mouse=false;
  }
  if(oT_Mouse == true) {
    outer_Thickness = round(constrain(map(mouseX,618,618+144-5,10,30),10,30)/.5)*.5;
  }
  
  
  
  
  innerC=map(inner_Thickness,10,20,618+3,618+73-3);
  fill(white);
  rect(innerC-6,721+5-3,12,6);
  fill(orange);
  ellipse(innerC,721+5,3,3);
  
  if(mouseX>=618 && mouseX<=618+73 && mouseY>=721 && mouseY<=721+10 && start==false) {
    if(mousePressed==true) {
      iT_Mouse=true;
    }
  }
  if(mousePressed==false) {
    iT_Mouse=false;
  }
  if(iT_Mouse == true) {
    inner_Thickness = round(constrain(map(mouseX,618,618+73-5,10,20),10,20)/.5)*.5;
  }
  
  
  
  
  
  
  
  
  
//  distributionX = cp5.addSlider("distX",0,1,1,  368,748,32,10);
//  distributionX.setNumberOfTickMarks(2);
//  distributionX.setDecimalPrecision(1);

  distXC=map(distX,10,20,368+3,368+32-3);
  
  if(mouseX>=368 && mouseX<=368+32 && mouseY>=748 && mouseY<=748+10 && start==false) {
    if(mousePressed==true) {
      distX_Mouse=true;
    }
  }
  if(mousePressed==false) {
    distX_Mouse=false;
  }
  if(distX_Mouse == true) {
    distX = round((constrain(int(map(mouseX,368,368+32-16,0,1)),0,1))/1)*1;
  }

//  distributionY = cp5.addSlider("distY",0,1,1,  282,748,32,10);
//  distributionY.setNumberOfTickMarks(2);
//  distributionY.setDecimalPrecision(1);

  distYC=map(distY,10,20,282+3,282+32-3);
  
  if(mouseX>=282 && mouseX<=282+32 && mouseY>=748 && mouseY<=748+10 && start==false) {
    if(mousePressed==true) {
      distY_Mouse=true;
    }
  }
  if(mousePressed==false) {
    distY_Mouse=false;
  }
  if(distY_Mouse == true) {
    distY = round((constrain(int(map(mouseX,282,282+32-16,0,1)),0,1))/1)*1;
  }



//  back_Switch = cp5.addSlider("back",0,2,2,  789,679,13,54);
//  back_Switch.setNumberOfTickMarks(3);
//  back_Switch.setDecimalPrecision(1);
  
  if(mouseX>=789 && mouseX<=789+12 && mouseY>=679 && mouseY<=679+50 && start==false) {
    if(mousePressed==true) {
      back_Mouse=true;
    }
  }
  if(mousePressed==false) {
    back_Mouse=false;
  }
  if(back_Mouse == true) {
    back = (constrain(int(map(mouseY,679+50,679+18,0,2)),0,2));
  }
  
  
  
  
  
  
  
  if(mouseX>=636 && mouseX<=636+48 && mouseY>=748 && mouseY<=748+10 && start==false) {
    if(mousePressed==true) {
      d_D_Mouse=true;
    }
  }
  if(mousePressed==false) {
    d_D_Mouse=false;
  }
  if(d_D_Mouse == true) {
    dowel_Diameter = round(constrain(map(mouseX,636,636+48-16,3,7),3,7)/2)*2-1;
  }
//("dowel_Diameter",3,7,5,  636,748,48,10);

  if(mouseX>=618 && mouseX<=618+12 && mouseY>=747 && mouseY<=747+12 && mousePressed && !reset && start==false) { 
    dowel_Holes=!dowel_Holes;
    reset=true;
  }
//dowel_Holes

  if(mouseX>=714 && mouseX<=714+48 && mouseY>=748 && mouseY<=748+10 && start==false) {
    if(mousePressed==true) {
      s_R_Mouse=true;
    }
  }
  if(mousePressed==false) {
    s_R_Mouse=false;
  }
  if(s_R_Mouse == true) {
    sniglet_Radius = round(constrain(map(mouseX,714,714+48-16,3,7),3,7)/2)*2-1;
  }
//sniglet_Radius

if(mouseX>=696 && mouseX<=696+12 && mouseY>=747 && mouseY<=747+12 && mousePressed && !reset && start==false) { 
  sniglet_Off=!sniglet_Off;
  reset=true;
  }
//sniglet_Off

  if(mouseX>=451 && mouseX<=451+12 && mouseY>=680 && mouseY<=680+50 && start==false) {
    if(mousePressed==true) {
      props_Mouse=true;
    }
  }
  if(mousePressed==false) {
    props_Mouse=false;
  }
  if(props_Mouse == true) {
    props = (constrain(int(map(mouseY,680+50,680+18,0,2)),0,2));
  }
//props


if(mouseX>=866 && mouseX<=866+43 && mouseY>=730 && mouseY<=730+43 && mousePressed && !reset && start==false) { 
  preRecord=true;
  reset=true;
  }
//record_Popup
  
  
  
  
  
  if(mousePressed){
    start=true;
  }
  loop();
  if(!loopy && !popUp1 &&!popUp2 && startCount>2){
    noLoop();
  }


}