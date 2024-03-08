// Exercise 3: Create a Map<String, int> to store student names and their corresponding marks. Use map methods like putIfAbsent, forEach, and containsKey to add, iterate, and check for entries.

void main() {
  // Create a Map to store student names and their marks
  Map<String, int> studentMarks = {};

  // Add entries to the map using putIfAbsent method
  studentMarks.putIfAbsent('John', () => 85);
  studentMarks.putIfAbsent('Alice', () => 90);
  studentMarks.putIfAbsent('Bob', () => 75);
  studentMarks.putIfAbsent('Emily', () => 80);

  // Print the map entries using forEach method
  print('Student marks:');
  studentMarks.forEach((name, marks) {
    print('$name: $marks');
  });

  // Check if a student name exists in the map using containsKey method
  String studentNameToCheck = 'Alice';
  if (studentMarks.containsKey(studentNameToCheck)) {
    print('$studentNameToCheck\'s marks: ${studentMarks[studentNameToCheck]}');
  } else {
    print('$studentNameToCheck not found in the map.');
  }
}
