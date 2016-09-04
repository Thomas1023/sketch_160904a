import ddf.minim.*;  
PImage e;
int x=0;
int y=0;
int ang=1;
Minim minim;        
AudioPlayer song;      
     
  


void setup(){
  
   minim = new Minim(this);
   song = minim.loadFile("c.mp3", 512);
    e = loadImage("record.png");
    e.resize(1000,1000);
    size(1000, 1000);
}

void draw(){
  if(mousePressed){
    
    song.play();
    ang++;
   
  }else{
  song.pause();
 }
 rotateImage(e,ang);
  image(e, x, y);
 
 

 

}
void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}


  