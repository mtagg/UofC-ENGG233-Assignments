size(600, 600);


for (int x=0, y=0; x<=300&&y<=300;fill(0), rect(x, y, 20, 20),x+=20,y+=20) {
   for (int a=x, b=(y-20); a<=(580-x)&&b<=(600-y); fill(255), rect(a,b,20,20),a+=20){
     for (int c=580, d=580; c>=x&&d>=y; fill(0), rect(c,d,20,20), c-=20, d-=20){
       for(int r=c, s=(d-20); r>=(580-c)&&s>=(600-d); fill(255), rect(r,s,20,20), s-=20){
         for(int x1=300,y1=280; x1<=600&&y1>=0; fill(0), rect(x1,y1,20,20), x1+=20,y1-=20){
   }
       }
   }
   }
  
  
}
