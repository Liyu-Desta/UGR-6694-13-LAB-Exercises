// Exercise 5: Define a class Student with properties like name and marks (stored as a list). Implement a method to find the average mark of a student using list methods.

class Student {
  String name;
  List<int> marks;

  // Constructor
  Student(this.name, this.marks);

  // Method to find the average mark
  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0; // Return 0 if marks list is empty
    }
    int totalMarks = marks.reduce((value, element) => value + element);
    return totalMarks / marks.length;
  }
}

void main() {
  // Create a Student object
  Student student = Student('John', [85, 90, 75, 80]);

  // Calculate and print the average mark
  double averageMark = student.calculateAverageMark();
  print('${student.name}\'s average mark: $averageMark');
}
