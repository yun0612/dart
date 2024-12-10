void main() {
  /** basic Data Type */
  String name = "zam_on";
  bool adult = true;
  int age = 24;
  double pi = 3.141592;

  /** num
   * : int와 double의 부모 클래스
   *   정수와 실수 모두 저장 가능
   */
  num x = 10;
  x = 1.23;

  /** List */
  // 1. var로 선언 후 대괄호로 초기화
  var example = [1, 2, 3, 4];

  // 2. List<type>으로 자료형 명시
  List<int> ex_lst = [1, 2, 3, 4];

  // .add(value) : 리스트 요소 추가
  ex_lst.add(5);
  print(ex_lst);

  /** Collection If
   * : 리스트 내부에 if 조건문 사용
   *   조건에 부합할 경우 요소 추가
   */
  bool dDay = true;
  var test_if = [
    "a",
    "b",
    "c",
    // 축약형
    // if (dDay) { test_if.add("d"); }
    if (dDay) "d",
  ];
  print(test_if);

  /** String Interpolation
   * : 문자열 내에 변수를 넣는 것
   *   변수명 앞에 달러 기호($) 추가 --> $변수
   *   변수에 계산을 하고 싶으면 중괄호로 묶기 --> ${ 변수 + 2}
   */
  var id = "pepe";
  var level = 3;
  var greeting = "Hello, My name is $id, and I'm level ${level + 2}";
  print(greeting);

  /** Collection For
   * : 리스트와 리스트를 합치기 위해 리스트 내에 for문 사용
   */
  var oldFriends = ["Alice", "Scarlett"];
  var newFriends = [
    "Bob",
    "Emma",
    for (var friend in oldFriends) "❤️$friend",
  ];
  print(newFriends);

  /** Map
   * : python의 리스트와 유사
   *   키와 값으로 구성
   */
  // 1. var
  // 2. Map<key_type, value_type>
  Map<int, bool> tmp = {1: true, 2: false, 3: false};

  /** SET
   * : Set<type> 변수 = {value, ...};
   *   list와 유사하지만 각 요소가 모두 유니크하다는 차이
   *   중복 제거
   */
  Set<int> ex_set = {1, 2, 3};
  ex_set.add(1);
  ex_set.add(1);
  print(ex_set);
}
