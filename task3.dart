void main() {
  Set<String> students = {};

  addStudent(students, "Joe");
  addStudent(students, "Ali");
  addStudent(students, "Mona");
  addStudent(students, "Joe");

  print("Students Recursively:");
  printStudents(students.toList(), 0);

  print("\nUsing forEach + Lambda:");
  students.forEach((student) => print(student));

  Set<String> newStudents = {"Sara", "Omar"};

  Set<String> allStudents = {...students, ...newStudents};

  print("\nAfter Merge:");
  print(allStudents);

  Map<String, List<Map<String, double>>> studentCourses = {};

  addCourse(studentCourses, "Joe", "Math", grade: 90);
  addCourse(studentCourses, "Joe", "Physics", grade: 80);
  addCourse(studentCourses, "Ali", "Programming", grade: 70);

  print("\nAverage Grades:");

  studentCourses.forEach((student, courses) {
    print("$student = ${averageGrade(courses)}");
  });
}

void addStudent(Set<String> students, String name) {
  students.add(name);
}

void printStudents(List<String> students, int index) {
  if (index >= students.length) {
    return;
  }

  print(students[index]);

  printStudents(students, index + 1);
}

void addCourse(
  Map<String, List<Map<String, double>>> data,
  String studentName,
  String courseName, {
  double grade = 0,
}) {
  data.putIfAbsent(studentName, () => []);

  data[studentName]!.add({courseName: grade});
}

double averageGrade(List<Map<String, double>> courses) {
  double total = courses.fold(0, (sum, course) => sum + course.values.first);

  return total / courses.length;
}
