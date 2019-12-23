size(500, 500);
float x, y, z;

for (x=250, y=0, z=2; x<=500&&y<250; x+=10, y+=10, z+=1) {
  if (z%2==0) {
    fill(0);
  } else fill(255);   // alternating colors between black and white for the following shapes

  quad(x, y, x-10, y+10, x, y+20, x+10, y+10);       // diagonal diamonds from point (250,0) to (500,250)
  quad(500-x,y,500-(x-10),y+10,500-x,y+20,500-(x+10),y+10);    //diagonal diamonds from point (250,0) to (0,250)
  
  for (float a=x, b=y+20; b<=240; b+=20) {
    if (z%2==0) {
      fill(0);
    } else fill(255);  //alternating colors betwen black and white for the following shapes
    
    quad(a, b, a-10, b+10, a, b+20, a+10, b+10);    // filling in diamonds underneath the original shape for x values >=250
    quad(500-a, b, 500-a-10, b+10, 500-a, b+20, 500-a+10, b+10);    // filling in diamonds underneath the original shape for x values <=250
 

 
    
  }
}
