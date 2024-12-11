class Player1 {
  // 클래스에 변수를 생성할 때는 자료형 명시하기!!
  String name = 'alice';
  int xp = 100;
}

class Player2 {
  // name 변수 수정 불가
  final String name = 'alice';
  int xp = 100;

  void sayHello() {
    print("Hello, my name is $name");
  }
}

class Player3 {
  // late final String name;
  final String name;
  // late int xp;
  int xp;

  // Player3(String name, int xp) {
  //   // 다른 언어들과 달리 this 생략 권장
  //   // 단, 동명의 변수가 함수 내에 존재할 때는 `this.클래스변수`로 구분
  //   this.name = name;
  //   this.xp = xp;
  // }
  Player3(this.name, this.xp);

  void sayHello() {
    print("Hello, my name is $name");
  }
}

class Player4 {
  final String name;
  int xp;
  // property 추가
  String team;
  int age;

  // named arguments
  Player4(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  void sayHello() {
    print("Hello, my name is $name");
  }
}

class Player5 {
  final String name;
  int xp, age;
  String team;

  Player5(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  /** named constructor */
  Player5.createBluePlayer({required String name, required int age})
      : this.name = name,
        this.age = age,
        this.team = "blue",
        this.xp = 0;

  Player5.createRedPlayer(String name, int age)
      : this.name = name,
        this.age = age,
        this.team = "red",
        this.xp = 0;

  void sayHello() {
    print("Hello, my name is $name and I'm in $team");
  }
}

void main() {
  var player1 = Player1();
  print(player1.name);
  // 직접 수정 가능
  player1.name = "nancy";
  print(player1.name);

  /** naem 수정 불가 */
  var player2 = Player2();
  player2.sayHello();

  /** 생성자 추가 */
  var player3 = Player3("lufy", 200);
  player3.sayHello();

  /** named arguments in 생성자 */
  var player4 = Player4(name: "ace", xp: 1500, team: "white", age: 17);
  player4.sayHello();

  /** named constructor : 생성자 다양화 */
  var player5_a = Player5.createBluePlayer(name: "nico", age: 20);
  player5_a.sayHello();

  var player5_b = Player5.createRedPlayer("low", 24);
  player5_b.sayHello();
}
