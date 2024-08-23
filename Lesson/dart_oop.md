# Dart OOP Concept
## REF URL : https://dart-tutorial.com/object-oriented-programming/encapsulation-in-dart/
### Class

```dart
class ClassName {
// properties or fields
// methods or functions
}

// Example Create Person class
class Person {
  String? name;
  String? phone;
  bool? isMarried;
  int? age;

  void displayInfo() {
    print("Person name: $name.");
    print("Phone number: $phone.");
    print("Married: $isMarried.");
    print("Age: $age.");
  }
}

```

## Class & Object In Dart

```dart

ClassName objectName = ClassName();

//Example
class Bicycle {
  String? color;
  int? size;
  int? currentSpeed;

  void changeGear(int newValue) {
    currentSpeed = newValue;
  }

  void display() {
    print("Color: $color");
    print("Size: $size");
    print("Current Speed: $currentSpeed");
  }
}

void main() {
  // Here bicycle is object of class Bicycle. 
  Bicycle bicycle = Bicycle();
  bicycle.color = "Red";
  bicycle.size = 26;
  bicycle.currentSpeed = 0;
  bicycle.changeGear(5);
  bicycle.display();
}
```

## CONSTRUCTOR IN DART

```dart
// class with constructor
Person person = Person("John", 30);

//class without Constructor
Person person = Person();
person.name = "
John";
person.age = 30;
```

### Syntax

```dart
class ClassName {
  // Constructor declaration: Same as class name
  ClassName() {
    // body of the constructor
  }
}
```

### Example 1: How To Declare Constructor In Dart

```dart
class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Constructor
  Student(String name, int age, int rollNumber) {
    print(
        "Constructor called"); // this is for checking the constructor is called or not.
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}

void main() {
  // Here student is object of class Student.
  Student student = Student("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}
```

### Example 2: Constructor In Dart

```dart
class Teacher {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor
  Teacher(String name, int age, String subject, double salary) {
    this.name = name;
    this.age = age;
    this.subject = subject;
    this.salary = salary;
  }

  // Method
  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}\n"); // \n is used for new line
  }
}

void main() {
  // Creating teacher1 object of class Teacher
  Teacher teacher1 = Teacher("John", 30, "Maths", 50000.0);
  teacher1.display();

  // Creating teacher2 object of class Teacher
  Teacher teacher2 = Teacher("Smith", 35, "Science", 60000.0);
  teacher2.display();
}
```

## Parameterized Constructor In Dart

```dart
class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Constructor
  Student({String? name, int? age, int? rollNumber}) {
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}

void main() {
  // Here student is object of class Student. 
  Student student = Student(name: "John", age: 20, rollNumber: 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}
```

## xx IN DART
```dart
class Employee {
  // Private properties
  int? _id;
  String? _name;

// Getter method to access private property _id
  int getId() {
    return _id!;
  }
// Getter method to access private property _name
  String getName() {
    return _name!;
  }
// Setter method to update private property _id
  void setId(int id) {
    this._id = id;
  }
// Setter method to update private property _name
  void setName(String name) {
    this._name = name;
  }
  
}

//build-in getter and setter
class Employee {
  // Private properties
  int? _id;
  String? _name;

  // Constructor
  Employee(this._id, this._name);

  // Getter method to access private property _name
  int get id => this._id;

  // Getter method to access private property _prize
  String get name => this._name;

  // Setter to update private property _name
  set name(String name) => this._name = name;
  
  //*** OR THIS
  // Setter to update private property _age
  set name(String? name) {
    this._name = name;
  }
}



void main() {
  // Create an object of Employee class
  Employee emp = new Employee();
  // setting values to the object using setter
  emp.setId(1);
  emp.setName("John");

  // Retrieve the values of the object using getter
  print("Id: ${emp.getId()}");
  print("Name: ${emp.getName()}");
}
```

## INHERITANCE
```
Inheritance is a sharing of behaviour between two classes. 
It allows you to define a class that extends the functionality of another class. 
The extend keyword is used for inheriting from parent class.
```

```dart
class ParentClass {
  // Parent class code
}

class ChildClass extends ParentClass {
  // Child class code
}
```

```dart
class Car{
  String color;
  int year;

  void start(){
    print("Car started");
  }
}

class Toyota extends Car{
  String model;
  int price;

  void showDetails(){
    print("Model: $model");
    print("Price: $price");
  }
}

void main(){
  var toyota = Toyota();
  toyota.color = "Red";
  toyota.year = 2020;
  toyota.model = "Camry";
  toyota.price = 20000;
  toyota.start();
  toyota.showDetails();
}
```

### multiple inheritance
```dart
class Car {
// Properties
String? name;
double? price;
}

class Tesla extends Car {
// Method to display the values of the properties
void display() {
  print("Name: ${name}");
  print("Price: ${price}");
}
}

class Model3 extends Tesla {
// Properties
String? color;

// Method to display the values of the properties
void display() {
  super.display();
  print("Color: ${color}");
}
}

void main() {
// Create an object of Model3 class
Model3 m = new Model3();
// setting values to the object
m.name = "Tesla Model 3";
m.price = 50000.00;
m.color = "Red";
// Display the values of the object
m.display();
}
```
