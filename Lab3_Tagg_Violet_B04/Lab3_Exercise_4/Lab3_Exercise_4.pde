import javax.swing.JOptionPane;
String userInput;
userInput=JOptionPane.showInputDialog(" Term Length in Years (1,3, or 5) ? ");
int term = Integer.parseInt(userInput);
String type=JOptionPane.showInputDialog(" 'open' or 'closed' ?");

if (term==1&&type.equals("open")) {
  println("%7.10");
} else if (term==1&&type.equals("closed")) {
  println("%5.30");
} else if (term==3&&equals("open")) {
  println("%7.50");
} else if (term==3&&type.equals("closed")) {
  println("%5.00");
} else if (term==5&&equals("open")) {
  println("5 Year+Open not available");
} else if (term==5&&type.equals("closed")) {
  println("%5.75");
}
