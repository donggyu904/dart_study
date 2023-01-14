import 'shape.dart';

class Rectangle implements Shape {
  Rectangle(this.width, this.height);
  double width;
  double height;

  @override
  double getArea() {
    return width * height;
  }

  @override
  String? color = 'red';

  @override
  void draw() {
    // TODO: implement draw
  }
  
}
