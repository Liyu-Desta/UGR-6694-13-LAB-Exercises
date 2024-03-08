// Exercise 2: Define a Student class that inherits from Person and adds properties like roll number and marks. Create student objects and use methods to calculate total marks or average

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

class Student extends Person {
  int rollNumber;
  List<int> marks;

  // Constructor
  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  // Method to calculate total marks
  int calculateTotalMarks() {
    int totalMarks = 0;
    for (int mark in marks) {
      totalMarks += mark;
    }
    return totalMarks;
  }

  // Method to calculate average marks
  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    return total / marks.length;
  }
}

void main() {
  // Create student objects
  Student student1 = Student('John', 20, '123 Main St', 101, [85, 90, 75, 80]);
  Student student2 = Student('Alice', 22, '456 Elm St', 102, [70, 65, 80, 75]);

  // Print information for student1
  print('Student 1:');
  student1.printInfo();
  print('Roll Number: ${student1.rollNumber}');
  print('Marks: ${student1.marks}');
  print('Total Marks: ${student1.calculateTotalMarks()}');
  print('Average Marks: ${student1.calculateAverageMarks()}');

  // Print information for student2
  print('\nStudent 2:');
  student2.printInfo();
  print('Roll Number: ${student2.rollNumber}');
  print('Marks: ${student2.marks}');
  print('Total Marks: ${student2.calculateTotalMarks()}');
  print('Average Marks: ${student2.calculateAverageMarks()}');
}
