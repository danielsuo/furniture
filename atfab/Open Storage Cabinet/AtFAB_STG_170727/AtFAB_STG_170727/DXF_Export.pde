void writeHeader () {

  //output.println("0");
  //output.println("SECTION");

  //output.println("2");
  //output.println("HEADER");
  //output.println("0");
  //output.println("$LUNITS");
  //output.println("70");
  //output.println("2");
  //output.println("9");

  //output.println("ENDSEC");
  output.println("0");
  output.println("SECTION");
  output.println("2");
  output.println("ENTITIES");
}

void setLayer(String theLayer) {
  layer = theLayer;
}

void writeFooter() {
  output.println("0");
  output.println("ENDSEC");
  output.println("0");
  output.println("EOF");

  output.flush();
  output.close();
}

void writeLine(float x1,float y1,float x2, float y2, float trans_x, float trans_y, float rot) {

  if(rot == 0) {
    line_x1 = x1 + trans_x;
    line_y1 = y1 + trans_y;
    line_x2 = x2 + trans_x;
    line_y2 = y2 + trans_y;
  }
  if(rot == PI/2) {
    line_x1 = -y1 + trans_x;
    line_y1 = x1 + trans_y;
    line_x2 = -y2 + trans_x;
    line_y2 = x2 + trans_y;
  }
  if(rot == PI) {
    line_x1 = trans_x - x1;
    line_y1 = trans_y - y1;
    line_x2 = trans_x - x2;
    line_y2 = trans_y - y2;
  }
  if(rot == -PI/2) {
    line_x1 = y1 + trans_x;
    line_y1 = -x1 + trans_y;
    line_x2 = y2 + trans_x;
    line_y2 = -x2 + trans_y;
  }
  output.println("0");
  output.println("LINE");
  output.println("8");
  output.println(layer);

  output.println("10");
  output.println(line_x1);
  output.println("20");
  output.println(line_y1);
  output.println("30");
  output.println("0");

  output.println("11");
  output.println(line_x2);
  output.println("21");
  output.println(line_y2);
  output.println("31");
  output.println("0");
}

void writeArc(float x1, float y1, float start, float end, float trans_x, float trans_y, float rot) {
  if(rot == 0) {
    arc_x = x1 + trans_x;
    arc_y = y1 + trans_y;
  }
  if(rot == PI/2) {
    arc_x = -y1 + trans_x;
    arc_y = x1 + trans_y;
  }
  if(rot == PI) {
    arc_x = -x1 + trans_x;
    arc_y = -y1 + trans_y;
  }
  if(rot == -PI/2) {
    arc_x = y1 + trans_x;
    arc_y = -x1 + trans_y;
  }

  new_start = start + rot;
  new_end = end + rot;

  output.println("0");
  output.println("ARC");
  output.println("8");
  output.println(layer);

  output.println("10");
  output.println(arc_x);
  output.println("20");
  output.println(arc_y);
  output.println("30");
  output.println("0");

  output.println("40");
  output.println(sniglet_Radius);
  output.println("50");
  output.println(degrees(new_start));
  output.println("51");
  output.println(degrees(new_end));
}

void writeCircle(float x1, float y1, float trans_x, float trans_y, float rot) {
  if(rot == 0) {
    circ_x = x1 + trans_x;
    circ_y = y1 + trans_y;
  }
  if(rot == PI/2) {
    circ_x = -y1 + trans_x;
    circ_y = x1 + trans_y;
  }
  if(rot == PI) {
    circ_x = -x1 + trans_x;
    circ_y = -y1 + trans_y;
  }
  if(rot == -PI/2) {
    circ_x = y1 + trans_x;
    circ_y = -x1 + trans_y;
  }

  output.println("0");
  output.println("CIRCLE");
  output.println("8");
  output.println(layer);
  output.println("10");
  output.println(circ_x);
  output.println("20");
  output.println(circ_y);
  output.println("30");
  output.println("0");
  output.println("40");
  output.println(dowel_Radius);
}