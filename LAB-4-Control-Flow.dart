// Exercise 5: Write a program that takes a grade as input and uses a switch statement to display the corresponding letter grade (A, B, C, etc.) in dart

import 'dart:io';

void main() {
  // Prompt the user to enter a grade
  print("Enter your grade:");
  int grade = int.parse(stdin.readLineSync()!);

  // Use a switch statement to determine the corresponding letter grade
  String letterGrade = '';
  switch (grade) {
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
      letterGrade = 'A';
      break;
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
      letterGrade = 'B';
      break;
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
      letterGrade = 'C';
      break;
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
      letterGrade = 'D';
      break;
    default:
      letterGrade = 'F';
  }

  // Print the corresponding letter grade
  print("Your letter grade is: $letterGrade");
}
