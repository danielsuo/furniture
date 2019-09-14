//void guides(){
//  strokeWeight(.1);
//  line(0,650,width,650);
//  line(130,650,130,height);
//  line(175,650,175,height);
//  line(435,650,435,height);
//  line(445,650,445,height);
//  line(550,650,550,height);
//  line(700,650,700,height);
//  line(790,650,790,height);
//  line(0,675,width,675);
//  line(0,710,width,710);
//  strokeWeight(1);
//}

void controlUnder(){
//  beginRecord(controllers);
//  cp5.draw();
//  endRecord();
  
  shape(controlBack, 0,650);
  stroke(0);


  noStroke();

  
  //sliders\/      
//  widthC=map(shelf_Length,1000,2000,175+3,175+260-3);                    
//  fill(white);
//  rect(widthC-6,681+5-3,12,6);
//  fill(orange);
//  ellipse(widthC,681+5,3,3);
  
//  heightC=map(shelf_Height,1000,2000,175+3,175+260-3);
//  fill(white);
//  rect(heightC-6,695+5-3,12,6);
//  fill(orange);
//  ellipse(heightC,695+5,3,3);
  
//  horizC=map(length_Div,0,4,368+3,368+67-3);
//  fill(white);
//  rect(horizC-6,723+5-3,12,6);
//  fill(orange);
//  ellipse(horizC,723+5,3,3);
//  
//  vertC=map(height_Div,0,4,282+3,282+67-3);
//  fill(white);
//  rect(vertC-6,723+5-3,12,6);
//  fill(orange);
//  ellipse(vertC,723+5,3,3);
  
//  depthC=map(shelf_Depth,350,450,175+3,175+70-3);
//  fill(white);
//  rect(depthC-6,723+5-3,12,6);
//  fill(orange);
//  ellipse(depthC,723+5,3,3);
  
//  outerC=map(outer_Thickness,10,30,618+3,618+144-3);
//  fill(white);
//  rect(outerC-6,707+5-3,12,6);
//  fill(orange);
//  ellipse(outerC,707+5,3,3);
//  
//  innerC=map(inner_Thickness,10,20,618+3,618+73-3);
//  fill(white);
//  rect(innerC-6,721+5-3,12,6);
//  fill(orange);
//  ellipse(innerC,721+5,3,3);
  //sliders/\
  
  
  if(height_Div<2 && back_Bikini) {
//    back_Switch.setValue(1);
    back=1;
    back_Bikini=false;
  }
//  if(height_Div<2 && back_Switch.isMousePressed() == true){
//    if(back==0){
//      height_Div=2;
//    }
//  }
  
  noFill();
  stroke(0);
}

void controlOver(){
  
  noStroke();
  if(record){
    //saveCount ++;
    //if(saveCount<=250){
    //  tint(255,255);
    //  image(save_Text,716,390);
    //}
    //else if(saveCount<=350){
    //  tint(255, 255*(map(saveCount,250,350,1,0)) );
    //  image(save_Text,716,390);
    //}
    //else{
    //  record=false;
//  //    recorder.setValue(false);
    //  saveCount=0;
    //}
  }
  
  noStroke();
  fill(255,200);
//  rect(788,676+22,70,14);
//  rect(788,676+41,70,14);
  noFill();
  stroke(1);
}