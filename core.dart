// Hello World

// void main() {
//   print('Hello, Juniors!');
// }

//  ---------------------------------------------------

// Data-Types and Variables

// void main() {
//   int age = 20;
//   double price = 99.99;
//   String name = 'cursedperson_21';
//   bool isStudent = true;

//   const double pi = 3.14;        // Compile-time constant
//   final DateTime now = DateTime.now(); // Run-time constant

//   print('$name is $age years old. Current time: $now');
// }

//  ---------------------------------------------------

// Operators

// void main() {
//   int a = 10;
//   int b = 3;

//   print(a + b); // Addition
//   print(a / b); // Division
//   print(a % b); // Modulus

//   print(a > b && b < 5); // Logical AND
//   print(a ?? 0); // Null-coalescing
// }

//  ---------------------------------------------------

// Control Flow

// void main() {
//   int score = 85;

//   if (score >= 90) {
//     print('A Grade');
//   } else if (score >= 75) {
//     print('B Grade');
//   } else {
//     print('C Grade');
//   }
//   int i =1;
//   for ( i ; i <= 5; i++) {
//     print('Count $i');
//   }

//   int n = 3;
//   while (n > 0) {
//     print('While loop: $n');
//     n--;
//   }
// }

//  ---------------------------------------------------

// Functions

// void greet(String name) {
//   print('hello $name ');
// }

// int add(int a, int b) {
//   return a + b;
// }

// void main() {
//   greet('rahul');
//   print(add(5, 2));
// }

//  ---------------------------------------------------

// Collections

// void main() {
//   // List
//   List<String> fruits = ['Apple', 'Banana', 'Mango','Orange'];
//   fruits.add('Orange');
//   print(fruits);

//   // Set
//   Set<int> numbers = {1, 2, 2, 3};
//   print(numbers);

//   // Map
//   Map<String, int> marks = {'Math': 90, 'Science': 85};
//   marks['English'] = 88;
//   print(marks);

//   // Iteration
//   fruits.forEach((fruit) => print(fruit));
// }


//  ---------------------------------------------------

// Classes & Objects (OOP)

//  INHERITANCE
// class Student {
//   String name;
//   int age;

//   Student(this.name, this.age); //Contructor

//   void display() {
//     print('Name: $name, Age: $age');
//   }
// }
// class GraduateStudent extends Student {
//   GraduateStudent(String name, int age) : super(name, age);

//   @override
//   void display() {
//     print('Graduate Student: $name, Age: $age');
//   }
// }

// void main() {
//   Student s1 = Student('Rahul', 21);
//   s1.display();

//   GraduateStudent gs = GraduateStudent('Joe', 23);
//   gs.display();
// }

//Encapsulation
// class Student {
//   String _name; // Private variable (underscore makes it private)
//   int _age;

//   Student(this._name, this._age);
//   // Getter
//   String get name => _name;
//   // Setter with validation
//   set name(String newName) {
//     if (newName.isNotEmpty) {
//       _name = newName;
//     }
//   }
//   int get age => _age;
//   void display() {
//     print('Name: $_name, Age: $_age');
//   }
// }

// void main() {
//   Student s1 = Student('Rahul', 21);
//   s1.display();

//   s1.name = 'Joe'; // Using setter
//   print(s1.name); // Using getter
// }

// --Abstraction

// abstract class Person {
//   void displayDetails();
// }

// class GraduateStudent extends Person {
//   String name;
//   int age;

//   GraduateStudent(this.name, this.age);

//   @override //Changes of Behavior
//   void displayDetails() {
//     print('Graduate Student: $name, Age: $age');
//   }
// }

// void main() {
//   Person gs = GraduateStudent('Rahul', 23);
//   gs.displayDetails();
// }


//  ---------------------------------------------------

// Async Programming

// Future<String> fetchData() async {
//   await Future.delayed(Duration(seconds: 2));
//   return 'Data loaded successfully!';
// }

// void main() async {
//   print('Fetching...');
//   String data = await fetchData();
//   print(data);
// }

//  ---------------------------------------------------

// Exception Handling

// void main() {
//   try {
//     int result = 10 ~/ 0;
//     print(result);
//   } catch (e) {
//     print('Error: $e');
//   } finally {
//     print('Completed.');
//   }
// }

//  ---------------------------------------------------

// Null-Saftey

// void main() {
//   String? name;
//   name = null;
// }
