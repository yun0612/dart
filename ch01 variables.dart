// 반드시 main 함수가 있어야 함
void main() {
  // 세미 콜론(') 필요!
  print('hello world!');

  /* 변수 선언 */
  // ## 자료형 고정 ##
  // 1. var : 컴파일러가 자동으로 어떤 자료형인지 판단
  var name = "zam_on";
  // 2. 자료형 명시
  int age = 24;

  // ## 자료형 자유 ##
  // dynamic : 자료형 상관없이 값 할당 가능
  // var로 선언 후 값 초기화 안하면 dynamic으로 지정됨
  var test; // = dynamic test;
  test = "hello";
  test = 1;
  test = true;

  // ## 값 고정 ##
  // 1. final : 다른 프로그래밍 언어의 const와 같은 효과 (런타임 중 값 고정)
  // final만 사용해도 되고, final 뒤에 자료형을 명시해도 됨
  final size = 10; // = final int size = 10;
  // size = 0;  // error

  // 2. const : 타 프로그래밍 언어에서와 달리 컴파일 타임 중 값 고정
  // 사용자가 코드를 실행하기 전에 컴파일러가 값을 알고 있어야 할 때 사용
  const key = '2468';
  // const key = fetchApi(); --> final로 설정해야 함

  // ## 선 변수 선언, 후 값 할당 ##
  // late : 변수를 선언만 해 두고 나중에 값을 넣겠다는 설정
  // late로 설정해 둔 변수는 값이 할당되기 전에 사용할 수 없도록 컴파일러가 체크
  late final String temp;
  // do somtghing... (ex. api)
  temp = '';

  /* Null safety */
  // 자료형 뒤에 물음표(?)를 붙이면 해당 변수에 null이 저장될 수 있음
  // String hello = null ;  // error
  String? hello = null; // ok

  // 변수에 null이 아닌 값이 있는지 확인하는 과정 필요
  if (hello != null) {
    hello.isNotEmpty;
  }
  // 축약형 : 변수 뒤에 물음표(?)
  hello?.isNotEmpty;
}
