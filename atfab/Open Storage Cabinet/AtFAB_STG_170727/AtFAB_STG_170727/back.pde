void back (float cornerX, float cornerY) {
  pushMatrix();
  translate(cornerX, cornerY);


  //back shelf grooves\/
  stroke(pocket_Color);
  if (back_One) {
    for (int i=0; i < height_Div; i++) {
      line(50, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, 50, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius);
      arc(50+sniglet_Radius, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, TWO_PI);
      arc(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);
      arc(50+sniglet_Radius, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI);
      arc(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);

      if (record) {
        setLayer("Pocket Cut");
        writeLine(50, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, 50, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, cornerX, cornerY, 0);
        writeArc(50+sniglet_Radius, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
        writeArc(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, PI/2, PI, cornerX, cornerY, 0);
        writeArc(50+sniglet_Radius, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
        writeArc(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, PI, PI+PI/2, cornerX, cornerY, 0);
      }

      for (int j=1; j < length_Div; j++) {
        line(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2);
        line(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2);
        if (record) {
          setLayer("Pocket Cut");
          writeLine(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
        }
      }

      line(shelf_Length-50, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, shelf_Length-50, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius);
      arc(shelf_Length-50-sniglet_Radius, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, TWO_PI);
      arc(shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);
      arc(shelf_Length-50-sniglet_Radius, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI);
      arc(shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);

      if (record) {
        setLayer("Pocket Cut");
        writeLine(shelf_Length-50, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, shelf_Length-50, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, cornerX, cornerY, 0);
        writeArc(shelf_Length-50-sniglet_Radius, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
        writeArc(shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, 0, PI/2, cornerX, cornerY, 0);
        writeArc(shelf_Length-50-sniglet_Radius, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
        writeArc(shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, -PI/2, 0, cornerX, cornerY, 0);
      }

      if (length_Div>0) {
        line(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2);
        line(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2);
        line(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2);
        line(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2);
        if (record) {
          setLayer("Pocket Cut");
          writeLine(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
        }
      }
      if (length_Div==0) {
        line(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2);
        line(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2);
        if (record) {
          setLayer("Pocket Cut");
          writeLine(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
        }
      }
    }

    for (int i=0; i < length_Div; i++) {
      line(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50);
      arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
      arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);
      arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
      arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);

      if (record) {
        setLayer("Pocket Cut");
        writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, -PI/2, 0, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, PI, PI+PI/2, cornerX, cornerY, 0);
      }

      for (int j=1; j < height_Div; j++) {
        line(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j]+inner_Thickness/2, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]-inner_Thickness/2);
        line(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j]+inner_Thickness/2, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]-inner_Thickness/2);
        if (record) {
          setLayer("Pocket Cut");
          writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j]+inner_Thickness/2, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j]+inner_Thickness/2, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]-inner_Thickness/2, cornerX, cornerY, 0);
        }
      }

      line(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50);
      arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
      arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);
      arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
      arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);

      if (record) {
        setLayer("Pocket Cut");
        writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, 0, PI/2, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, PI/2, PI, cornerX, cornerY, 0);
      }

      if (height_Div>0) {
        line(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2);
        line(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2);
        line(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2);
        line(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2);
        if (record) {
          setLayer("Pocket Cut");
          writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2, cornerX, cornerY, 0);
        }
      }
      if (height_Div==0) {
        line(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3);
        line(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3);
        if (record) {
          setLayer("Pocket Cut");
          writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, cornerX, cornerY, 0);
        }
      }
    }
  }
  //one_piece/\

















  //two_piece\/
  stroke(pocket_Color);
  if (back_Two) {

    for (int i=0; i < height_Div; i++) {
      line(50, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, 50, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius);
      arc(50+sniglet_Radius, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, TWO_PI);
      arc(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);
      arc(50+sniglet_Radius, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI);
      arc(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);

      if (record) {
        setLayer("Pocket Cut Left");
        writeLine(50, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, 50, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, cornerX, cornerY, 0);
        writeArc(50+sniglet_Radius, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
        writeArc(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, PI/2, PI, cornerX, cornerY, 0);
        writeArc(50+sniglet_Radius, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
        writeArc(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, PI, PI+PI/2, cornerX, cornerY, 0);
      }

      for (int j=1; j < length_Div; j++) {
        line(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2);
        line(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2);

        if (record) {
          if( (distX==0 && length_Div==2 && j==1) || (distX==0 && length_Div==4 && j==2) || (distX==1 && length_Div==3 && j==2) || (distX==1 && length_Div==4 && j==3) ){
            //println("split" + j);
            setLayer("Pocket Cut Left");
            writeLine(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(shelf_Length/2,-400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
            setLayer("Pocket Cut Right");
            writeLine(shelf_Length/2,-400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
          }
          if( (distX==0 && length_Div==3 && j==1) || (distX==0 && length_Div==4 && j==1) || (distX==1 && length_Div==2 && j==1) || (distX==1 && length_Div==3 && j==1) || (distX==1 && length_Div==4 && j==1)  || (distX==1 && length_Div==4 && j==2) ){
            //println("left" + j);
            setLayer("Pocket Cut Left");
            writeLine(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
          }
          if( (distX==0 && length_Div==3 && j==2) || (distX==0 && length_Div==4 && j==3) ){
            //println("right" + j);
            setLayer("Pocket Cut Right");
            writeLine(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
          }
            //setLayer("Pocket Cut");
            //writeLine(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
            //writeLine(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
        }
      }




      line(shelf_Length-50, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, shelf_Length-50, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius);
      arc(shelf_Length-50-sniglet_Radius, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, TWO_PI);
      arc(shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);
      arc(shelf_Length-50-sniglet_Radius, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI);
      arc(shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);

      if (record) {
        setLayer("Pocket Cut Right");
        writeLine(shelf_Length-50, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, shelf_Length-50, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, cornerX, cornerY, 0);
        writeArc(shelf_Length-50-sniglet_Radius, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
        writeArc(shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2-sniglet_Radius, 0, PI/2, cornerX, cornerY, 0);
        writeArc(shelf_Length-50-sniglet_Radius, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
        writeArc(shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2+sniglet_Radius, -PI/2, 0, cornerX, cornerY, 0);
      }

      if (length_Div>0) {
        line(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2);
        line(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2);
        if(length_Div==1 && distX==1){
          line(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2);
          line(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2);
          
          line(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2);
          line(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2);
        }
        else{
          line(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2);
          line(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2);
        }
        if (record) {
          setLayer("Pocket Cut Left");
          writeLine(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
          if(length_Div==1 && distX==1){
            setLayer("Pocket Cut Left");
            writeLine(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2,shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
            setLayer("Pocket Cut Right");
            writeLine(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2,shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
          }
          else{
            setLayer("Pocket Cut Right");
            writeLine(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
          }
        }
      }
      if (length_Div==0) {
        line(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2);
        line(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2);
        line(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2);
        line(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2);
        if (record) {
          setLayer("Pocket Cut Left");
          writeLine(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
          
          writeLine(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2,shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
          setLayer("Pocket Cut Right");
          writeLine(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2,shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
          
          writeLine(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(shelf_Length/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);

          //writeLine(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]+inner_Thickness/2, cornerX, cornerY, 0);
          //writeLine(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i]-inner_Thickness/2, cornerX, cornerY, 0);
        }
      }
    }
    //horizontal /\

    //vertical\/
    for (int i=0; i < length_Div; i++) {
      if(distX==0){
        if(length_Div==1){
          //split
        }
        if(length_Div==2){
          if(i==0){
            setLayer("Pocket Cut Left");
          }
          if(i==1){
            setLayer("Pocket Cut Right");
          }
        }
        if(length_Div==3){
          if(i==0){
            setLayer("Pocket Cut Left");
          }
          if(i==1){
            //split
          }
          if(i==2){
            setLayer("Pocket Cut Right");
          }
        }
        if(length_Div==4){
          if(i==0){
            setLayer("Pocket Cut Left");
          }
          if(i==1){
            setLayer("Pocket Cut Left");
          }
          if(i==2){
            setLayer("Pocket Cut Right");
          }
          if(i==3){
            setLayer("Pocket Cut Right");
          }
        }
      }
      if(distX==1){
        if(length_Div==1){
          setLayer("Pocket Cut Left");
        }
        if(length_Div==2){
          if(i==0){
            setLayer("Pocket Cut Left");
          }
          if(i==1){
            //split
          }
        }
        if(length_Div==3){
          if(i==0){
            setLayer("Pocket Cut Left");
          }
          if(i==1){
            setLayer("Pocket Cut Left");
          }
          if(i==2){
            setLayer("Pocket Cut Right");
          }
        }
        if(length_Div==4){
          if(i==0){
            setLayer("Pocket Cut Left");
          }
          if(i==1){
            setLayer("Pocket Cut Left");
          }
          if(i==2){
            setLayer("Pocket Cut Left");
          }
          if(i==3){
            setLayer("Pocket Cut Right");
          }
        }
      }
      else{
        //setLayer("Pocket Cut");
      }
      //println("a" + i + " " + layer);
        //if( (distX==0 && (length_Div==1 || (length_Div==3 && i==1))) || (distX==1 && length_Div==2 && i==1) ){
        //  println("jenga!!!!" + i);
        //}
        //else{
        //  println("boring" + i);
        //}
      
      line(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50);
      arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
      arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);
      arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
      arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);

      if (record) {
        if( (distX==0 && (length_Div==1 || (length_Div==3 && i==1))) || (distX==1 && length_Div==2 && i==1) ){
          setLayer("Pocket Cut Left");
          writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, -PI/2, 0, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50, outer_Thickness+length_Dividers[i], -shelf_Height+50, cornerX, cornerY, 0);
          
          writeLine(outer_Thickness+length_Dividers[i],-shelf_Height+50,outer_Thickness+length_Dividers[i],-400-outer_Thickness-50, cornerX, cornerY, 0);
          setLayer("Pocket Cut Right");
          writeLine(outer_Thickness+length_Dividers[i],-shelf_Height+50,outer_Thickness+length_Dividers[i],-400-outer_Thickness-50, cornerX, cornerY, 0);
          
          writeLine(outer_Thickness+length_Dividers[i], -shelf_Height+50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, PI, PI+PI/2, cornerX, cornerY, 0);
        }
        else{
          writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, -PI/2, 0, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, PI, PI+PI/2, cornerX, cornerY, 0);
        }
      }

      for (int j=1; j < height_Div; j++) {
        line(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j]+inner_Thickness/2, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]-inner_Thickness/2);
        line(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j]+inner_Thickness/2, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]-inner_Thickness/2);
        if (record) {
          if( (distX==0 && (length_Div==1 || (length_Div==3 && i==1))) || (distX==1 && length_Div==2 && i==1) ){
            setLayer("Pocket Cut Left");
            writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j]+inner_Thickness/2, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]-inner_Thickness/2, cornerX, cornerY, 0);
            setLayer("Pocket Cut Right");
            writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j]+inner_Thickness/2, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]-inner_Thickness/2, cornerX, cornerY, 0);
          }
          else{
            writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j]+inner_Thickness/2, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]-inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j]+inner_Thickness/2, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]-inner_Thickness/2, cornerX, cornerY, 0);
          }
        }
      }

      line(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50);
      arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
      arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);
      arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
      arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);

      if (record) {
        if( (distX==0 && (length_Div==1 || (length_Div==3 && i==1))) || (distX==1 && length_Div==2 && i==1) ){
          setLayer("Pocket Cut Left");
          writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, 0, PI/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50, outer_Thickness+length_Dividers[i], -400-outer_Thickness-50, cornerX, cornerY, 0);
          setLayer("Pocket Cut Right");
          writeLine(outer_Thickness+length_Dividers[i], -400-outer_Thickness-50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, PI/2, PI, cornerX, cornerY, 0);
        }
        else{
          writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, 0, PI/2, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
          writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, PI/2, PI, cornerX, cornerY, 0);
        }
      }

      if (height_Div>0) {
        line(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2);
        line(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2);
        line(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2);
        line(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2);
        if (record) {
          if( (distX==0 && (length_Div==1 || (length_Div==3 && i==1))) || (distX==1 && length_Div==2 && i==1) ){
            setLayer("Pocket Cut Left");
            writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2, cornerX, cornerY, 0);
            setLayer("Pocket Cut Right");
            writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2, cornerX, cornerY, 0);
          }
          else{
            writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, cornerX, cornerY, 0);
            writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2, cornerX, cornerY, 0);
          }
        }
      }
      if (height_Div==0) {
        line(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3);
        line(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3);
        if (record) {
          if( (distX==0 && (length_Div==1 || (length_Div==3 && i==1))) || (distX==1 && length_Div==2 && i==1) ){
            setLayer("Pocket Cut Left");
            writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, cornerX, cornerY, 0);
            setLayer("Pocket Cut Right");
            writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, cornerX, cornerY, 0);
          }
          else{
            writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, cornerX, cornerY, 0);
            writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, cornerX, cornerY, 0);
          }
        }
      }
      //println("b" + i + " " + layer);
    }
  }
  //two_piece /\




























  //bikini \/
  if (back_Bikini && height_Div>=2) {
    for (int i=0; i < length_Div; i++) {
      line(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50);
      arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
      arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);
      arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
      arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);
      if (record) {
        setLayer("Pocket Cut");
        writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, -PI/2, 0, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -shelf_Height+50+sniglet_Radius*3, PI, PI+PI/2, cornerX, cornerY, 0);
      }
      for (int j=2; j < height_Div; j++) {
        line(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]+inner_Thickness/2, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-2]-inner_Thickness/2);
        line(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]+inner_Thickness/2, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-2]-inner_Thickness/2);
        if (record) {
          setLayer("Pocket Cut");
          writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]+inner_Thickness/2, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-2]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-1]+inner_Thickness/2, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[j-2]-inner_Thickness/2, cornerX, cornerY, 0);
        }
      }

      line(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2);
      line(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-2]+inner_Thickness/2, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-2]+inner_Thickness/2);

      line(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50);
      arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
      arc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);
      arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
      arc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);

      line(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2);
      line(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2);
      line(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2);
      line(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2);
      if (record) {
        setLayer("Pocket Cut");
        writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, cornerX, cornerY, 0);
        writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-2]+inner_Thickness/2, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-2]+inner_Thickness/2, cornerX, cornerY, 0);

        writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50, outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]-inner_Thickness/2-sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, 0, PI/2, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
        writeArc(outer_Thickness+length_Dividers[i]+inner_Thickness/2+sniglet_Radius, -400-outer_Thickness-50-sniglet_Radius*3, PI/2, PI, cornerX, cornerY, 0);

        writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, cornerX, cornerY, 0);
        writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -shelf_Height+50+sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, cornerX, cornerY, 0);
        writeLine(outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2, cornerX, cornerY, 0);
        writeLine(outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-50-sniglet_Radius*3, outer_Thickness+length_Dividers[i]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[0]+inner_Thickness/2, cornerX, cornerY, 0);
      }
    }

    for (int i=2; i < height_Div; i++) {
      line(50, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2-sniglet_Radius, 50, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2+sniglet_Radius);
      arc(50+sniglet_Radius, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, TWO_PI);
      arc(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);
      arc(50+sniglet_Radius, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI);
      arc(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);
      if (record) {
        setLayer("Pocket Cut");
        writeLine(50, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2-sniglet_Radius, 50, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2+sniglet_Radius, cornerX, cornerY, 0);
        writeArc(50+sniglet_Radius, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
        writeArc(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2-sniglet_Radius, PI/2, PI, cornerX, cornerY, 0);
        writeArc(50+sniglet_Radius, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
        writeArc(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2+sniglet_Radius, PI, PI+PI/2, cornerX, cornerY, 0);
      }
      for (int j=1; j < length_Div; j++) {
        line(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2);
        line(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2);
        if (record) {
          setLayer("Pocket Cut");
          writeLine(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[j-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2, outer_Thickness+length_Dividers[j]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2, cornerX, cornerY, 0);
        }
      }

      line(shelf_Length-50, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2-sniglet_Radius, shelf_Length-50, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2+sniglet_Radius);
      arc(shelf_Length-50-sniglet_Radius, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, TWO_PI);
      arc(shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);
      arc(shelf_Length-50-sniglet_Radius, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI);
      arc(shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);
      if (record) {
        setLayer("Pocket Cut");
        writeLine(shelf_Length-50, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2-sniglet_Radius, shelf_Length-50, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2+sniglet_Radius, cornerX, cornerY, 0);
        writeArc(shelf_Length-50-sniglet_Radius, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
        writeArc(shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2-sniglet_Radius, 0, PI/2, cornerX, cornerY, 0);
        writeArc(shelf_Length-50-sniglet_Radius, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
        writeArc(shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2+sniglet_Radius, -PI/2, 0, cornerX, cornerY, 0);
      }
      if (length_Div>0) {
        line(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2);
        line(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2);
        line(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2);
        line(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2);
        if (record) {
          setLayer("Pocket Cut");
          writeLine(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2, outer_Thickness+length_Dividers[0]-inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(outer_Thickness+length_Dividers[length_Div-1]+inner_Thickness/2, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2, cornerX, cornerY, 0);
        }
      }
      if (length_Div==0) {
        line(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2);
        line(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2);
        if (record) {
          setLayer("Pocket Cut");
          writeLine(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]-inner_Thickness/2, cornerX, cornerY, 0);
          writeLine(50+sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2, shelf_Length-50-sniglet_Radius*3, -400-outer_Thickness-height_Dividers[i-2]+inner_Thickness/2, cornerX, cornerY, 0);
        }
      }
    }
  }
  stroke(0);
  //back shelf grooves/\





























  if (back_One || back_Bikini) {
    arc(outer_Thickness+sniglet_Radius, -300-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);
    arc(outer_Thickness+sniglet_Radius, -300-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
    line(outer_Thickness+sniglet_Radius, -300, 0, -300);
    line(0, -300, 0, -200);
    line(0, -200, outer_Thickness+sniglet_Radius, -200);
    arc(outer_Thickness+sniglet_Radius, -200+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
    arc(outer_Thickness+sniglet_Radius, -200+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);
    line(outer_Thickness, -200+sniglet_Radius*3, outer_Thickness, 0);

    line(outer_Thickness, 0, 50, 0);
    line(50, 0, 50, -outer_Thickness-sniglet_Radius);
    arc(50+sniglet_Radius, -outer_Thickness-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, TWO_PI);
    arc(50+sniglet_Radius*3, -outer_Thickness-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);
    line(50+sniglet_Radius*3, -outer_Thickness, 100, -outer_Thickness);
    line(100, -outer_Thickness, 150, -300);

    //this one
    line(150, -300, shelf_Length-150, -300);

    line(shelf_Length-150, -300, shelf_Length-100, -outer_Thickness);
    line(shelf_Length-50-sniglet_Radius*3, -outer_Thickness, shelf_Length-100, -outer_Thickness);
    arc(shelf_Length-50-sniglet_Radius*3, -outer_Thickness-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);
    arc(shelf_Length-50-sniglet_Radius, -outer_Thickness-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, TWO_PI);
    line(shelf_Length-50, 0, shelf_Length-50, -outer_Thickness-sniglet_Radius);
    line(shelf_Length-outer_Thickness, 0, shelf_Length-50, 0);

    line(shelf_Length-outer_Thickness, 0, shelf_Length-outer_Thickness, -200+sniglet_Radius*3);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, -200+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, -200+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
    line(shelf_Length-outer_Thickness-sniglet_Radius, -200, shelf_Length, -200);
    line(shelf_Length, -200, shelf_Length, -300);
    line(shelf_Length, -300, shelf_Length-outer_Thickness-sniglet_Radius, -300);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, -300-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, -300-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);

    if (record) {
      setLayer("Outside Cut");
      writeArc(outer_Thickness+sniglet_Radius, -300-sniglet_Radius*3, PI/2, PI, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, -300-sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
      writeLine(outer_Thickness+sniglet_Radius, -300, 0, -300, cornerX, cornerY, 0);
      writeLine(0, -300, 0, -200, cornerX, cornerY, 0);
      writeLine(0, -200, outer_Thickness+sniglet_Radius, -200, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, -200+sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, -200+sniglet_Radius*3, PI, PI+PI/2, cornerX, cornerY, 0);
      writeLine(outer_Thickness, -200+sniglet_Radius*3, outer_Thickness, 0, cornerX, cornerY, 0);

      writeLine(outer_Thickness, 0, 50, 0, cornerX, cornerY, 0);
      writeLine(50, 0, 50, -outer_Thickness-sniglet_Radius, cornerX, cornerY, 0);
      writeArc(50+sniglet_Radius, -outer_Thickness-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
      writeArc(50+sniglet_Radius*3, -outer_Thickness-sniglet_Radius, PI/2, PI, cornerX, cornerY, 0);
      writeLine(50+sniglet_Radius*3, -outer_Thickness, 100, -outer_Thickness, cornerX, cornerY, 0);
      writeLine(100, -outer_Thickness, 150, -300, cornerX, cornerY, 0);
      writeLine(150, -300, shelf_Length-150, -300, cornerX, cornerY, 0);
      writeLine(shelf_Length-150, -300, shelf_Length-100, -outer_Thickness, cornerX, cornerY, 0);
      writeLine(shelf_Length-50-sniglet_Radius*3, -outer_Thickness, shelf_Length-100, -outer_Thickness, cornerX, cornerY, 0);
      writeArc(shelf_Length-50-sniglet_Radius*3, -outer_Thickness-sniglet_Radius, 0, PI/2, cornerX, cornerY, 0);
      writeArc(shelf_Length-50-sniglet_Radius, -outer_Thickness-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
      writeLine(shelf_Length-50, 0, shelf_Length-50, -outer_Thickness-sniglet_Radius, cornerX, cornerY, 0);
      writeLine(shelf_Length-outer_Thickness, 0, shelf_Length-50, 0, cornerX, cornerY, 0);

      writeLine(shelf_Length-outer_Thickness, 0, shelf_Length-outer_Thickness, -200+sniglet_Radius*3, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -200+sniglet_Radius*3, -PI/2, 0, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -200+sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
      writeLine(shelf_Length-outer_Thickness-sniglet_Radius, -200, shelf_Length, -200, cornerX, cornerY, 0);
      writeLine(shelf_Length, -200, shelf_Length, -300, cornerX, cornerY, 0);
      writeLine(shelf_Length, -300, shelf_Length-outer_Thickness-sniglet_Radius, -300, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -300-sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -300-sniglet_Radius*3, 0, PI/2, cornerX, cornerY, 0);
    }
  }


  if (back_Two) {
    arc(outer_Thickness+sniglet_Radius, -300-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);
    arc(outer_Thickness+sniglet_Radius, -300-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
    line(outer_Thickness+sniglet_Radius, -300, 0, -300);
    line(0, -300, 0, -200);
    line(0, -200, outer_Thickness+sniglet_Radius, -200);
    arc(outer_Thickness+sniglet_Radius, -200+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
    arc(outer_Thickness+sniglet_Radius, -200+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);
    line(outer_Thickness, -200+sniglet_Radius*3, outer_Thickness, 0);

    line(outer_Thickness, 0, 50, 0);
    line(50, 0, 50, -outer_Thickness-sniglet_Radius);
    arc(50+sniglet_Radius, -outer_Thickness-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, TWO_PI);
    arc(50+sniglet_Radius*3, -outer_Thickness-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);
    line(50+sniglet_Radius*3, -outer_Thickness, 100, -outer_Thickness);
    line(100, -outer_Thickness, 150, -300);

    line(150, -300, shelf_Length/2, -300);
    line(shelf_Length/2, -300, shelf_Length-150, -300);

    line(shelf_Length-150, -300, shelf_Length-100, -outer_Thickness);
    line(shelf_Length-50-sniglet_Radius*3, -outer_Thickness, shelf_Length-100, -outer_Thickness);
    arc(shelf_Length-50-sniglet_Radius*3, -outer_Thickness-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);
    arc(shelf_Length-50-sniglet_Radius, -outer_Thickness-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, TWO_PI);
    line(shelf_Length-50, 0, shelf_Length-50, -outer_Thickness-sniglet_Radius);
    line(shelf_Length-outer_Thickness, 0, shelf_Length-50, 0);

    line(shelf_Length-outer_Thickness, 0, shelf_Length-outer_Thickness, -200+sniglet_Radius*3);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, -200+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, -200+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
    line(shelf_Length-outer_Thickness-sniglet_Radius, -200, shelf_Length, -200);
    line(shelf_Length, -200, shelf_Length, -300);
    line(shelf_Length, -300, shelf_Length-outer_Thickness-sniglet_Radius, -300);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, -300-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, -300-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);

    if (record) {
      setLayer("Outside Cut Left");
      writeArc(outer_Thickness+sniglet_Radius, -300-sniglet_Radius*3, PI/2, PI, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, -300-sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
      writeLine(outer_Thickness+sniglet_Radius, -300, 0, -300, cornerX, cornerY, 0);
      writeLine(0, -300, 0, -200, cornerX, cornerY, 0);
      writeLine(0, -200, outer_Thickness+sniglet_Radius, -200, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, -200+sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, -200+sniglet_Radius*3, PI, PI+PI/2, cornerX, cornerY, 0);
      writeLine(outer_Thickness, -200+sniglet_Radius*3, outer_Thickness, 0, cornerX, cornerY, 0);

      writeLine(outer_Thickness, 0, 50, 0, cornerX, cornerY, 0);
      writeLine(50, 0, 50, -outer_Thickness-sniglet_Radius, cornerX, cornerY, 0);
      writeArc(50+sniglet_Radius, -outer_Thickness-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
      writeArc(50+sniglet_Radius*3, -outer_Thickness-sniglet_Radius, PI/2, PI, cornerX, cornerY, 0);
      writeLine(50+sniglet_Radius*3, -outer_Thickness, 100, -outer_Thickness, cornerX, cornerY, 0);
      writeLine(100, -outer_Thickness, 150, -300, cornerX, cornerY, 0);


      writeLine(150, -300, shelf_Length/2, -300, cornerX, cornerY, 0);
      setLayer("Outside Cut Right");
      writeLine(shelf_Length/2, -300, shelf_Length-150, -300, cornerX, cornerY, 0);

      writeLine(shelf_Length-150, -300, shelf_Length-100, -outer_Thickness, cornerX, cornerY, 0);
      writeLine(shelf_Length-50-sniglet_Radius*3, -outer_Thickness, shelf_Length-100, -outer_Thickness, cornerX, cornerY, 0);
      writeArc(shelf_Length-50-sniglet_Radius*3, -outer_Thickness-sniglet_Radius, 0, PI/2, cornerX, cornerY, 0);
      writeArc(shelf_Length-50-sniglet_Radius, -outer_Thickness-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
      writeLine(shelf_Length-50, 0, shelf_Length-50, -outer_Thickness-sniglet_Radius, cornerX, cornerY, 0);
      writeLine(shelf_Length-outer_Thickness, 0, shelf_Length-50, 0, cornerX, cornerY, 0);

      writeLine(shelf_Length-outer_Thickness, 0, shelf_Length-outer_Thickness, -200+sniglet_Radius*3, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -200+sniglet_Radius*3, -PI/2, 0, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -200+sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
      writeLine(shelf_Length-outer_Thickness-sniglet_Radius, -200, shelf_Length, -200, cornerX, cornerY, 0);
      writeLine(shelf_Length, -200, shelf_Length, -300, cornerX, cornerY, 0);
      writeLine(shelf_Length, -300, shelf_Length-outer_Thickness-sniglet_Radius, -300, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -300-sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -300-sniglet_Radius*3, 0, PI/2, cornerX, cornerY, 0);
    }
  }





  if (dowel_Holes) {
    stroke(255, 0, 0);
    ellipse(outer_Thickness/2, -250, dowel_Diameter, dowel_Diameter);
    ellipse(shelf_Length-outer_Thickness/2, -250, dowel_Diameter, dowel_Diameter);
    if (record) {
      setLayer("Dowel Holes");
      writeCircle(outer_Thickness/2, -250, cornerX, cornerY, 0);
      writeCircle(shelf_Length-outer_Thickness/2, -250, cornerX, cornerY, 0);
    }
    for (int i=1; i <= (shelf_Length/250)-1; i++) {
      if (back_One || back_Bikini) {
        ellipse((shelf_Length/(shelf_Length/250))*i, -shelf_Height+outer_Thickness/2, dowel_Diameter, dowel_Diameter);
      }
      if (back_Two) {
        if ( (((shelf_Length/250)-1)%2)==0 ) {
          ellipse((shelf_Length/(shelf_Length/250))*i, -shelf_Height+outer_Thickness/2, dowel_Diameter, dowel_Diameter);
        }
        if ( (((shelf_Length/250)-1)%2)==1 && i!=(shelf_Length/250)/2 ) {
          ellipse((shelf_Length/(shelf_Length/250))*i, -shelf_Height+outer_Thickness/2, dowel_Diameter, dowel_Diameter);
        }
      }
      if (record) {
        setLayer("Dowel Holes");
        if (back_One || back_Bikini) {
          writeCircle((shelf_Length/(shelf_Length/250))*i, -shelf_Height+outer_Thickness/2, cornerX, cornerY, 0);
        }
        if (back_Two) {
          if ( (((shelf_Length/250)-1)%2)==0 ) {
            writeCircle((shelf_Length/(shelf_Length/250))*i, -shelf_Height+outer_Thickness/2, cornerX, cornerY, 0);
          }
          if ( (((shelf_Length/250)-1)%2)==1 && i!=(shelf_Length/250)/2 ) {
            writeCircle((shelf_Length/(shelf_Length/250))*i, -shelf_Height+outer_Thickness/2, cornerX, cornerY, 0);
          }
        }
      }
    }
    stroke(0);
  }


























  //side edges\/
  //one piece\/
  if (back_One || back_Two) {
    if (height_Div>0) {
      line(outer_Thickness, -300-sniglet_Radius*3, outer_Thickness, -400-outer_Thickness-height_Dividers[0]+sniglet_Radius*3);
      arc(outer_Thickness+sniglet_Radius, -400-outer_Thickness-height_Dividers[0]+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);
      arc(outer_Thickness+sniglet_Radius, -400-outer_Thickness-height_Dividers[0]+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
      line(outer_Thickness+sniglet_Radius, -400-outer_Thickness-height_Dividers[0], 0, -400-outer_Thickness-height_Dividers[0]);

      line(shelf_Length-outer_Thickness, -300-sniglet_Radius*3, shelf_Length-outer_Thickness, -400-outer_Thickness-height_Dividers[0]+sniglet_Radius*3);
      arc(shelf_Length-outer_Thickness-sniglet_Radius, -400-outer_Thickness-height_Dividers[0]+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);
      arc(shelf_Length-outer_Thickness-sniglet_Radius, -400-outer_Thickness-height_Dividers[0]+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
      line(shelf_Length-outer_Thickness-sniglet_Radius, -400-outer_Thickness-height_Dividers[0], shelf_Length, -400-outer_Thickness-height_Dividers[0]);
      if (record) {
        if (back_One) {
          setLayer("Outside Cut");
        }
        if (back_Two) {
          setLayer("Outside Cut Left");
        }
        writeLine(outer_Thickness, -300-sniglet_Radius*3, outer_Thickness, -400-outer_Thickness-height_Dividers[0]+sniglet_Radius*3, cornerX, cornerY, 0);
        writeArc(outer_Thickness+sniglet_Radius, -400-outer_Thickness-height_Dividers[0]+sniglet_Radius*3, PI, PI+PI/2, cornerX, cornerY, 0);
        writeArc(outer_Thickness+sniglet_Radius, -400-outer_Thickness-height_Dividers[0]+sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
        writeLine(outer_Thickness+sniglet_Radius, -400-outer_Thickness-height_Dividers[0], 0, -400-outer_Thickness-height_Dividers[0], cornerX, cornerY, 0);

        if (back_One) {
          setLayer("Outside Cut");
        }
        if (back_Two) {
          setLayer("Outside Cut Right");
        }

        writeLine(shelf_Length-outer_Thickness, -300-sniglet_Radius*3, shelf_Length-outer_Thickness, -400-outer_Thickness-height_Dividers[0]+sniglet_Radius*3, cornerX, cornerY, 0);
        writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -400-outer_Thickness-height_Dividers[0]+sniglet_Radius*3, -PI/2, 0, cornerX, cornerY, 0);
        writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -400-outer_Thickness-height_Dividers[0]+sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
        writeLine(shelf_Length-outer_Thickness-sniglet_Radius, -400-outer_Thickness-height_Dividers[0], shelf_Length, -400-outer_Thickness-height_Dividers[0], cornerX, cornerY, 0);
      }
    }
    if (height_Div>=2) {

      line(0, -400-outer_Thickness-height_Dividers[0], 0, -400-outer_Thickness-height_Dividers[height_Div-1]);
      line(0, -400-outer_Thickness-height_Dividers[height_Div-1], outer_Thickness+sniglet_Radius, -400-outer_Thickness-height_Dividers[height_Div-1]);
      arc(outer_Thickness+sniglet_Radius, -400-outer_Thickness-height_Dividers[height_Div-1]-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
      arc(outer_Thickness+sniglet_Radius, -400-outer_Thickness-height_Dividers[height_Div-1]-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);
      line(outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-1]-sniglet_Radius*3, outer_Thickness, -shelf_Height+outer_Thickness);
      line(outer_Thickness, -shelf_Height+outer_Thickness, 100-sniglet_Radius*3, -shelf_Height+outer_Thickness);

      line(shelf_Length, -400-outer_Thickness-height_Dividers[0], shelf_Length, -400-outer_Thickness-height_Dividers[height_Div-1]);
      line(shelf_Length, -400-outer_Thickness-height_Dividers[height_Div-1], shelf_Length-outer_Thickness-sniglet_Radius, -400-outer_Thickness-height_Dividers[height_Div-1]);
      arc(shelf_Length-outer_Thickness-sniglet_Radius, -400-outer_Thickness-height_Dividers[height_Div-1]-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
      arc(shelf_Length-outer_Thickness-sniglet_Radius, -400-outer_Thickness-height_Dividers[height_Div-1]-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);
      line(shelf_Length-outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-1]-sniglet_Radius*3, shelf_Length-outer_Thickness, -shelf_Height+outer_Thickness);
      line(shelf_Length-outer_Thickness, -shelf_Height+outer_Thickness, shelf_Length-100+sniglet_Radius*3, -shelf_Height+outer_Thickness);
      if (record) {
        if (back_One) {
          setLayer("Outside Cut");
        }
        if (back_Two) {
          setLayer("Outside Cut Left");
        }
        writeLine(0, -400-outer_Thickness-height_Dividers[0], 0, -400-outer_Thickness-height_Dividers[height_Div-1], cornerX, cornerY, 0);
        writeLine(0, -400-outer_Thickness-height_Dividers[height_Div-1], outer_Thickness+sniglet_Radius, -400-outer_Thickness-height_Dividers[height_Div-1], cornerX, cornerY, 0);
        writeArc(outer_Thickness+sniglet_Radius, -400-outer_Thickness-height_Dividers[height_Div-1]-sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
        writeArc(outer_Thickness+sniglet_Radius, -400-outer_Thickness-height_Dividers[height_Div-1]-sniglet_Radius*3, PI/2, PI, cornerX, cornerY, 0);
        writeLine(outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-1]-sniglet_Radius*3, outer_Thickness, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
        writeLine(outer_Thickness, -shelf_Height+outer_Thickness, 100-sniglet_Radius*3, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
        if (back_One) {
          setLayer("Outside Cut");
        }
        if (back_Two) {
          setLayer("Outside Cut Right");
        }
        writeLine(shelf_Length, -400-outer_Thickness-height_Dividers[0], shelf_Length, -400-outer_Thickness-height_Dividers[height_Div-1], cornerX, cornerY, 0);
        writeLine(shelf_Length, -400-outer_Thickness-height_Dividers[height_Div-1], shelf_Length-outer_Thickness-sniglet_Radius, -400-outer_Thickness-height_Dividers[height_Div-1], cornerX, cornerY, 0);
        writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -400-outer_Thickness-height_Dividers[height_Div-1]-sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
        writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -400-outer_Thickness-height_Dividers[height_Div-1]-sniglet_Radius*3, 0, PI/2, cornerX, cornerY, 0);
        writeLine(shelf_Length-outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-1]-sniglet_Radius*3, shelf_Length-outer_Thickness, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
        writeLine(shelf_Length-outer_Thickness, -shelf_Height+outer_Thickness, shelf_Length-100+sniglet_Radius*3, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
      }
      if (dowel_Holes) {
        stroke(255, 0, 0);
        ellipse(outer_Thickness/2, -400-outer_Thickness-height_Dividers[0]-(height_Dividers[height_Div-1]-height_Dividers[0])/3, dowel_Diameter, dowel_Diameter);
        ellipse(outer_Thickness/2, -400-outer_Thickness-height_Dividers[0]-(height_Dividers[height_Div-1]-height_Dividers[0])*2/3, dowel_Diameter, dowel_Diameter);
        ellipse(shelf_Length-outer_Thickness/2, -400-outer_Thickness-height_Dividers[0]-(height_Dividers[height_Div-1]-height_Dividers[0])/3, dowel_Diameter, dowel_Diameter);
        ellipse(shelf_Length-outer_Thickness/2, -400-outer_Thickness-height_Dividers[0]-(height_Dividers[height_Div-1]-height_Dividers[0])*2/3, dowel_Diameter, dowel_Diameter);
        if (record) {
          setLayer("Dowel Holes");
          writeCircle(outer_Thickness/2, -400-outer_Thickness-height_Dividers[0]-(height_Dividers[height_Div-1]-height_Dividers[0])/3, cornerX, cornerY, 0);
          writeCircle(outer_Thickness/2, -400-outer_Thickness-height_Dividers[0]-(height_Dividers[height_Div-1]-height_Dividers[0])*2/3, cornerX, cornerY, 0);
          writeCircle(shelf_Length-outer_Thickness/2, -400-outer_Thickness-height_Dividers[0]-(height_Dividers[height_Div-1]-height_Dividers[0])/3, cornerX, cornerY, 0);
          writeCircle(shelf_Length-outer_Thickness/2, -400-outer_Thickness-height_Dividers[0]-(height_Dividers[height_Div-1]-height_Dividers[0])*2/3, cornerX, cornerY, 0);
        }
        stroke(0);
      }
    }
    if (height_Div==1) {

      line(0, -400-outer_Thickness-height_Dividers[0], 0, -shelf_Height+outer_Thickness);
      line(0, -shelf_Height+outer_Thickness, 100-sniglet_Radius*3, -shelf_Height+outer_Thickness);
      line(shelf_Length, -400-outer_Thickness-height_Dividers[0], shelf_Length, -shelf_Height+outer_Thickness);
      line(shelf_Length, -shelf_Height+outer_Thickness, shelf_Length-100+sniglet_Radius*3, -shelf_Height+outer_Thickness);
      if (record) {
        if (back_One) {
          setLayer("Outside Cut");
        }
        if (back_Two) {
          setLayer("Outside Cut Left");
        }
        writeLine(0, -400-outer_Thickness-height_Dividers[0], 0, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
        writeLine(0, -shelf_Height+outer_Thickness, 100-sniglet_Radius*3, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
        if (back_One) {
          setLayer("Outside Cut");
        }
        if (back_Two) {
          setLayer("Outside Cut Right");
        }
        writeLine(shelf_Length, -400-outer_Thickness-height_Dividers[0], shelf_Length, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
        writeLine(shelf_Length, -shelf_Height+outer_Thickness, shelf_Length-100+sniglet_Radius*3, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
      }
      if (dowel_Holes) {
        stroke(255, 0, 0);
        ellipse(outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-outer_Thickness*2-height_Dividers[0]-400)/3, dowel_Diameter, dowel_Diameter);
        ellipse(outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-outer_Thickness*2-height_Dividers[0]-400)*2/3, dowel_Diameter, dowel_Diameter);
        ellipse(shelf_Length-outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-outer_Thickness*2-height_Dividers[0]-400)/3, dowel_Diameter, dowel_Diameter);
        ellipse(shelf_Length-outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-outer_Thickness*2-height_Dividers[0]-400)*2/3, dowel_Diameter, dowel_Diameter);
        if (record) {
          setLayer("Dowel Holes");
          writeCircle(outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-outer_Thickness*2-height_Dividers[0]-400)/3, cornerX, cornerY, 0);
          writeCircle(outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-outer_Thickness*2-height_Dividers[0]-400)*2/3, cornerX, cornerY, 0);
          writeCircle(shelf_Length-outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-outer_Thickness*2-height_Dividers[0]-400)/3, cornerX, cornerY, 0);
          writeCircle(shelf_Length-outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-outer_Thickness*2-height_Dividers[0]-400)*2/3, cornerX, cornerY, 0);
        }
        stroke(0);
      }
    }

    if (height_Div==0) {

      line(outer_Thickness, -300-sniglet_Radius*3, outer_Thickness, -400-(shelf_Height-400)/2+sniglet_Radius*3);
      arc(outer_Thickness+sniglet_Radius, -400-(shelf_Height-400)/2+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);
      arc(outer_Thickness+sniglet_Radius, -400-(shelf_Height-400)/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
      line(outer_Thickness+sniglet_Radius, -400-(shelf_Height-400)/2, 0, -400-(shelf_Height-400)/2);

      line(0, -400-(shelf_Height-400)/2, 0, -shelf_Height+outer_Thickness);
      line(0, -shelf_Height+outer_Thickness, 100-sniglet_Radius*3, -shelf_Height+outer_Thickness);

      line(shelf_Length-outer_Thickness, -300-sniglet_Radius*3, shelf_Length-outer_Thickness, -400-(shelf_Height-400)/2+sniglet_Radius*3);
      arc(shelf_Length-outer_Thickness-sniglet_Radius, -400-(shelf_Height-400)/2+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);
      arc(shelf_Length-outer_Thickness-sniglet_Radius, -400-(shelf_Height-400)/2+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
      line(shelf_Length-outer_Thickness-sniglet_Radius, -400-(shelf_Height-400)/2, shelf_Length, -400-(shelf_Height-400)/2);

      line(shelf_Length, -400-(shelf_Height-400)/2, shelf_Length, -shelf_Height+outer_Thickness);
      line(shelf_Length, -shelf_Height+outer_Thickness, shelf_Length-100+sniglet_Radius*3, -shelf_Height+outer_Thickness);
      if (record) {
        if (back_One) {
          setLayer("Outside Cut");
        }
        if (back_Two) {
          setLayer("Outside Cut Left");
        }        
        writeLine(outer_Thickness, -300-sniglet_Radius*3, outer_Thickness, -400-(shelf_Height-400)/2+sniglet_Radius*3, cornerX, cornerY, 0);
        writeArc(outer_Thickness+sniglet_Radius, -400-(shelf_Height-400)/2+sniglet_Radius*3, PI, PI+PI/2, cornerX, cornerY, 0);
        writeArc(outer_Thickness+sniglet_Radius, -400-(shelf_Height-400)/2+sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
        writeLine(outer_Thickness+sniglet_Radius, -400-(shelf_Height-400)/2, 0, -400-(shelf_Height-400)/2, cornerX, cornerY, 0);

        writeLine(0, -400-(shelf_Height-400)/2, 0, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
        writeLine(0, -shelf_Height+outer_Thickness, 100-sniglet_Radius*3, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);

        if (back_One) {
          setLayer("Outside Cut");
        }
        if (back_Two) {
          setLayer("Outside Cut Right");
        }
        writeLine(shelf_Length-outer_Thickness, -300-sniglet_Radius*3, shelf_Length-outer_Thickness, -400-(shelf_Height-400)/2+sniglet_Radius*3, cornerX, cornerY, 0);
        writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -400-(shelf_Height-400)/2+sniglet_Radius*3, -PI/2, 0, cornerX, cornerY, 0);
        writeArc(shelf_Length-outer_Thickness-sniglet_Radius, -400-(shelf_Height-400)/2+sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
        writeLine(shelf_Length-outer_Thickness-sniglet_Radius, -400-(shelf_Height-400)/2, shelf_Length, -400-(shelf_Height-400)/2, cornerX, cornerY, 0);

        writeLine(shelf_Length, -400-(shelf_Height-400)/2, shelf_Length, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
        writeLine(shelf_Length, -shelf_Height+outer_Thickness, shelf_Length-100+sniglet_Radius*3, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
      }
      if (dowel_Holes) {
        stroke(255, 0, 0);
        ellipse(outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-400-(shelf_Height-400)/2)/3, dowel_Diameter, dowel_Diameter);
        ellipse(outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-400-(shelf_Height-400)/2)*2/3, dowel_Diameter, dowel_Diameter);
        ellipse(shelf_Length-outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-400-(shelf_Height-400)/2)/3, dowel_Diameter, dowel_Diameter);
        ellipse(shelf_Length-outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-400-(shelf_Height-400)/2)*2/3, dowel_Diameter, dowel_Diameter);
        if (record) {
          setLayer("Dowel Holes");
          writeCircle(outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-400-(shelf_Height-400)/2)/3, cornerX, cornerY, 0);
          writeCircle(outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-400-(shelf_Height-400)/2)*2/3, cornerX, cornerY, 0);
          writeCircle(shelf_Length-outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-400-(shelf_Height-400)/2)/3, cornerX, cornerY, 0);
          writeCircle(shelf_Length-outer_Thickness/2, -shelf_Height+outer_Thickness+(shelf_Height-400-(shelf_Height-400)/2)*2/3, cornerX, cornerY, 0);
        }
        stroke(0);
      }
    }
  }
  //one piece/\












  //bikiki\/
  if (back_Bikini && height_Div>=2) {
    //bottom piece\/
    line(outer_Thickness, -300-sniglet_Radius*3, outer_Thickness, bot_Third_b+sniglet_Radius*3);
    arc(outer_Thickness+sniglet_Radius, bot_Third_b+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);
    arc(outer_Thickness+sniglet_Radius, bot_Third_b+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
    line(outer_Thickness+sniglet_Radius, bot_Third_b, 0, bot_Third_b);
    line(0, bot_Third_b, 0, bot_Third_t);
    line(0, bot_Third_t, outer_Thickness+sniglet_Radius, bot_Third_t);
    arc(outer_Thickness+sniglet_Radius, bot_Third_t-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
    arc(outer_Thickness+sniglet_Radius, bot_Third_t-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);
    line(outer_Thickness, bot_Third_t-sniglet_Radius*3, outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-2]+inner_Thickness/2);

    line(outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-2]+inner_Thickness/2, shelf_Length-outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-2]+inner_Thickness/2);

    line(shelf_Length-outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-2]+inner_Thickness/2, shelf_Length-outer_Thickness, bot_Third_t-sniglet_Radius*3);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, bot_Third_t-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, bot_Third_t-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
    line(shelf_Length-outer_Thickness-sniglet_Radius, bot_Third_t, shelf_Length, bot_Third_t);
    line(shelf_Length, bot_Third_t, shelf_Length, bot_Third_b);
    line(shelf_Length, bot_Third_b, shelf_Length-outer_Thickness-sniglet_Radius, bot_Third_b);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, bot_Third_b+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, bot_Third_b+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);
    line(shelf_Length-outer_Thickness, bot_Third_b+sniglet_Radius*3, shelf_Length-outer_Thickness, -300-sniglet_Radius*3);
    if (record) {
      setLayer("Outside Cut");
      writeLine(outer_Thickness, -300-sniglet_Radius*3, outer_Thickness, bot_Third_b+sniglet_Radius*3, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, bot_Third_b+sniglet_Radius*3, PI, PI+PI/2, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, bot_Third_b+sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
      writeLine(outer_Thickness+sniglet_Radius, bot_Third_b, 0, bot_Third_b, cornerX, cornerY, 0);
      writeLine(0, bot_Third_b, 0, bot_Third_t, cornerX, cornerY, 0);
      writeLine(0, bot_Third_t, outer_Thickness+sniglet_Radius, bot_Third_t, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, bot_Third_t-sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, bot_Third_t-sniglet_Radius*3, PI/2, PI, cornerX, cornerY, 0);
      writeLine(outer_Thickness, bot_Third_t-sniglet_Radius*3, outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-2]+inner_Thickness/2, cornerX, cornerY, 0);

      writeLine(outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-2]+inner_Thickness/2, shelf_Length-outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-2]+inner_Thickness/2, cornerX, cornerY, 0);

      writeLine(shelf_Length-outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-2]+inner_Thickness/2, shelf_Length-outer_Thickness, bot_Third_t-sniglet_Radius*3, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, bot_Third_t-sniglet_Radius*3, 0, PI/2, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, bot_Third_t-sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
      writeLine(shelf_Length-outer_Thickness-sniglet_Radius, bot_Third_t, shelf_Length, bot_Third_t, cornerX, cornerY, 0);
      writeLine(shelf_Length, bot_Third_t, shelf_Length, bot_Third_b, cornerX, cornerY, 0);
      writeLine(shelf_Length, bot_Third_b, shelf_Length-outer_Thickness-sniglet_Radius, bot_Third_b, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, bot_Third_b+sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, bot_Third_b+sniglet_Radius*3, -PI/2, 0, cornerX, cornerY, 0);
      writeLine(shelf_Length-outer_Thickness, bot_Third_b+sniglet_Radius*3, shelf_Length-outer_Thickness, -300-sniglet_Radius*3, cornerX, cornerY, 0);
    }
    //bottom piece/\

    //top piece\/
    line(100-sniglet_Radius*3, -shelf_Height+outer_Thickness, outer_Thickness, -shelf_Height+outer_Thickness);
    line(outer_Thickness, -shelf_Height+outer_Thickness, outer_Thickness, top_Third_t-sniglet_Radius*3);
    arc(outer_Thickness+sniglet_Radius, top_Third_t-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);
    arc(outer_Thickness+sniglet_Radius, top_Third_t-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
    line(outer_Thickness+sniglet_Radius, top_Third_t, 0, top_Third_t);
    line(0, top_Third_t, 0, top_Third_b);
    line(0, top_Third_b, outer_Thickness+sniglet_Radius, top_Third_b);
    arc(outer_Thickness+sniglet_Radius, top_Third_b+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, PI/2);
    arc(outer_Thickness+sniglet_Radius, top_Third_b+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);
    line(outer_Thickness, top_Third_b+sniglet_Radius*3, outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2);

    line(outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, shelf_Length-outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2);

    line(shelf_Length-outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, shelf_Length-outer_Thickness, top_Third_b+sniglet_Radius*3);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, top_Third_b+sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, top_Third_b+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
    line(shelf_Length-outer_Thickness-sniglet_Radius, top_Third_b, shelf_Length, top_Third_b);
    line(shelf_Length, top_Third_b, shelf_Length, top_Third_t);
    line(shelf_Length, top_Third_t, shelf_Length-outer_Thickness-sniglet_Radius, top_Third_t);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, top_Third_t-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI+PI/2);
    arc(shelf_Length-outer_Thickness-sniglet_Radius, top_Third_t-sniglet_Radius*3, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);
    line(shelf_Length-outer_Thickness, top_Third_t-sniglet_Radius*3, shelf_Length-outer_Thickness, -shelf_Height+outer_Thickness);
    line(shelf_Length-outer_Thickness, -shelf_Height+outer_Thickness, shelf_Length-100+sniglet_Radius*3, -shelf_Height+outer_Thickness);
    if (record) {
      setLayer("Outside Cut");
      writeLine(100-sniglet_Radius*3, -shelf_Height+outer_Thickness, outer_Thickness, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
      writeLine(outer_Thickness, -shelf_Height+outer_Thickness, outer_Thickness, top_Third_t-sniglet_Radius*3, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, top_Third_t-sniglet_Radius*3, PI/2, PI, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, top_Third_t-sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
      writeLine(outer_Thickness+sniglet_Radius, top_Third_t, 0, top_Third_t, cornerX, cornerY, 0);
      writeLine(0, top_Third_t, 0, top_Third_b, cornerX, cornerY, 0);
      writeLine(0, top_Third_b, outer_Thickness+sniglet_Radius, top_Third_b, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, top_Third_b+sniglet_Radius, -PI/2, PI/2, cornerX, cornerY, 0);
      writeArc(outer_Thickness+sniglet_Radius, top_Third_b+sniglet_Radius*3, PI, PI+PI/2, cornerX, cornerY, 0);
      writeLine(outer_Thickness, top_Third_b+sniglet_Radius*3, outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, cornerX, cornerY, 0);

      writeLine(outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, shelf_Length-outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, cornerX, cornerY, 0);

      writeLine(shelf_Length-outer_Thickness, -400-outer_Thickness-height_Dividers[height_Div-1]-inner_Thickness/2, shelf_Length-outer_Thickness, top_Third_b+sniglet_Radius*3, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, top_Third_b+sniglet_Radius*3, -PI/2, 0, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, top_Third_b+sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
      writeLine(shelf_Length-outer_Thickness-sniglet_Radius, top_Third_b, shelf_Length, top_Third_b, cornerX, cornerY, 0);
      writeLine(shelf_Length, top_Third_b, shelf_Length, top_Third_t, cornerX, cornerY, 0);
      writeLine(shelf_Length, top_Third_t, shelf_Length-outer_Thickness-sniglet_Radius, top_Third_t, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, top_Third_t-sniglet_Radius, PI/2, PI+PI/2, cornerX, cornerY, 0);
      writeArc(shelf_Length-outer_Thickness-sniglet_Radius, top_Third_t-sniglet_Radius*3, 0, PI/2, cornerX, cornerY, 0);
      writeLine(shelf_Length-outer_Thickness, top_Third_t-sniglet_Radius*3, shelf_Length-outer_Thickness, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
      writeLine(shelf_Length-outer_Thickness, -shelf_Height+outer_Thickness, shelf_Length-100+sniglet_Radius*3, -shelf_Height+outer_Thickness, cornerX, cornerY, 0);
    }
    if (dowel_Holes) {
      stroke(255, 0, 0);
      ellipse(outer_Thickness/2, -shelf_Height+outer_Thickness-(top_Third_t-top_Third_b)-(top_Third_t-top_Third_b)/2, dowel_Diameter, dowel_Diameter);
      ellipse(shelf_Length-outer_Thickness/2, -shelf_Height+outer_Thickness-(top_Third_t-top_Third_b)-(top_Third_t-top_Third_b)/2, dowel_Diameter, dowel_Diameter);
      ellipse(outer_Thickness/2, bot_Third_b+(bot_Third_t-bot_Third_b)/2, dowel_Diameter, dowel_Diameter);
      ellipse(shelf_Length-outer_Thickness/2, bot_Third_b+(bot_Third_t-bot_Third_b)/2, dowel_Diameter, dowel_Diameter);
      if (record) {
        setLayer("Dowel Holes");
        writeCircle(outer_Thickness/2, -shelf_Height+outer_Thickness-(top_Third_t-top_Third_b)-(top_Third_t-top_Third_b)/2, cornerX, cornerY, 0);
        writeCircle(shelf_Length-outer_Thickness/2, -shelf_Height+outer_Thickness-(top_Third_t-top_Third_b)-(top_Third_t-top_Third_b)/2, cornerX, cornerY, 0);
        writeCircle(outer_Thickness/2, bot_Third_b+(bot_Third_t-bot_Third_b)/2, cornerX, cornerY, 0);
        writeCircle(shelf_Length-outer_Thickness/2, bot_Third_b+(bot_Third_t-bot_Third_b)/2, cornerX, cornerY, 0);
      }
      stroke(0);
    }
    //top piece/\
  }
  //bikini/\
  //side edges/\

  //bottom support hole\/
  stroke(0, 127, 0);
  arc(shelf_Length-100-sniglet_Radius*3, -400+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);
  arc(shelf_Length-100-sniglet_Radius, -400+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI);
  line(shelf_Length-100, -400+sniglet_Radius, shelf_Length-100, -400-outer_Thickness-sniglet_Radius);
  arc(shelf_Length-100-sniglet_Radius, -400-outer_Thickness-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, TWO_PI);
  arc(shelf_Length-100-sniglet_Radius*3, -400-outer_Thickness-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI/2);

  line(shelf_Length-100-sniglet_Radius*3, -400-outer_Thickness, shelf_Length/2, -400-outer_Thickness);
  line(shelf_Length/2, -400-outer_Thickness, 100+sniglet_Radius*3, -400-outer_Thickness);

  arc(100+sniglet_Radius*3, -400-outer_Thickness-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI/2, PI);
  arc(100+sniglet_Radius, -400-outer_Thickness-sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, TWO_PI);
  line(100, -400-outer_Thickness-sniglet_Radius, 100, -400+sniglet_Radius);
  arc(100+sniglet_Radius, -400+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI);
  arc(100+sniglet_Radius*3, -400+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);

  line(100+sniglet_Radius*3, -400, shelf_Length/2, -400);
  line(shelf_Length/2, -400, shelf_Length-100-sniglet_Radius*3, -400);

  //line(shelf_Length/2, -400,shelf_Length/2,-400-outer_Thickness);

  if (record) {
    if(back_Two){
    setLayer("Inside Cut Right");
    writeArc(shelf_Length-100-sniglet_Radius*3, -400+sniglet_Radius, -PI/2, 0, cornerX, cornerY, 0);
    writeArc(shelf_Length-100-sniglet_Radius, -400+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
    writeLine(shelf_Length-100, -400+sniglet_Radius, shelf_Length-100, -400-outer_Thickness-sniglet_Radius, cornerX, cornerY, 0);
    writeArc(shelf_Length-100-sniglet_Radius, -400-outer_Thickness-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
    writeArc(shelf_Length-100-sniglet_Radius*3, -400-outer_Thickness-sniglet_Radius, 0, PI/2, cornerX, cornerY, 0);

    writeLine(shelf_Length-100-sniglet_Radius*3, -400-outer_Thickness, shelf_Length/2, -400-outer_Thickness, cornerX, cornerY, 0);
    writeLine(shelf_Length/2, -400, shelf_Length-100-sniglet_Radius*3, -400, cornerX, cornerY, 0);

    writeLine(shelf_Length/2, -400, shelf_Length/2, -400-outer_Thickness, cornerX, cornerY, 0);
    setLayer("Inside Cut Left");
    writeLine(shelf_Length/2, -400, shelf_Length/2, -400-outer_Thickness, cornerX, cornerY, 0);

    writeLine(shelf_Length/2, -400-outer_Thickness, 100+sniglet_Radius*3, -400-outer_Thickness, cornerX, cornerY, 0);
    writeLine(100+sniglet_Radius*3, -400, shelf_Length/2, -400, cornerX, cornerY, 0);    

    writeArc(100+sniglet_Radius*3, -400-outer_Thickness-sniglet_Radius, PI/2, PI, cornerX, cornerY, 0);
    writeArc(100+sniglet_Radius, -400-outer_Thickness-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
    writeLine(100, -400-outer_Thickness-sniglet_Radius, 100, -400+sniglet_Radius, cornerX, cornerY, 0);
    writeArc(100+sniglet_Radius, -400+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
    writeArc(100+sniglet_Radius*3, -400+sniglet_Radius, PI, PI+PI/2, cornerX, cornerY, 0);

    //writeLine(100+sniglet_Radius*3, -400, shelf_Length-100-sniglet_Radius*3, -400, cornerX, cornerY, 0);
    }
    if(back_One || back_Bikini){
    setLayer("Inside Cut");
    writeArc(shelf_Length-100-sniglet_Radius*3, -400+sniglet_Radius, -PI/2, 0, cornerX, cornerY, 0);
    writeArc(shelf_Length-100-sniglet_Radius, -400+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
    writeLine(shelf_Length-100, -400+sniglet_Radius, shelf_Length-100, -400-outer_Thickness-sniglet_Radius, cornerX, cornerY, 0);
    writeArc(shelf_Length-100-sniglet_Radius, -400-outer_Thickness-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
    writeArc(shelf_Length-100-sniglet_Radius*3, -400-outer_Thickness-sniglet_Radius, 0, PI/2, cornerX, cornerY, 0);

    writeLine(shelf_Length-100-sniglet_Radius*3, -400-outer_Thickness, 100+sniglet_Radius*3, -400-outer_Thickness, cornerX, cornerY, 0);
    writeLine(100+sniglet_Radius*3, -400, shelf_Length-100-sniglet_Radius*3, -400, cornerX, cornerY, 0);


    //writeLine(shelf_Length/2, -400-outer_Thickness, 100+sniglet_Radius*3, -400-outer_Thickness, cornerX, cornerY, 0);
    //writeLine(100+sniglet_Radius*3, -400, shelf_Length/2, -400, cornerX, cornerY, 0);    

    writeArc(100+sniglet_Radius*3, -400-outer_Thickness-sniglet_Radius, PI/2, PI, cornerX, cornerY, 0);
    writeArc(100+sniglet_Radius, -400-outer_Thickness-sniglet_Radius, PI, TWO_PI, cornerX, cornerY, 0);
    writeLine(100, -400-outer_Thickness-sniglet_Radius, 100, -400+sniglet_Radius, cornerX, cornerY, 0);
    writeArc(100+sniglet_Radius, -400+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
    writeArc(100+sniglet_Radius*3, -400+sniglet_Radius, PI, PI+PI/2, cornerX, cornerY, 0);

    //writeLine(100+sniglet_Radius*3, -400, shelf_Length-100-sniglet_Radius*3, -400, cornerX, cornerY, 0);
    }
  }
  stroke(0);
  //bottom support hole/\







  //top line\/
  if (back_One || back_Bikini) {
    arc(100-sniglet_Radius*3, -shelf_Height+outer_Thickness+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);
    arc(100-sniglet_Radius, -shelf_Height+outer_Thickness+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI);
    line(100, -shelf_Height+outer_Thickness+sniglet_Radius, 100, -shelf_Height);

    line(100, -shelf_Height, shelf_Length-100, -shelf_Height);

    line(shelf_Length-100, -shelf_Height, shelf_Length-100, -shelf_Height+outer_Thickness+sniglet_Radius);
    arc(shelf_Length-100+sniglet_Radius, -shelf_Height+outer_Thickness+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI);
    arc(shelf_Length-100+sniglet_Radius*3, -shelf_Height+outer_Thickness+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);
    if (record) {
      setLayer("Outside Cut");
      writeArc(100-sniglet_Radius*3, -shelf_Height+outer_Thickness+sniglet_Radius, -PI/2, 0, cornerX, cornerY, 0);
      writeArc(100-sniglet_Radius, -shelf_Height+outer_Thickness+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
      writeLine(100, -shelf_Height+outer_Thickness+sniglet_Radius, 100, -shelf_Height, cornerX, cornerY, 0);

      writeLine(100, -shelf_Height, shelf_Length-100, -shelf_Height, cornerX, cornerY, 0);

      writeLine(shelf_Length-100, -shelf_Height, shelf_Length-100, -shelf_Height+outer_Thickness+sniglet_Radius, cornerX, cornerY, 0);
      writeArc(shelf_Length-100+sniglet_Radius, -shelf_Height+outer_Thickness+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
      writeArc(shelf_Length-100+sniglet_Radius*3, -shelf_Height+outer_Thickness+sniglet_Radius, PI, PI+PI/2, cornerX, cornerY, 0);
    }
  }

  if (back_Two) {
    arc(100-sniglet_Radius*3, -shelf_Height+outer_Thickness+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, -PI/2, 0);
    arc(100-sniglet_Radius, -shelf_Height+outer_Thickness+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI);
    line(100, -shelf_Height+outer_Thickness+sniglet_Radius, 100, -shelf_Height);

    line(100, -shelf_Height, shelf_Length/2, -shelf_Height);
    line(shelf_Length/2, -shelf_Height, shelf_Length/2, -300);
    line(shelf_Length/2, -shelf_Height, shelf_Length-100, -shelf_Height);

    line(shelf_Length-100, -shelf_Height, shelf_Length-100, -shelf_Height+outer_Thickness+sniglet_Radius);
    arc(shelf_Length-100+sniglet_Radius, -shelf_Height+outer_Thickness+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, 0, PI);
    arc(shelf_Length-100+sniglet_Radius*3, -shelf_Height+outer_Thickness+sniglet_Radius, sniglet_Radius*2, sniglet_Radius*2, PI, PI+PI/2);
    if (record) {
      setLayer("Outside Cut Left");
      writeArc(100-sniglet_Radius*3, -shelf_Height+outer_Thickness+sniglet_Radius, -PI/2, 0, cornerX, cornerY, 0);
      writeArc(100-sniglet_Radius, -shelf_Height+outer_Thickness+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
      writeLine(100, -shelf_Height+outer_Thickness+sniglet_Radius, 100, -shelf_Height, cornerX, cornerY, 0);

      writeLine(100, -shelf_Height, shelf_Length/2, -shelf_Height, cornerX, cornerY, 0);
      writeLine(shelf_Length/2, -shelf_Height, shelf_Length/2, -300, cornerX, cornerY, 0);

      setLayer("Outside Cut Right");
      writeLine(shelf_Length/2, -shelf_Height, shelf_Length/2, -300, cornerX, cornerY, 0);
      writeLine(shelf_Length/2, -shelf_Height, shelf_Length-100, -shelf_Height, cornerX, cornerY, 0);

      writeLine(shelf_Length-100, -shelf_Height, shelf_Length-100, -shelf_Height+outer_Thickness+sniglet_Radius, cornerX, cornerY, 0);
      writeArc(shelf_Length-100+sniglet_Radius, -shelf_Height+outer_Thickness+sniglet_Radius, 0, PI, cornerX, cornerY, 0);
      writeArc(shelf_Length-100+sniglet_Radius*3, -shelf_Height+outer_Thickness+sniglet_Radius, PI, PI+PI/2, cornerX, cornerY, 0);
    }
  }
  //top line/\
  popMatrix();
}