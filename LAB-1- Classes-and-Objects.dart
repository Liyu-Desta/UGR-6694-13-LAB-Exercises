// Exercise 1: Design a Person class with properties like name, age, and address. Create objects of this class and access/modify their attributes in dart

class Person {
  String name;
  int age;
  String address;

  // Constructor
  Person(this.name, this.age, this.address);

  // Method to print person's information
  void printInfo() {
    print('Name: $name, Age: $age, Address: $address');
  }
}

void main() {
  // Create objects of Person class
  Person person1 = Person('John', 30, '123 Main St');
  Person person2 = Person('Alice', 25, '456 Elm St');

  // Access attributes of person1
  print('Person 1:');
  print('Name: ${person1.name}');
  print('Age: ${person1.age}');
  print('Address: ${person1.address}');

  // Modify attribute of person2
  person2.age = 28;
  person2.address = '789 Oak St';

  // Access modified attributes of person2
  print('\nPerson 2 (after modification):');
  print('Name: ${person2.name}');
  print('Age: ${person2.age}');
  print('Address: ${person2.address}');

  // Access method of person1
  print('\nPrinting info for Person 1:');
  person1.printInfo();
}
