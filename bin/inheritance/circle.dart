import 'shape.dart';

class Circle extends Shape {
  Circle(this.radius);
  double radius;

  @override
  double getArea() {
    return radius * radius * 3.14;
  }
}
