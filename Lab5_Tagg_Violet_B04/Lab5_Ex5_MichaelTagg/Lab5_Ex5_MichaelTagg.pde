void setup () {
  String str = "I am Happy to See You.";
  String capstr = All_uppercase (str);
  println(capstr);
}


String All_uppercase (String x) {
  String y = "";
  for (int i=0; i<x.length(); i++) {
    if (x.charAt(i)>=97&&x.charAt(i)<=122) {
      char a = x.charAt(i);
      a-=32;
      y += a;
    } else {
      char a=x.charAt(i);
      y += a;
    }
  }
  return y;
}
