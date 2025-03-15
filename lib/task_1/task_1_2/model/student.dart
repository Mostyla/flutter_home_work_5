class Student {
  final String _name;
  final int _age;
  num gpa;

  Student(this._name, this._age, this.gpa);

  @override
  String toString() {
    return 'Name: $_name, Age: $_age, GPA: $gpa';
  }
}
