void top(float cornerX,float cornerY) {
  pushMatrix();
  translate(cornerX,cornerY);

  line(0,0,100,0);
  line(100,0,100,-outer_Thickness-sniglet_Radius);
  arc(100+sniglet_Radius,-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  arc(100+sniglet_Radius*3,-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  line(100+sniglet_Radius*3,-outer_Thickness,shelf_Length-100-sniglet_Radius*3,-outer_Thickness);
  arc(shelf_Length-100-sniglet_Radius*3,-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  arc(shelf_Length-100-sniglet_Radius,-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  line(shelf_Length-100,-outer_Thickness-sniglet_Radius,shelf_Length-100,0);
  line(shelf_Length-100,0,shelf_Length,0);

  line(shelf_Length,0,shelf_Length,-100);
  line(shelf_Length,-100,shelf_Length-outer_Thickness-sniglet_Radius,-100);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,-100-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,-100-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  line(shelf_Length-outer_Thickness,-100-sniglet_Radius*3,shelf_Length-outer_Thickness,-shelf_Depth+100+sniglet_Radius*3);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,-shelf_Depth+100+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,-shelf_Depth+100+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  line(shelf_Length-outer_Thickness-sniglet_Radius,-shelf_Depth+100,shelf_Length,-shelf_Depth+100);
  line(shelf_Length,-shelf_Depth+100,shelf_Length,-shelf_Depth);

  line(shelf_Length,-shelf_Depth,0,-shelf_Depth);

  line(0,-shelf_Depth,0,-shelf_Depth+100);
  line(0,-shelf_Depth+100,outer_Thickness+sniglet_Radius,-shelf_Depth+100);
  arc(outer_Thickness+sniglet_Radius,-shelf_Depth+100+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(outer_Thickness+sniglet_Radius,-shelf_Depth+100+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  line(outer_Thickness,-shelf_Depth+100+sniglet_Radius*3,outer_Thickness,-100-sniglet_Radius*3);
  arc(outer_Thickness+sniglet_Radius,-100-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  arc(outer_Thickness+sniglet_Radius,-100-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  line(outer_Thickness+sniglet_Radius,-100,0,-100);
  line(0,-100,0,0);
  
  if(record){
    setLayer("Outside Cut");
    writeLine(0,0,100,0,cornerX,cornerY,0);
    writeLine(100,0,100,-outer_Thickness-sniglet_Radius,cornerX,cornerY,0);
    writeArc(100+sniglet_Radius,-outer_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,0);
    writeArc(100+sniglet_Radius*3,-outer_Thickness-sniglet_Radius,PI/2,PI,cornerX,cornerY,0);
    writeLine(100+sniglet_Radius*3,-outer_Thickness,shelf_Length-100-sniglet_Radius*3,-outer_Thickness,cornerX,cornerY,0);
    writeArc(shelf_Length-100-sniglet_Radius*3,-outer_Thickness-sniglet_Radius,0,PI/2,cornerX,cornerY,0);
    writeArc(shelf_Length-100-sniglet_Radius,-outer_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,0);
    writeLine(shelf_Length-100,-outer_Thickness-sniglet_Radius,shelf_Length-100,0,cornerX,cornerY,0);
    writeLine(shelf_Length-100,0,shelf_Length,0,cornerX,cornerY,0);
    
    writeLine(shelf_Length,0,shelf_Length,-100,cornerX,cornerY,0);
    writeLine(shelf_Length,-100,shelf_Length-outer_Thickness-sniglet_Radius,-100,cornerX,cornerY,0);
    writeArc(shelf_Length-outer_Thickness-sniglet_Radius,-100-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
    writeArc(shelf_Length-outer_Thickness-sniglet_Radius,-100-sniglet_Radius*3,0,PI/2,cornerX,cornerY,0);
    writeLine(shelf_Length-outer_Thickness,-100-sniglet_Radius*3,shelf_Length-outer_Thickness,-shelf_Depth+100+sniglet_Radius*3,cornerX,cornerY,0);
    writeArc(shelf_Length-outer_Thickness-sniglet_Radius,-shelf_Depth+100+sniglet_Radius*3,-PI/2,0,cornerX,cornerY,0);
    writeArc(shelf_Length-outer_Thickness-sniglet_Radius,-shelf_Depth+100+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
    writeLine(shelf_Length-outer_Thickness-sniglet_Radius,-shelf_Depth+100,shelf_Length,-shelf_Depth+100,cornerX,cornerY,0);
    writeLine(shelf_Length,-shelf_Depth+100,shelf_Length,-shelf_Depth,cornerX,cornerY,0);
    
    writeLine(shelf_Length,-shelf_Depth,0,-shelf_Depth,cornerX,cornerY,0);
    
    writeLine(0,-shelf_Depth,0,-shelf_Depth+100,cornerX,cornerY,0);
    writeLine(0,-shelf_Depth+100,outer_Thickness+sniglet_Radius,-shelf_Depth+100,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,-shelf_Depth+100+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,-shelf_Depth+100+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,0);
    writeLine(outer_Thickness,-shelf_Depth+100+sniglet_Radius*3,outer_Thickness,-100-sniglet_Radius*3,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,-100-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,-100-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
    writeLine(outer_Thickness+sniglet_Radius,-100,0,-100,cornerX,cornerY,0);
    writeLine(0,-100,0,0,cornerX,cornerY,0);
  }
  
  for(int i=0; i < length_Div; i++) {
    sidePocket(outer_Thickness+length_Dividers[i],0,0,cornerX,cornerY);
  }
  
  if(dowel_Holes){
    stroke(255,0,0);
    ellipse(outer_Thickness/2,-shelf_Depth+50,dowel_Diameter,dowel_Diameter);
    ellipse(outer_Thickness/2,-50,dowel_Diameter,dowel_Diameter);
    ellipse(50,-outer_Thickness/2,dowel_Diameter,dowel_Diameter);
    
    ellipse(shelf_Length-outer_Thickness/2,-shelf_Depth+50,dowel_Diameter,dowel_Diameter);
    ellipse(shelf_Length-outer_Thickness/2,-50,dowel_Diameter,dowel_Diameter);
    ellipse(shelf_Length-50,-outer_Thickness/2,dowel_Diameter,dowel_Diameter);
    if(record){
      setLayer("Dowel Holes");
      writeCircle(outer_Thickness/2,-shelf_Depth+50,cornerX,cornerY,0);
      writeCircle(outer_Thickness/2,-50,cornerX,cornerY,0);
      writeCircle(50,-outer_Thickness/2,cornerX,cornerY,0);
      
      writeCircle(shelf_Length-outer_Thickness/2,-shelf_Depth+50,cornerX,cornerY,0);
      writeCircle(shelf_Length-outer_Thickness/2,-50,cornerX,cornerY,0);
      writeCircle(shelf_Length-50,-outer_Thickness/2,cornerX,cornerY,0);
    }
    stroke(0);
  }
  
  popMatrix();
}

void bottom(float cornerX,float cornerY) {
  pushMatrix();
  translate(cornerX,cornerY);

  line(outer_Thickness,outer_Thickness,outer_Thickness,100-sniglet_Radius*3);
  arc(outer_Thickness+sniglet_Radius,100-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  arc(outer_Thickness+sniglet_Radius,100-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  line(outer_Thickness+sniglet_Radius,100,0,100);
  line(0,100,0,shelf_Depth/2-outer_Thickness/2);
  line(0,shelf_Depth/2-outer_Thickness/2,50-sniglet_Radius*3,shelf_Depth/2-outer_Thickness/2);
  arc(50-sniglet_Radius*3,shelf_Depth/2-outer_Thickness/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  arc(50-sniglet_Radius,shelf_Depth/2-outer_Thickness/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  line(50,shelf_Depth/2-outer_Thickness/2-sniglet_Radius,50,shelf_Depth/2+outer_Thickness/2+sniglet_Radius);
  arc(50-sniglet_Radius,shelf_Depth/2+outer_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  arc(50-sniglet_Radius*3,shelf_Depth/2+outer_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  line(50-sniglet_Radius*3,shelf_Depth/2+outer_Thickness/2,0,shelf_Depth/2+outer_Thickness/2);
  line(0,shelf_Depth/2+outer_Thickness/2,0,shelf_Depth-100);
  line(0,shelf_Depth-100,outer_Thickness+sniglet_Radius,shelf_Depth-100);
  arc(outer_Thickness+sniglet_Radius,shelf_Depth-100+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(outer_Thickness+sniglet_Radius,shelf_Depth-100+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  line(outer_Thickness,shelf_Depth-100+sniglet_Radius*3,outer_Thickness,shelf_Depth);
  
  if(record){
    setLayer("Outside Cut");
    writeLine(outer_Thickness,outer_Thickness,outer_Thickness,100-sniglet_Radius*3,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,100-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,100-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
    writeLine(outer_Thickness+sniglet_Radius,100,0,100,cornerX,cornerY,0);
    writeLine(0,100,0,shelf_Depth/2-outer_Thickness/2,cornerX,cornerY,0);
    writeLine(0,shelf_Depth/2-outer_Thickness/2,50-sniglet_Radius*3,shelf_Depth/2-outer_Thickness/2,cornerX,cornerY,0);
    writeArc(50-sniglet_Radius*3,shelf_Depth/2-outer_Thickness/2-sniglet_Radius,0,PI/2,cornerX,cornerY,0);
    writeArc(50-sniglet_Radius,shelf_Depth/2-outer_Thickness/2-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,0);
    writeLine(50,shelf_Depth/2-outer_Thickness/2-sniglet_Radius,50,shelf_Depth/2+outer_Thickness/2+sniglet_Radius,cornerX,cornerY,0);
    writeArc(50-sniglet_Radius,shelf_Depth/2+outer_Thickness/2+sniglet_Radius,0,PI,cornerX,cornerY,0);
    writeArc(50-sniglet_Radius*3,shelf_Depth/2+outer_Thickness/2+sniglet_Radius,-PI/2,0,cornerX,cornerY,0);
    writeLine(50-sniglet_Radius*3,shelf_Depth/2+outer_Thickness/2,0,shelf_Depth/2+outer_Thickness/2,cornerX,cornerY,0);
    writeLine(0,shelf_Depth/2+outer_Thickness/2,0,shelf_Depth-100,cornerX,cornerY,0);
    writeLine(0,shelf_Depth-100,outer_Thickness+sniglet_Radius,shelf_Depth-100,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,shelf_Depth-100+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,shelf_Depth-100+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,0);
    writeLine(outer_Thickness,shelf_Depth-100+sniglet_Radius*3,outer_Thickness,shelf_Depth,cornerX,cornerY,0);
  }
  
  line(outer_Thickness,shelf_Depth,shelf_Length-outer_Thickness,shelf_Depth);
  
  line(shelf_Length-outer_Thickness,shelf_Depth,shelf_Length-outer_Thickness,shelf_Depth-100+sniglet_Radius*3);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,shelf_Depth-100+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,shelf_Depth-100+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  line(shelf_Length-outer_Thickness-sniglet_Radius,shelf_Depth-100,shelf_Length,shelf_Depth-100);
  line(shelf_Length,shelf_Depth-100,shelf_Length,shelf_Depth/2+outer_Thickness/2);
  line(shelf_Length,shelf_Depth/2+outer_Thickness/2,shelf_Length-50+sniglet_Radius*3,shelf_Depth/2+outer_Thickness/2);
  arc(shelf_Length-50+sniglet_Radius*3,shelf_Depth/2+outer_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  arc(shelf_Length-50+sniglet_Radius,shelf_Depth/2+outer_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  line(shelf_Length-50,shelf_Depth/2+outer_Thickness/2+sniglet_Radius,shelf_Length-50,shelf_Depth/2-outer_Thickness/2-sniglet_Radius);
  arc(shelf_Length-50+sniglet_Radius,shelf_Depth/2-outer_Thickness/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  arc(shelf_Length-50+sniglet_Radius*3,shelf_Depth/2-outer_Thickness/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  line(shelf_Length-50+sniglet_Radius*3,shelf_Depth/2-outer_Thickness/2,shelf_Length,shelf_Depth/2-outer_Thickness/2);
  line(shelf_Length,shelf_Depth/2-outer_Thickness/2,shelf_Length,100);
  line(shelf_Length,100,shelf_Length-outer_Thickness-sniglet_Radius,100);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,100-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,100-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  line(shelf_Length-outer_Thickness,100-sniglet_Radius*3,shelf_Length-outer_Thickness,outer_Thickness);
  
  line(shelf_Length-outer_Thickness,outer_Thickness,shelf_Length-100+sniglet_Radius*3,outer_Thickness);
  arc(shelf_Length-100+sniglet_Radius*3,outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  arc(shelf_Length-100+sniglet_Radius,outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  line(shelf_Length-100,outer_Thickness+sniglet_Radius,shelf_Length-100,0);
  line(shelf_Length-100,0,100,0);
  line(100,0,100,outer_Thickness+sniglet_Radius);
  arc(100-sniglet_Radius,outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  arc(100-sniglet_Radius*3,outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  line(100-sniglet_Radius*3,outer_Thickness,outer_Thickness,outer_Thickness);
  
  if(record){
    setLayer("Outside Cut");
    writeLine(outer_Thickness,shelf_Depth,shelf_Length-outer_Thickness,shelf_Depth,cornerX,cornerY,0);
    
    writeLine(shelf_Length-outer_Thickness,shelf_Depth,shelf_Length-outer_Thickness,shelf_Depth-100+sniglet_Radius*3,cornerX,cornerY,0);
    writeArc(shelf_Length-outer_Thickness-sniglet_Radius,shelf_Depth-100+sniglet_Radius*3,-PI/2,0,cornerX,cornerY,0);
    writeArc(shelf_Length-outer_Thickness-sniglet_Radius,shelf_Depth-100+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
    writeLine(shelf_Length-outer_Thickness-sniglet_Radius,shelf_Depth-100,shelf_Length,shelf_Depth-100,cornerX,cornerY,0);
    writeLine(shelf_Length,shelf_Depth-100,shelf_Length,shelf_Depth/2+outer_Thickness/2,cornerX,cornerY,0);
    writeLine(shelf_Length,shelf_Depth/2+outer_Thickness/2,shelf_Length-50+sniglet_Radius*3,shelf_Depth/2+outer_Thickness/2,cornerX,cornerY,0);
    writeArc(shelf_Length-50+sniglet_Radius*3,shelf_Depth/2+outer_Thickness/2+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,0);
    writeArc(shelf_Length-50+sniglet_Radius,shelf_Depth/2+outer_Thickness/2+sniglet_Radius,0,PI,cornerX,cornerY,0);
    writeLine(shelf_Length-50,shelf_Depth/2+outer_Thickness/2+sniglet_Radius,shelf_Length-50,shelf_Depth/2-outer_Thickness/2-sniglet_Radius,cornerX,cornerY,0);
    writeArc(shelf_Length-50+sniglet_Radius,shelf_Depth/2-outer_Thickness/2-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,0);
    writeArc(shelf_Length-50+sniglet_Radius*3,shelf_Depth/2-outer_Thickness/2-sniglet_Radius,PI/2,PI,cornerX,cornerY,0);
    writeLine(shelf_Length-50+sniglet_Radius*3,shelf_Depth/2-outer_Thickness/2,shelf_Length,shelf_Depth/2-outer_Thickness/2,cornerX,cornerY,0);
    writeLine(shelf_Length,shelf_Depth/2-outer_Thickness/2,shelf_Length,100,cornerX,cornerY,0);
    writeLine(shelf_Length,100,shelf_Length-outer_Thickness-sniglet_Radius,100,cornerX,cornerY,0);
    writeArc(shelf_Length-outer_Thickness-sniglet_Radius,100-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
    writeArc(shelf_Length-outer_Thickness-sniglet_Radius,100-sniglet_Radius*3,0,PI/2,cornerX,cornerY,0);
    writeLine(shelf_Length-outer_Thickness,100-sniglet_Radius*3,shelf_Length-outer_Thickness,outer_Thickness,cornerX,cornerY,0);
    
    writeLine(shelf_Length-outer_Thickness,outer_Thickness,shelf_Length-100+sniglet_Radius*3,outer_Thickness,cornerX,cornerY,0);
    writeArc(shelf_Length-100+sniglet_Radius*3,outer_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,0);
    writeArc(shelf_Length-100+sniglet_Radius,outer_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,0);
    writeLine(shelf_Length-100,outer_Thickness+sniglet_Radius,shelf_Length-100,0,cornerX,cornerY,0);
    writeLine(shelf_Length-100,0,100,0,cornerX,cornerY,0);
    writeLine(100,0,100,outer_Thickness+sniglet_Radius,cornerX,cornerY,0);
    writeArc(100-sniglet_Radius,outer_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,0);
    writeArc(100-sniglet_Radius*3,outer_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,0);
    writeLine(100-sniglet_Radius*3,outer_Thickness,outer_Thickness,outer_Thickness,cornerX,cornerY,0);
  }
  
  for(int i=0; i < length_Div; i++) {
    sidePocket(outer_Thickness+length_Dividers[i],0,PI,cornerX,cornerY);
  }
  
  if(dowel_Holes){
    stroke(255,0,0);
    for(int i=1; i <= 6; i++){
      ellipse((shelf_Length/7)*i,shelf_Depth-outer_Thickness/2,dowel_Diameter,dowel_Diameter);
      ellipse((shelf_Length/7)*i,shelf_Depth/2,dowel_Diameter,dowel_Diameter);
      if(record){
        setLayer("Dowel Holes");
        writeCircle((shelf_Length/7)*i,shelf_Depth-outer_Thickness/2,cornerX,cornerY,0);
        writeCircle((shelf_Length/7)*i,shelf_Depth/2,cornerX,cornerY,0);
      }
    }
    stroke(0);
  }
  
  popMatrix();
}