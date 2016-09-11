int x1=250;
int x2=750;
int size1=10;

void setup(){
  size(1000,500);
 // noStroke();
}
void draw(){
  background(199,199,199);
  noFill();
  for(size1=10; size1<=400 ; size1+=5){
    //fill(random(255),random(255),random(255));
    ellipse(x1,250,size1,size1);
  }
  for(size1=10; size1<=400 ; size1+=5){
    //fill(random(255),random(255),random(255));
    ellipse(x2,250,size1,size1);
  }
  if(size1==400){
    size1=10;
    x1+=10;
    x2-=10;
  }
  
}