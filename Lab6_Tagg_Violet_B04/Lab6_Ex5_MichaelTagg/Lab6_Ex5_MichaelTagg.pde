void setup() {
  int m = 2;
  int n = 5;

  int [] x = new int[m];
  for (int i=0; i<m; i++) {
    float z = random(0, 50);
    x[i] = (int)z;
  }

  int [] y = new int[n];
  for (int i=0; i<n; i++) {
    float z = random(0, 50);
    y[i] = (int)z;
  }

  int [] result = sortMerge (x, y);
  println(result);
}



int[] sortMerge (int[]x, int[]y) {
  x = sort(x);
  y = sort(y);

  int [] merge = new int [x.length+y.length];


  int a = x.length;
  int b = y.length;

  for ( int i = 0, j = 0, k = 0; i<merge.length; i++) {
    if (j<a&&k<b) {
      if (x[j]<=y[k]) {
        merge[i] = x[j];
        j++;
      } else if (x[j]>y[k]) {
        merge[i] = y[k];
        k++;
      }
    } else if (a>b) {
      merge[i] = x[j];
      j++;
    } else if (b>a) {
      merge[i] = y[k];
      k++;
    }
  }


  return merge;
}
