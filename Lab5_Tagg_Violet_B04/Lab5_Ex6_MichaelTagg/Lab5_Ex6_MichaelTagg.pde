void setup() {
  int x, y, z;
  int counter = 0;

  do {
    x = (int)random(1, 100);
    y = (int)random(1, 100);
    z = (int)random(1, 100);
    println("The three numbers generated are: ", x, y, z);
    if (is_different (x, y, z)) {
      print_result (min_of_three(x, y, z), max_of_three (x, y, z));
    } else
      println("The three numbers are the same");
    counter++;
  } while (counter < 10);
}

int max_of_three(int x, int y, int z) {
  int a = greater_of_two(x, y);
  int b = greater_of_two(a, z);
  return b;
}


int greater_of_two(int x, int y) {
  if (x>=y) {
    return x;
  } else {
    return y;
  }
}

int min_of_three(int x, int y, int z) {
  int a = smaller_of_two(x, y);
  int b = smaller_of_two(a, z);
  return b;
}

int smaller_of_two(int x, int y) {
  if (x<=y) {
    return x;
  } else {
    return y;
  }
}

boolean is_different (int x, int y, int z) {
  if (x==y&&y==z) {
    boolean a = false;
    return a;
  } else {
    boolean b = true;
    return b;
  }
}

void print_result(int x, int y) {
  if (x>y) {
    println();
    println("The maximum is: ", x, ", The minimum is: ", y);
    println();
  } else {
    if (x<y) {
      println();
      println("The maximum is: ", y,", The minimum is: ", x);
      println();
    }
  }
}
