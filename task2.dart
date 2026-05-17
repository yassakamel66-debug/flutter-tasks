import 'dart:io';

void main() {
  List<String> names = [];
  List<List<double>> grades = [];

  stdout.write("Enter number of students: ");
  int students = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < students; i++) {
    stdout.write("Enter student name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter number of subjects: ");
    int subjects = int.parse(stdin.readLineSync()!);

    List<double> studentGrades = [];

    for (int j = 0; j < subjects; j++) {
      stdout.write("Enter grade: ");
      double grade = double.parse(stdin.readLineSync()!);

      studentGrades.add(grade);
    }

    names.add(name);
    grades.add(studentGrades);
  }

  while (true) {
    print("\n1. Show All Results");
    print("2. Search Student");
    print("3. Exit");

    stdout.write("Choose: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      for (int i = 0; i < names.length; i++) {
        double sum = 0;

        for (double g in grades[i]) {
          sum += g;
        }

        double avg = sum / grades[i].length;

        String letter;

        if (avg >= 90) {
          letter = "A";
        } else if (avg >= 80) {
          letter = "B";
        } else if (avg >= 70) {
          letter = "C";
        } else {
          letter = "F";
        }

        print("${names[i].toUpperCase()}");
        print("Average = ${avg.toStringAsFixed(2)}");
        print("Grade = $letter");
      }
    } else if (choice == 2) {
      stdout.write("Enter student name: ");
      String search = stdin.readLineSync()!;

      bool found = false;

      for (int i = 0; i < names.length; i++) {
        if (names[i].toLowerCase() == search.toLowerCase()) {
          double sum = 0;

          for (double g in grades[i]) {
            sum += g;
          }

          double avg = sum / grades[i].length;

          print("Average = ${avg.round()}");

          found = true;
        }
      }

      if (!found) {
        print("Student not found");
      }
    } else if (choice == 3) {
      break;
    } else {
      print("Invalid choice");
    }
  }
}
