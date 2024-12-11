/** enum : 옵션 열거 --> 오타 위험 감소 */
enum Team { red, blue }
enum XpLevel { beginner, normal, pro }

class Player {
  String name;
  // enum을 적용하기 위해 int --> XpLevel 자료형 변환
  XpLevel xp;
  Team team;

  Player(
      {required this.name,
      required this.xp,
      required this.team});

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  /** Cascade notation 
   * : `객체.메서드`같은 형식으로 호출될 것들을 `..메서드`같은 형식으로 대체
   *    이때, 객체 선언문 뒤에 세미콜론을 붙이지 않아야 함
  */
  var nico = Player(
    name: "nico", 
    // enum 값 호출 : `enum이름.값`
    xp: XpLevel.normal, 
    team: Team.blue
  );
  var tom = nico
    ..name = "tom"
    ..team = Team.red
    ..xp = XpLevel.pro
    ..sayHello();
}
