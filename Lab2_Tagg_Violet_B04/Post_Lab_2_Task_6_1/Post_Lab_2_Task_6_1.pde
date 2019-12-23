int x;
int y;
void draw() {
   background(200);
rect(200+x,50-y,200,200);
rect(200+x,300-y,200,250);
ellipse(250+x,115-y,35,65);
ellipse(350+x,115-y,35,65);
arc(300+x,185-y,50,50,0,PI);
line(275+x,250-y,275+x,300-y);
line(325+x,250-y,325+x,300-y);
line(250+x,550-y,250+x,700-y);
line(225+x,550-y,225+x,700-y);
line(375+x,550-y,375+x,700-y);
line(350+x,550-y,350+x,700-y);
line(200+x,350-y,75+x,350-y);
line(200+x,375-y,75+x,375-y);
line(400+x,350-y,525+x,350-y);
line(400+x,375-y,525+x,375-y);

y+=1;
x+=1;
}

void setup(){
 size(800,800);
 background(200);
 
}
