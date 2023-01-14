import 'class/student.dart';
import 'inheritance/circle.dart';
import 'inheritance/person.dart';
import 'inheritance/rectangle.dart';
import 'inheritance/shape.dart';

// void main() {
//   print('class 공부');
//   Student girlStudent = Student(name: 'namu', age: 21);
//   print(girlStudent.name);
//   girlStudent.printInfo();
//   girlStudent.name = '보라';
//   print('main = ${girlStudent.name}');
//   girlStudent.age = 18;
//   girlStudent.printInfo();
// }

// void main() {
//   print('inheritance study');
//   Person mom = Person(name: '엄마');
//   mom.speak();
//   mom.walk();
//   print(mom.name);

//   Hero child = Hero('자식');
//   print(child.name);
//   child.speak();
//   child.walk();
//   child.fly();

//   Person child2 = Hero('자식2');
//   child2.speak();
//   child2.walk();
//   Person bora = Bora();
//   // child2.fly();
//   speakName(mom);
//   speakName(child);
//   speakName(child2);
//   speakName(bora);
// }

// void speakName(Person person) {
//   print('${person.name}');
// }

void main() {
  Circle circle = Circle(3);
  Rectangle rectangle = Rectangle(5, 10.3);
  circle.getArea();
  rectangle.getArea();

  printArea(circle);
  printArea(rectangle);
  // printArea(Shape());
}

void printArea(Shape shape) {
  print('면적 = ${shape.getArea()}');
}
