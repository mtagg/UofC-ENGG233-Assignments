void setup(){
  size(200,200);
  
int [][] array ={
{0,1,0,1,1},
{1,0,1,0},
{0,1},
{1,0,1,1,0,0},
{0,0,1},
{1,1,1,0,0}
};
int x = 40;
int y = 40;
for (int i = 0; i<array.length;i++){
  for (int j = 0; j<array[i].length;j++){
    if (array[i][j]==0){
      fill(0);
      rect(x,y,20,20);
      x+=20;
    }else if (array[i][j]==1){
      fill(255);
      rect(x,y,20,20);
      x+=20;
     }
  }
  y+=20;
  x=40;

}

}
