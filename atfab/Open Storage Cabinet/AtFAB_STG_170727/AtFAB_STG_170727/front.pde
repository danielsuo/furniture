void front(float cornerX, float cornerY) {
  pushMatrix();
  translate(cornerX,cornerY);
  
  line(outer_Thickness,0,outer_Thickness,100-sniglet_Radius*3);
  arc(outer_Thickness+sniglet_Radius,100-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  arc(outer_Thickness+sniglet_Radius,100-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  line(outer_Thickness+sniglet_Radius,100,0,100);
  line(0,100,0,200);
  line(0,200,outer_Thickness+sniglet_Radius,200);
  arc(outer_Thickness+sniglet_Radius,200+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(outer_Thickness+sniglet_Radius,200+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  line(outer_Thickness,200+sniglet_Radius*3,outer_Thickness,400);
  
  line(outer_Thickness,400,50,400);
  line(50,400,50,400-outer_Thickness-sniglet_Radius);
  arc(50+sniglet_Radius,400-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  arc(50+sniglet_Radius*3,400-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  line(50+sniglet_Radius*3,400-outer_Thickness,100,400-outer_Thickness);
  line(100,400-outer_Thickness,150,100);
  line(150,100,shelf_Length-150,100);
  line(shelf_Length-150,100,shelf_Length-100,400-outer_Thickness);
  line(shelf_Length-50-sniglet_Radius*3,400-outer_Thickness,shelf_Length-100,400-outer_Thickness);
  arc(shelf_Length-50-sniglet_Radius*3,400-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  arc(shelf_Length-50-sniglet_Radius,400-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  line(shelf_Length-50,400,shelf_Length-50,400-outer_Thickness-sniglet_Radius);
  line(shelf_Length-outer_Thickness,400,shelf_Length-50,400);
  
  line(shelf_Length-outer_Thickness,400,shelf_Length-outer_Thickness,200+sniglet_Radius*3);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,200+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,200+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  line(shelf_Length-outer_Thickness-sniglet_Radius,200,shelf_Length,200);
  line(shelf_Length,200,shelf_Length,100);
  line(shelf_Length,100,shelf_Length-outer_Thickness-sniglet_Radius,100);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,100-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,100-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  line(shelf_Length-outer_Thickness,100-sniglet_Radius*3,shelf_Length-outer_Thickness,0);
  
  line(shelf_Length-outer_Thickness,0,outer_Thickness,0);
  if(record){
    setLayer("Outside Cut");
    writeLine(outer_Thickness,0,outer_Thickness,100-sniglet_Radius*3,cornerX,cornerY,0);
  writeArc(outer_Thickness+sniglet_Radius,100-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,0);
  writeArc(outer_Thickness+sniglet_Radius,100-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
  writeLine(outer_Thickness+sniglet_Radius,100,0,100,cornerX,cornerY,0);
  writeLine(0,100,0,200,cornerX,cornerY,0);
  writeLine(0,200,outer_Thickness+sniglet_Radius,200,cornerX,cornerY,0);
  writeArc(outer_Thickness+sniglet_Radius,200+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
  writeArc(outer_Thickness+sniglet_Radius,200+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,0);
  writeLine(outer_Thickness,200+sniglet_Radius*3,outer_Thickness,400,cornerX,cornerY,0);
  
  writeLine(outer_Thickness,400,50,400,cornerX,cornerY,0);
  writeLine(50,400,50,400-outer_Thickness-sniglet_Radius,cornerX,cornerY,0);
  writeArc(50+sniglet_Radius,400-outer_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,0);
  writeArc(50+sniglet_Radius*3,400-outer_Thickness-sniglet_Radius,PI/2,PI,cornerX,cornerY,0);
  writeLine(50+sniglet_Radius*3,400-outer_Thickness,100,400-outer_Thickness,cornerX,cornerY,0);
  writeLine(100,400-outer_Thickness,150,100,cornerX,cornerY,0);
  writeLine(150,100,shelf_Length-150,100,cornerX,cornerY,0);
  writeLine(shelf_Length-150,100,shelf_Length-100,400-outer_Thickness,cornerX,cornerY,0);
  writeLine(shelf_Length-50-sniglet_Radius*3,400-outer_Thickness,shelf_Length-100,400-outer_Thickness,cornerX,cornerY,0);
  writeArc(shelf_Length-50-sniglet_Radius*3,400-outer_Thickness-sniglet_Radius,0,PI/2,cornerX,cornerY,0);
  writeArc(shelf_Length-50-sniglet_Radius,400-outer_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,0);
  writeLine(shelf_Length-50,400,shelf_Length-50,400-outer_Thickness-sniglet_Radius,cornerX,cornerY,0);
  writeLine(shelf_Length-outer_Thickness,400,shelf_Length-50,400,cornerX,cornerY,0);
  
  writeLine(shelf_Length-outer_Thickness,400,shelf_Length-outer_Thickness,200+sniglet_Radius*3,cornerX,cornerY,0);
  writeArc(shelf_Length-outer_Thickness-sniglet_Radius,200+sniglet_Radius*3,-PI/2,0,cornerX,cornerY,0);
  writeArc(shelf_Length-outer_Thickness-sniglet_Radius,200+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
  writeLine(shelf_Length-outer_Thickness-sniglet_Radius,200,shelf_Length,200,cornerX,cornerY,0);
  writeLine(shelf_Length,200,shelf_Length,100,cornerX,cornerY,0);
  writeLine(shelf_Length,100,shelf_Length-outer_Thickness-sniglet_Radius,100,cornerX,cornerY,0);
  writeArc(shelf_Length-outer_Thickness-sniglet_Radius,100-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
  writeArc(shelf_Length-outer_Thickness-sniglet_Radius,100-sniglet_Radius*3,0,PI/2,cornerX,cornerY,0);
  writeLine(shelf_Length-outer_Thickness,100-sniglet_Radius*3,shelf_Length-outer_Thickness,0,cornerX,cornerY,0);
  
  writeLine(shelf_Length-outer_Thickness,0,outer_Thickness,0,cornerX,cornerY,0);
  }
  if(dowel_Holes){
    stroke(255,0,0);
    ellipse(outer_Thickness/2,150,dowel_Diameter,dowel_Diameter);
    ellipse(shelf_Length-outer_Thickness/2,150,dowel_Diameter,dowel_Diameter);
    if(record){
    setLayer("Dowel Holes");
      writeCircle(outer_Thickness/2,150,cornerX,cornerY,0);
      writeCircle(shelf_Length-outer_Thickness/2,150,cornerX,cornerY,0);
    }
    stroke(0);
  }
  
  popMatrix();
}

void bottomSupport(float cornerX, float cornerY) {
  pushMatrix();
  translate(cornerX,cornerY);
  
  line(0,0,0,70+outer_Thickness);
  line(0,70+outer_Thickness,outer_Thickness+sniglet_Radius,70+outer_Thickness);
  arc(outer_Thickness+sniglet_Radius,70+sniglet_Radius+outer_Thickness,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(outer_Thickness+sniglet_Radius,70+sniglet_Radius*3+outer_Thickness,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  line(outer_Thickness,70+sniglet_Radius*3+outer_Thickness,outer_Thickness,100+outer_Thickness);
  
  line(outer_Thickness,100+outer_Thickness,shelf_Length-outer_Thickness,100+outer_Thickness);
  
  line(shelf_Length-outer_Thickness,100+outer_Thickness,shelf_Length-outer_Thickness,70+sniglet_Radius*3+outer_Thickness);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,70+sniglet_Radius*3+outer_Thickness,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,70+sniglet_Radius+outer_Thickness,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  line(shelf_Length-outer_Thickness-sniglet_Radius,70+outer_Thickness,shelf_Length,70+outer_Thickness);
  line(shelf_Length,70+outer_Thickness,shelf_Length,0);
  
  line(shelf_Length,0,shelf_Length-50,0);
  line(shelf_Length-50,0,shelf_Length-50,outer_Thickness+sniglet_Radius);
  arc(shelf_Length-50-sniglet_Radius,outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  arc(shelf_Length-50-sniglet_Radius*3,outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  line(shelf_Length-50-sniglet_Radius*3,outer_Thickness,50+sniglet_Radius*3,outer_Thickness);
  arc(50+sniglet_Radius*3,outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  arc(50+sniglet_Radius,outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  line(50,outer_Thickness+sniglet_Radius,50,0);
  line(50,0,0,0);
  
  if(record){
    setLayer("Outside Cut");
    writeLine(0,0,0,70+outer_Thickness,cornerX,cornerY,0);
    writeLine(0,70+outer_Thickness,outer_Thickness+sniglet_Radius,70+outer_Thickness,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,70+sniglet_Radius+outer_Thickness,-PI/2,PI/2,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,70+sniglet_Radius*3+outer_Thickness,PI,PI+PI/2,cornerX,cornerY,0);
    writeLine(outer_Thickness,70+sniglet_Radius*3+outer_Thickness,outer_Thickness,100+outer_Thickness,cornerX,cornerY,0);
    
    writeLine(outer_Thickness,100+outer_Thickness,shelf_Length-outer_Thickness,100+outer_Thickness,cornerX,cornerY,0);
    
    writeLine(shelf_Length-outer_Thickness,100+outer_Thickness,shelf_Length-outer_Thickness,70+sniglet_Radius*3+outer_Thickness,cornerX,cornerY,0);
    writeArc(shelf_Length-outer_Thickness-sniglet_Radius,70+sniglet_Radius*3+outer_Thickness,-PI/2,0,cornerX,cornerY,0);
    writeArc(shelf_Length-outer_Thickness-sniglet_Radius,70+sniglet_Radius+outer_Thickness,PI/2,PI+PI/2,cornerX,cornerY,0);
    writeLine(shelf_Length-outer_Thickness-sniglet_Radius,70+outer_Thickness,shelf_Length,70+outer_Thickness,cornerX,cornerY,0);
    writeLine(shelf_Length,70+outer_Thickness,shelf_Length,0,cornerX,cornerY,0);
    
    writeLine(shelf_Length,0,shelf_Length-50,0,cornerX,cornerY,0);
    writeLine(shelf_Length-50,0,shelf_Length-50,outer_Thickness+sniglet_Radius,cornerX,cornerY,0);
    writeArc(shelf_Length-50-sniglet_Radius,outer_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,0);
    writeArc(shelf_Length-50-sniglet_Radius*3,outer_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,0);
    writeLine(shelf_Length-50-sniglet_Radius*3,outer_Thickness,50+sniglet_Radius*3,outer_Thickness,cornerX,cornerY,0);
    writeArc(50+sniglet_Radius*3,outer_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,0);
    writeArc(50+sniglet_Radius,outer_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,0);
    writeLine(50,outer_Thickness+sniglet_Radius,50,0,cornerX,cornerY,0);
    writeLine(50,0,0,0,cornerX,cornerY,0);
  }
  popMatrix();
}
