void basic2() {
  //2. 변수 타입
  //문자열 값 = String
  String name = 'Bora';
  String name2 = 'Dado';
  String nickname = 'Nick';

  print('name $name');
  print('nickname $nickname');
}

int add() => 1 + 1;
int a = 3;

var add2 = () {
  // print('a');
  return 1 + 1;
};

int addORI(int a, int b) {
  return a + b;
}

Function addANON = (int a, int b) {
  return a + b;
};

addARR(int a, int b) => a + b;

Function addARRANON = (int a, int b) => a + b;

void main() {
  basic2();
  print(add());
  print(a.runtimeType);
  print(add.runtimeType);
  print(add2());
  print(add2.runtimeType);
  print(2.runtimeType);
  print(addORI(2, 3));
  print(addARR(2, 3));
}
