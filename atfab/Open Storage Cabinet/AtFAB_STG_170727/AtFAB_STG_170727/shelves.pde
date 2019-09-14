void vertShelf(float cornerX, float cornerY){
  pushMatrix();
  translate(cornerX,cornerY);
  
  line(outer_Thickness/2,-400-outer_Thickness,50-sniglet_Radius*3,-400-outer_Thickness);
  arc(50-sniglet_Radius*3,-400-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  arc(50-sniglet_Radius,-400-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  line(50,-400-outer_Thickness-sniglet_Radius,50,-400-outer_Thickness/2);
  line(50,-400-outer_Thickness/2,shelf_Depth-50,-400-outer_Thickness/2);
  line(shelf_Depth-50,-400-outer_Thickness/2,shelf_Depth-50,-400-outer_Thickness-sniglet_Radius);
  arc(shelf_Depth-50+sniglet_Radius,-400-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  arc(shelf_Depth-50+sniglet_Radius*3,-400-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  line(shelf_Depth-50+sniglet_Radius*3,-400-outer_Thickness,shelf_Depth-outer_Thickness,-400-outer_Thickness);
  
  line(shelf_Depth-outer_Thickness,-400-outer_Thickness,shelf_Depth-outer_Thickness,-400-outer_Thickness-50+sniglet_Radius*3);
  arc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  arc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  line(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-50,shelf_Depth-outer_Thickness/2,-400-outer_Thickness-50);
  line(shelf_Depth-outer_Thickness/2,-400-outer_Thickness-50,shelf_Depth-outer_Thickness/2,-shelf_Height+50);
  line(shelf_Depth-outer_Thickness/2,-shelf_Height+50,shelf_Depth-outer_Thickness-sniglet_Radius,-shelf_Height+50);
  arc(shelf_Depth-outer_Thickness-sniglet_Radius,-shelf_Height+50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  arc(shelf_Depth-outer_Thickness-sniglet_Radius,-shelf_Height+50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  line(shelf_Depth-outer_Thickness,-shelf_Height+50-sniglet_Radius*3,shelf_Depth-outer_Thickness,-shelf_Height+outer_Thickness);
  
  line(shelf_Depth-outer_Thickness,-shelf_Height+outer_Thickness,shelf_Depth-50+sniglet_Radius*3,-shelf_Height+outer_Thickness);
  arc(shelf_Depth-50+sniglet_Radius*3,-shelf_Height+outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  arc(shelf_Depth-50+sniglet_Radius,-shelf_Height+outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  line(shelf_Depth-50,-shelf_Height+outer_Thickness+sniglet_Radius,shelf_Depth-50,-shelf_Height+outer_Thickness/2);
  line(shelf_Depth-50,-shelf_Height+outer_Thickness/2,50,-shelf_Height+outer_Thickness/2);
  line(50,-shelf_Height+outer_Thickness/2,50,-shelf_Height+outer_Thickness+sniglet_Radius);
  arc(50-sniglet_Radius,-shelf_Height+outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  arc(50-sniglet_Radius*3,-shelf_Height+outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  line(50-sniglet_Radius*3,-shelf_Height+outer_Thickness,outer_Thickness/2,-shelf_Height+outer_Thickness);
  
  if(record){
    setLayer("Outside Cut");
    writeLine(outer_Thickness/2,-400-outer_Thickness,50-sniglet_Radius*3,-400-outer_Thickness,cornerX,cornerY,0);
  writeArc(50-sniglet_Radius*3,-400-outer_Thickness-sniglet_Radius,0,PI/2,cornerX,cornerY,0);
  writeArc(50-sniglet_Radius,-400-outer_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,0);
  writeLine(50,-400-outer_Thickness-sniglet_Radius,50,-400-outer_Thickness/2,cornerX,cornerY,0);
  writeLine(50,-400-outer_Thickness/2,shelf_Depth-50,-400-outer_Thickness/2,cornerX,cornerY,0);
  writeLine(shelf_Depth-50,-400-outer_Thickness/2,shelf_Depth-50,-400-outer_Thickness-sniglet_Radius,cornerX,cornerY,0);
  writeArc(shelf_Depth-50+sniglet_Radius,-400-outer_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,0);
  writeArc(shelf_Depth-50+sniglet_Radius*3,-400-outer_Thickness-sniglet_Radius,PI/2,PI,cornerX,cornerY,0);
  writeLine(shelf_Depth-50+sniglet_Radius*3,-400-outer_Thickness,shelf_Depth-outer_Thickness,-400-outer_Thickness,cornerX,cornerY,0);
  
  writeLine(shelf_Depth-outer_Thickness,-400-outer_Thickness,shelf_Depth-outer_Thickness,-400-outer_Thickness-50+sniglet_Radius*3,cornerX,cornerY,0);
  writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-50+sniglet_Radius*3,-PI/2,0,cornerX,cornerY,0);
  writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-50+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
  writeLine(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-50,shelf_Depth-outer_Thickness/2,-400-outer_Thickness-50,cornerX,cornerY,0);
  writeLine(shelf_Depth-outer_Thickness/2,-400-outer_Thickness-50,shelf_Depth-outer_Thickness/2,-shelf_Height+50,cornerX,cornerY,0);
  writeLine(shelf_Depth-outer_Thickness/2,-shelf_Height+50,shelf_Depth-outer_Thickness-sniglet_Radius,-shelf_Height+50,cornerX,cornerY,0);
  writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-shelf_Height+50-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
  writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-shelf_Height+50-sniglet_Radius*3,0,PI/2,cornerX,cornerY,0);
  writeLine(shelf_Depth-outer_Thickness,-shelf_Height+50-sniglet_Radius*3,shelf_Depth-outer_Thickness,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
  
  writeLine(shelf_Depth-outer_Thickness,-shelf_Height+outer_Thickness,shelf_Depth-50+sniglet_Radius*3,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
  writeArc(shelf_Depth-50+sniglet_Radius*3,-shelf_Height+outer_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,0);
  writeArc(shelf_Depth-50+sniglet_Radius,-shelf_Height+outer_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,0);
  writeLine(shelf_Depth-50,-shelf_Height+outer_Thickness+sniglet_Radius,shelf_Depth-50,-shelf_Height+outer_Thickness/2,cornerX,cornerY,0);
  writeLine(shelf_Depth-50,-shelf_Height+outer_Thickness/2,50,-shelf_Height+outer_Thickness/2,cornerX,cornerY,0);
  writeLine(50,-shelf_Height+outer_Thickness/2,50,-shelf_Height+outer_Thickness+sniglet_Radius,cornerX,cornerY,0);
  writeArc(50-sniglet_Radius,-shelf_Height+outer_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,0);
  writeArc(50-sniglet_Radius*3,-shelf_Height+outer_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,0);
  writeLine(50-sniglet_Radius*3,-shelf_Height+outer_Thickness,outer_Thickness/2,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
  }
  
  if(height_Div>0){
    for(int i=0; i < height_Div; i++) {
      line(outer_Thickness/2,-400-outer_Thickness-height_Dividers[i]-inner_Thickness/2,shelf_Depth/2-sniglet_Radius*3,-400-outer_Thickness-height_Dividers[i]-inner_Thickness/2);
      line(outer_Thickness/2,-400-outer_Thickness-height_Dividers[i]+inner_Thickness/2,shelf_Depth/2-sniglet_Radius*3,-400-outer_Thickness-height_Dividers[i]+inner_Thickness/2);
      
      line(shelf_Depth/2,-400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius,shelf_Depth/2,-400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius);
      arc(shelf_Depth/2-sniglet_Radius,-400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
      arc(shelf_Depth/2-sniglet_Radius*3,-400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
      arc(shelf_Depth/2-sniglet_Radius,-400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
      arc(shelf_Depth/2-sniglet_Radius*3,-400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
      if(record){
        setLayer("Outside Cut");
        writeLine(outer_Thickness/2,-400-outer_Thickness-height_Dividers[i]-inner_Thickness/2,shelf_Depth/2-sniglet_Radius*3,-400-outer_Thickness-height_Dividers[i]-inner_Thickness/2,cornerX,cornerY,0);
        writeLine(outer_Thickness/2,-400-outer_Thickness-height_Dividers[i]+inner_Thickness/2,shelf_Depth/2-sniglet_Radius*3,-400-outer_Thickness-height_Dividers[i]+inner_Thickness/2,cornerX,cornerY,0);
        
        writeLine(shelf_Depth/2,-400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius,shelf_Depth/2,-400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius,cornerX,cornerY,0);
        writeArc(shelf_Depth/2-sniglet_Radius,-400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,0);
        writeArc(shelf_Depth/2-sniglet_Radius*3,-400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius,0,PI/2,cornerX,cornerY,0);
        writeArc(shelf_Depth/2-sniglet_Radius,-400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius,0,PI,cornerX,cornerY,0);
        writeArc(shelf_Depth/2-sniglet_Radius*3,-400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius,-PI/2,0,cornerX,cornerY,0);
     }
     if(i<height_Div-1){
      line(outer_Thickness/2,-400-outer_Thickness-height_Dividers[i]-inner_Thickness/2,outer_Thickness/2,-400-outer_Thickness-height_Dividers[i+1]+inner_Thickness/2);
      if(record){
        setLayer("Outside Cut");
        writeLine(outer_Thickness/2,-400-outer_Thickness-height_Dividers[i]-inner_Thickness/2,outer_Thickness/2,-400-outer_Thickness-height_Dividers[i+1]+inner_Thickness/2,cornerX,cornerY,0);
      }
    }
  }
  
  line(outer_Thickness/2,-400-outer_Thickness,outer_Thickness/2,-400-outer_Thickness-height_Dividers[0]+inner_Thickness/2);
  line(outer_Thickness/2,-400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2,outer_Thickness/2,-shelf_Height+outer_Thickness);
  
  if(record){
    setLayer("Outside Cut");
    writeLine(outer_Thickness/2,-400-outer_Thickness,outer_Thickness/2,-400-outer_Thickness-height_Dividers[0]+inner_Thickness/2,cornerX,cornerY,0);
    writeLine(outer_Thickness/2,-400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2,outer_Thickness/2,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
  }
  
  }
  
  if(height_Div==0){
    line(outer_Thickness/2,-400-outer_Thickness,outer_Thickness/2,-shelf_Height+outer_Thickness);
    if(record){
      setLayer("Outside Cut");
      writeLine(outer_Thickness/2,-400-outer_Thickness,outer_Thickness/2,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
    }
  }
  
  popMatrix();
}

void horizShelf(float cornerX, float cornerY){
  pushMatrix();
  translate(cornerX,cornerY);
  line(outer_Thickness,-outer_Thickness/2,shelf_Length-outer_Thickness,-outer_Thickness/2);
  
  line(shelf_Length-outer_Thickness,-outer_Thickness/2,shelf_Length-outer_Thickness,-50+sniglet_Radius*3);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,-50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,-50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  line(shelf_Length-outer_Thickness-sniglet_Radius,-50,shelf_Length-outer_Thickness/2,-50);
  line(shelf_Length-outer_Thickness/2,-50,shelf_Length-outer_Thickness/2,-shelf_Depth+50);
  line(shelf_Length-outer_Thickness/2,-shelf_Depth+50,shelf_Length-outer_Thickness-sniglet_Radius,-shelf_Depth+50);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,-shelf_Depth+50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  arc(shelf_Length-outer_Thickness-sniglet_Radius,-shelf_Depth+50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  line(shelf_Length-outer_Thickness,-shelf_Depth+50-sniglet_Radius*3,shelf_Length-outer_Thickness,-shelf_Depth+outer_Thickness);

  line(shelf_Length-outer_Thickness,-shelf_Depth+outer_Thickness,shelf_Length-50+sniglet_Radius*3,-shelf_Depth+outer_Thickness);
  arc(shelf_Length-50+sniglet_Radius*3,-shelf_Depth+outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  arc(shelf_Length-50+sniglet_Radius,-shelf_Depth+outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  line(shelf_Length-50,-shelf_Depth+outer_Thickness+sniglet_Radius,shelf_Length-50,-shelf_Depth+outer_Thickness/2);
  if(record){
    setLayer("Outside Cut");
    writeLine(outer_Thickness,-outer_Thickness/2,shelf_Length-outer_Thickness,-outer_Thickness/2,cornerX,cornerY,0);
  
  writeLine(shelf_Length-outer_Thickness,-outer_Thickness/2,shelf_Length-outer_Thickness,-50+sniglet_Radius*3,cornerX,cornerY,0);
  writeArc(shelf_Length-outer_Thickness-sniglet_Radius,-50+sniglet_Radius*3,-PI/2,0,cornerX,cornerY,0);
  writeArc(shelf_Length-outer_Thickness-sniglet_Radius,-50+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
  writeLine(shelf_Length-outer_Thickness-sniglet_Radius,-50,shelf_Length-outer_Thickness/2,-50,cornerX,cornerY,0);
  writeLine(shelf_Length-outer_Thickness/2,-50,shelf_Length-outer_Thickness/2,-shelf_Depth+50,cornerX,cornerY,0);
  writeLine(shelf_Length-outer_Thickness/2,-shelf_Depth+50,shelf_Length-outer_Thickness-sniglet_Radius,-shelf_Depth+50,cornerX,cornerY,0);
  writeArc(shelf_Length-outer_Thickness-sniglet_Radius,-shelf_Depth+50-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
  writeArc(shelf_Length-outer_Thickness-sniglet_Radius,-shelf_Depth+50-sniglet_Radius*3,0,PI/2,cornerX,cornerY,0);
  writeLine(shelf_Length-outer_Thickness,-shelf_Depth+50-sniglet_Radius*3,shelf_Length-outer_Thickness,-shelf_Depth+outer_Thickness,cornerX,cornerY,0);

  writeLine(shelf_Length-outer_Thickness,-shelf_Depth+outer_Thickness,shelf_Length-50+sniglet_Radius*3,-shelf_Depth+outer_Thickness,cornerX,cornerY,0);
  writeArc(shelf_Length-50+sniglet_Radius*3,-shelf_Depth+outer_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,0);
  writeArc(shelf_Length-50+sniglet_Radius,-shelf_Depth+outer_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,0);
  writeLine(shelf_Length-50,-shelf_Depth+outer_Thickness+sniglet_Radius,shelf_Length-50,-shelf_Depth+outer_Thickness/2,cornerX,cornerY,0);
  }
  
  if(length_Div>0){
    line(50,-shelf_Depth+outer_Thickness/2,outer_Thickness+length_Dividers[0]-inner_Thickness/2,-shelf_Depth+outer_Thickness/2);
    line(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2,-shelf_Depth+outer_Thickness/2,shelf_Length-50,-shelf_Depth+outer_Thickness/2);
    if(record){
      setLayer("Outside Cut");
      writeLine(50,-shelf_Depth+outer_Thickness/2,outer_Thickness+length_Dividers[0]-inner_Thickness/2,-shelf_Depth+outer_Thickness/2,cornerX,cornerY,0);
    writeLine(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2,-shelf_Depth+outer_Thickness/2,shelf_Length-50,-shelf_Depth+outer_Thickness/2,cornerX,cornerY,0);
    }
  }
  for(int i=0; i < length_Div; i++) {
    line(outer_Thickness+length_Dividers[i]-inner_Thickness/2,-shelf_Depth/2-sniglet_Radius*3,outer_Thickness+length_Dividers[i]-inner_Thickness/2,-shelf_Depth+outer_Thickness/2);
    line(outer_Thickness+length_Dividers[i]+inner_Thickness/2,-shelf_Depth/2-sniglet_Radius*3,outer_Thickness+length_Dividers[i]+inner_Thickness/2,-shelf_Depth+outer_Thickness/2);
    line(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius,-shelf_Depth/2,outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius,-shelf_Depth/2);
    arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius,-shelf_Depth/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
    arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius,-shelf_Depth/2-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
    arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius,-shelf_Depth/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
    arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius,-shelf_Depth/2-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
    if(record){
      setLayer("Outside Cut");
      writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2,-shelf_Depth/2-sniglet_Radius*3,outer_Thickness+length_Dividers[i]-inner_Thickness/2,-shelf_Depth+outer_Thickness/2,cornerX,cornerY,0);
    writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2,-shelf_Depth/2-sniglet_Radius*3,outer_Thickness+length_Dividers[i]+inner_Thickness/2,-shelf_Depth+outer_Thickness/2,cornerX,cornerY,0);
    writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius,-shelf_Depth/2,outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius,-shelf_Depth/2,cornerX,cornerY,0);
    writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius,-shelf_Depth/2-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
    writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius,-shelf_Depth/2-sniglet_Radius*3,0,PI/2,cornerX,cornerY,0);
    writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius,-shelf_Depth/2-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
    writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius,-shelf_Depth/2-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,0);

    }
    if(i<length_Div-1){
      line(outer_Thickness+length_Dividers[i]+inner_Thickness/2,-shelf_Depth+outer_Thickness/2,outer_Thickness+length_Dividers[i+1]-inner_Thickness/2,-shelf_Depth+outer_Thickness/2);
      if(record){
        setLayer("Outside Cut");
        writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2,-shelf_Depth+outer_Thickness/2,outer_Thickness+length_Dividers[i+1]-inner_Thickness/2,-shelf_Depth+outer_Thickness/2,cornerX,cornerY,0);
      }
    }
  }
  line(outer_Thickness,-shelf_Depth+outer_Thickness,50-sniglet_Radius*3,-shelf_Depth+outer_Thickness);
  arc(50-sniglet_Radius*3,-shelf_Depth+outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  arc(50-sniglet_Radius,-shelf_Depth+outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  line(50,-shelf_Depth+outer_Thickness+sniglet_Radius,50,-shelf_Depth+outer_Thickness/2);

  line(outer_Thickness,-outer_Thickness/2,outer_Thickness,-50+sniglet_Radius*3);
  arc(outer_Thickness+sniglet_Radius,-50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  arc(outer_Thickness+sniglet_Radius,-50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  line(outer_Thickness+sniglet_Radius,-50,outer_Thickness/2,-50);
  line(outer_Thickness/2,-50,outer_Thickness/2,-shelf_Depth+50);
  line(outer_Thickness/2,-shelf_Depth+50,outer_Thickness+sniglet_Radius,-shelf_Depth+50);
  arc(outer_Thickness+sniglet_Radius,-shelf_Depth+50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(outer_Thickness+sniglet_Radius,-shelf_Depth+50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  line(outer_Thickness,-shelf_Depth+50-sniglet_Radius*3,outer_Thickness,-shelf_Depth+outer_Thickness);
  
  if(record){
    setLayer("Outside Cut");
    writeLine(outer_Thickness,-shelf_Depth+outer_Thickness,50-sniglet_Radius*3,-shelf_Depth+outer_Thickness,cornerX,cornerY,0);
  writeArc(50-sniglet_Radius*3,-shelf_Depth+outer_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,0);
  writeArc(50-sniglet_Radius,-shelf_Depth+outer_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,0);
  writeLine(50,-shelf_Depth+outer_Thickness+sniglet_Radius,50,-shelf_Depth+outer_Thickness/2,cornerX,cornerY,0);

  writeLine(outer_Thickness,-outer_Thickness/2,outer_Thickness,-50+sniglet_Radius*3,cornerX,cornerY,0);
  writeArc(outer_Thickness+sniglet_Radius,-50+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,0);
  writeArc(outer_Thickness+sniglet_Radius,-50+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
  writeLine(outer_Thickness+sniglet_Radius,-50,outer_Thickness/2,-50,cornerX,cornerY,0);
  writeLine(outer_Thickness/2,-50,outer_Thickness/2,-shelf_Depth+50,cornerX,cornerY,0);
  writeLine(outer_Thickness/2,-shelf_Depth+50,outer_Thickness+sniglet_Radius,-shelf_Depth+50,cornerX,cornerY,0);
  writeArc(outer_Thickness+sniglet_Radius,-shelf_Depth+50-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
  writeArc(outer_Thickness+sniglet_Radius,-shelf_Depth+50-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,0);
  writeLine(outer_Thickness,-shelf_Depth+50-sniglet_Radius*3,outer_Thickness,-shelf_Depth+outer_Thickness,cornerX,cornerY,0);
  }
  
  if(length_Div==0){
    line(50,-shelf_Depth+outer_Thickness/2,shelf_Length-50,-shelf_Depth+outer_Thickness/2);
    if(record){
      setLayer("Outside Cut");
      writeLine(50,-shelf_Depth+outer_Thickness/2,shelf_Length-50,-shelf_Depth+outer_Thickness/2,cornerX,cornerY,0);
    }
  }
  popMatrix();
}
