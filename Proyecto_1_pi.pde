
import oscP5.*;  
import netP5.*;

OscP5 oscP5;

int puerto;

float x; 

float posX, posY, diametro, alfa;

void setup(){
  size(1650,800);
  
  diametro=100;
  alfa=255;
  
  puerto=12000;
  oscP5 = new OscP5(this, puerto);
}

void draw(){
  background(0);
  if(posX==97)
  {
    fill(255,255,0);
  }
  else{
    fill(0);
    stroke(255);
  }
  rect(25,25,400,200);
  
  
  if(posX==115)
  {
    fill(10,73,123);
  }
  else{
    fill(0);
    stroke(255);
  }
  rect(425,25,400,200);
  
  if(posX==100)
  {
    fill(255,0,0);
  }
  else{
    fill(0);
    stroke(255);
  }
  rect(825,25,400,200);
  
  if(posX==102)
  {
    fill(0,153,117);
  }
  else{
    fill(0);
    stroke(255);
  }
  rect(1225,25,400,200);
  
  
  
  
  if(posX==103)
  {
    fill(76,40,130);
  }
  else{
    fill(0);
    stroke(255);
  }
  rect(25,225,400,200);
  
  
  if(posX==104)
  {
    fill(198,203,0);
  }
  else{
    fill(0);
    stroke(255);
  }
  rect(425,225,400,200);
  
  if(posX==106)
  {
    fill(37,40,80);
  }
  else{
    fill(0);
    stroke(255);
  }
  rect(825,225,400,200);
  
  if(posX==107)
  {
    fill(255,128,0);
  }
  else{
    fill(0);
    stroke(255);
  }
  rect(1225,225,400,200);




if(posX==99)
  {
    fill(0,255,255);
  }
  else{
    fill(0);
    stroke(255);
  }
  rect(25,425,400,200);
  
  
  if(posX==118)
  {
    fill(195,11,78);
  }
  else{
    fill(0);
    stroke(255);
  }
  rect(425,425,400,200);
  
  if(posX==98)
  {
    fill(0,143,57);
  }
  else{
    fill(0);
    stroke(255);
  }
  rect(825,425,400,200);
  
  if(posX==110)
  {
    fill(76,40,130);
  }
  else{
    fill(0);
    stroke(255);
  }
  rect(1225,425,400,200);
}


void oscEvent(OscMessage theOscMessage) { 
  background(0);
  if (theOscMessage.checkAddrPattern("/x")==true) 
    {
      x=theOscMessage.get(0).intValue();
      println("pd--> pos x: "+ x);
      posX=int (x);
      return;
  }
}
