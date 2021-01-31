void main() {
  /*
    ---- if/else statement
    ---- while and for loop
    ---- switch statement
    ---- enumerations

  */
  //if-else statement
  const age = 14;
  if (age < 16) {
    print('Junior Tickit');
    print('price is \$8');
  } else if (age >= 60) {
    print('Senior Tickit');
    print('price is \$10');
  } else {
    print('Regular Tickit');
    print('price is \$12');
  }
  print('Enjoy Your Visit!');

  //exercise
  const netSalary = 100;
  const expense = 50;
  if (netSalary > expense) {
    print('You have saved \$${netSalary - expense} this month');
  } else if (netSalary < expense) {
    print('You have lost \$${expense - netSalary} this month');
  } else {
    print('Your Balance hasn\' changed');
  }

  //while-loop
  var i = 1; //initialization
  while (i <= 5) {
    //condition
    print('x' * i);
    i++; //increment
  }

  //for loop
  for (var i = 1; i <= 5; i++) {
    print('x' * i);
  }

  //for loop for collection
  for (var i in [1, 2, 3]) {
    print(i);
  }

  //fizz buzz exercise
  for (var i = 1; i <= 15; i++) {
    if ((i % 3 == 0) && (i % 5 == 0)) {
      print('fizz buzz');
    } else if (i % 3 == 0) {
      print('fizz');
    } else if (i % 5 == 0) {
      print('buzz');
    } else {
      print(i);
    }
  }

  //break and continue statement
  for (var i = 1; i <= 16; i++) {
    if ((i % 3 == 0) && (i % 5 == 0)) {
      print('fizz buzz');
      break;
    }
    if (i % 3 == 0) {
      print('fizz');
      continue;
    }
    if (i % 5 == 0) {
      print('buzz');
      continue;
    }
    print(i);
  }
  print('done');

  //switch statement
  int pos = 1;
  switch (pos) {
    case 1:
      print('gold :)');
      break;
    case 2:
      print('silver');
      break;
    case 3:
      print('bronze');
      break;
    default:
      print('no medal, try again :(');
      break;
  }

  //Enumeration Type
  Medal medal = Medal.gold;
  var medal_1 = Medal.bronze;

  switch (medal) {
    case Medal.gold:
      print('gold :)');
      break;
    case Medal.silver:
      print('silver');
      break;
    case Medal.bronze:
      print('bronze');
      break;
    case Medal.nomedal:
      print('no medal, try again :(');
      break;
  }

  //calculator exercise
  Operation op = Operation.plus;
  const a = 4;
  const b = 2;
  switch (op) {
    case Operation.plus:
      print(a + b);
      break;
    case Operation.minus:
      print(a - b);
      break;
    case Operation.multiply:
      print(a * b);
      break;
    case Operation.divide:
      print(a / b);
      break;
    default:
      print('invalid operation!');
      break;
  }
}

//Enumeration type
enum Medal { gold, silver, bronze, nomedal }
enum DayOfTheWeek {
  saturday,
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
}
enum Suits { hearts, diamonds, clubs, spades }
enum Operation { plus, minus, multiply, divide }
