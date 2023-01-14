class Student {
  //생성자 constructor
  // Student(this.name, this.age);
  Student({required String name, this.age}) : _name = '$name 학생';

  // Private
  String _name;
  //public
  int? age;

  set name(String value) {
    _name = '$value 학생';
  }

  String get name => _name;

  void printInfo() {
    print('-----');
    print('name : $_name');
    print('age: $age');
    print('-----');
  }
}
