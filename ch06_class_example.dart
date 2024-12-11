class Player {
  final String name;
  int xp;
  String team;

  Player(this.name, this.xp, this.team);
  Player.fromJson(Map<String, dynamic> playerJson)
      : this.name = playerJson['name'],
        this.xp = playerJson['xp'],
        this.team = playerJson['team'];

  void sayHello() {
    print("Hi, I'm $name in $team");
  }
}

void main() {
  // JSON형태 api 데이터 예시
  var apidata = {
    {'name': 'ace', 'xp': 1500, 'team': 'white'},
    {'name': 'sabo', 'xp': 1500, 'team': 'blue'},
    {'name': 'luffy', 'xp': 1000, 'team': 'yellow'}
  };

  // forEach ( map<> )
  // forEach ((요소) {액션}) : 요소마다 액션 실행
  apidata.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
