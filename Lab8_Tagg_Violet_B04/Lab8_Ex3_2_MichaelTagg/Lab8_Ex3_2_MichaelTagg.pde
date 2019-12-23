class Student {
  int ID;
  float Grade;

  Student () {
    ID = 0;
    Grade = 0;
  }
  Student (int a, float b) {
    ID = a;
    Grade = b;
  }
}
void PopulateArray (Student [] a){

   for(int i = 0; i<a.length; i++){
   a[i].ID = i+1;
   }
   for(int i = 0; i<a.length; i++){
   a[i].Grade = random(40,100);
   }
}

float Calculate_Average (Student [] a){

  float average = 0;
  float sum = 0;
  for (int i = 0; i<a.length; i++){
  sum += a[i].Grade;
  }
average = (sum/a.length);
return average;
}

void setup(){

  Student [] students = new Student [10];
    for (int i=0; i<students.length; i++){
  students[i] = new Student ();
}

PopulateArray (students);
float classAverage = Calculate_Average (students);
println ("The class average is: " + classAverage+" %");
}
