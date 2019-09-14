void side (float cornerX, float cornerY, String leftOrRight) {
  pushMatrix();
  translate(cornerX,cornerY);

  line(0,0,0,-200);
  line(0,-200,outer_Thickness+sniglet_Radius,-200);
  arc(outer_Thickness+sniglet_Radius,-200-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(outer_Thickness+sniglet_Radius,-200-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  line(outer_Thickness,-200-sniglet_Radius*3,outer_Thickness,-300+sniglet_Radius*3);
  arc(outer_Thickness+sniglet_Radius,-300+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  arc(outer_Thickness+sniglet_Radius,-300+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  line(0,-300,outer_Thickness+sniglet_Radius,-300);

  line(0,0,50,0);
  line(50,0,50,-outer_Thickness-sniglet_Radius);
  arc(50+sniglet_Radius,-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  arc(50+sniglet_Radius*3,-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  line(50+sniglet_Radius*3,-outer_Thickness,100,-outer_Thickness);
  line(100,-outer_Thickness,150,-300);
  line(150,-300,shelf_Depth-150,-300);
  line(shelf_Depth-150,-300,shelf_Depth-100,-outer_Thickness);
  line(shelf_Depth-100,-outer_Thickness,shelf_Depth-50-sniglet_Radius*3,-outer_Thickness);
  arc(shelf_Depth-50-sniglet_Radius*3,-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  arc(shelf_Depth-50-sniglet_Radius,-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  line(shelf_Depth-50,-outer_Thickness-sniglet_Radius,shelf_Depth-50,0);
  line(shelf_Depth-50,0,shelf_Depth,0);

  line(shelf_Depth,0,shelf_Depth,-200);
  line(shelf_Depth,-200,shelf_Depth-outer_Thickness-sniglet_Radius,-200);
  arc(shelf_Depth-outer_Thickness-sniglet_Radius,-200-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  arc(shelf_Depth-outer_Thickness-sniglet_Radius,-200-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  line(shelf_Depth-outer_Thickness,-200-sniglet_Radius*3,shelf_Depth-outer_Thickness,-300+sniglet_Radius*3);
  arc(shelf_Depth-outer_Thickness-sniglet_Radius,-300+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  arc(shelf_Depth-outer_Thickness-sniglet_Radius,-300+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  line(shelf_Depth,-300,shelf_Depth-outer_Thickness-sniglet_Radius,-300);
  
  if(record){
    setLayer("Outside Cut");
    writeLine(0,0,0,-200,cornerX,cornerY,0);
    writeLine(0,-200,outer_Thickness+sniglet_Radius,-200,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,-200-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,-200-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,0);
    writeLine(outer_Thickness,-200-sniglet_Radius*3,outer_Thickness,-300+sniglet_Radius*3,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,-300+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,0);
    writeArc(outer_Thickness+sniglet_Radius,-300+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
    writeLine(0,-300,outer_Thickness+sniglet_Radius,-300,cornerX,cornerY,0);
  
    writeLine(0,0,50,0,cornerX,cornerY,0);
    writeLine(50,0,50,-outer_Thickness-sniglet_Radius,cornerX,cornerY,0);
    writeArc(50+sniglet_Radius,-outer_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,0);
    writeArc(50+sniglet_Radius*3,-outer_Thickness-sniglet_Radius,PI/2,PI,cornerX,cornerY,0);
    writeLine(50+sniglet_Radius*3,-outer_Thickness,100,-outer_Thickness,cornerX,cornerY,0);
    writeLine(100,-outer_Thickness,150,-300,cornerX,cornerY,0);
    writeLine(150,-300,shelf_Depth-150,-300,cornerX,cornerY,0);
    writeLine(shelf_Depth-150,-300,shelf_Depth-100,-outer_Thickness,cornerX,cornerY,0);
    writeLine(shelf_Depth-100,-outer_Thickness,shelf_Depth-50-sniglet_Radius*3,-outer_Thickness,cornerX,cornerY,0);
    writeArc(shelf_Depth-50-sniglet_Radius*3,-outer_Thickness-sniglet_Radius,0,PI/2,cornerX,cornerY,0);
    writeArc(shelf_Depth-50-sniglet_Radius,-outer_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,0);
    writeLine(shelf_Depth-50,-outer_Thickness-sniglet_Radius,shelf_Depth-50,0,cornerX,cornerY,0);
    writeLine(shelf_Depth-50,0,shelf_Depth,0,cornerX,cornerY,0);
  
    writeLine(shelf_Depth,0,shelf_Depth,-200,cornerX,cornerY,0);
    writeLine(shelf_Depth,-200,shelf_Depth-outer_Thickness-sniglet_Radius,-200,cornerX,cornerY,0);
    writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-200-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
    writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-200-sniglet_Radius*3,0,PI/2,cornerX,cornerY,0);
    writeLine(shelf_Depth-outer_Thickness,-200-sniglet_Radius*3,shelf_Depth-outer_Thickness,-300+sniglet_Radius*3,cornerX,cornerY,0);
    writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-300+sniglet_Radius*3,-PI/2,0,cornerX,cornerY,0);
    writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-300+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
    writeLine(shelf_Depth,-300,shelf_Depth-outer_Thickness-sniglet_Radius,-300,cornerX,cornerY,0);
  }
  
  if(dowel_Holes) {
    stroke(255,0,0);
    ellipse(outer_Thickness/2,-100,dowel_Diameter,dowel_Diameter);
    ellipse(shelf_Depth-outer_Thickness/2,-100,dowel_Diameter,dowel_Diameter);
    ellipse(shelf_Depth/2,-315,dowel_Diameter,dowel_Diameter);
    ellipse(shelf_Depth/2,-shelf_Height+outer_Thickness/2,dowel_Diameter,dowel_Diameter);
    
    if(record){
      setLayer("Dowel Holes");
      
      writeCircle(outer_Thickness/2,-100,cornerX,cornerY,0);
      writeCircle(shelf_Depth-outer_Thickness/2,-100,cornerX,cornerY,0);
      writeCircle(shelf_Depth/2,-315,cornerX,cornerY,0);
      writeCircle(shelf_Depth/2,-shelf_Height+outer_Thickness/2,cornerX,cornerY,0);
    }
    stroke(0);
  }

  //right side \/
  if(leftOrRight == "right") {
    line(shelf_Depth,-300,shelf_Depth,-shelf_Height+outer_Thickness);
    line(shelf_Depth-100+sniglet_Radius*3,-shelf_Height+outer_Thickness,shelf_Depth,-shelf_Height+outer_Thickness);
    
    if(record){
          setLayer("Outside Cut");
          writeLine(shelf_Depth,-300,shelf_Depth,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
    writeLine(shelf_Depth-100+sniglet_Radius*3,-shelf_Height+outer_Thickness,shelf_Depth,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
    }

    if(dowel_Holes) {
      stroke(255,0,0);
      ellipse(shelf_Depth-outer_Thickness/2,-350,dowel_Diameter,dowel_Diameter);
      if(record){
            setLayer("Dowel Holes");
            writeCircle(shelf_Depth-outer_Thickness/2,-350,cornerX,cornerY,0);
      }
      stroke(0);
    }

    if(back_One || back_Two) {   //one piece back\/
      if(height_Div>=2) {
        line(0,-300,0,-400-outer_Thickness-height_Dividers[0]);
        line(0,-400-outer_Thickness-height_Dividers[0],outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[0]);
        arc(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
        arc(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
        line(outer_Thickness,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,outer_Thickness,-400-outer_Thickness-height_Dividers[height_Div-1]+sniglet_Radius*3);
        arc(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[height_Div-1]+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
        arc(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[height_Div-1]+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
        line(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[height_Div-1],0,-400-outer_Thickness-height_Dividers[height_Div-1]);
        line(0,-400-outer_Thickness-height_Dividers[height_Div-1],0,-shelf_Height+outer_Thickness);

        line(0,-shelf_Height+outer_Thickness,100-sniglet_Radius*3,-shelf_Height+outer_Thickness);
        
        if(record){
          setLayer("Outside Cut");
          writeLine(0,-300,0,-400-outer_Thickness-height_Dividers[0],cornerX,cornerY,0);
        writeLine(0,-400-outer_Thickness-height_Dividers[0],outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[0],cornerX,cornerY,0);
        writeArc(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
        writeArc(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,0);
        writeLine(outer_Thickness,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,outer_Thickness,-400-outer_Thickness-height_Dividers[height_Div-1]+sniglet_Radius*3,cornerX,cornerY,0);
        writeArc(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[height_Div-1]+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,0);
        writeArc(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[height_Div-1]+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
        writeLine(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[height_Div-1],0,-400-outer_Thickness-height_Dividers[height_Div-1],cornerX,cornerY,0);
        writeLine(0,-400-outer_Thickness-height_Dividers[height_Div-1],0,-shelf_Height+outer_Thickness,cornerX,cornerY,0);

        writeLine(0,-shelf_Height+outer_Thickness,100-sniglet_Radius*3,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
        }

        if(dowel_Holes) {
          stroke(255,0,0);
          ellipse(outer_Thickness/2,-(height_Dividers[0]+100+outer_Thickness)/2-300,dowel_Diameter,dowel_Diameter);
          ellipse(outer_Thickness/2,-shelf_Height+outer_Thickness+(shelf_Height-outer_Thickness*2-height_Dividers[height_Div-1]-400)/2,dowel_Diameter,dowel_Diameter);
          
          if(record){
            setLayer("Dowel Holes");
            writeCircle(outer_Thickness/2,-(height_Dividers[0]+100+outer_Thickness)/2-300,cornerX,cornerY,0);
            writeCircle(outer_Thickness/2,-shelf_Height+outer_Thickness+(shelf_Height-outer_Thickness*2-height_Dividers[height_Div-1]-400)/2,cornerX,cornerY,0);
          }
          stroke(0);
        }
      }
      if(height_Div==1) {
        line(0,-300,0,-400-outer_Thickness-height_Dividers[0]);
        line(0,-400-outer_Thickness-height_Dividers[0],outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[0]);
        arc(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
        arc(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
        line(outer_Thickness,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,outer_Thickness,-shelf_Height+outer_Thickness);

        line(outer_Thickness,-shelf_Height+outer_Thickness,100-sniglet_Radius*3,-shelf_Height+outer_Thickness);
        
        if(record){
          setLayer("Outside Cut");
          writeLine(0,-300,0,-400-outer_Thickness-height_Dividers[0],cornerX,cornerY,0);
        writeLine(0,-400-outer_Thickness-height_Dividers[0],outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[0],cornerX,cornerY,0);
        writeArc(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
        writeArc(outer_Thickness+sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,0);
        writeLine(outer_Thickness,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,outer_Thickness,-shelf_Height+outer_Thickness,cornerX,cornerY,0);

        writeLine(outer_Thickness,-shelf_Height+outer_Thickness,100-sniglet_Radius*3,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
        }
        if(dowel_Holes) {
          stroke(255,0,0);
          ellipse(outer_Thickness/2,-(height_Dividers[0]+100+outer_Thickness)/3-300,dowel_Diameter,dowel_Diameter);
          ellipse(outer_Thickness/2,-(height_Dividers[0]+100+outer_Thickness)*2/3-300,dowel_Diameter,dowel_Diameter);
          
          if(record){
            setLayer("Dowel Holes");
            writeCircle(outer_Thickness/2,-(height_Dividers[0]+100+outer_Thickness)/3-300,cornerX,cornerY,0);
            writeCircle(outer_Thickness/2,-(height_Dividers[0]+100+outer_Thickness)*2/3-300,cornerX,cornerY,0);
          }
          stroke(0);
        }
      }
      if(height_Div==0) {
        line(0,-300,0,-400-(shelf_Height-400)/2);
        line(0,-400-(shelf_Height-400)/2,outer_Thickness+sniglet_Radius,-400-(shelf_Height-400)/2);
        arc(outer_Thickness+sniglet_Radius,-400-(shelf_Height-400)/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
        arc(outer_Thickness+sniglet_Radius,-400-(shelf_Height-400)/2-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
        line(outer_Thickness,-400-(shelf_Height-400)/2-sniglet_Radius*3,outer_Thickness,-shelf_Height+outer_Thickness);

        line(outer_Thickness,-shelf_Height+outer_Thickness,100-sniglet_Radius*3,-shelf_Height+outer_Thickness);
        
        if(record){
          setLayer("Outside Cut");
          writeLine(0,-300,0,-400-(shelf_Height-400)/2,cornerX,cornerY,0);
        writeLine(0,-400-(shelf_Height-400)/2,outer_Thickness+sniglet_Radius,-400-(shelf_Height-400)/2,cornerX,cornerY,0);
        writeArc(outer_Thickness+sniglet_Radius,-400-(shelf_Height-400)/2-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
        writeArc(outer_Thickness+sniglet_Radius,-400-(shelf_Height-400)/2-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,0);
        writeLine(outer_Thickness,-400-(shelf_Height-400)/2-sniglet_Radius*3,outer_Thickness,-shelf_Height+outer_Thickness,cornerX,cornerY,0);

        writeLine(outer_Thickness,-shelf_Height+outer_Thickness,100-sniglet_Radius*3,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
        }
        if(dowel_Holes) {
          stroke(255,0,0);
          ellipse(outer_Thickness/2,-((400+(shelf_Height-400)/2)-300)/3-300,dowel_Diameter,dowel_Diameter);
          ellipse(outer_Thickness/2,-((400+(shelf_Height-400)/2)-300)*2/3-300,dowel_Diameter,dowel_Diameter);
          if(record){
            setLayer("Dowel Holes");
            writeCircle(outer_Thickness/2,-((400+(shelf_Height-400)/2)-300)/3-300,cornerX,cornerY,0);
            writeCircle(outer_Thickness/2,-((400+(shelf_Height-400)/2)-300)*2/3-300,cornerX,cornerY,0);
          }
          stroke(0);
        }
      }
    }              //one piece back/\

    if(back_Bikini && height_Div>=2) {  //two piece back\/
      line(0,-300,0,bot_Third_b);

      line(0,bot_Third_b,outer_Thickness+sniglet_Radius,bot_Third_b);
      arc(outer_Thickness+sniglet_Radius,bot_Third_b-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
      arc(outer_Thickness+sniglet_Radius,bot_Third_b-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
      line(outer_Thickness,bot_Third_b-sniglet_Radius*3,outer_Thickness,bot_Third_t+sniglet_Radius*3);
      arc(outer_Thickness+sniglet_Radius,bot_Third_t+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
      arc(outer_Thickness+sniglet_Radius,bot_Third_t+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
      line(outer_Thickness+sniglet_Radius,bot_Third_t,0,bot_Third_t);

      line(0,bot_Third_t,0,top_Third_b);

      line(0,top_Third_b,outer_Thickness+sniglet_Radius,top_Third_b);
      arc(outer_Thickness+sniglet_Radius,top_Third_b-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
      arc(outer_Thickness+sniglet_Radius,top_Third_b-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
      line(outer_Thickness,top_Third_b-sniglet_Radius*3,outer_Thickness,top_Third_t+sniglet_Radius*3);
      arc(outer_Thickness+sniglet_Radius,top_Third_t+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
      arc(outer_Thickness+sniglet_Radius,top_Third_t+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
      line(outer_Thickness+sniglet_Radius,top_Third_t,0,top_Third_t);

      line(0,top_Third_t,0,-shelf_Height+outer_Thickness);
      line(0,-shelf_Height+outer_Thickness,100-sniglet_Radius*3,-shelf_Height+outer_Thickness);
      
      if(record){
        setLayer("Outside Cut");
        
        writeLine(0,-300,0,bot_Third_b,cornerX,cornerY,0);

      writeLine(0,bot_Third_b,outer_Thickness+sniglet_Radius,bot_Third_b,cornerX,cornerY,0);
      writeArc(outer_Thickness+sniglet_Radius,bot_Third_b-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
      writeArc(outer_Thickness+sniglet_Radius,bot_Third_b-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,0);
      writeLine(outer_Thickness,bot_Third_b-sniglet_Radius*3,outer_Thickness,bot_Third_t+sniglet_Radius*3,cornerX,cornerY,0);
      writeArc(outer_Thickness+sniglet_Radius,bot_Third_t+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,0);
      writeArc(outer_Thickness+sniglet_Radius,bot_Third_t+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
      writeLine(outer_Thickness+sniglet_Radius,bot_Third_t,0,bot_Third_t,cornerX,cornerY,0);

      writeLine(0,bot_Third_t,0,top_Third_b,cornerX,cornerY,0);

      writeLine(0,top_Third_b,outer_Thickness+sniglet_Radius,top_Third_b,cornerX,cornerY,0);
      writeArc(outer_Thickness+sniglet_Radius,top_Third_b-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
      writeArc(outer_Thickness+sniglet_Radius,top_Third_b-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,0);
      writeLine(outer_Thickness,top_Third_b-sniglet_Radius*3,outer_Thickness,top_Third_t+sniglet_Radius*3,cornerX,cornerY,0);
      writeArc(outer_Thickness+sniglet_Radius,top_Third_t+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,0);
      writeArc(outer_Thickness+sniglet_Radius,top_Third_t+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
      writeLine(outer_Thickness+sniglet_Radius,top_Third_t,0,top_Third_t,cornerX,cornerY,0);

      writeLine(0,top_Third_t,0,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
      writeLine(0,-shelf_Height+outer_Thickness,100-sniglet_Radius*3,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
      }
      if(dowel_Holes) {
          stroke(255,0,0);
          ellipse(outer_Thickness/2,-shelf_Height+outer_Thickness-(top_Third_t-top_Third_b)/2,dowel_Diameter,dowel_Diameter);
          ellipse(outer_Thickness/2,-300+(bot_Third_b+300)/2,dowel_Diameter,dowel_Diameter);
          ellipse(outer_Thickness/2,top_Third_b-(top_Third_t-top_Third_b)/2,dowel_Diameter,dowel_Diameter);
          ellipse(outer_Thickness/2,bot_Third_t+(bot_Third_t-bot_Third_b)/2,dowel_Diameter,dowel_Diameter);
          
          if(record){
            setLayer("Dowel Holes");
            writeCircle(outer_Thickness/2,-shelf_Height+outer_Thickness-(top_Third_t-top_Third_b)/2,cornerX,cornerY,0);
            writeCircle(outer_Thickness/2,-300+(bot_Third_b+300)/2,cornerX,cornerY,0);
            writeCircle(outer_Thickness/2,top_Third_b-(top_Third_t-top_Third_b)/2,cornerX,cornerY,0);
            writeCircle(outer_Thickness/2,bot_Third_t+(bot_Third_t-bot_Third_b)/2,cornerX,cornerY,0);
          }
          stroke(0);
        }
    }              //two piece back/\

    stroke(pocket_Color);
    for(int i=0; i < height_Div; i++) {
      sidePocket(0,-400-outer_Thickness-height_Dividers[i],PI/2,cornerX,cornerY);
    }
    stroke(0);
  }//right side /\


  //left side \/
  if(leftOrRight == "left") {
    line(0,-300,0,-shelf_Height+outer_Thickness);
    line(0,-shelf_Height+outer_Thickness,100-sniglet_Radius*3,-shelf_Height+outer_Thickness);
    
    if(record){
            setLayer("Outside Cut");
            writeLine(0,-300,0,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
          writeLine(0,-shelf_Height+outer_Thickness,100-sniglet_Radius*3,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
    }
    
    if(dowel_Holes) {
      stroke(255,0,0);
      ellipse(outer_Thickness/2,-350,dowel_Diameter,dowel_Diameter);
      if(record){
            setLayer("Dowel Holes");
            writeCircle(outer_Thickness/2,-350,cornerX,cornerY,0);
      }
      stroke(0);
    }

    if(back_One || back_Two) {        //one piece back\/
      if(height_Div>=2) {
        line(shelf_Depth,-300,shelf_Depth,-400-outer_Thickness-height_Dividers[0]);
        line(shelf_Depth,-400-outer_Thickness-height_Dividers[0],shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[0]);
        arc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
        arc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
        line(shelf_Depth-outer_Thickness,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,shelf_Depth-outer_Thickness,-400-outer_Thickness-height_Dividers[height_Div-1]+sniglet_Radius*3);
        arc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[height_Div-1]+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
        arc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[height_Div-1]+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
        line(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[height_Div-1],shelf_Depth,-400-outer_Thickness-height_Dividers[height_Div-1]);
        line(shelf_Depth,-400-outer_Thickness-height_Dividers[height_Div-1],shelf_Depth,-shelf_Height+outer_Thickness);

        line(shelf_Depth-100+sniglet_Radius*3,-shelf_Height+outer_Thickness,shelf_Depth,-shelf_Height+outer_Thickness);
        
        if(record){
            setLayer("Outside Cut");
            writeLine(shelf_Depth,-300,shelf_Depth,-400-outer_Thickness-height_Dividers[0],cornerX,cornerY,0);
        writeLine(shelf_Depth,-400-outer_Thickness-height_Dividers[0],shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[0],cornerX,cornerY,0);
        writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
        writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,0,PI/2,cornerX,cornerY,0);
        writeLine(shelf_Depth-outer_Thickness,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,shelf_Depth-outer_Thickness,-400-outer_Thickness-height_Dividers[height_Div-1]+sniglet_Radius*3,cornerX,cornerY,0);
        writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[height_Div-1]+sniglet_Radius*3,-PI/2,0,cornerX,cornerY,0);
        writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[height_Div-1]+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
        writeLine(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[height_Div-1],shelf_Depth,-400-outer_Thickness-height_Dividers[height_Div-1],cornerX,cornerY,0);
        writeLine(shelf_Depth,-400-outer_Thickness-height_Dividers[height_Div-1],shelf_Depth,-shelf_Height+outer_Thickness,cornerX,cornerY,0);

        writeLine(shelf_Depth-100+sniglet_Radius*3,-shelf_Height+outer_Thickness,shelf_Depth,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
        }
        
        if(dowel_Holes) {
          stroke(255,0,0);
          ellipse(shelf_Depth-outer_Thickness/2,-(height_Dividers[0]+100+outer_Thickness)/2-300,dowel_Diameter,dowel_Diameter);
          ellipse(shelf_Depth-outer_Thickness/2,-shelf_Height+outer_Thickness+(shelf_Height-outer_Thickness*2-height_Dividers[height_Div-1]-400)/2,dowel_Diameter,dowel_Diameter);
          if(record){
            setLayer("Dowel Holes");
            writeCircle(shelf_Depth-outer_Thickness/2,-(height_Dividers[0]+100+outer_Thickness)/2-300,cornerX,cornerY,0);
            writeCircle(shelf_Depth-outer_Thickness/2,-shelf_Height+outer_Thickness+(shelf_Height-outer_Thickness*2-height_Dividers[height_Div-1]-400)/2,cornerX,cornerY,0);
          }
          stroke(0);
        }
      }
      if(height_Div==1) {
        line(shelf_Depth,-300,shelf_Depth,-400-outer_Thickness-height_Dividers[0]);
        line(shelf_Depth,-400-outer_Thickness-height_Dividers[0],shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[0]);
        arc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
        arc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
        line(shelf_Depth-outer_Thickness,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,shelf_Depth-outer_Thickness,-shelf_Height+outer_Thickness);

        line(shelf_Depth-100+sniglet_Radius*3,-shelf_Height+outer_Thickness,shelf_Depth-outer_Thickness,-shelf_Height+outer_Thickness);
        
        if(record){
            setLayer("Outside Cut");
            writeLine(shelf_Depth,-300,shelf_Depth,-400-outer_Thickness-height_Dividers[0],cornerX,cornerY,0);
        writeLine(shelf_Depth,-400-outer_Thickness-height_Dividers[0],shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[0],cornerX,cornerY,0);
        writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
        writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,0,PI/2,cornerX,cornerY,0);
        writeLine(shelf_Depth-outer_Thickness,-400-outer_Thickness-height_Dividers[0]-sniglet_Radius*3,shelf_Depth-outer_Thickness,-shelf_Height+outer_Thickness,cornerX,cornerY,0);

        writeLine(shelf_Depth-100+sniglet_Radius*3,-shelf_Height+outer_Thickness,shelf_Depth-outer_Thickness,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
        }
        
        if(dowel_Holes) {
          stroke(255,0,0);
          ellipse(shelf_Depth-outer_Thickness/2,-(height_Dividers[0]+100+outer_Thickness)/3-300,dowel_Diameter,dowel_Diameter);
          ellipse(shelf_Depth-outer_Thickness/2,-(height_Dividers[0]+100+outer_Thickness)*2/3-300,dowel_Diameter,dowel_Diameter);
          if(record){
            setLayer("Dowel Holes");
            writeCircle(shelf_Depth-outer_Thickness/2,-(height_Dividers[0]+100+outer_Thickness)/3-300,cornerX,cornerY,0);
            writeCircle(shelf_Depth-outer_Thickness/2,-(height_Dividers[0]+100+outer_Thickness)*2/3-300,cornerX,cornerY,0);
          }
          stroke(0);
        }
      }
      if(height_Div==0) {
        line(shelf_Depth,-300,shelf_Depth,-400-(shelf_Height-400)/2);
        line(shelf_Depth,-400-(shelf_Height-400)/2,shelf_Depth-outer_Thickness-sniglet_Radius,-400-(shelf_Height-400)/2);
        arc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-(shelf_Height-400)/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
        arc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-(shelf_Height-400)/2-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
        line(shelf_Depth-outer_Thickness,-400-(shelf_Height-400)/2-sniglet_Radius*3,shelf_Depth-outer_Thickness,-shelf_Height+outer_Thickness);

        line(shelf_Depth-100+sniglet_Radius*3,-shelf_Height+outer_Thickness,shelf_Depth-outer_Thickness,-shelf_Height+outer_Thickness);
        
        if(record){
            setLayer("Outside Cut");
            writeLine(shelf_Depth,-300,shelf_Depth,-400-(shelf_Height-400)/2,cornerX,cornerY,0);
        writeLine(shelf_Depth,-400-(shelf_Height-400)/2,shelf_Depth-outer_Thickness-sniglet_Radius,-400-(shelf_Height-400)/2,cornerX,cornerY,0);
        writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-(shelf_Height-400)/2-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
        writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,-400-(shelf_Height-400)/2-sniglet_Radius*3,0,PI/2,cornerX,cornerY,0);
        writeLine(shelf_Depth-outer_Thickness,-400-(shelf_Height-400)/2-sniglet_Radius*3,shelf_Depth-outer_Thickness,-shelf_Height+outer_Thickness,cornerX,cornerY,0);

        writeLine(shelf_Depth-100+sniglet_Radius*3,-shelf_Height+outer_Thickness,shelf_Depth-outer_Thickness,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
        }
        
        if(dowel_Holes) {
          stroke(255,0,0);
          ellipse(shelf_Depth-outer_Thickness/2,-((400+(shelf_Height-400)/2)-300)/3-300,dowel_Diameter,dowel_Diameter);
          ellipse(shelf_Depth-outer_Thickness/2,-((400+(shelf_Height-400)/2)-300)*2/3-300,dowel_Diameter,dowel_Diameter);
//          ellipse(shelf_Depth-outer_Thickness/2,bot_Third_t+(top_Third_b-bot_Third_t)/2,dowel_Diameter,dowel_Diameter);

          if(record){
            setLayer("Dowel Holes");
            writeCircle(shelf_Depth-outer_Thickness/2,-((400+(shelf_Height-400)/2)-300)/3-300,cornerX,cornerY,0);
            writeCircle(shelf_Depth-outer_Thickness/2,-((400+(shelf_Height-400)/2)-300)*2/3-300,cornerX,cornerY,0);
          }
          stroke(0);
        }
      }
    }         //one piece back/\

    if(back_Bikini && height_Div>=2) {  //two piece back
      line(shelf_Depth,-300,shelf_Depth,bot_Third_b);

      line(shelf_Depth,bot_Third_b,shelf_Depth-outer_Thickness-sniglet_Radius,bot_Third_b);
      arc(shelf_Depth-outer_Thickness-sniglet_Radius,bot_Third_b-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
      arc(shelf_Depth-outer_Thickness-sniglet_Radius,bot_Third_b-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
      line(shelf_Depth-outer_Thickness,bot_Third_b-sniglet_Radius*3,shelf_Depth-outer_Thickness,bot_Third_t+sniglet_Radius*3);
      arc(shelf_Depth-outer_Thickness-sniglet_Radius,bot_Third_t+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
      arc(shelf_Depth-outer_Thickness-sniglet_Radius,bot_Third_t+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
      line(shelf_Depth-outer_Thickness-sniglet_Radius,bot_Third_t,shelf_Depth,bot_Third_t);

      line(shelf_Depth,bot_Third_t,shelf_Depth,top_Third_b);

      line(shelf_Depth,top_Third_b,shelf_Depth-outer_Thickness-sniglet_Radius,top_Third_b);
      arc(shelf_Depth-outer_Thickness-sniglet_Radius,top_Third_b-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
      arc(shelf_Depth-outer_Thickness-sniglet_Radius,top_Third_b-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
      line(shelf_Depth-outer_Thickness,top_Third_b-sniglet_Radius*3,shelf_Depth-outer_Thickness,top_Third_t+sniglet_Radius*3);
      arc(shelf_Depth-outer_Thickness-sniglet_Radius,top_Third_t+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
      arc(shelf_Depth-outer_Thickness-sniglet_Radius,top_Third_t+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
      line(shelf_Depth-outer_Thickness-sniglet_Radius,top_Third_t,shelf_Depth,top_Third_t);

      line(shelf_Depth,top_Third_t,shelf_Depth,-shelf_Height+outer_Thickness);
      line(shelf_Depth,-shelf_Height+outer_Thickness,shelf_Depth-100+sniglet_Radius*3,-shelf_Height+outer_Thickness);
      
      if(record){
            setLayer("Outside Cut");
            writeLine(shelf_Depth,-300,shelf_Depth,bot_Third_b,cornerX,cornerY,0);

      writeLine(shelf_Depth,bot_Third_b,shelf_Depth-outer_Thickness-sniglet_Radius,bot_Third_b,cornerX,cornerY,0);
      writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,bot_Third_b-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
      writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,bot_Third_b-sniglet_Radius*3,0,PI/2,cornerX,cornerY,0);
      writeLine(shelf_Depth-outer_Thickness,bot_Third_b-sniglet_Radius*3,shelf_Depth-outer_Thickness,bot_Third_t+sniglet_Radius*3,cornerX,cornerY,0);
      writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,bot_Third_t+sniglet_Radius*3,-PI/2,0,cornerX,cornerY,0);
      writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,bot_Third_t+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
      writeLine(shelf_Depth-outer_Thickness-sniglet_Radius,bot_Third_t,shelf_Depth,bot_Third_t,cornerX,cornerY,0);

      writeLine(shelf_Depth,bot_Third_t,shelf_Depth,top_Third_b,cornerX,cornerY,0);

      writeLine(shelf_Depth,top_Third_b,shelf_Depth-outer_Thickness-sniglet_Radius,top_Third_b,cornerX,cornerY,0);
      writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,top_Third_b-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
      writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,top_Third_b-sniglet_Radius*3,0,PI/2,cornerX,cornerY,0);
      writeLine(shelf_Depth-outer_Thickness,top_Third_b-sniglet_Radius*3,shelf_Depth-outer_Thickness,top_Third_t+sniglet_Radius*3,cornerX,cornerY,0);
      writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,top_Third_t+sniglet_Radius*3,-PI/2,0,cornerX,cornerY,0);
      writeArc(shelf_Depth-outer_Thickness-sniglet_Radius,top_Third_t+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
      writeLine(shelf_Depth-outer_Thickness-sniglet_Radius,top_Third_t,shelf_Depth,top_Third_t,cornerX,cornerY,0);

      writeLine(shelf_Depth,top_Third_t,shelf_Depth,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
      writeLine(shelf_Depth,-shelf_Height+outer_Thickness,shelf_Depth-100+sniglet_Radius*3,-shelf_Height+outer_Thickness,cornerX,cornerY,0);
      }
      
      if(dowel_Holes) {
          stroke(255,0,0);
          ellipse(shelf_Depth-outer_Thickness/2,-shelf_Height+outer_Thickness-(top_Third_t-top_Third_b)/2,dowel_Diameter,dowel_Diameter);
          ellipse(shelf_Depth-outer_Thickness/2,-300+(bot_Third_b+300)/2,dowel_Diameter,dowel_Diameter);
          ellipse(shelf_Depth-outer_Thickness/2,top_Third_b-(top_Third_t-top_Third_b)/2,dowel_Diameter,dowel_Diameter);
          ellipse(shelf_Depth-outer_Thickness/2,bot_Third_t+(bot_Third_t-bot_Third_b)/2,dowel_Diameter,dowel_Diameter);
          
          if(record){
            setLayer("Dowel Holes");
            writeCircle(shelf_Depth-outer_Thickness/2,-shelf_Height+outer_Thickness-(top_Third_t-top_Third_b)/2,cornerX,cornerY,0);
          writeCircle(shelf_Depth-outer_Thickness/2,-300+(bot_Third_b+300)/2,cornerX,cornerY,0);
          writeCircle(shelf_Depth-outer_Thickness/2,top_Third_b-(top_Third_t-top_Third_b)/2,cornerX,cornerY,0);
          writeCircle(shelf_Depth-outer_Thickness/2,bot_Third_t+(bot_Third_t-bot_Third_b)/2,cornerX,cornerY,0);
          }
          stroke(0);
        }
    }              //two piece back

    stroke(pocket_Color);
    for(int i=0; i < height_Div; i++) {
      sidePocket(shelf_Depth,-400-outer_Thickness-height_Dividers[i],-PI/2,cornerX,cornerY);
    }
    stroke(0);
  }// left side/\


  //top\/
  arc(100-sniglet_Radius*3,-shelf_Height+outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  arc(100-sniglet_Radius,-shelf_Height+outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  line(100,-shelf_Height+outer_Thickness+sniglet_Radius,100,-shelf_Height);
  line(100,-shelf_Height,shelf_Depth-100,-shelf_Height);
  line(shelf_Depth-100,-shelf_Height,shelf_Depth-100,-shelf_Height+outer_Thickness+sniglet_Radius);
  arc(shelf_Depth-100+sniglet_Radius,-shelf_Height+outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  arc(shelf_Depth-100+sniglet_Radius*3,-shelf_Height+outer_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  
  if(record){
    setLayer("Outside Cut");
    
    writeArc(100-sniglet_Radius*3,-shelf_Height+outer_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,0);
  writeArc(100-sniglet_Radius,-shelf_Height+outer_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,0);
  writeLine(100,-shelf_Height+outer_Thickness+sniglet_Radius,100,-shelf_Height,cornerX,cornerY,0);
  writeLine(100,-shelf_Height,shelf_Depth-100,-shelf_Height,cornerX,cornerY,0);
  writeLine(shelf_Depth-100,-shelf_Height,shelf_Depth-100,-shelf_Height+outer_Thickness+sniglet_Radius,cornerX,cornerY,0);
  writeArc(shelf_Depth-100+sniglet_Radius,-shelf_Height+outer_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,0);
  writeArc(shelf_Depth-100+sniglet_Radius*3,-shelf_Height+outer_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,0);
  }
  //top/\


  //bottom support hole\/
  stroke(0,127,0);
  line(shelf_Depth/2-outer_Thickness/2,-400,shelf_Depth/2-outer_Thickness/2,-330-sniglet_Radius*3);
  arc(shelf_Depth/2-outer_Thickness/2-sniglet_Radius,-330-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  arc(shelf_Depth/2-outer_Thickness/2-sniglet_Radius,-330-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  line(shelf_Depth/2-outer_Thickness/2-sniglet_Radius,-330,shelf_Depth/2+outer_Thickness/2+sniglet_Radius,-330);
  arc(shelf_Depth/2+outer_Thickness/2+sniglet_Radius,-330-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(shelf_Depth/2+outer_Thickness/2+sniglet_Radius,-330-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  line(shelf_Depth/2+outer_Thickness/2,-330-sniglet_Radius*3,shelf_Depth/2+outer_Thickness/2,-400);

  line(shelf_Depth/2+outer_Thickness/2,-400,shelf_Depth-100-sniglet_Radius*3,-400);
  arc(shelf_Depth-100-sniglet_Radius*3,-400+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  arc(shelf_Depth-100-sniglet_Radius,-400+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  line(shelf_Depth-100,-400+sniglet_Radius,shelf_Depth-100,-400-outer_Thickness-sniglet_Radius);
  arc(shelf_Depth-100-sniglet_Radius,-400-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  arc(shelf_Depth-100-sniglet_Radius*3,-400-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  line(shelf_Depth-100-sniglet_Radius*3,-400-outer_Thickness,100+sniglet_Radius*3,-400-outer_Thickness);
  arc(100+sniglet_Radius*3,-400-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  arc(100+sniglet_Radius,-400-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  line(100,-400-outer_Thickness-sniglet_Radius,100,-400+sniglet_Radius);
  arc(100+sniglet_Radius,-400+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  arc(100+sniglet_Radius*3,-400+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  line(100+sniglet_Radius*3,-400,shelf_Depth/2-outer_Thickness/2,-400);
  
  if(record){
    setLayer("Inside Cut");
    
    writeLine(shelf_Depth/2-outer_Thickness/2,-400,shelf_Depth/2-outer_Thickness/2,-330-sniglet_Radius*3,cornerX,cornerY,0);
  writeArc(shelf_Depth/2-outer_Thickness/2-sniglet_Radius,-330-sniglet_Radius*3,0,PI/2,cornerX,cornerY,0);
  writeArc(shelf_Depth/2-outer_Thickness/2-sniglet_Radius,-330-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,0);
  writeLine(shelf_Depth/2-outer_Thickness/2-sniglet_Radius,-330,shelf_Depth/2+outer_Thickness/2+sniglet_Radius,-330,cornerX,cornerY,0);
  writeArc(shelf_Depth/2+outer_Thickness/2+sniglet_Radius,-330-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,0);
  writeArc(shelf_Depth/2+outer_Thickness/2+sniglet_Radius,-330-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,0);
  writeLine(shelf_Depth/2+outer_Thickness/2,-330-sniglet_Radius*3,shelf_Depth/2+outer_Thickness/2,-400,cornerX,cornerY,0);

  writeLine(shelf_Depth/2+outer_Thickness/2,-400,shelf_Depth-100-sniglet_Radius*3,-400,cornerX,cornerY,0);
  writeArc(shelf_Depth-100-sniglet_Radius*3,-400+sniglet_Radius,-PI/2,0,cornerX,cornerY,0);
  writeArc(shelf_Depth-100-sniglet_Radius,-400+sniglet_Radius,0,PI,cornerX,cornerY,0);
  writeLine(shelf_Depth-100,-400+sniglet_Radius,shelf_Depth-100,-400-outer_Thickness-sniglet_Radius,cornerX,cornerY,0);
  writeArc(shelf_Depth-100-sniglet_Radius,-400-outer_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,0);
  writeArc(shelf_Depth-100-sniglet_Radius*3,-400-outer_Thickness-sniglet_Radius,0,PI/2,cornerX,cornerY,0);
  writeLine(shelf_Depth-100-sniglet_Radius*3,-400-outer_Thickness,100+sniglet_Radius*3,-400-outer_Thickness,cornerX,cornerY,0);
  writeArc(100+sniglet_Radius*3,-400-outer_Thickness-sniglet_Radius,PI/2,PI,cornerX,cornerY,0);
  writeArc(100+sniglet_Radius,-400-outer_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,0);
  writeLine(100,-400-outer_Thickness-sniglet_Radius,100,-400+sniglet_Radius,cornerX,cornerY,0);
  writeArc(100+sniglet_Radius,-400+sniglet_Radius,0,PI,cornerX,cornerY,0);
  writeArc(100+sniglet_Radius*3,-400+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,0);
  writeLine(100+sniglet_Radius*3,-400,shelf_Depth/2-outer_Thickness/2,-400,cornerX,cornerY,0);
  }
  stroke(0);
  //bottom support hole/\

  popMatrix();
}