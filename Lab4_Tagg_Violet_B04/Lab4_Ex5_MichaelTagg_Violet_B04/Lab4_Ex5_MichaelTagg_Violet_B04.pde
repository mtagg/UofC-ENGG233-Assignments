import javax.swing.JOptionPane;
void setup () {
 int max, column, row, x = 20, y = 20;
 size (850, 850);
 background(0);
 do {
 String answer = JOptionPane.showInputDialog("How many rows would you like in your times table? Enter a number between 1 and 16.");
 max = Integer.parseInt(answer);
 } while (max < 1 || max >16);
 // Display the header row of the table.
 text("X", x, y);
 
 for (row=1; row<=max; row++){
  text (Integer.toString(row),x,y+50);
  y+=50;
 }

 
 x += 50;
 y=20;
 for (column = 1; column <= max; column++) {
 text ( Integer.toString(column), x, y);
 for (row=column,y=20+50*row-50; row<=max; row++){
 text (Integer.toString(column*row), x, y+=50);
 }

 y=20;
x+=50; 

 
 }

 
   // Display all the other rows of the table, using a nested loop.

}
