double calculate_class_average(double [] exam) {

  double avg;
  double sum=0;
  for (int i=0; i<exam.length; i++) {
    sum += exam[i];
  }
  avg = sum/(exam.length);
  return avg;
}

double calculate_student_average(double mid_mark, double final_mark) {

  double student_avg;
  student_avg = (mid_mark + final_mark)/2;
  return student_avg;
}

char letter_grade_calculation(double student_avg) {

  char letter_grade = 'F';
  if (student_avg>=90) {
    letter_grade = 'A';
  } else if (student_avg >=80) {
    letter_grade = 'B';
  } else if (student_avg >=70) {
    letter_grade = 'C';
  } else if (student_avg >=60) {
    letter_grade = 'D';
  } else if (student_avg <60) {
    letter_grade = 'F';
  }
  return letter_grade;
}


void print_records(int [] students_id, double []midterm_marks, double []final_marks, String []students_name) {
  println("Name      ID      Mid      Final      Average      Mark");
  println("---------------------------------------------------------");
  for (int i=0; i<students_id.length; i++) {
    print(students_name[i]+"     ");
    print(students_id[i]+"     ");
    print(midterm_marks[i]+"      ");
    print(final_marks[i]+"      ");
    print(calculate_student_average(midterm_marks[i], final_marks[i])+"      ");
    print(letter_grade_calculation(calculate_student_average(midterm_marks[i], final_marks[i]))+"      ");
    println();
  }  
  println("--------------------------------------");
  println("Class Midterm Average is:   "+ calculate_class_average(midterm_marks)+ "%");
  println("Class Midterm Average is:   "+ calculate_class_average(final_marks)+ "%");
}



void sort_records_by_id (int []indices, int []students_id) {

  int [] sortedID = sort(students_id);

  for (int i = 0; i<indices.length; i++) {
    for (int j = 0; j<students_id.length; j++) {
      if (sortedID[i] == students_id[j]) {
        indices[j] = i;
      }
    }
  }
}


void print_sorted_records(int []index, int [] students_id, double[]midterm_marks, double []final_marks, String []students_name) {
  println("Name      ID      Mid      Final      Average      Mark");
  println("---------------------------------------------------------");

  for (int i=0; i<index.length; i++) {
    for (int j = 0; j<students_name.length; j++) {
      if (index[j] == i) {
        print(students_name[j]+"     ");
        print(students_id[j]+"     ");
        print(midterm_marks[j]+"      ");
        print(final_marks[j]+"      ");
        print(calculate_student_average(midterm_marks[i], final_marks[j])+"      ");
        print(letter_grade_calculation(calculate_student_average(midterm_marks[j], final_marks[j]))+"      ");
      }
    }
    println();
  }
  println("--------------------------------------");
  println("Class Midterm Average is:   "+ calculate_class_average(midterm_marks)+ "%");
  println("Class Midterm Average is:   "+ calculate_class_average(final_marks)+ "%");
  println();
}

int search(String [] students_name, String target) {

  int position = -1;
  for (int i = 0; i<students_name.length; i++) {
    if (students_name[i] == target) {
      position = i;
    }
  }
  return position;
}






void setup()
{ 
  int [] students_id= {10001, 20001, 12334, 14332, 99999, 10111, 20101, 12034, 10332, 99991} ;
  double [] midterm_marks = {99, 67, 88, 91, 56, 90, 70, 69, 79, 59};
  double [] final_marks = {89, 76, 80, 67, 99, 98, 56, 96, 90, 60};
  String [] students_name= {"Tim", "Joe", "Ali", "Kim", "Pam", "Rob", "Ben", "Ted", "Lee", "Jim"};

  print_records(students_id, midterm_marks, final_marks, students_name);

  // Using array of indices to use as an indicator of the order of the records based on students id numbers   
  int[] indices = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

  // using insertion sort to reorder the indices based on students ids in an ascending order
  sort_records_by_id(indices, students_id);

  println();

  println("The students records after sorting them by their id numbers are as follows:");

  print_sorted_records(indices, students_id, midterm_marks, final_marks, students_name);

  // Searching for the position of a student in the array of names and printing his/her records
  // serarching for "Kim"

  int position = search(students_name, "Kim");

  if (position == -1) {
    println("Search failed: " + "Kim" + " NOT FOUND");
  } else {
    double average = calculate_student_average(midterm_marks[position], final_marks[position]);

    println(students_name[position] + " was found: id: " + students_id[position] 
      + " midterm mark: " + midterm_marks[position] + ", final mark: " + final_marks[position] 
      + ", term average: " + average + ", and overal grade: " + letter_grade_calculation (average));
  }      


  // Searching for "Sam"
  position = search(students_name, "Sam");

  if (position == -1) {
    println("Search failed: " + "Sam" + " NOT FOUND");
  } else {
    double average = calculate_student_average(midterm_marks[position], final_marks[position]);

    println(students_name[position] + " was found: id is: " + students_id[position] 
      + " midterm mark: " + midterm_marks[position] + ", final mark: " + final_marks[position] 
      + ", term average: " + average + ", and overal grade: " + letter_grade_calculation (average));
  }
}
