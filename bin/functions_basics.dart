const globaVariable = 15;
var counter = 1;
void main(List<String> args) {
  sayHi();

  const name = 'Noman';
  const age = 21;
  printNameAge(name, age);

  final person = returnNameAge('Noman', 21);
  print(person);

  print(sumList([10, 20, 30]));
  print(sumList([]));
  print(sumList([1, 2, 3, 4, 5]));

  final person1 = namedDescribe(name: 'Noman', age: 21);
  print(person1);

  // with null/single value it works
  final person2 = namedDescribe(name: 'Noman');
  print(person2);
  //with default value it works
  final person3 = namedDescribe(name: 'Noman', age: 21);
  print(person3);
  /* in Null Safety a single arguement/null value argument will not work
    How to solve? Goto Function definition of required and default value

  */

  //default positional value
  foo(1, 3);
  foo(1);

  //named and positional argument mixed
  foo1(2, b: 6, c: 4);
  foo1(4, b: 2, c: 6);

  //exercise
  const order = ['margharita', 'pepperoni', 'pineapple'];
  final totalBill = orderPrice(order);
  print('Total Bill \$$totalBill');

  //Fat arrow notation
  print('Sum of two : ${sumOfTwo(2, 3)}');

  //global varibale scope
  print(globaVariable);
  printGlobalVariable();

  //INNER-function scopes
  outerFunction(1);

  //side-effect of function
  sideEffectStar();
  sideEffectStar();
  sideEffectStar();
}

void sayHi() {
  print('Hi');
  print('Welcome');
}

void printNameAge(String name, int age) {
  print('My name is $name and I\'m $age years old');
}

String returnNameAge(String name, int age) {
  return 'My name is $name. I\'m $age years old';
}

double sumList(List<double> lst) {
  var total = 0.0;
  for (var value in lst) {
    total += value;
  }
  return total;
}

//positional arguments in function
//matches arugemts by arguments
//difficult to remember arguments order when there's many arguments
void positionalDescribe(String name, int age) {
  print('My name is $name and I\'m $age years old');
}

//named arguments
String namedDescribe({String name, int age}) {
  return 'My name is $name and I\'m $age years old';
}

String namedDescribe2({String name = '', int age = 0}) {
  return 'My name is $name and I\'m $age years old';
}

//required and default value
/*  WRITTEN IN NULL SAFETY
  /// not a convinient way
String namedDescribe1({String? name, int? age}) {
  return 'My name is $name and I\'m $age years old';
}
  /// Better way: Default Value
String namedDescribe1({String name='', int age=0}) {
  return 'My name is $name and I\'m $age years old';
}
  ///Even a better way :required
String namedDescribe1({required String name,required  int age}) {
  return 'My name is $name and I\'m $age years old';
}
*/
//POSITIONAL Arguments as optional and also default value
void foo(int a, [int b = 2]) {
  print('a: $a, b: $b');
}

//Nmaed and positional argument mixed
void foo1(int a, {int b, int c}) {
  print('a: $a, b: $b, c: $c ');
}

double orderPrice(List<String> orders) {
  const pizzaPrice = {'margharita': 5.5, 'pepperoni': 7.5, 'vegetarian': 6.5};
  var total = 0.0;
  for (var order in orders) {
    final price = pizzaPrice[order];
    if (price != null) {
      total += price;
    }
  }
  return total;
}

//Fat Arrow  operator(=>)
//usefull when function body has a single statement
int sumOfTwo(int x, int y) => x + y;

// global scope of variable
void printGlobalVariable() {
  print(globaVariable);
}

//Inner Function Scopes
void outerFunction(int a) {
  const b = 2;
  print('outer Function: a: $a -main, b: $b -outer');
  void innerFunction1(int c) {
    const d = 4;
    print(
        'Inner Function1: a: $a -main, b: $b -outer, c: $c -inner1, d: $d -inner1');
    void innerFunction2(int e) {
      print(
          'Inner Function2: a: $a -main, b: $b -outer, c: $c -inner1 d: $d -inner1, e: $e -inner2');
    }

    innerFunction2(5);
  }

  innerFunction1(3);
}

// side-effect fuction
//A function has a side-effect if it modifies the contents of a variable that is declared outside it's scope
void sideEffectStar() {
  print('*' * counter);
  counter++;
}

//Pure Function: A function that always produce same result when called with same arguments
// also doesn't mutate any variable outside it's own scope

/* 
  * Functions : Essential building block to organize our code and make it more reuseable
  * declare and use functions
  * named and positional argument
  * default values and required arguments in null safety
  * arrow notation (=>)
  * lexical scope and inner functions
  * avoiding global mutable state and pure function

*/
