import 'package:flutter/material.dart';

void main() {
  runApp(CourseApp());
}

class Course {
  String code;
  String title;
  String description;

  Course({
    required this.code,
    required this.title,
    this.description = "",
  });
}

class CourseListPage extends StatelessWidget {
  final List<Course> courses;

  CourseListPage({required this.courses});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses List'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(courses[index].title),
            subtitle: Text(courses[index].code),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetailsPage(course: courses[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CourseDetailsPage extends StatelessWidget {
  final Course course;

  CourseDetailsPage({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(course.title),
            Text(course.code),
            Text(course.description),
          ],
        ),
      ),
    );
  }
}

class CourseApp extends StatelessWidget {
  final List<Course> courses = [
    Course(
      code: "SiTE-001",
      title: "Introduction To Programming",
      description: "Computer Organization, Architecture, Programming",
    ),
    Course(
      code: "SiTE-002",
      title: "Discrete Mathematics",
      description: "Cypher, cryptography, encryption",
    ),
    Course(
      code: "SiTE-322",
      title: "Mobile Programming",
      description: "Widget, states, network, calls",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course App',
      home: CourseListPage(courses: courses),
    );
  }
}
