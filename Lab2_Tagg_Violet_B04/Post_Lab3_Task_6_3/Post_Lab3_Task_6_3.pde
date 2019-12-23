 float a=random(0,800);
  float b=random(0,800); 
  float x=random(0,800);
 float y =random(0,800);
 float u=random(0,800);
 float v=random(0,800);
 
 
 void setup(){
  size(800,800);
line (0,0,u,v);
}

void draw(){

     line (u,v,x,y);
     u=x;
     v=y;
     if (x==u&&y==v){
       x=random(0,800);
       y=random(0,800);
       line (u,v,x,y);
     }
    
    
  
}
  
