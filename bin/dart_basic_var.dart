import 'dart:math';

import 'package:test/expect.dart';

void basic0FinalConst() {
  //non-nullable: null 불가
  // final: 변치 않음 (run-time때 할당)
  // const: 변치 않음 (compile-time때 할당)
  final String name = 'Bora';
  const String nickname = 'Nick';
  print(name);
  print(nickname);
  // name = 'nami';

  final DateTime now1 = DateTime.now();
  print(now1);

  Future.delayed(Duration(seconds: 1), () {
    final DateTime now2 = DateTime.now();
    print('-------');
    print(now1);
    print(now2);
  });
}

void basic1() {
  //변수
  //1. 선언법
  //var : 타입 추론. 권장 X

  String name = 'Voyager I'; // 문자열 타입
  int year = 1977; // 정수값
  double antennaDiameter = 3.7; // 실수값
  List flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune']; // list
  Map<String, dynamic> image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  }; // Map형태
  dynamic name2 = 'Bora';
  print(name2);
  name2 = 3;
  name2 = 3.2;
  print(name2);

  print(name2);
}

void basic2() {
  //2. 변수 타입
  //문자열 값 = String
  String name = 'Bora';
  String name2 = 'Dado';
  String nickname = 'Nick';

  print('name $name');
  print('nickname $nickname');
}

void basic3() {
  //2. 변수 타입
  // 숫자값 = 정수 (inst), 실수 (double, 소수점 0)
  int age = 24;
  double height = 170.3;

  print(age);
  print(height);

  //값 변경
  //변수명 = 변경될 값
  age++;
  height = height + 1.1;
  print(age);
}

void basic4() {
  int num1 = 3;
  int num2 = 2;

  print(num1 + num2);
  print(num1 - num2);
  print(num1 / num2);
  print(num1 % num2);
}

void basic5() {
  //boolean값 = bool
  bool isShow = false;
  print('isShow = $isShow');

  bool isTrue = 4 < 10;
  print(isTrue);
}

void basic6() {
  // <> 제네릭타입: eg. List<String> = List 안의 값들을 String으로 제한.
  List<String> stringlist = <String>[];
  print(stringlist);
  stringlist.add('a');
  stringlist.add('b');
  print(stringlist);
  stringlist.add('c');
  print(stringlist);
  print(stringlist.length);
  // stringlist.add(13);
  print(stringlist[0]);
  stringlist.add('a');
  stringlist.addAll(['b', 'a', 'c']);
  print(stringlist);
  print(stringlist.contains('a'));
  print(stringlist.last);
  print(stringlist.first);
  stringlist[0] = '가';
  stringlist[1] = '나';
  stringlist[2] = 'ca';
  print(stringlist);

  stringlist.remove('a');
  print(stringlist);

  stringlist.removeAt(0);
  print(stringlist);
}

void basic7() {
  // set 선언 방법
  Set<String> set = <String>{};
  set.add('a');
  set.add('b');
  set.add('c');
  print(set);
  print(set.length);
// print(set[2]); set은 순서 보장이 안됨.
}

void basic8() {
  // Map: key, value pair 자료 구조
//  선언 방식
// 1. key 값은 중복되면 안된다.

  Map<String, dynamic> joinInputForm = {
    'name': 'Bora',
    'age': 24,
    'height': 170.5,
    // 'bool': true,
    // 'list': [true, true, true, true],
    'phone': '010-2324-2343',
  };
  print(joinInputForm);
  print(joinInputForm.keys.toList());
  print('joinInputForm.keys.toList() ${joinInputForm.keys.toList()}');
  print(joinInputForm.values.toList());
  print('joinInputForm.values.toList() ${joinInputForm.values.toList()}');
  print(joinInputForm.length);
  print(joinInputForm.values);
  // joinInputForm.clear();
  print(joinInputForm);
  print(joinInputForm.containsKey('namee'));

  // Map<dynamic, String> map = {
  //   22342: '홍길동',
  //   456: '민지',
  //   89: '지영',
  //   '456': '보라',
  // };
  // print(map['456']);
  // print(map[456]);

  // Map map1 = {};
  // print(map1);
  // map1['name'] = 'Bora';
  // print(map1);
  // print(map1['name']);

  // map1.remove('name');
  // print(map1);
}

void basic9() {
  //조건문
  //if: 만약 ~ 라면
  print('start');
  int number = 43;

  if (number % 2 == 0) {
    // print('true');
    print('$number 는 2의 배수가 아닙니다.');
  } else {
    print('$number 는 2의 배수가 아닙니다.');
    print('나머지값: ${number % 2}');
  }
  print('end');
}

void basic10ElseIf() {
  int number = 11;
  if (number % 5 == 0) {
    print('5의 배수입니다.');
  } else if (number % 4 == 0) {
    print('4의 배수입니다.');
  } else if (number % 3 == 0) {
    print('3의 배수입니다.');
  } else if (number % 2 == 0) {
    print('2의 배수입니다.');
  } else {
    print('5,4,3,2의 배수가 아닙니다.');
  }
}

void basic11Switch() {
  //switch

  int number = 33;
  print(number % 4);
  switch (number % 4) {
    case 1:
      print('1입니다');
      break;
    case 2:
      print('2입니다.');
      break;
    case 3:
      print('3입니다.');
      break;
    default:
      print('1,2,3이 아닙니다.');
  }
}

void basicWhile() {
//반복문

  int weight = 65;
  int count = 0;

  while (weight > 50) {
    print('총 몸무게 : $weight');
    count++;
    print('줄넘기 횟수: $count');

    var removeWeight = Random().nextInt(2);
    weight = weight - removeWeight;
    print('감량무게: $removeWeight');
    print('총몸무게: $weight');
    print('-------');
  }
}

void basicFor() {
  final count = 3;
  for (var i = 0; i < count; i++) {
    print(i);
  }

  var j = 0;
  var k = 0;

  final List scoreList = [42, 52, 68, 50, 90, 30, 100, 88, 90];
  for (var i = 0; i < scoreList.length; i++) {
    if (scoreList[i] >= 60) {
      print('${i + 1} 번째 합격');
      // j++;
    } else {
      print('${i + 1} 번째 불합격');
      // k++;
    }
  }

  int i = 1;
  for (var score in scoreList) {
    if (score >= 60) {
      print('점수: $score. $i 번째 학생 합격입니다. ');
    } else {
      print('점수: $score. $i 번째 학생 불합격입니다.');
    }
    i++;
  }
}

void main() {
  // basicFor();
  // print(i);
  String message = functionStudyReturnType();
  print(message);
  int a = 2;
  int b = 3;
  int c = plus(a, b);
  print('$a + $b = $c');
}

// 반환타입 함수명(매개변수){
// 실행문;
// }

String functionStudyReturnType() {
  print('functionStudyReturnType1');
  print('functionStudyReturnType2');
  return '완료';
}

int plus(int a, int b) {
  int sum = a + b;
  print('$a + $b = $sum....');
  return sum;
}
