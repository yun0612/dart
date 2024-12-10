/** 함수 생성 */
// 1. 반환형 함수명(매개변수) { ...}
String sayHello(String name) {
  return "Hi $name, nice to meet you";
}

// 2. fat arrow(=>) : return과 같은 의미
int plus(int a, int b) => a + b;

/** named argument 
 * : 함수를 사용할 때, 매개변수의 이름을 명시해서 순서와 무관하게 값을 전달하는 것
 *   (순서대로 나열하던 기본 방식은 positional argument)
 *   ! 매개변수를 소괄호 안에서 다시 중괄호로 감싸야 함
 *   ! Null 값이 들어올 수 있음 -> 기본값 설정 or required 설정
*/
// 1. 기본값 설정 : 매개변수에 값이 전달되지 않을 때 기본 할당되는 값 설정
String sayHi1(
    {String name = "unknown", int age = 0, String gender = "unknown"}) {
  return "Hi $name, you are an $age years old $gender";
}

// 2. ⭐required 설정 : 필수 매개변수로 설정하는 키워드
//                      함수 사용시 자동완성으로 매개변수 리스트 제공됨
String sayHi2(
        {required String name, required int age, required String gender}) =>
    "Hi $name, you are an $age years old $gender";

/** optional posional argument 
 *  1. 옵션으로 설정할 매개변수를 대괄호로 감싼다
 *  2. 값이 없을 수도 있다는 의미로 NULL 값을 받을 수 있게 ?를 추가한다
 *  3. 값이 없을 때 할당할 기본값을 설정한다
*/
String greeting(String name, int age, [String? country = "korea"]) {
  return "Hi, I'm $name, $age years old. I'm from $country";
}

void main() {
  print(sayHello("zam_on"));
  print(plus(10, 20));
  print("");

  print(sayHi1(age: 10));
  print(sayHi2(name: "pepe", age: 16, gender: "woman"));
  print("");

  print(greeting("zam_on", 12));
}
