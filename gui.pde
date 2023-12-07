/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void massChange_slidder(GSlider source, GEvent event) { //_CODE_:spMass:266849:
  getpValues();
  getspValues();
  clear();
} //_CODE_:spMass:266849:

public void slider2_change1(GSlider source, GEvent event) { //_CODE_:planetMass:539922:
  getpValues();
  getspValues();
  clear();
} //_CODE_:planetMass:539922:

public void spPresetOpened(GDropList source, GEvent event) { //_CODE_:spPreset:253720:
  // get the spacecraft name and set values accordingly
  String spType = spPreset.getSelectedText();
  
  if (spType.equals("Voyager 1")) {
    setSPValues(722, 1020, 300, 75);
    getspValues();
    clear();
  }
  
  if (spType.equals("Sputnik 1")) {
   setSPValues(84, 28000, 450, 45); 
   getspValues();
   clear();
  }
  
  if (spType.equals("Galileo")) {
   setSPValues(2573, 47000, 380, 60); 
   getspValues();
   clear();
  }
  
} //_CODE_:spPreset:253720:

public void pPresetOpened(GDropList source, GEvent event) { //_CODE_:pPreset:241108:
  String pType = pPreset.getSelectedText();
  
  if (pType.equals("Mars")){
    setPValues(6.39e23, 24000, 3.389);
    getpValues();
    clear();
  }
  
  if (pType.equals("Saturn")) {
    setPValues(5.683e26, 9670, 58.232);
    getpValues();
    clear();
  }
  
  if (pType.equals("Neptune")) {
   setPValues(1.024e26, 5430, 24.622); 
   getpValues();
   clear();
  }

  if (pType.equals("Earth")) {
   setPValues(5.97219e24, 29800, 6.371); 
   getpValues();
   clear();
  }

} //_CODE_:pPreset:241108:

public void slider1_change2(GSlider source, GEvent event) { //_CODE_:pOrbitSpeed:346573:
  getpValues();
  getspValues();
  clear();
} //_CODE_:pOrbitSpeed:346573:

public void slider1_change3(GSlider source, GEvent event) { //_CODE_:spInitialSpeed:483261:
  getpValues();
  getspValues();
  clear();
} //_CODE_:spInitialSpeed:483261:

public void slider1_change4(GSlider source, GEvent event) { //_CODE_:spInitialPos:965079:
  getpValues();
  getspValues();
  clear();
} //_CODE_:spInitialPos:965079:

public void slider2_change2(GSlider source, GEvent event) { //_CODE_:spInitialAngle:697099:
  getpValues();
  getspValues();
} //_CODE_:spInitialAngle:697099:

public void button1_click1(GButton source, GEvent event) { //_CODE_:Demo1:443366:
  setPValues(5.97219e24, 29800, 6.371); //Earth
  getpValues();
  setSPValues(2573, 47000, 380, 60);  //Gallileo
  getspValues();
  
} //_CODE_:Demo1:443366:

public void button2_click1(GButton source, GEvent event) { //_CODE_:demo2:312806:
  pPreset.setSelected(1);   //Saturn
  spPreset.setSelected(0);    //Voyager 1
  getpValues();
  getspValues();
} //_CODE_:demo2:312806:

public void button3_click1(GButton source, GEvent event) { //_CODE_:demo3:711930:
  getpValues();
  getspValues();
} //_CODE_:demo3:711930:

public void button4_click1(GButton source, GEvent event) { //_CODE_:demo4:484823:
  getpValues();
  getspValues();
} //_CODE_:demo4:484823:

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:pRadius:870883:
  getpValues();
  getspValues();
  clear();
} //_CODE_:pRadius:870883:

public void slider1_change5(GSlider source, GEvent event) { //_CODE_:tValue:491145:
  t = tValue.getValueF();
} //_CODE_:tValue:491145:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  spMass = new GSlider(this, 25, 55, 147, 40, 10.0);
  spMass.setLimits(3000.0, 50.0, 3000.0);
  spMass.setNumberFormat(G4P.DECIMAL, 2);
  spMass.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  spMass.setOpaque(false);
  spMass.addEventHandler(this, "massChange_slidder");
  planetMass = new GSlider(this, 245, 57, 161, 40, 10.0);
  planetMass.setLimits(5.9, 1.0, 10.0);
  planetMass.setNumberFormat(G4P.DECIMAL, 2);
  planetMass.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  planetMass.setOpaque(false);
  planetMass.addEventHandler(this, "slider2_change1");
  togGroup1 = new GToggleGroup();
  spPreset = new GDropList(this, 44, 235, 103, 92, 3, 10);
  spPreset.setItems(loadStrings("list_253720"), 0);
  spPreset.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  spPreset.addEventHandler(this, "spPresetOpened");
  pPreset = new GDropList(this, 269, 196, 101, 80, 3, 10);
  pPreset.setItems(loadStrings("list_241108"), 0);
  pPreset.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  pPreset.addEventHandler(this, "pPresetOpened");
  pOrbitSpeed = new GSlider(this, 244, 100, 163, 40, 10.0);
  pOrbitSpeed.setLimits(0.5, 0.0, 1.0);
  pOrbitSpeed.setNumberFormat(G4P.DECIMAL, 2);
  pOrbitSpeed.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  pOrbitSpeed.setOpaque(false);
  pOrbitSpeed.addEventHandler(this, "slider1_change2");
  spInitialSpeed = new GSlider(this, 24, 99, 149, 40, 10.0);
  spInitialSpeed.setLimits(1000.0, 1000.0, 50000.0);
  spInitialSpeed.setNumberFormat(G4P.DECIMAL, 2);
  spInitialSpeed.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  spInitialSpeed.setOpaque(false);
  spInitialSpeed.addEventHandler(this, "slider1_change3");
  spInitialPos = new GSlider(this, 23, 141, 149, 40, 10.0);
  spInitialPos.setLimits(0.5, 0.0, 600.0);
  spInitialPos.setNumberFormat(G4P.DECIMAL, 2);
  spInitialPos.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  spInitialPos.setOpaque(false);
  spInitialPos.addEventHandler(this, "slider1_change4");
  spInitialAngle = new GSlider(this, 26, 183, 147, 40, 10.0);
  spInitialAngle.setLimits(90.0, 0.0, 180.0);
  spInitialAngle.setNumberFormat(G4P.DECIMAL, 2);
  spInitialAngle.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  spInitialAngle.setOpaque(false);
  spInitialAngle.addEventHandler(this, "slider2_change2");
  Demo1 = new GButton(this, 198, 242, 80, 30);
  Demo1.setText("Demo 1");
  Demo1.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  Demo1.addEventHandler(this, "button1_click1");
  demo2 = new GButton(this, 325, 243, 80, 30);
  demo2.setText("Demo 2");
  demo2.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  demo2.addEventHandler(this, "button2_click1");
  demo3 = new GButton(this, 197, 289, 80, 30);
  demo3.setText("Demo 3");
  demo3.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  demo3.addEventHandler(this, "button3_click1");
  demo4 = new GButton(this, 328, 290, 80, 30);
  demo4.setText("Demo 4");
  demo4.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  demo4.addEventHandler(this, "button4_click1");
  pRadius = new GSlider(this, 244, 143, 162, 40, 10.0);
  pRadius.setShowValue(true);
  pRadius.setShowLimits(true);
  pRadius.setLimits(6.3, 2.5, 60.0);
  pRadius.setNumberFormat(G4P.DECIMAL, 2);
  pRadius.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  pRadius.setOpaque(false);
  pRadius.addEventHandler(this, "slider1_change1");
  spMassLabel = new GLabel(this, 25, 41, 80, 20);
  spMassLabel.setText("Mass");
  spMassLabel.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  spMassLabel.setOpaque(false);
  spInitialSpeedLabel = new GLabel(this, 24, 88, 80, 20);
  spInitialSpeedLabel.setText("Velocity");
  spInitialSpeedLabel.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  spInitialSpeedLabel.setOpaque(false);
  spInitialPosLabel = new GLabel(this, 23, 132, 94, 20);
  spInitialPosLabel.setText("Initial Position");
  spInitialPosLabel.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  spInitialPosLabel.setOpaque(false);
  spInitialAngleLabel = new GLabel(this, 24, 175, 96, 18);
  spInitialAngleLabel.setText("Initial Trajectory");
  spInitialAngleLabel.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  spInitialAngleLabel.setOpaque(false);
  spLabels = new GLabel(this, 61, 16, 80, 20);
  spLabels.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  spLabels.setText("Spacecraft");
  spLabels.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  spLabels.setOpaque(false);
  pLabels = new GLabel(this, 282, 15, 80, 20);
  pLabels.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  pLabels.setText("Planet");
  pLabels.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  pLabels.setOpaque(false);
  pMassLabel = new GLabel(this, 247, 45, 80, 20);
  pMassLabel.setText("Mass");
  pMassLabel.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  pMassLabel.setOpaque(false);
  pOrbitSpeedLabel = new GLabel(this, 244, 89, 80, 20);
  pOrbitSpeedLabel.setText("Orbit Speed");
  pOrbitSpeedLabel.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  pOrbitSpeedLabel.setOpaque(false);
  pRadiusLabel = new GLabel(this, 244, 128, 80, 20);
  pRadiusLabel.setText("Radius");
  pRadiusLabel.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  pRadiusLabel.setOpaque(false);
  tValue = new GSlider(this, 22, 283, 151, 40, 10.0);
  tValue.setShowValue(true);
  tValue.setLimits(100.0, 100.0, 1000.0);
  tValue.setShowTicks(true);
  tValue.setNumberFormat(G4P.DECIMAL, 2);
  tValue.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  tValue.setOpaque(false);
  tValue.addEventHandler(this, "slider1_change5");
}

// Variable declarations 
// autogenerated do not edit
GSlider spMass; 
GSlider planetMass; 
GToggleGroup togGroup1; 
GDropList spPreset; 
GDropList pPreset; 
GSlider pOrbitSpeed; 
GSlider spInitialSpeed; 
GSlider spInitialPos; 
GSlider spInitialAngle; 
GButton Demo1; 
GButton demo2; 
GButton demo3; 
GButton demo4; 
GSlider pRadius; 
GLabel spMassLabel; 
GLabel spInitialSpeedLabel; 
GLabel spInitialPosLabel; 
GLabel spInitialAngleLabel; 
GLabel spLabels; 
GLabel pLabels; 
GLabel pMassLabel; 
GLabel pOrbitSpeedLabel; 
GLabel pRadiusLabel; 
GSlider tValue; 
