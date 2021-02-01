void main() {
  /* 
    --- Collection in Dart:
      --List: A collection of values
            ->mutable
            ->values are repeatable
            ->positive index
      --Sets: A collection of uniqe values
            ->mutable

      --Map: A collection of pairs
          -->mutable
      --collection-if
      --collection-for
      --spread
  
  */
  var cities = ['Dhaka', 'Chittagong', 'Khulna'];
  print(cities);
  print(cities[0]);
  print(cities[1]);
  print(cities[2]);
  cities[1] = 'Barisal';
  print(cities);
  //for-in loop
  for (var city in cities) {
    print(city);
  }
  //conventional for loop
  for (var i = 0; i < cities.length; i++) {
    print(cities[i]);
  }
  //exercise
  var integeList = [1, 3, 5, 7, 9];
  var sum = 0;
  for (var integer in integeList) {
    sum = sum + integer;
  }
  print(sum);
  //basic operation on list
  print(cities.length);
  print(cities.isEmpty);
  print(cities.isNotEmpty);

  print(cities.first);
  print(cities.last);

  cities.add('Tokyo');
  print(cities);

  cities.insert(1, 'Rangpur');
  print(cities);

  cities.removeAt(2);
  print(cities);

  print(cities.contains('Moscow'));
  print(cities.indexOf('Khulna'));

  cities.clear();
  print(cities);

  //Type anotationin lists
  List HeterogenousList = ['Nomn', 10, 25.2];
  List<String> stringList = ['This', 'is', 'a', 'string'];
  List<int> intList = [10, 20, 30, 40];
  List<double> decList = [10.2, 20.3, 30.5, 40.8];
  var sList = ['Hey', 'How', 'is', 'your', 'mood', 'today', 'haa?'];

  //final,const keyword in List
  final tempList = ['London', 'Paris', 'Japan'];
  //tempList = ['Dhaka', 'Uttara']; //reassigning not allowed,only assign once
  tempList[2] = 'Hong-kong';
  print(tempList);

  const constList = [10, 30, 70];
  //constList=[50,48,34]; //Compile time constant
  //constList[2] = 48; //No compile time error but it generates runtime error
  print(constList);
  /* wrap up :
    * can declare list variables as var,final,const
    * final,const variables can only be set once
    * can still modifycontents of final variable
    * but not with const variables
  */

  //Sets-Collection
  var countrySet = {'Italy', 'Uk', 'Paris'};
  print(countrySet);
  print(countrySet.elementAt(0));
  print(countrySet.elementAt(1));
  print(countrySet.elementAt(2));
  print(countrySet.length);
  print(countrySet.first);
  print(countrySet.last);
  print(countrySet.contains('Dhaka'));

  countrySet.add('Iceland');
  print(countrySet);
  countrySet.add('Italy');
  print(countrySet);
  countrySet.remove('Uk');
  countrySet.remove('Dhaka');
  print(countrySet);

  var euCountries = {'Italy', 'Uk', 'USA', 'Egypt'};
  var asianCountries = {'Bangladesh', 'India', 'China', 'Egypt'};
  print(euCountries.union(asianCountries));
  print(euCountries.intersection(asianCountries));
  print(euCountries.difference(asianCountries));

  for (var country in asianCountries) {
    print(country);
  }

  //exercise
  const a = {1, 3};
  const b = {3, 5};
  final c = a.union(b).difference(a.intersection(b));
  print(c);
  var total = 0;
  for (var value in c) {
    total += value;
  }
  print(total);

  //Maps
  var person = {
    'name': 'Noman',
    'age': 21,
    'height': 1.52,
  };
  print(person);
  print(person['name']);
  print(person['age']);
  print(person['height']);
  Map<String, dynamic> person1 = {
    'name': 'Noman',
    'age': 21,
    'height': 1.52,
  };
  person1['age'] = 32;
  person1['likePizza'] = true;
  print(person1);
  var person2 = <String, dynamic>{
    'name': 'Noman',
    'age': 21,
    'height': 1.52,
  };
  var name = person2['name'] as String;
  print(name);
  var weight = person2['weight']; //null value when key does't exist

  /* Lists and Sets are collection of items that can beaccesed sequentially
    * Lists and Sets are iterables, but maps aren't
    * for Lists and Sets can use for in loop
    * For Mapor-in loop need to be itterate through keys f
  */
  //Itterate through the keys
  for (var key in person2.keys) {
    print('$key : ${person2[key]}');
  }
  //Itterate through values
  for (var value in person2.values) {
    print(value);
  }
  //Itterate through entries
  for (var entry in person2.entries) {
    print('${entry.key} : ${entry.value}');
  }

  //exercise:Map
  const pizzaPrice = {'margherita': 5.5, 'pepperoni': 7.5, 'vegetarian': 6.5};
  const orders = {'margherita', 'pepperoni', 'pineapple'};
  var totalBill = 0.0;
  for (var order in orders) {
    if (pizzaPrice[order] != null) {
      totalBill += pizzaPrice[order];
    } else {
      print('$order pizza is not in the menu');
    }
  }
  print('Total Bill= \$$totalBill');

  //Nested Collection
  var resturants = [
    {
      'name': 'pizza mario',
      'cuisine': 'Italian',
      'ratings': [5.0, 3.5, 4.5]
    },
    {
      'name': 'chezz anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0]
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0]
    },
  ];
  for (var resturant in resturants) {
    print(resturant);
  }
  //exercise avg rating of resturants
  for (var resturant in resturants) {
    final ratings = resturant['ratings'] as List<double>;
    var totalRating = 0.0;
    for (var rating in ratings) {
      totalRating += rating;
    }
    final avgRating = (totalRating / ratings.length).toStringAsFixed(1);
    resturant['avgRating'] = avgRating;
  }
  print(resturants);

  //collection-if
  final colors = ['green', 'brown'];
  const addBlue = true;
  const addRed = false;
  if (addBlue) {
    colors.add('blue');
  }
  print(colors);

  final colors2 = [
    'green',
    'brown',
    if (addBlue) 'blue',
    if (addRed) 'red',
  ];
  print(colors2);

  //collection-for
  const extraCollor = ['yellow', 'black'];
  colors.addAll(extraCollor);
  print(colors);

  final colors3 = [
    'green',
    'brown',
    if (addBlue) 'blue',
    if (addRed) 'red',
    for (var color in extraCollor) color,
  ];
  print(colors3);

  //easier way: spread operator: ...
  final colors4 = [
    'green',
    'brown',
    if (addBlue) 'blue',
    if (addRed) 'red',
    extraCollor,
  ];
  print(colors4);

  final colors5 = [
    'green',
    'brown',
    if (addBlue) 'blue',
    if (addRed) 'red',
    ...extraCollor, //spread operator
  ];
  print(colors5);
  final tempRatings = [3.5, 4.0, 4.5, 5.0];
  final tempResturant = {
    'name': 'pizza mario',
    'cusine': 'Italian',
    if (tempRatings.length > 3) ...{
      'ratings': tempRatings,
      'isPopular': true,
    }
  };
  print(tempResturant);
  //exercise collection-if-for-spread
  /*  const bannanas = 5;
  const apples = 6;
  const grains = {'pasta': '500g', 'rice': '1kg'};
  const addGrains = true;
  var shoppingList = {};
  if (bannanas > 0) {
    shoppingList['bannanas'] = bannanas;
  }
  if (apples > 0) {
    shoppingList['apples'] = apples;
  }
  if (addGrains) {
    shoppingList.addAll(grains);
  }
  print(shoppingList);
  
  */
  const bannanas = 5;
  const apples = 6;
  const grains = {'pasta': '500g', 'rice': '1kg'};
  const addGrains = true;
  var shoppingList = {
    if (bannanas > 0) 'bannanas': bannanas,
    if (apples > 0) 'apples': apples,
    if (addGrains) ...grains,
  };
  print(shoppingList);

  //copy coolection in dart
  final list = [1, 2, 3];
  final copy1 = list; //acts as a pointer/refference
  copy1[0] = 0;
  print('list: $list');
  print('copy list: $copy1');
  //copy using coolection-for
  final copy2 = [for (var item in list) item];
  print(copy2);
  //copy using collection-spread
  final copy3 = [...list];
  copy3[0] = 6;
  print(list);
  print(copy3);
}
