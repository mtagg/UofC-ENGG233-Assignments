int x=25;
int y=25;

void setup(){
size (600,600);

}

void draw(){
  background (170);
  ellipse(x,y,50,50);
  if(x<=575&&y<=25){
    x+=2;
  } else if(x>=575&&y<575){
      y+=2;
  }else if(x>=25&&y>=575){
    x-=2;
  }else if(x>=20&&y<=575){
    y-=2;
  }
println(x);
println(y);
  
  }

  
  
  
  
