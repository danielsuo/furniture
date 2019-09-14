void foot(float cornerX, float cornerY, float rotation) {
  pushMatrix();
  translate(cornerX,cornerY);
  rotate(rotation);

  if(dowel_Holes) {
    stroke(255,0,0);
    ellipse(75,-outer_Thickness/2,dowel_Diameter,dowel_Diameter);
    ellipse(outer_Thickness/2,-75,dowel_Diameter,dowel_Diameter);
    if(record){
      setLayer("Dowel Holes");
      writeCircle(75,-outer_Thickness/2,cornerX,cornerY,rotation);
      writeCircle(outer_Thickness/2,-75,cornerX,cornerY,rotation);
    }
    stroke(0);
  }
  line(0,-50,outer_Thickness+sniglet_Radius,-50);
  arc(outer_Thickness+sniglet_Radius,-50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(outer_Thickness+sniglet_Radius,-50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  line(outer_Thickness,-50+sniglet_Radius*3,outer_Thickness,-outer_Thickness);

  line(outer_Thickness,-outer_Thickness,50-sniglet_Radius*3,-outer_Thickness);
  arc(50-sniglet_Radius*3,-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  arc(50-sniglet_Radius,-outer_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  line(50,-outer_Thickness-sniglet_Radius,50,0);

  line(50,0,100,0);
  line(100,0,100,-outer_Thickness);
  line(100,-outer_Thickness,outer_Thickness,-100);
  line(outer_Thickness,-100,0,-100);
  line(0,-100,0,-50);
  
  if(record){
    setLayer("Outside Cut");
    writeLine(0,-50,outer_Thickness+sniglet_Radius,-50,cornerX,cornerY,rotation);
    writeLine(outer_Thickness,-50+sniglet_Radius*3,outer_Thickness,-outer_Thickness,cornerX,cornerY,rotation);
    writeLine(outer_Thickness,-outer_Thickness,50-sniglet_Radius*3,-outer_Thickness,cornerX,cornerY,rotation);
    writeLine(50,-outer_Thickness-sniglet_Radius,50,0,cornerX,cornerY,rotation);
    writeLine(50,0,100,0,cornerX,cornerY,rotation);
    writeLine(100,0,100,-outer_Thickness,cornerX,cornerY,rotation);
    writeLine(100,-outer_Thickness,outer_Thickness,-100,cornerX,cornerY,rotation);
    writeLine(outer_Thickness,-100,0,-100,cornerX,cornerY,rotation);
    writeLine(0,-100,0,-50,cornerX,cornerY,rotation);
    
    writeArc(outer_Thickness+sniglet_Radius,-50+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,rotation);
    writeArc(outer_Thickness+sniglet_Radius,-50+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,rotation);
    writeArc(50-sniglet_Radius*3,-outer_Thickness-sniglet_Radius,0,PI/2,cornerX,cornerY,rotation);
    writeArc(50-sniglet_Radius,-outer_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,rotation);
  }
  
  popMatrix();
}

//foot      /\   /\