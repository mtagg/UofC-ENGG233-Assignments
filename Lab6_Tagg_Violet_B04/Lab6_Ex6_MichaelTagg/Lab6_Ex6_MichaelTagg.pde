void setup() {

  int[] b = {3, 5, 4, 20, 10};
  uniqueCheck (b);
}

void uniqueCheck (int[] x) {
  int z=0;
  for (int i=0; i<x.length-1; i++) {

    for (int j=i+1; j<x.length; j++) {
      if (x[i]==x[j]) {
        z++;
      }
    }
  }

  if (z==0) {
    println("The array contains all unique numbers");
  } else if (z>0) {
    println("The array does not contain all unique numbers");
  }
}
