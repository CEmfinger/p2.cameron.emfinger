


  PFont font;
  // Button coords
  float b1X, b1Y, b2X, b2Y, b3X, b3Y,
  b4X, b4Y, b5X, b5Y, b6X, b6Y, bBX, bBY, bAX, bAY, bSX, bSY, bCX, bCY;
  float buttonSize;
  color baseColor, strokeColor;
  color highlightColor, bC1, bC2, bC3, bC4, bC5, bC6, bC7, bCS, bCA, bCC; 
  boolean bOver1, bOver2, bOver3, bOver4, bOver5, bOver6, bOver7, bOver8, bOver9, bOver10 = false;
  boolean bFloorOpenDoor, bFloor1, bFloor2, bFloor3, bBack, bPhone, bStop, bAlarm, bCancel= false;
  int s, timer, currentFloor, oFont, phoneFont, alarmFont, stopFont;
  int state = 0;
  String oDoor, dest, phone, emerg, stop, alarm;
  
void setup() {
  size(360, 720, P2D);
  
  baseColor = color(255,255,255);
  
  strokeColor = color(100,100,100);  
  highlightColor = color(255, 0, 0);
  
  bC1 = bC2 = bC3 = bC4 = bC5 = bC6 = bC7 = bCS = bCA = bCC = strokeColor;
  
    b1X = (width*0.080);
  b1Y = (height*0.175);
  
    b2X = (width*0.220);
  b2Y = (height*0.550);
    b3X = (width*0.500);
  b3Y = (height*0.550);
    b4X = (width*0.780);
  b4Y = (height*0.550);
  
    b5X = (width*0.080);
  b5Y = (height*0.680);
    b6X = (width*0.080);
  b6Y = (height*0.840);
  
    bBX = (width*0.080);
  bBY = (height*0.040);
  
    bAX = (width*0.080);
  bAY = (height*0.2);
    bSX = (width*0.080);
  bSY = (height*0.5);
  
    bCX = (width*0.080);
  bCY = (height*0.840);
  
  
  buttonSize = 35;
  currentFloor = 1;
  
  oDoor = "Open Door";
  oFont = 50;
  phone = "Contacting Monitoring Services...";
  phoneFont = 50;
  stop = "Stopping Elevator...";
  stopFont = 50;
  alarm = "Alarm will sound in     3.. 2.. 1..";
  alarmFont = 50;
  
  //Creating a font 
  font = createFont("Arial",20,true);
  textFont(font,50);
  

}

void draw() {
  background(25);
  s = second();
  update(mouseX, mouseY);
  
  switch(state) {
   case 0:

  // Current floor background
  pushStyle();
  textFont(font,35);
  fill(baseColor);
  text("Current Floor:", width*0.100, height*0.100);
  popStyle();
  
  //Background for Destination section
  pushStyle();
  fill(baseColor);
  textFont(font, 40);
  text(currentFloor, width*0.750, height*0.103);
  popStyle();
  
  // Destination wording 
  stroke(strokeColor);
  strokeWeight(8);
  fill(baseColor);
  rect(width*0.080, height*0.350, 300, 200, 20);
  fill(strokeColor);
  text("Destination:", width*0.120, height*0.450);
  
  //Drawwing button
  pushStyle();
  pushMatrix();
  stroke(bC1);
  strokeWeight(8);
  fill(baseColor);
  rect(b1X, b1Y, 300, 75, 20);
  popMatrix();

  //Button Characters
  pushStyle();
  fill(bC1);
  textFont(font,oFont);
  text(oDoor, b1X+20, b1Y+55);
  popStyle();
  

  

  //Drawwing button
  pushStyle();
  pushMatrix();
  stroke(bC2);
  strokeWeight(8);
  fill(baseColor);
  polygon(b2X, b2Y, buttonSize, 200);  // Circle
  popMatrix();
  popStyle();
  //Button Characters
  fill(bC2);
  text("1", b2X-15, b2Y+15);

   
  //Drawwing button
  pushStyle();
  pushMatrix();
  stroke(bC3);
  strokeWeight(8);
  fill(baseColor);
  polygon(b3X, b3Y, buttonSize, 200);  // Circle
  popMatrix();
  popStyle();
  //Button Characters
  fill(bC3);
  text("2", b3X-15, b3Y+15);

    
  //Drawwing button
  pushStyle();
  pushMatrix();
  stroke(bC4);
  strokeWeight(8);
  fill(baseColor);
  polygon(b4X, b4Y, buttonSize, 200);  // Circle
  popMatrix();
  popStyle();
  //Button Characters
  fill(bC4);
  text("3", b4X-15, b4Y+15);
  
  
  //Drawwing Phone button
  pushStyle();
  pushMatrix();
  stroke(bC5);
  strokeWeight(8);
  fill(baseColor);
  rect(b5X, b5Y, 300, 75, 20);
  //polygon(b5X, b5Y, buttonSize, 100);  // Hexagon
  popMatrix();
  popStyle();
  //Button Characters
  fill(bC5);
  text("Phone", b5X+75, b5Y+55);

  //Drawwing Emergency button
  pushStyle();
  pushMatrix();
  stroke(bC6);
  strokeWeight(8);
  fill(baseColor);
  rect(b6X, b6Y, 300, 75, 20);
 // polygon(b6X, b6Y, buttonSize, 100);  // Hexagon
  popMatrix();
  popStyle();
  //Button Characters
  fill(bC6);
  text("Emergency", b6X+22, b6Y+55);

  if (s == timer) {
    bC1 = bC2 = bC3 = bC4 = bC5 = bC6 = bC7 = color(100,100,100);
  if (bFloorOpenDoor == true) {oDoor = "Open Door"; oFont = 50;}
  if (bPhone == true) {phone = "Contacting Monitoring Services..."; phoneFont = 40;}//Monitor change
  if (bFloor1 == true) {currentFloor = 1;}
  if (bFloor2 == true) {currentFloor = 2;}
  if (bFloor3 == true) {currentFloor = 3;}
    bFloorOpenDoor = bFloor1 = bFloor2 = bFloor3 = false;
  }
  break; // Break case 0:
  /////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////
  case 1:
  
  //Drawwing Back button
  pushStyle();
  pushMatrix();
  stroke(bC7);
  strokeWeight(8);
  fill(baseColor);
  rect(bBX, bBY, 75, 75, 20);
  popMatrix();
  popStyle();
  //Button Characters
  pushStyle();
  fill(bC7);
  textFont(font,25);
  text("Back", bBX+8, bBY+45);
  popStyle();
  
  
  
  pushStyle();
  textFont(font,50);
  fill(baseColor);
  textFont(font, phoneFont);
  text(phone, width*0.17, height*0.3, 300,600);
  popStyle();
  
  
  //Drawwing Emergency button
  pushStyle();
  pushMatrix();
  stroke(bC6);
  strokeWeight(8);
  fill(baseColor);
  rect(b6X, b6Y, 300, 75, 20);
  popMatrix();
  popStyle();
  //Button Characters
  fill(bC6);
  text("Emergency", b6X+22, b6Y+55);
  
  if (s == timer) {
    bC5 = bC6 = bC7 = color(100,100,100);
  if (bPhone == true) {phone = "   Connected Speaking With:   -- -- Dang -- --"; phoneFont = 40;}//Monitor change
    bFloorOpenDoor = bFloor1 = bFloor2 = bFloor3 = bPhone = false;
  }
  break; //Break case 1: Phone
  /////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////
  case 2: // Emergency buttons 
  
  //Drawwing Back button
  pushStyle();
  pushMatrix();
  stroke(bC7);
  strokeWeight(8);
  fill(baseColor);
  rect(bBX, bBY, 75, 75, 20);
  popMatrix();
  popStyle();
  //Button Characters
  pushStyle();
  fill(bC7);
  textFont(font,25);
  text("Back", bBX+8, bBY+45);
  popStyle();
  
  //Drawwing Alarm button
  pushStyle();
  pushMatrix();
  stroke(bCA);
  strokeWeight(8);
  fill(baseColor);
  rect(bAX, bAY, 300, 150, 20);
  popMatrix();
  popStyle();
  //Button Characters
  fill(bCA);
  text("Alarm", bAX+77, bAY+90);
  
  //Drawwing Stop button
  pushStyle();
  pushMatrix();
  stroke(bCS);
  strokeWeight(8);
  fill(baseColor);
  rect(bSX, bSY, 300, 150, 20);
  popMatrix();
  popStyle();
  //Button Characters
  fill(bCS);
  text("Stop", bSX+92, bSY+90);
  
  
  
  
  
  if (s == timer) {
    bC5 = bC6 = bC7 = color(100,100,100);
  if (bPhone == true) {phone = "   Connected Speaking With:   -- -- Dang -- --"; phoneFont = 40;}//Monitor change
    bFloorOpenDoor = bFloor1 = bFloor2 = bFloor3 = bPhone = bStop = bAlarm = false;
  }
  break; //Break case 2: //Emergency
  
  /////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////
  case 3: // Alarm Button 
  
  
  
  pushStyle();
  textFont(font,50);
  fill(baseColor);
  textFont(font, alarmFont);
  text(alarm, width*0.17, height*0.3, 300,600);
  popStyle();
  
  //Drawwing Cancel button
  pushStyle();
  pushMatrix();
  stroke(bCC);
  strokeWeight(8);
  fill(baseColor);
  rect(bCX, bCY, 300, 75, 20);
  popMatrix();
  popStyle();
  //Button Characters
  fill(bCC);
  text("Cancel", b6X+70, b6Y+55);
  
  if (s == timer) {
   bC1 = bC5 = bC6 = bC7 = color(100,100,100);
  if (bAlarm == true) {alarm = "   Alarm  Sounding"; phoneFont = 40;}//Monitor change
    bFloorOpenDoor = bFloor1 = bFloor2 = bFloor3 = bPhone = bStop = bAlarm = false;
  }
  
  
  break;
  
  /////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////
  case 4: // Stop Button
  
  
  pushStyle();
  textFont(font,50);
  fill(baseColor);
  textFont(font, stopFont);
  text(stop, width*0.17, height*0.3, 300,600);
  popStyle();
  
  
  //Drawwing Cancel button
  pushStyle();
  pushMatrix();
  stroke(bCC);
  strokeWeight(8);
  fill(baseColor);
  rect(bCX, bCY, 300, 75, 20);
  popMatrix();
  popStyle();
  //Button Characters
  fill(bCC);
  text("Cancel", b6X+70, b6Y+55);
  
  if (s == timer) {
   bC1 = bC5 = bC6 = bC7 = color(100,100,100);
  if (bStop == true) {stop = "Elevator    Stopped"; phoneFont = 40;}//Monitor change
    bFloorOpenDoor = bFloor1 = bFloor2 = bFloor3 = bPhone = bStop = bAlarm = false;
  }
  
  break;
  } // Switch state end
  
}



// Function to make any polygon you want
void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) { 
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}


void update(int x, int y) {
  if ( overRect(b1X, b1Y, 300, 75) ) {
    //bC1 = highlightColor;
    bOver1 = true;
  }
  
  //button 1 
  else if ( overCircle(b2X, b2Y, buttonSize) ) {
    //bC2 = highlightColor;
    bOver2 = true;
  }
  else if ( overCircle(b3X, b3Y, buttonSize) ) {
   //strokeColor = color(100, 100,100);
    bOver3 = true;
  }
  else if ( overCircle(b4X, b4Y, buttonSize) ) {
   //strokeColor = color(100, 100,100);
    bOver4 = true;
  }
  else if ( overRect(b5X, b5Y, 300, 75) ) {
   //strokeColor = color(100, 100,100);
    bOver5 = true;
  }
  else if ( overRect(b6X, b6Y, 300, 75) ) {
   //strokeColor = color(100, 100,100);
    bOver6 = true;
  }
  else if ( overRect(bBX, bBY, 75, 75) ) {
   //strokeColor = color(100, 100,100);
    bOver7 = true;
  }
  else if ( overRect(bAX, bAY, 300, 75) ) {
   //strokeColor = color(255, 100,100);
    bOver8 = true;
  }
  else if ( overRect(bSX, bSY, 300, 75) ) {
  // strokeColor = color(255, 100,100);
    bOver9 = true;
  }
  else if ( overRect(bCX, bCY, 300, 75) ) {
  // strokeColor = color(255, 100,100);
    bOver10 = true;
  }
  else {
    bOver1 = bOver2 = bOver3 = bOver4 = bOver5 = bOver6 = bOver7 = bOver8 = bOver9 = bOver10 = false;
  }
}


void mousePressed() {
  if (bOver1) {
     bC1 = highlightColor;
     timer = s + 2;
     bFloorOpenDoor = true;
     oDoor = "Opening Door..."; //Open door change
     oFont = 37;//Change font during door opening 
     if (timer > 60){
       timer = 3;
     }
  }
  
  //Floor 1 Button 
  else if (bOver2) {
     bC2 = highlightColor;
     timer = s + 3;
     bFloor1 = true;
     if (timer > 60){
       timer = 4;
     }
  }
  //Floor 2 Button
  else if (bOver3) {
     bC3 = highlightColor;
     timer = s + 3;
     bFloor2 = true;
     if (timer > 60){
       timer = 4;
     }
  }
  //Floor 3 Button
  else if (bOver4) {
     bC4 = highlightColor;
     timer = s + 3;
     bFloor3 = true;
     if (timer > 60){
       timer = 4;
     }
  }
  //Phone Button Click
  else if (bOver5) {
     bC5 = highlightColor;
     timer = s + 3;
     state = 1;
     bPhone = true;
     if (timer > 60){
       timer = 4;
     }
  }
  //Emergency Button Click
  else if (bOver6) {
     bC6 = highlightColor;
     state = 2;
     timer = s + 2;
     if (timer > 60){
       timer = 3;
     }
  }
  //Back button click
  else if (bOver7) {
  // bC7 = highlightColor;
  // timer = s + 1;
   state = 0;
   if (timer > 60){
     timer = 2;
   }
  }
    //Alarm button click
  else if (bOver8) {
  // bCA = highlightColor;
   timer = s + 3;
   state = 3;
   bAlarm = true;
   if (timer > 60){
     timer = 2;
   }
  }
    //Stop button click
  else if (bOver9) {
   //bCS = highlightColor;
   timer = s + 3;
   state = 4;
   bStop = true;
   if (timer > 60){
     timer = 2;
   }
  }
    //Cancel button click
  else if (bOver10) {
   //bCC = highlightColor;
  // timer = s + 1;
   state = 2;
   bCancel = true;
   if (timer > 60){
     timer = 2;
   }
  }
}

boolean overRect(float x, float y, float width, float height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(float x, float y, float diameter)  {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
