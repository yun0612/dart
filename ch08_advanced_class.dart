/** 추상 클래스
 * : 내부 코드 작성 없이 클래스 구조만 작성
 *   일반 클래스가 추상 클래스를 상속하면 내부 코드 구현
 *   (상속 후 일반 클래스에 추상 클래스에 있는 함수가 없으면 오류 발생)
 */
abstract class Human {
  void walk();
}

/** Mixin class
 * : 생성자가 없는 클래스
 *   일반 클래스가 with 키워드로 Mixin 내부의 속성과 함수를 긁어갈 수 있음
 *   부모 클래스와 연결되어 상호작용하는 상속과 달리 단순히 코드를 가져감
 */
mixin class Run {
  void run() {
    print("ruuuuuuuuuun");
  }
}

/** 상속
 * : 클래스명 extends 상속할클래스명
 *   부모 클래스와 상호작용할 때는 `super()` 사용
 *   메서드 오버라이딩 가능
 */
class Player extends Human with Run {
  String name;
  int xp;
  String team;

  Player({required this.name, required this.xp, required this.team});

  void walk() {
    print("$name is walking");
  }

  void sayHello() {
    print("Hi my name is $name");
  }
}

class SoccerPlayer extends Player {
  String role;

  // super()를 사용해 부모 클래스의 생성자로 값 전달
  // 마지막 매개변수에도 콤마를 기입하면 괄호 제외 깔끔하게 정렬됨
  SoccerPlayer({
    required this.role,
    required String name,
    required int xp,
    required String team,
  }) : super(name: name, xp: xp, team: team);

  // 메서드 오버라이딩
  @override
  void sayHello() {
    super.sayHello;
    print("and I play for $team");
  }
}
