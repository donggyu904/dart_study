class Bora extends Person {
  Bora() : super(name: '보라');
}

class Hero extends Person {
  Hero(String name) : super(name: name);

  // Hero(super.name);
  void fly() {
    print('$name, 날다.');
  }

  @override
  void walk() {
    print('-----walk-----');
    super.walk();
    print('$name, 뛰다');
    print('-----walk-----');
  }
}

class Person {
  Person({required this.name});
  String? name;

  void speak() {
    print('안녕 나는 $name 입니다.');
  }

  void walk() {
    print('$name은 걷는다.');
  }
}
