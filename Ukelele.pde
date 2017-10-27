import controlP5.*;
ControlP5 gui;
import processing.sound.*;
Glines g;
Clines c;
Elines e;
Alines a;


//-------------------------------SOUND FILE VIABLE

SoundFile fileG;
SoundFile fileC;
SoundFile fileE;
SoundFile fileA;

SoundFile fileG1;
SoundFile fileC1;
SoundFile fileE1;
SoundFile fileA1;

SoundFile fileG2;
SoundFile fileC2;
SoundFile fileE2;
SoundFile fileA2;

SoundFile fileG3;
SoundFile fileC3;
SoundFile fileE3;
SoundFile fileA3;

//-------------------------------boolean setup

boolean Gplayed = false;
boolean Cplayed = false;
boolean Eplayed = false;
boolean Aplayed = false;

boolean G1played = false;
boolean C1played = false;
boolean E1played = false;
boolean A1played = false;

boolean G2played = false;
boolean C2played = false;
boolean E2played = false;
boolean A2played = false;

boolean G3played = false;
boolean C3played = false;
boolean E3played = false;
boolean A3played = false;

//-------------------------------
void setup() 

{
  size(1920, 1080);
  gui = new ControlP5(this);
  g = new Glines();
  c = new Clines();
  e = new Elines();
  a = new Alines();

 //---------------------------------------------toggle 1st
   gui.addToggle("G1")
     .setPosition(1800,600)
     .setSize(100,80);
     
   gui.addToggle("C1")
     .setPosition(1800,700)
     .setSize(100,80);
     
   gui.addToggle("E1")
     .setPosition(1800,800)
     .setSize(100,80);
     
   gui.addToggle("A1")
     .setPosition(1800,900)
     .setSize(100,80);
          
 //---------------------------------------------toggle 2nd   
    
   gui.addToggle("G2")
     .setPosition(1700,600)
     .setSize(100,80);
     
   gui.addToggle("C2")
     .setPosition(1700,700)
     .setSize(100,80);
     
   gui.addToggle("E2")
     .setPosition(1700,800)
     .setSize(100,80);
     
   gui.addToggle("A2")
     .setPosition(1700,900)
     .setSize(100,80);
 //----------------------------------------------toggle 3rd  

   gui.addToggle("G3")
     .setPosition(1600,600)
     .setSize(100,80);
     
   gui.addToggle("C3")
     .setPosition(1600,700)
     .setSize(100,80);
     
   gui.addToggle("E3")
     .setPosition(1600,800)
     .setSize(100,80);
     
   gui.addToggle("A3")
     .setPosition(1600,900)
     .setSize(100,80);  
//-------------------------------------- strings

   gui.addButton("G")
     .setValue(0)
     .setPosition(0,625)
     .setSize(1600,50);
     
   gui.addButton("C")
     .setValue(0)
     .setPosition(0,725)
     .setSize(1600,50);
     
   gui.addButton("E")
     .setValue(0)
     .setPosition(0,825)
     .setSize(1600,50);
     
   gui.addButton("A")
     .setValue(0)
     .setPosition(0,925)
     .setSize(1600,50);

//--------------------------------------SOUNDS IMPORT

fileG = new SoundFile(this, "G.wav");
fileC = new SoundFile(this, "C.wav");
fileE = new SoundFile(this, "E.wav");
fileA = new SoundFile(this, "A.wav");

fileG1 = new SoundFile(this, "G1.wav");
fileC1 = new SoundFile(this, "C1.wav");
fileE1 = new SoundFile(this, "E1.wav");
fileA1 = new SoundFile(this, "A1.wav");

fileG2 = new SoundFile(this, "G2.wav");
fileC2 = new SoundFile(this, "C2.wav");
fileE2 = new SoundFile(this, "E2.wav");
fileA2 = new SoundFile(this, "A2.wav");

fileG3 = new SoundFile(this, "G3.wav");
fileC3 = new SoundFile(this, "C3.wav");
fileE3 = new SoundFile(this, "E3.wav");
fileA3 = new SoundFile(this, "A3.wav");

//-----------------------------------------GRAPHIC     
 
background(0);  
}

//-------------------------------------------print the name of the controller on console
void controlEvent(ControlEvent theEvent)
{
  println(theEvent.getController().getName());
}

void G1(boolean G1)
{  if (G1==true){
  G1played = true;}}
void G2(boolean G2)
{  if (G2==true){
  G2played = true;}}
void G3(boolean G3)
{  if (G3==true){
  G3played = true;}}

void C1(boolean C1)
{  if (C1==true){
  G1played = true;}}
void C2(boolean C2)
{  if (C2==true){
  C2played = true;}}
void C3(boolean C3)
{  if (C3==true){
  G3played = true;}}
  
void E1(boolean E1)
{  if (E1==true){
  E1played = true;}}
void E2(boolean E2)
{  if (E2==true){
  E2played = true;}}
void E3(boolean E3)
{  if (E3==true){
  E3played = true;}}

void A1(boolean A1)
{  if (A1==true){
  A1played = true;}}
void A2(boolean A2)
{  if (A2==true){
  A2played = true;}}
void A3(boolean A3)
{  if (A3==true){
  A3played = true;}}  
  
void draw()
{
//----------------------------------------------Ukelele Strings mouse  over activities
if(gui.isMouseOver(gui.getController("G")))
{ Gplayed = true;}
if(gui.isMouseOver(gui.getController("C")))
{ Cplayed = true;}
if(gui.isMouseOver(gui.getController("E")))
{ Eplayed = true;}
if(gui.isMouseOver(gui.getController("A")))
{ Aplayed = true;}

//----------------------------------------------draw lines classes
if(gui.isMouseOver(gui.getController("G")))
{ g.drawline();
  g.update();}
if(gui.isMouseOver(gui.getController("C")))
{ c.drawline();
  c.update();}
if(gui.isMouseOver(gui.getController("E")))
{ e.drawline();
  e.update();}
if(gui.isMouseOver(gui.getController("A")))
{ a.drawline();
  a.update();}

//-----------------------------------------------G 
  if(Gplayed == true & G1played == false & G2played == false & G3played == false) 
  {  fileG.play(); 
     Gplayed = false;  }
     
  if(G1played == true & Gplayed == true & G2played == false & G3played == false) 
  {     fileG1.play();
  G1played=false;  }
  
    if(G2played == true & Gplayed == true & G1played == false & G3played == false) 
  {     fileG2.play();
  G2played=false;  }
  
    if(G3played == true & Gplayed == true & G2played == false & G1played == false) 
  {     fileG3.play();
  G3played=false;  }
   
//-----------------------------------------------c
  if(Cplayed == true & C1played == false & C2played == false & C3played == false) 
  {     fileC.play();
     Cplayed = false;  }
     
  if(C1played == true & Cplayed == true & C2played == false & C3played == false) 
  {     fileC1.play();
  C1played=false;  }
  
    if(C2played == true & Cplayed == true & C1played == false & C3played == false) 
  {     fileC2.play();
  C2played=false;  }
  
    if(C3played == true & Cplayed == true & C2played == false & C1played == false) 
  {     fileC3.play();
  C3played=false;  }
     
//-----------------------------------------------E
  if(Eplayed == true & E1played == false & E2played == false & E3played == false) 
  {     fileE.play();
     Eplayed = false;  }
     
  if(E1played == true & Eplayed == true & E2played == false & E3played == false) 
  {     fileE1.play();
  E1played=false;  }
  
    if(E2played == true & Eplayed == true & E1played == false & E3played == false) 
  {     fileE2.play();
  E2played=false;  }
  
    if(E3played == true & Eplayed == true & E2played == false & E1played == false) 
  {     fileE3.play();
  E3played=false;  }
  
//----------------------------------------------A
  if(Aplayed == true & A1played == false & A2played == false & A3played == false) 
  {     fileA.play();
     Aplayed = false;  }
     
  if(A1played == true & Aplayed == true & A2played == false & A3played == false) 
  {     fileA1.play();
  A1played=false;  }
  
    if(A2played == true & Aplayed == true & A1played == false & A3played == false) 
  {     fileA2.play();
  A2played=false;  }
  
    if(A3played == true & Aplayed == true & A2played == false & A1played == false) 
  {     fileA3.play();
  A3played=false;  }
     

}