import controlP5.*;
ControlP5 gui;

import processing.sound.*;
//-------------------------------SOUND FILE
SoundFile fileG;
SoundFile fileC;
SoundFile fileE;
SoundFile fileA;

boolean Gplayed = false;
boolean Cplayed = false;
boolean Eplayed = false;
boolean Aplayed = false;

void setup() 
{

  size(1920, 1080);
    
  gui = new ControlP5(this);

 //---------------------------------------------buttons 1st
   gui.addButton("G1")
     .setValue(0)
     .setPosition(1800,600)
     .setSize(100,100);
     
   gui.addButton("C1")
     .setValue(0)
     .setPosition(1800,700)
     .setSize(100,100);
     
   gui.addButton("E1")
     .setValue(0)
     .setPosition(1800,800)
     .setSize(100,100);
     
   gui.addButton("A1")
     .setValue(0)
     .setPosition(1800,900)
     .setSize(100,100);
     
     
  //---------------------------------------------button 2nd   
   gui.addButton("G2")
     .setValue(0)
     .setPosition(1700,600)
     .setSize(100,100);
     
   gui.addButton("C2")
     .setValue(0)
     .setPosition(1700,700)
     .setSize(100,100);
     
   gui.addButton("E2")
     .setValue(0)
     .setPosition(1700,800)
     .setSize(100,100);
     
   gui.addButton("A2")
     .setValue(0)
     .setPosition(1700,900)
     .setSize(100,100);   
     
     
     
 //----------------------------------------------button 3rd  
   gui.addButton("G3")
     .setValue(0)
     .setPosition(1600,600)
     .setSize(100,100);
     
   gui.addButton("C3")
     .setValue(0)
     .setPosition(1600,700)
     .setSize(100,100);
     
   gui.addButton("E3")
     .setValue(0)
     .setPosition(1600,800)
     .setSize(100,100);
     
   gui.addButton("A3")
     .setValue(0)
     .setPosition(1600,900)
     .setSize(100,100);
     
     
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

//--------------------------------------sounds

fileG = new SoundFile(this, "G.wav");
fileC = new SoundFile(this, "C.wav");
fileE = new SoundFile(this, "E.wav");
fileA = new SoundFile(this, "A.wav");


//-----------------------------------------graphic     
 
background(0);  

}


void controlEvent(ControlEvent theEvent)
{
  println(theEvent.getController().getName());
   if   (theEvent.getController().getName() == "Green")
   {}
}

void draw()
{

if(gui.isMouseOver(gui.getController("G")))
{ Gplayed = true;}
if(gui.isMouseOver(gui.getController("C")))
{ Cplayed = true;}
if(gui.isMouseOver(gui.getController("E")))
{ Eplayed = true;}
if(gui.isMouseOver(gui.getController("A")))
{ Aplayed = true;}

  if(Gplayed) 
  {
     fileG.play();
     Gplayed = false;
  }
  if(Cplayed) 
  {
     fileC.play();
     Cplayed = false;
  }
  if(Eplayed) 
  {
     fileE.play();
     Eplayed = false;
  }
  if(Aplayed) 
  {
     fileA.play();
     Aplayed = false;
  }
}