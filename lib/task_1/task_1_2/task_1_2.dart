import 'model/student.dart';

void main() {
  List<Student> students = [
    Student("Ivan", 20, 7.8),
    Student("Andrew", 25, 8.8),
    Student("Petr", 21, 10.0),
    Student("Pavel", 18, 5.5),
  ];

  _sortStudentsByGPA(students);

  for (var student in students) {
    print(student);
  }
}

void _sortStudentsByGPA(List<Student> students) {
  students.sort((a, b) => b.gpa.compareTo(a.gpa));
}
