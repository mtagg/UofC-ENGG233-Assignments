import javax.swing.JOptionPane;
String number;
int x;
do{
number = JOptionPane.showInputDialog("Enter Number > or = 3");
x = Integer.parseInt(number);
}
while (x<3);

int y = 1;
int z = y;
print("1");
while (y<=x&&z<=x){
  if (z<=y){
    print(" ,"+y);
  z = y+z;
}else {
  print(", "+z);
  y=z+y;
}
}
  
