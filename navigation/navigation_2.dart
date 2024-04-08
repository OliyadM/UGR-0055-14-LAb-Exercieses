import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Course {
  final int id;
  final String title;
  final String instructor;
  final double price;

  Course({
    required this.id,
    required this.title,
    required this.instructor,
    required this.price,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Catalog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CourseListScreen(),
    );
  }
}

class CourseListScreen extends StatelessWidget {
  CourseListScreen({Key? key});

  final List<Course> courses = [
    Course(id: 1, title: "English", instructor: "Kebede", price: 99.99),
    Course(id: 2, title: "IT", instructor: "Begashaw", price: 100),
    Course(id: 3, title: "Physics", instructor: "Mesfin", price: 120),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses List'),
        backgroundColor: Colors.green, 
      ),
      body: Container(
        color: Colors.grey[200], 
        child: ListView.builder(
          itemCount: courses.length,
          itemBuilder: (context, index) {
            final course = courses[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              elevation: 3, 
              child: ListTile(
                title: Text(course.title),
                subtitle: Text(
                  'Instructor: ${course.instructor} - Price: \$${course.price.toStringAsFixed(2)}',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseDetailsScreen(course: course),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  const CourseDetailsScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Details'),
        backgroundColor: Colors.green, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Instructor: ${course.instructor}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Price: \$${course.price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

