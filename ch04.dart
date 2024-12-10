import 'dart:ffi';

/** Typedef 
 *  : 자료형에 별명을 설정할 수 있음
 *    typedef 별명 = 자료형;
*/
typedef ListOfInt = List<int>;
ListOfInt reverseListOfInts(ListOfInt ints) {
  var reversed = ints.reversed;
  return reversed.toList();
}

/** QQ operator 
 * : A ?? B
 *   A가 null이면 A, null이 아니면 B를 선택하는 연산자
*/
String toCapital(String? str) => str?.toUpperCase() ?? "ANON";

void main() {
  print(toCapital("abc"));

  /** QQ assignment operator 
   *  : A ??= B
   *    A가 null이면 B를 할당한다
  */
  String? name;
  name ??= "unknown";
  print(name);

  print(reverseListOfInts([0, 2, 4, 6]));
}
