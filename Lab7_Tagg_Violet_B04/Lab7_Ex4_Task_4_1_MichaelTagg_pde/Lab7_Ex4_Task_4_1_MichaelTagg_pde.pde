void setup ()
{
  float a = 1000;
  int b = 5;
  float [] array = {6.7, 5.9, 10, 23, 44, 4.6, 9.1, 100, 79};
  array = InsertAt (array, a, b);
  println (array);
}


float [] InsertAt (float [] a, float b, int c) {
  

  float [] x = new float [a.length + 1];

  if (c<a.length&&c>=0) {
    x[c] = b;
    for (int i = 0; i< c; i++) {
      x[i] = a[i];
    }
    for (int i = c+1; i<x.length; i++) {
      x[i] = a[i-1];
    } 
  } else {
    println("InsertAt function could not be performed, please change index value");
  }
  
  return x;
}
