void sidePocket(float centerX,float centerY, float rotation, float extraX, float extraY){
pushMatrix();
translate(centerX,centerY);
rotate(rotation);
stroke(pocket_Color);
line(-inner_Thickness/2-sniglet_Radius,-50,inner_Thickness/2+sniglet_Radius,-50);
arc(inner_Thickness/2+sniglet_Radius,-50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
arc(inner_Thickness/2+sniglet_Radius,-50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
line(inner_Thickness/2,-50-sniglet_Radius*3,inner_Thickness/2,-shelf_Depth+50+sniglet_Radius*3);
arc(inner_Thickness/2+sniglet_Radius,-shelf_Depth+50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
arc(inner_Thickness/2+sniglet_Radius,-shelf_Depth+50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
line(inner_Thickness/2+sniglet_Radius,-shelf_Depth+50,-inner_Thickness/2-sniglet_Radius,-shelf_Depth+50);
arc(-inner_Thickness/2-sniglet_Radius,-shelf_Depth+50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
arc(-inner_Thickness/2-sniglet_Radius,-shelf_Depth+50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
line(-inner_Thickness/2,-50-sniglet_Radius*3,-inner_Thickness/2,-shelf_Depth+50+sniglet_Radius*3);
arc(-inner_Thickness/2-sniglet_Radius,-50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
arc(-inner_Thickness/2-sniglet_Radius,-50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
stroke(0);

if(record){
  setLayer("Pocket Cut");
  writeLine(-inner_Thickness/2-sniglet_Radius,-50,inner_Thickness/2+sniglet_Radius,-50,centerX+extraX,centerY+extraY,rotation);
  writeArc(inner_Thickness/2+sniglet_Radius,-50-sniglet_Radius,-PI/2,PI/2,centerX+extraX,centerY+extraY,rotation);
  writeArc(inner_Thickness/2+sniglet_Radius,-50-sniglet_Radius*3,PI/2,PI,centerX+extraX,centerY+extraY,rotation);
  writeLine(inner_Thickness/2,-50-sniglet_Radius*3,inner_Thickness/2,-shelf_Depth+50+sniglet_Radius*3,centerX+extraX,centerY+extraY,rotation);
  writeArc(inner_Thickness/2+sniglet_Radius,-shelf_Depth+50+sniglet_Radius*3,PI,PI+PI/2,centerX+extraX,centerY+extraY,rotation);
  writeArc(inner_Thickness/2+sniglet_Radius,-shelf_Depth+50+sniglet_Radius,-PI/2,PI/2,centerX+extraX,centerY+extraY,rotation);
  writeLine(inner_Thickness/2+sniglet_Radius,-shelf_Depth+50,-inner_Thickness/2-sniglet_Radius,-shelf_Depth+50,centerX+extraX,centerY+extraY,rotation);
  writeArc(-inner_Thickness/2-sniglet_Radius,-shelf_Depth+50+sniglet_Radius,PI/2,PI+PI/2,centerX+extraX,centerY+extraY,rotation);
  writeArc(-inner_Thickness/2-sniglet_Radius,-shelf_Depth+50+sniglet_Radius*3,-PI/2,0,centerX+extraX,centerY+extraY,rotation);
  writeLine(-inner_Thickness/2,-50-sniglet_Radius*3,-inner_Thickness/2,-shelf_Depth+50+sniglet_Radius*3,centerX+extraX,centerY+extraY,rotation);
  writeArc(-inner_Thickness/2-sniglet_Radius,-50-sniglet_Radius*3,0,PI/2,centerX+extraX,centerY+extraY,rotation);
  writeArc(-inner_Thickness/2-sniglet_Radius,-50-sniglet_Radius,PI/2,PI+PI/2,centerX+extraX,centerY+extraY,rotation);
}

popMatrix();
} 

void backPocket(){
  
}
